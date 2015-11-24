/*
 * RCReceive.c
 *
 *  Created on: 22.12.2014
 *      Author: maan
 */

#include "RCReceive.h"

//Joystick values (range between -1 and 1, 0 in middle position)
float throttle = 0.0;
float rudder = 0.0;
float elevator = 0.0;
float aileron = 0.0;

short throttleBT = 0;
short rudderBT = 0;
short aileronBT = 0;
short elevatorBT = 0;
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

		//Set values for RC Timeout check
		RCTimeOut = 0;
		RCCount++;
	}
}

void BT_RECEIVE_ISR()
{
	uint8_t ReadBufRC[20] = {0}; //Readbuffer
	int start = 0; //Index of start byte

	//Check if receive buffer interrupt is set
	if(UART001_GetFlagStatus(&BT_UART_Handle,UART001_FIFO_STD_RECV_BUF_FLAG) == UART001_SET)
	{
		//Read data from UART buffer
		UART001_ReadDataBytes(&BT_UART_Handle,ReadBufRC,20);

		//Clear receive buffer interrupt flag
		UART001_ClearFlag(&BT_UART_Handle,UART001_FIFO_STD_RECV_BUF_FLAG);

		//Search for start byte and check static values
		while (ReadBufRC[start] != 0x02)
		{
			if (start++ > 6) {
				//Communication check bytes not in buffer
				return;
			}
		}

		throttleBT=(ReadBufRC[start+1] << 8 | ReadBufRC[start+2]);
		rudderBT=(ReadBufRC[start+3] << 8 | ReadBufRC[start+4]);
		elevatorBT=(ReadBufRC[start+5] << 8 | ReadBufRC[start+6]);
		aileronBT=(ReadBufRC[start+7] << 8 | ReadBufRC[start+8]);
		modeBT=(ReadBufRC[start+9]);

		BTTimeOut = 0;
		BTCount++;
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
}

/*
 * Initialize RC watchdog
 */
void WatchRC_Init()
{
	//Set timer to check every 100ms, if new data has arrived
	TimerWatchRC = SYSTM001_CreateTimer(100,SYSTM001_PERIODIC,WatchRC,NULL);
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

uint8_t GetRCTimeOut()
{
	return RCTimeOut;
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
			*pitch=elevator*SCALE_PITCH;
			*roll=-aileron*SCALE_ROLL;
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
		}
		else
		{
			*power=SCALE_POWER*(throttleBT/32767.0+1)/2;
			*yaw_dot=-rudderBT/32767.0*SCALE_YAW;
			if (modeBT == 1)
			{
				*pitch=-elevatorBT/32767.0*90;
				*roll=aileronBT/32767.0*90;
			}
			else
			{
				*pitch=elevatorBT/32767.0*SCALE_PITCH;
				*roll=aileronBT/32767.0*SCALE_ROLL;
			}
		}
	}
}

long map(long x, long in_min, long in_max, long out_min, long out_max)
{
  return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}
