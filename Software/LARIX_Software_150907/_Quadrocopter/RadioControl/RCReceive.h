/*
 * RCReceive.h
 *
 *  Created on: 22.12.2014
 *      Author: maan
 */

#ifndef RCRECEIVE_H_
#define RCRECEIVE_H_

#ifndef DEBUG_ON_PC
#include <DAVE3.h>
#endif

#define RC_UART_Handle 		  UART001_Handle0
#define BT_UART_Handle UART001_Handle1

//Scale factors for angle and power						// other divisions tried with good stabilization
#define SCALE_YAW	90.0			// from -10..+10    // divided by 3
#define SCALE_PITCH	30.0		// from -10..+10		// divided by 10
#define SCALE_ROLL	30.0	// from -10..+10			// divided by 10
#define SCALE_POWER	100.0			// from 0..100

//Scale factors for joysticks to norm vaue between -1 and 1
#define THROTTLE_MIN	306
#define THROTTLE_MAX	1783
#define RUDDER_MIN		6450
#define RUDDER_MAX		7884
#define ELEVATOR_MIN	4400
#define ELEVATOR_MAX	5834
#define AILERON_MIN		2354
#define AILERON_MAX		3788

//Values for Flightmode ON/OFF
#define FLIGHTMODE0			8498
#define FLIGHTMODE1			9930

void RC_Receive_Int_Handler();
void BT_Receive_Int_Handler();
void WatchRC(void* Temp);
void WatchRC_Init();
uint8_t GetRCCount();
int mergeBytes (uint8_t a, uint8_t b);
void GetRCData(float* power, float* yaw, float* pitch, float* roll);
long map(long x, long in_min, long in_max, long out_min, long out_max);
#endif /* RCRECEIVE_H_ */
