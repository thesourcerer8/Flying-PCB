/*
 * Main.c
 *
 *  Created on: 25.12.2014
 *      Author: Andreas
 */

#include <DAVE3.h>			//Declarations from DAVE3 Code Generation (includes SFR declaration)
#include <limits.h>
#include "_Quadrocopter/_HAL/Delay/util.h"
#include "_Quadrocopter/_HAL/I2C/I2Cdev.h"
#include "_Quadrocopter/Sensors/MPU9X50/MPU9150.h"
#include "_Quadrocopter/RemoteControl/RCReceive.h"
#include "_Quadrocopter/Attitude_Control/Attitudecontroller.h"
#include "_Quadrocopter/DaisyChain/DaisyChain.h"

#define CONTROL_ORDER 2

//Actor values
float PWM_percent[] = {0.0, 0.0, 0.0, 0.0};

float x_pitch[CONTROL_ORDER];
float x_roll[CONTROL_ORDER];

float u_yaw_dot = 0.0;
float u_pitch = 0.0;
float u_roll = 0.0;

//Controllerparamter
const float T=0.002;
const float P_roll = 25.2884;
const float I_roll = 0;//5;
const float D_roll =  1.22751;
const float N_roll = 65.9926;
const float P_pitch = 15;
const float I_pitch = 0;//5;
const float D_pitch = 1;
const float N_pitch = 65.9926;
const float P_yaw = 50;

//Controllerpolynomials
float a_roll[CONTROL_ORDER];
float a_pitch[CONTROL_ORDER];
float b_roll[CONTROL_ORDER+1];
float b_pitch[CONTROL_ORDER+1];

//Remote Control
float powerD = 0.0;
float yawD_dot = 0.0;
float pitchD = 0.0;
float rollD = 0.0;

float YPR[3];
float sensorData[3];

int8_t TxBuffer[100] = { 0 };
char c[100]; //for displaying data

bool sendMag = FALSE;

uint16_t counter_main=0;

int8_t MonitorBuffer[14] = {0};
int8_t MotorRunning=0;

void Monitoring_Int_Handler();

void Controller_CompareMatch_Int_Handler(void)
{
	GetAngles(YPR);
	GetRCData(&powerD, &yawD_dot, &pitchD, &rollD);

	//YPR[0]=0;

	//yaw control
	AngleRateController(&yawD_dot, &YPR[0], &P_yaw, &u_yaw_dot);
	//pitch control
	AngleController(&pitchD, &YPR[1], CONTROL_ORDER, a_pitch, b_pitch, x_pitch, &u_pitch);
	//roll control
	AngleController(&rollD, &YPR[2], CONTROL_ORDER, a_roll, b_roll, x_roll, &u_roll);

	//generate actuator values
	CreatePulseWidth(&u_roll, &u_pitch, &u_yaw_dot, &powerD, PWM_percent);

	SendDaisyData(SET_REF_CURRENT,
		PWM_percent[0]/100.0*1279,
		PWM_percent[1]/100.0*1279,
		PWM_percent[3]/100.0*1279,
		PWM_percent[2]/100.0*1279);

	/*SendDaisyData(SET_REF_CURRENT,
			powerD/100.0*1279,
			powerD/100.0*1279,
			powerD/100.0*1279,
			powerD/100.0*1279);*/


	counter_main++;
}

void Initialize()
{
	delay(1000);

    // initialize device
	MPU9150_Setup();

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

	delay(1000);

	//InitDaisy();

	PWMSP001_Start(&PWMSP001_Handle0);
}

int main(void)
{
	uint16_t Bytes = 0;
	uint16_t nByte;
//	status_t status;		// Declaration of return variable for DAVE3 APIs (toggle comment if required)

	DAVE_Init();			// Initialization of DAVE Apps
	USBVC001_Init();		//Initialize the USB core in Device mode

	Initialize();

	while(1)
	{
		// Check number of bytes received
	    Bytes = USBVC001_BytesReceived();

	    if(Bytes != 0)
	    {
	    	for(nByte = 0; nByte < Bytes; nByte++)
	    	{
	    		// Receive Byte
	    		if(USBVC001_ReceiveByte(&TxBuffer[0]) != DAVEApp_SUCCESS)
	    		{
	    			//Error
	    		}
	    	}

			switch(TxBuffer[0])
			{
				case '1':
					sprintf(c, "Throttle: %f   Rudder: %f   Elevator: %f   Aileron: %f\n", powerD, yawD_dot, pitchD, rollD);
					break;
				case '2':
					PWMSP001_Start(&PWMSP001_Handle2);
					break;
				case '3':
					sprintf(c, "Y:%1.2f P:%1.2f R:%1.2f\n", YPR[0], YPR[1], YPR[2]);
					break;
				case '5':
					sprintf(c, "PWM1:%f PWM2:%f PWM3:%f PWM4:%f\n", PWM_percent[0], PWM_percent[1], PWM_percent[2], PWM_percent[3]);
					break;
				case '6':
					sprintf(c, "eY:%f eP:%f eR:%f\n", yawD_dot-YPR[0], pitchD-YPR[1], rollD-YPR[2]);
					break;
				case '7':
					sprintf(c, "TimerSensor:%d TimerMain:%d TimerRC:%d\n", (int)GetSensorCount(), (int)counter_main, (int)GetRCCount());
					break;
				case '8':
					GetGyroData(sensorData);
					sprintf(c, "GyroX:%3.2f GyroY:%3.2f GyroZ:%3.2f\n", sensorData[0], sensorData[1], sensorData[2]);
					break;
				case '9':
					GetAccData(sensorData);
					sprintf(c, "AccX:%f AccY:%f AccZ:%f\n", sensorData[0], sensorData[1], sensorData[2]);
					break;

			}
			USBVC001_SendString((const char *)c);
	    }

	    if (sendMag)
	    {
	    	sendMag = FALSE;
	    	USBVC001_SendString((const char *)c);
	    }

	    // Call continuous to handle class specific control request
	    USB_USBTask();
	}
	return 0;
}

void Mag_Calibration_Int_Handler()
{
    GetMagData(sensorData);
    sprintf(c, "%f,%f,%f\r\n", sensorData[0], sensorData[1], sensorData[2]);
    sendMag = TRUE;
}
