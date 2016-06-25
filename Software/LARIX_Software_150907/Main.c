/*
 *    Main.c
 *
 *    LARIX_Software_150907: Flight-Controller Software for XMC4500 F100K1024
 *    Copyright (C) 2016  Infineon Technologies Austria AG; Management Center Innsbruck
 *
 *    This program, including the main.c and all other source files, is free software: you can redistribute it and/or modify
 *    it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or
 *    (at your option) any later version.
 *
 *    This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
 *    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
 *
 *    You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */

#ifndef DEBUG_ON_PC
#include <DAVE3.h>			//Declarations from DAVE3 Code Generation (includes SFR declaration)
#else
#include <stdlib.h>
#include <stdio.h>
#include <stdint.h>
#define bool int
#endif

#include <limits.h>

#ifndef DEBUG_ON_PC
#include "_Quadrocopter/_HAL/GPIO.h"
#include "_Quadrocopter/_HAL/Delay/util.h"
#include "_Quadrocopter/_HAL/I2C/I2Cdev.h"
#endif

#include "_Quadrocopter/Sensors/MPU9X50/MPU9150.h"
#include "_Quadrocopter/Sensors/DPS310/DPS310.h"

#include "_Quadrocopter/RadioControl/RCReceive.h"

#include "_Quadrocopter/Attitude_Control/AttitudeController.h"

#ifndef DEBUG_ON_PC
#include "_Quadrocopter/MCI_DaisyChain/DaisyChain.h"
#else
#include "simulator.h"
#endif

//#define LARIX_with_PWM_used
#define WIDEFIELD_used
//--------------------------------Enable SENSORS-----------------------------------------------//
#define DPS310
//--------------------------------Enable SENSORS-----------------------------------------------//

//--------------------------------Enable DEBUG-----------------------------------------------//
#define DEBUG_SPECIFIC
//#define DEBUG_CONTINOUS0
#define LED_test
//Be careful, do not enable the motor test when you have propellers installed!
//#define DEBUG_MOTOR_TEST
//--------------------------------Enable DEBUG-----------------------------------------------//

//--------------------------------OUTPUT Config-----------------------------------------------//
#define PWM_OUTPUT
#ifndef PWM_OUTPUT
	#define UART_SC_IF
//	#define IRMCK
#endif

//--------------------------------OUTPUT Config-----------------------------------------------//


//---------------------------------Rename of SpeedController PWM Handles ----------------
#define ESC_PWM_Handle0 PWMSP001_Handle0
#define ESC_PWM_Handle1 PWMSP001_Handle1
#define ESC_PWM_Handle2 PWMSP001_Handle2
#define ESC_PWM_Handle3 PWMSP001_Handle3
//---------------------------------Rename of SpeedController PWM Handles ----------------

//---------------------------------Rename of Timer(PWM) Handles used within the Quadrocopter Software ------
#define Utils_Timer				 PWMSP001_Handle4
#define AttControl_Timer	     PWMSP001_Handle5
#define MagCalib_Timer 		     PWMSP001_Handle6
#define Monitoring_Timer		 PWMSP001_Handle7
//---------------------------------Rename of Timer(PWM) Handles used within the Quadrocopter Software  ------

#define CONTROL_ORDER 2

float yoffset = 0.0;

//---------------------------------Actuator Output  ---------------------------------------------------------
float actuator_speed_percent[] = {0.0, 0.0, 0.0, 0.0};

	float PWM_width[] = {0.0, 0.0, 0.0, 0.0};

#ifdef UART_SC_IF
	uint8_t DaisyTransmit[12];
#endif
	volatile uint8_t newvalue = 0;

float x_pitch[CONTROL_ORDER];
float x_roll[CONTROL_ORDER];

float u_yaw_dot = 0.0;
float u_pitch = 0.0;
float u_roll = 0.0;
float x_yaw[CONTROL_ORDER];

