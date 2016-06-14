/*
 * RCReceive.c
 *
 *  Created on: 22.12.2014
 *      Author: maan
 */

#include "RCReceive.h"
#include "Bluetooth_Protocol/BluetoothProtocol.h"
#include "../_HAL/GPIO.h"


//#define DEBUG_Bluetooth
#define LARIX_used
//#define WIDEFIELD_used
#define DEBUG_RC


////////////////////Variablen Elias///////////////////////////////

ControlValue control_value;
DataPacket dpacket;
uint8_t ReadBufBT[HARDWARE_BUFFER_SIZE] = {0};

///////////////////////////////////////////////////////////////////


//Joystick values (range between -1 and 1, 0 in middle position)
float throttle = 0.0;
float rudder = 0.0;
float elevator = 0.0;
float aileron = 0.0;

//short throttleBT = 0;
//short rudderBT = 0;
//short aileronBT = 0;
//short elevatorBT = 0;

uint16_t throttleBT = 0;
float rudderBT = 0;
float aileronBT = 0;
float elevatorBT = 0;
////DEBUG
uint32_t packet_loss = 0;
uint32_t packets = 0;
uint32_t undef_error = 0;
uint32_t timeout_count = 0;
////


uint8_t modeBT = 0;

uint8_t flightmode = 0; //Flightmode switch

uint8_t RCTimeOut = 1; //Timeout remote control 0:OK 1:TimeOut
uint8_t RCCount = 0; //Counter for RC read (used for TimeOut)

uint8_t BTTimeOut = 1;
uint8_t BTCount = 0;

// Software timer
handle_t TimerWatchRC; //Timer for RC watchdog

/*
 * Merge two bytes to one integer
 *
 * Parameters:
 * uint8_t a: high-byte
 * uint8_t b: low-byte
 *
 * Returnvalue:
 * int Merged bytes
 */
int mergeBytes (uint8_t a, uint8_t b) {
   int c = a;
   return (c << 8) | b;
}

/**
 * Interrupt routine from UART FIFO in buffer
 * Buffer is full, new data is ready to read
 */


void RC_RECEIVE_ISR()
{
	//Raw values from receiver
	int throttleRaw;
	int rudderRaw;
	int elevatorRaw;
	int aileronRaw;
	int flightmodeRaw;

	uint8_t ReadBufRC[32]; //Readbuffer
	int start = 0; //Index of start byte (contains 0x30)

	//Check if receive buffer interrupt is set
	if(UART001_GetFlagStatus(&RC_UART_Handle,UART001_FIFO_STD_RECV_BUF_FLAG) == UART001_SET)
	{
		//Read data from UART buffer
		UART001_ReadDataBytes(&RC_UART_Handle,ReadBufRC,32);
		//Clear receive buffer interrupt flag
		UART001_ClearFlag(&RC_UART_Handle,UART001_FIFO_STD_RECV_BUF_FLAG);

		//Search for start byte and check static values
		while (ReadBufRC[start] != 0x30 || ReadBufRC[start+1] != 0x00 || ReadBufRC[start+5] != 0xA2 || ReadBufRC[start+8] != 0x2B || ReadBufRC[start+9] != 0xFE)
		{
			if (start++ > 16) {
				//Communication check bytes not in buffer
				return;
			}
		}

		//Get data from stream
		throttleRaw = mergeBytes(ReadBufRC[start+2],ReadBufRC[start+3]);
		throttle = map(throttleRaw, THROTTLE_MIN, THROTTLE_MAX, 0, 60000)/60000.0;
		aileronRaw = mergeBytes(ReadBufRC[start+6],ReadBufRC[start+7]);
		aileron = map(aileronRaw, AILERON_MIN, AILERON_MAX, -30000, 30000)/30000.0;
		elevatorRaw = mergeBytes(ReadBufRC[start+10],ReadBufRC[start+11]);
		elevator = map(elevatorRaw, ELEVATOR_MIN, ELEVATOR_MAX, -30000, 30000)/30000.0;
		rudderRaw = mergeBytes(ReadBufRC[start+14],ReadBufRC[start+15]);
		rudder = map(rudderRaw, RUDDER_MIN, RUDDER_MAX, -30000, 30000)/30000.0;
		flightmodeRaw = mergeBytes(ReadBufRC[start+12],ReadBufRC[start+13]);
		if (flightmodeRaw == FLIGHTMODE0) flightmode = 0;
		if (flightmodeRaw == FLIGHTMODE1) flightmode = 1;


#ifdef DEBUG_RC

		  		  if (throttleRaw>1500){
		  			  SET_P3_0;
		  			  SET_P3_1;
		  			  SET_P3_2;
		  		  	  	}
		  		  if (throttleRaw>1000 && throttleRaw<1500){
					#ifdef WIDEFIELD_used
		  			  SET_P3_0;
		  			  RESET_P3_1;
		  			  SET_P3_2;
					#endif
					#ifdef LARIX_used
		  			RESET_P3_0;
		  			SET_P3_1;
		  			SET_P3_2;
					#endif
		  		  		}
		  		  if (throttleRaw>500 && throttleRaw<1000){
		  			  RESET_P3_0;
		  			  RESET_P3_1;
		  			  SET_P3_2;
		  				}
		  		  if (throttleRaw<500){
		  			  RESET_P3_0;
		  			  RESET_P3_1;
		  			  RESET_P3_2;
		  		  		}
#endif
		//Set values for RC Timeout check
		RCTimeOut = 0;
		RCCount++;
	}
}