//Controllerparamter
const float T=0.005;
const float P_roll =100;//162.0852;//64.3188;
const float I_roll = 0;//18;//5;
const float D_roll = 12;//19.1013;//12.0355;
const float N_roll = 200;//62.4365;//40.5471;
const float P_pitch =100;//166.4663;//66.0573;
const float I_pitch = 0;//20;//5;
const float D_pitch =12;//19.6176;//12.3609;
const float N_pitch =200;//62.4365;//40.5471;
const float P_yaw = 110;
const float I_yaw = 0.15;
const float D_yaw = 0.5;
const float N_yaw =200;


//Controllerpolynomials
float a_roll[CONTROL_ORDER];
float a_pitch[CONTROL_ORDER];
float b_roll[CONTROL_ORDER+1];
float b_pitch[CONTROL_ORDER+1];
float a_yaw[CONTROL_ORDER];
float b_yaw[CONTROL_ORDER+1];

//Remote Control
float powerD = 0.0;
float yawD_dot = 0.0;
float pitchD = 0.0;
float rollD = 0.0;

float yaw=0.0;
float yaw_old=0.0;
float yaw_dot=0.0;
uint32_t timePrev = 0;

float YPR[3];
float mag[3];

#if defined DEBUG_SPECIFIC || defined DEBUG_CONTINOUS
	int8_t USB_Rx_Buffer[100] = { 0 };
	char   USB_Tx_Buffer[100]; //for displaying data
	uint16_t Bytes = 0;
	uint16_t nByte;
#endif


bool sendMag = FALSE;

uint16_t counter_main=0;

int8_t MonitorBuffer[14] = {0};

///DEBUG///
extern uint16_t DPS310_INT_counter;

///////////
extern uint32_t packet_loss;
extern uint32_t packets;
extern uint32_t undef_error;
extern uint32_t timeout_count;
///DEBUG///

void AttControl_TIMER_ISR(void)
{
	GetAngles(YPR,&yoffset);
	GetRCData(&powerD, &yawD_dot, &pitchD, &rollD);

	uint32_t Now = millis();
	float dt = ((Now - timePrev)/1000.0f);
	timePrev = Now;

	// filter
	float delta_yaw = YPR[0]-yaw;
	if (delta_yaw >= 180.0)
		delta_yaw-=360;
	if (delta_yaw <= -180.0)
		delta_yaw+=360;

	yaw+=0.3*delta_yaw;
	if (yaw >= 180.0)
		yaw-=360;
	if (yaw <= -180.0)
		yaw+=360;

	//derive
	delta_yaw=yaw-yaw_old;
	if (delta_yaw >= 180.0)
		delta_yaw-=360;
	if (delta_yaw <= -180.0)
		delta_yaw+=360;
	yaw_dot=delta_yaw/dt;

	yaw_old=yaw;

	//yaw control
	AngleRateController(&yawD_dot, &yaw_dot, &P_yaw, &u_yaw_dot);
	//AngleController(&yawD_dot, &yaw_dot, CONTROL_ORDER, a_yaw, b_yaw, x_yaw, &u_yaw_dot);
	//pitch control
	AngleController(&pitchD, &YPR[1], CONTROL_ORDER, a_pitch, b_pitch, x_pitch, &u_pitch);
	//roll control
	AngleController(&rollD, &YPR[2], CONTROL_ORDER, a_roll, b_roll, x_roll, &u_roll);

	counter_main++;
	newvalue=1;
}

void Initialize()
{

	NVIC002_DisableIRQ(&ESC_UART_RX_NVIC_Handle);

	//Stop Monitoring-Timer
	PWMSP001_Stop(&Monitoring_Timer);

    // initialize device
	MPU9150_Setup();

	delay(1000);   //Delay 4000?

    // initilize controller polynomials
	b_roll[0]=P_roll-I_roll*T-P_roll*N_roll*T+N_roll*I_roll*T*T+D_roll*N_roll;
	b_roll[1]=I_roll*T-2*P_roll+P_roll*N_roll*T-2*D_roll*N_roll;
	b_roll[2]=P_roll+D_roll*N_roll;
	a_roll[0]=1-N_roll*T;
	a_roll[1]=N_roll*T-2;

	b_pitch[0]=P_pitch-I_pitch*T-P_pitch*N_pitch*T+N_pitch*I_pitch*T*T+D_pitch*N_pitch;
	b_pitch[1]=I_pitch*T-2*P_pitch+P_pitch*N_pitch*T-2*D_pitch*N_pitch;
	b_pitch[2]=P_pitch+D_pitch*N_pitch;
	a_pitch[0]=1-N_pitch*T;
	a_pitch[1]=N_pitch*T-2;

	WatchRC_Init(); //Initialize RC watchdog



	#ifdef UART_SC_IF

	uint32_t data=0;

	uint8_t trans = MCI_DAISY_INIT_BYTE;
	uint8_t rec = 0;

	UART001_WriteDataBytes(&ESC_UART_Handle, &trans, 1);

	while (rec != 111)
		while(!UART001_ReadDataBytes(&ESC_UART_Handle, &rec, 1));

	// if init-Byte has been received empty IO buffer
	while(UART001_ReadDataBytes(&ESC_UART_Handle, &rec, 1));

	//Motor 1
	DaisyTransmit[0]=MOTOR_START;
	data=0;
	DaisyTransmit[1]=(uint8_t)(data>>8);
	DaisyTransmit[2]=(uint8_t)data;

	//Motor 2
	DaisyTransmit[3]=MOTOR_START;
	data=0;
	DaisyTransmit[4]=(uint8_t)(data>>8);
	DaisyTransmit[5]=(uint8_t) data;

	//Motor 3
	DaisyTransmit[6]=MOTOR_START;
	data=0;
	DaisyTransmit[7]=(uint8_t)(data>>8);
	DaisyTransmit[8]=(uint8_t) data;

	//Motor 4
	DaisyTransmit[9]=MOTOR_START;
	data=0;
	DaisyTransmit[10]=(uint8_t)(data>>8);
	DaisyTransmit[11]=(uint8_t) data;

	UART001_WriteDataBytes(&ESC_UART_Handle, DaisyTransmit, 12);

	#endif

	PWMSP001_Start(&AttControl_Timer);
}