void BT_RECEIVE_ISR()
{

	if(UART001_GetFlagStatus(&BT_UART_Handle,UART001_FIFO_STD_RECV_BUF_FLAG) == UART001_SET)
	{

		UART001_ReadDataBytes(&BT_UART_Handle,ReadBufBT,HARDWARE_BUFFER_SIZE);
	   	//Clear receive buffer interrupt flag
	   	UART001_ClearFlag(&BT_UART_Handle,UART001_FIFO_STD_RECV_BUF_FLAG);
	    status_t rec_mode = maintainBluetoothInputBuffer(ReadBufBT,
	   							&control_value, &dpacket);

		switch (rec_mode)
		{
		  case RECEIVED_CONTROL_PACKET:

		  throttleBT = control_value.speed;
		  aileronBT = -control_value.x_pitch;
		  elevatorBT = control_value.y_roll;
		  rudderBT = control_value.z_rotate;


#ifdef DEBUG_Bluetooth

		  		  if (control_value.speed>80){
		  			  SET_P3_0;
		  			  SET_P3_1;
		  			  SET_P3_2;
		  		  	  	}
		  		  if (control_value.speed>50 && control_value.speed<80){
					#ifdef WIDEFIELD_used
		  			  SET_P3_0;
		  			  RESET_P3_1;
		  			  SET_P3_2;
					#endif
					#ifdef LARIX_used
		  			RESET_P3_0;
		  			SET_P3_1;
		  			SET_P3_2;
					#endif
		  		  		}
		  		  if (control_value.speed>30 && control_value.speed<50){
		  			  RESET_P3_0;
		  			  RESET_P3_1;
		  			  SET_P3_2;
		  				}
		  		  if (control_value.speed<30){
		  			  RESET_P3_0;
		  			  RESET_P3_1;
		  			  RESET_P3_2;
		  		  		}
#endif




		  //packets++;
		  BTTimeOut=0;
		  BTCount++;

		  break;

	      case RECEIVED_DATA_PACKET:

		  break;

		  case CHECKSUM_ERROR:

		  throttleBT = 0.0;
	      aileronBT = 0.0;
		  elevatorBT = 0.0;
		  rudderBT = 0.0;


		  //packet_loss++;
		  //Todo: Add Error-Handling
		  break;

		  case UNDEFINED_ERROR:

		  throttleBT = 0.0;
		  aileronBT = 0.0;
		  elevatorBT = 0.0;
		  rudderBT = 0.0;
		  //undef_error++;
		  //Todo: Add Error-Handling
		  break;

		}


	}

}

/*
 * Check if new data has been arrived since last function call
 * This function is called from software Timer "TimerWatchRC"
 */
void WatchRC(void* Temp)
{
	static uint8_t lastCount;
	static uint8_t lastBTCount;

	if (lastCount == RCCount) RCTimeOut = 1;
	lastCount = RCCount;

	if (lastBTCount == BTCount) BTTimeOut = 1;
	lastBTCount = BTCount;

	//keep_alive packet for connection state_check
	uint8_t keep_alive = 0xFF;
	UART001_WriteDataBytes(&BT_UART_Handle, (uint8_t*)&keep_alive,1);

}

/*
 * Initialize RC watchdog
 */
void WatchRC_Init()
{
	//Set timer to check every 500ms, if new data has arrived
	TimerWatchRC = SYSTM001_CreateTimer(200,SYSTM001_PERIODIC,WatchRC,NULL);
	if(TimerWatchRC != 0)
	{
		//Timer is created successfully
		if(SYSTM001_StartTimer(TimerWatchRC) == DAVEApp_SUCCESS)
		{
			//Timer started
		}
	}
}

uint8_t GetRCCount()
{
	return RCCount;
}

void GetRCData(float* power, float* yaw_dot, float* pitch, float* roll)
{

	if (flightmode == 0)
	{
		if (RCTimeOut)
		{
			*power=0;
			*yaw_dot=0;
			*pitch=0;
			*roll=0;
		}
		else
		{
			*power=SCALE_POWER*throttle;
			if (rudder > 0.01 || rudder < -0.01)
				*yaw_dot=rudder*SCALE_YAW;
			else
				*yaw_dot = 0;
			*pitch=-aileron*SCALE_PITCH;
			*roll=-elevator*SCALE_ROLL;
		}
	}
	else
	{
		if (BTTimeOut || RCTimeOut)
		{
			*power=0;
			*yaw_dot=0;
			*pitch=0;
			*roll=0;
			//timeout_count++;
		}
		else
		{


		*power=throttleBT;
		*pitch=aileronBT;
		*roll=elevatorBT;
		*yaw_dot = rudderBT;


		if(*pitch > 30.0)
		{
			*pitch = 30.0;
		}else if(*pitch < -30.0)
		{
			*pitch  = -30.0;
		}


		if(*roll > 30.0)
		{
			*roll = 30.0;
		}else if(*roll < -30.0)
		{
			*roll = -30.0;
		}

	  }
	}
}

long map(long x, long in_min, long in_max, long out_min, long out_max)
{
  return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}