int main(void)
{
	int i=0;
	int orcount=0;

	Control_P0_9(OUTPUT_PP_GP, VERYSTRONG);
	Control_P3_2(OUTPUT_PP_GP, VERYSTRONG);
	Control_P3_1(OUTPUT_PP_GP, VERYSTRONG);
	Control_P3_0(OUTPUT_PP_GP, VERYSTRONG);
	Control_P0_2(OUTPUT_PP_GP, VERYSTRONG);
	Control_P0_3(OUTPUT_PP_GP, VERYSTRONG);
	Control_P2_0(OUTPUT_PP_GP, VERYSTRONG);
	Control_P2_7(OUTPUT_PP_GP, VERYSTRONG);
	SET_P0_2;
	SET_P0_3;
	SET_P2_0;
	SET_P2_7;



	#ifdef LED_test
	int ortime=0L;
				while(ortime<10){
						int orcount=0;
						for (orcount = 0; orcount<200000; orcount++)__NOP();
						TOGGLE_P3_0;
						for (orcount = 0; orcount<200000; orcount++)__NOP();
						TOGGLE_P3_1;
						for (orcount = 0; orcount<200000; orcount++)__NOP();
						TOGGLE_P3_2;
						for (orcount = 0; orcount<200000; orcount++)__NOP();
						TOGGLE_P0_9;
						ortime++;
				}
	#endif



	DAVE_Init();			// Initialization of DAVE Apps
	Initialize();

#ifdef DEBUG_MOTOR_TEST
	for(j=0;j<100;j++)
	{
		for(i=45;i<90;i++)
		{
	  		PWMSP001_SetDutyCycle((PWMSP001_HandleType*)&ESC_PWM_Handle0, i);
	  		PWMSP001_SetDutyCycle((PWMSP001_HandleType*)&ESC_PWM_Handle1, i);
	  		PWMSP001_SetDutyCycle((PWMSP001_HandleType*)&ESC_PWM_Handle2, i);
 	  		PWMSP001_SetDutyCycle((PWMSP001_HandleType*)&ESC_PWM_Handle3, i);
			for (int orcount = 0; orcount<3000000; orcount++)__NOP();

		}
	}
#endif

	Control_P0_0(INPUT, STRONG); //SET UART PIN to TRISTATE: necessary with LARIX_V3
	Control_P0_1(INPUT, STRONG); //SET UART PIN to TRISTATE: necessary with LARIX_V3


	#ifdef DPS310
	SensorError err = setupDPS310();
	if(err)
		ortime=0;
		while(ortime<20){

								int orcount=0;
								for (orcount = 0; orcount<300000; orcount++)__NOP();
								TOGGLE_P3_0;
								for (orcount = 0; orcount<300000; orcount++)__NOP();
								TOGGLE_P3_2;
								ortime++;
						}
	#endif

//	/* Initialization of the  USBD_VCOM App */
		if(USBD_VCOM_Init() != DAVEApp_SUCCESS)
		{
			return -1;
		}

	#ifdef DEBUG_SPECIFIC
	#undef DEBUG_CONTINOUS
	uint32_t p = 0;
	uint32_t t = 0;
	#endif

	#ifdef DEBUG_CONTINOUS
	uint32_t counterccc = 0;
	uint32_t helper = 0;
	#endif

	while(1)
	{
		updateValues(&p,&t);

		if(newvalue){

			CalculateActuatorSpeed_Percent(&u_roll, &u_pitch, &u_yaw_dot, &powerD, actuator_speed_percent, &YPR[1], &YPR[2]);

			#ifdef PWM_OUTPUT
			//Scale percent Output
			PWM_width[0]=0.45*actuator_speed_percent[0]+45;
			PWM_width[1]=0.45*actuator_speed_percent[1]+45;
			PWM_width[2]=0.45*actuator_speed_percent[2]+45;
			PWM_width[3]=0.45*actuator_speed_percent[3]+45;

			//set actors																//normal//LARIX with PWMoutput
			#ifdef LARIX_with_PWM_used
			PWMSP001_SetDutyCycle((PWMSP001_HandleType*)&ESC_PWM_Handle0, PWM_width[3]);
			PWMSP001_SetDutyCycle((PWMSP001_HandleType*)&ESC_PWM_Handle1, PWM_width[2]);
			PWMSP001_SetDutyCycle((PWMSP001_HandleType*)&ESC_PWM_Handle2, PWM_width[0]);
			PWMSP001_SetDutyCycle((PWMSP001_HandleType*)&ESC_PWM_Handle3, PWM_width[1]);
			#endif
			#ifdef WIDEFIELD_used
			PWMSP001_SetDutyCycle((PWMSP001_HandleType*)&ESC_PWM_Handle0, PWM_width[0]);
			PWMSP001_SetDutyCycle((PWMSP001_HandleType*)&ESC_PWM_Handle1, PWM_width[1]);
			PWMSP001_SetDutyCycle((PWMSP001_HandleType*)&ESC_PWM_Handle2, PWM_width[2]);
			PWMSP001_SetDutyCycle((PWMSP001_HandleType*)&ESC_PWM_Handle3, PWM_width[3]);
//			#else
//			PWMSP001_SetDutyCycle((PWMSP001_HandleType*)&ESC_PWM_Handle0, PWM_width[0]);
//			PWMSP001_SetDutyCycle((PWMSP001_HandleType*)&ESC_PWM_Handle1, PWM_width[1]);
//			PWMSP001_SetDutyCycle((PWMSP001_HandleType*)&ESC_PWM_Handle2, PWM_width[2]);
//			PWMSP001_SetDutyCycle((PWMSP001_HandleType*)&ESC_PWM_Handle3, PWM_width[3]);
			#endif
			#endif

			#ifdef UART_SC_IF
				#ifdef IRMCK
				uint32_t data_TX;
				//Motor 1
				DaisyTransmit[0]=SET_MOTOR_SPEED;
				data_TX=(uint16_t)((actuator_speed_percent[0]/100.0)*65535.0);
				if(powerD<10) data_TX = 0;
				DaisyTransmit[1]=(uint8_t)(data_TX>>8);
				DaisyTransmit[2]=(uint8_t) data_TX;

				//Motor 2
				DaisyTransmit[3]=SET_MOTOR_SPEED;
				data_TX=(uint16_t)((actuator_speed_percent[1]/100.0)*65535.0);
				if(powerD<10) data_TX = 0;
				DaisyTransmit[4]=(uint8_t)(data_TX>>8);
				DaisyTransmit[5]=(uint8_t) data_TX;

				//Motor 3
				DaisyTransmit[6]=SET_MOTOR_SPEED;
				data_TX=(uint16_t)((actuator_speed_percent[2]/100.0)*65535.0);
				if(powerD<10) data_TX = 0;
				DaisyTransmit[7]=(uint8_t)(data_TX>>8);
				DaisyTransmit[8]=(uint8_t) data_TX;

				//Motor 4
				DaisyTransmit[9]=SET_MOTOR_SPEED;
				data_TX=(uint16_t)((actuator_speed_percent[3]/100.0)*65535.0);
				if(powerD<10) data_TX = 0;
				DaisyTransmit[10]=(uint8_t)(data_TX>>8);
				DaisyTransmit[11]=(uint8_t) data_TX;

				UART001_WriteDataBytes(&ESC_UART_Handle, DaisyTransmit, 12);
				#else
				uint16_t data;

				//Motor 1
				DaisyTransmit[0]=SET_MOTOR_SPEED;
				data=actuator_speed_percent[0]/100.0*0xFFFF;
				DaisyTransmit[1]=(uint8_t)(data>>8);
				DaisyTransmit[2]=(uint8_t) data;

				//Motor 2
				DaisyTransmit[3]=SET_MOTOR_SPEED;
				data=actuator_speed_percent[1]/100.0*0xFFFF;
				DaisyTransmit[4]=(uint8_t)(data>>8);
				DaisyTransmit[5]=(uint8_t) data;

				//Motor 3
				DaisyTransmit[6]=SET_MOTOR_SPEED;
				data=actuator_speed_percent[2]/100.0*0xFFFF;
				DaisyTransmit[7]=(uint8_t)(data>>8);
				DaisyTransmit[8]=(uint8_t) data;

				//Motor 4
				DaisyTransmit[9]=SET_MOTOR_SPEED;
				data=actuator_speed_percent[3]/100.0*0xFFFF;
				DaisyTransmit[10]=(uint8_t)(data>>8);
				DaisyTransmit[11]=(uint8_t) data;

				UART001_WriteDataBytes(&UART001_Handle2, DaisyTransmit, 12);
				#endif
			#endif

			newvalue=0;
		}


      	#ifdef DEBUG_SPECIFIC
		#undef DEBUG_CONTINOUS

		// Check number of bytes received
	    Bytes = USBD_VCOM_BytesReceived();


	    if(Bytes != 0)
	    {
	    	for(nByte = 0; nByte < Bytes; nByte++)
	    	{
	    		// Receive Byte
	    		if(USBD_VCOM_ReceiveByte(&USB_Rx_Buffer[0]) != DAVEApp_SUCCESS)
	    		{
	    			//Error
	    		}
	    	}
			switch(USB_Rx_Buffer[0])
			{
				case '1':
					sprintf(USB_Tx_Buffer, "Throttle: %f   Rudder: %f   Elevator: %f   Aileron: %f\n", powerD, yawD_dot, pitchD, rollD);
					break;
				case '2':
					PWMSP001_Start(&MagCalib_Timer);
					break;
				case '3':
					sprintf(USB_Tx_Buffer, "Y:%1.2f P:%1.2f R:%1.2f YOff:%1.2f\n", YPR[0], YPR[1], YPR[2], yoffset);
					break;
				case '4':
					sprintf(USB_Tx_Buffer, "Y_dot:%1.2f\n", yaw_dot);
					break;
				case '5':
					sprintf(USB_Tx_Buffer, "PWM1:%f PWM2:%f PWM3:%f PWM4:%f\n", PWM_width[0], PWM_width[1], PWM_width[2], PWM_width[3]);
					break;
				case '6':
					sprintf(USB_Tx_Buffer, "PWM1:%f PWM2:%f PWM3:%f PWM4:%f\n", actuator_speed_percent[0], actuator_speed_percent[1], actuator_speed_percent[2], actuator_speed_percent[3]);
					break;
				case '7':
					sprintf(USB_Tx_Buffer, "eY:%f eP:%f eR:%f\n", yawD_dot-yaw_dot, pitchD-YPR[1], rollD-YPR[2]);
					break;
				case '8':
					sprintf(USB_Tx_Buffer, "TimerSensor:%d TimerMain:%d TimerRC:%d\n", (int)GetSensorCount(), (int)counter_main, (int)GetRCCount());
					break;
				case '9':

					updateValues(&p,&t);
					sprintf(USB_Tx_Buffer, "Pressure: %d Temperature: %d Counter: %d\n",(int)p,(int)t,(int)DPS310_INT_counter);

					break;
			}
			USBD_VCOM_SendString((const char *)USB_Tx_Buffer);
	    }


	    if (sendMag)
	   	{
	   			sendMag = FALSE;
	   		    USBD_VCOM_SendString((const char *)USB_Tx_Buffer);
	   	}

	    //Call continuous to handle class specific control request
	   	/* Main USB management task */
	   	/* Check if data received */
	    CDC_Device_USBTask(&USBD_VCOM_CDCInterface);
	    #endif


		#ifdef DEBUG_CONTINOUS
		counterccc++;
		if(counterccc % 500 == 0)
		{
		helper++;
//		sprintf(USB_Tx_Buffer, "{PacketC,T,%d}\n",packets);
//		USBD_VCOM_SendString((const char *)USB_Tx_Buffer);
//		sprintf(USB_Tx_Buffer, "{Loss,T,%d}\n",packet_loss);
//		USBD_VCOM_SendString((const char *)USB_Tx_Buffer);
//		sprintf(USB_Tx_Buffer, "{UndefE,T,%d}\n",undef_error);
//		USBD_VCOM_SendString((const char *)USB_Tx_Buffer);
//		sprintf(USB_Tx_Buffer, "{Timeout,T,%d}\n",timeout_count);
//		USBD_VCOM_SendString((const char *)USB_Tx_Buffer);
//		sprintf(USB_Tx_Buffer, "{Throttle,T,%.3f}\n",powerD);
//		USBD_VCOM_SendString((const char *)USB_Tx_Buffer);
//	    sprintf(USB_Tx_Buffer, "{Rudder,T,%.3f}\n",yawD_dot);
//		USBD_VCOM_SendString((const char *)USB_Tx_Buffer);
//		sprintf(USB_Tx_Buffer, "{Elevator,T,%.3f}\n",pitchD);
//		USBD_VCOM_SendString((const char *)USB_Tx_Buffer);
//		sprintf(USB_Tx_Buffer, "{Aileron,T,%.3f}\n",rollD);
//		USBD_VCOM_SendString((const char *)USB_Tx_Buffer);



		sprintf(USB_Tx_Buffer, "{Motor1,T,%u}\n",(uint16_t)((actuator_speed_percent[0]/100.0)*65535.0));
		USBD_VCOM_SendString((const char *)USB_Tx_Buffer);
		sprintf(USB_Tx_Buffer, "{Motor2,T,%u}\n",(uint16_t)((actuator_speed_percent[1]/100.0)*65535.0));
		USBD_VCOM_SendString((const char *)USB_Tx_Buffer);
		sprintf(USB_Tx_Buffer, "{Motor3,T,%u}\n",(uint16_t)((actuator_speed_percent[2]/100.0)*65535.0));
		USBD_VCOM_SendString((const char *)USB_Tx_Buffer);
		sprintf(USB_Tx_Buffer, "{Motor4,T,%u}\n",(uint16_t)((actuator_speed_percent[3]/100.0)*65535.0));

		USBD_VCOM_SendString((const char *)USB_Tx_Buffer);


		counterccc=0;
		}
		 //Call continuous to handle class specific control request
	     /* Main USB management task */
	      /* Check if data received */
			     CDC_Device_USBTask(&USBD_VCOM_CDCInterface);
		#endif




	}
	return 0;
}


void MagCalib_TIMER_ISR()
{
#if defined DEBUG_SPECIFIC
    GetMagData(mag);
    sprintf(USB_Tx_Buffer, "%f,%f,%f\r\n", mag[1], mag[0], -mag[2]);
    sendMag = TRUE;
#endif
}

void Monitoring_TIMER_ISR()
{
	// Start byte
	MonitorBuffer[0] = 0x02;
	// YAW desired
	MonitorBuffer[1] = (int8_t)((int16_t)(SHRT_MAX + (SHRT_MAX - SHRT_MIN) / (2*SCALE_YAW) * (yawD_dot - SCALE_YAW)) >> 8);
	MonitorBuffer[2] = (int8_t)(SHRT_MAX + (SHRT_MAX - SHRT_MIN) / (2*SCALE_YAW) * (yawD_dot - SCALE_YAW));
	// YAW
	MonitorBuffer[3] = (int8_t)((int16_t)(SHRT_MAX + (SHRT_MAX - SHRT_MIN) / (2*SCALE_YAW) * (yaw_dot - SCALE_YAW)) >> 8);
	MonitorBuffer[4] = (int8_t)(SHRT_MAX + (SHRT_MAX - SHRT_MIN) / (2*SCALE_YAW) * (yaw_dot - SCALE_YAW));
	// Pitch desired
	MonitorBuffer[5] = (int8_t)((int16_t)(SHRT_MAX + (SHRT_MAX - SHRT_MIN) / (2*SCALE_PITCH) * (pitchD - SCALE_PITCH)) >> 8);
	MonitorBuffer[6] = (int8_t)(SHRT_MAX + (SHRT_MAX - SHRT_MIN) / (2*SCALE_PITCH) * (pitchD - SCALE_PITCH));
	// Pitch
	MonitorBuffer[7] = (int8_t)((int16_t)(SHRT_MAX + (SHRT_MAX - SHRT_MIN) / (2*SCALE_PITCH) * (YPR[1] - SCALE_PITCH)) >> 8);
	MonitorBuffer[8] = (int8_t)(SHRT_MAX + (SHRT_MAX - SHRT_MIN) / (2*SCALE_PITCH) * (YPR[1] - SCALE_PITCH));
	// Roll desired
	MonitorBuffer[9] = (int8_t)((int16_t)(SHRT_MAX + (SHRT_MAX - SHRT_MIN) / (2*SCALE_ROLL) * (rollD - SCALE_ROLL)) >> 8);
	MonitorBuffer[10] = (int8_t)(SHRT_MAX + (SHRT_MAX - SHRT_MIN) / (2*SCALE_ROLL) * (rollD - SCALE_ROLL));
	// Roll
	MonitorBuffer[11] = (int8_t)((int16_t)(SHRT_MAX + (SHRT_MAX - SHRT_MIN) / (2*SCALE_ROLL) * (YPR[2] - SCALE_ROLL)) >> 8);
	MonitorBuffer[12] = (int8_t)(SHRT_MAX + (SHRT_MAX - SHRT_MIN) / (2*SCALE_ROLL) * (YPR[2] - SCALE_YAW));

	// Stop byte
	MonitorBuffer[13] = 0x03;

	UART001_WriteDataBytes(&BT_UART_Handle, (uint8_t*)MonitorBuffer, 14);
}






