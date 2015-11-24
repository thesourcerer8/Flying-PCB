/*
 * DaisyChain.c
 *
 *  Created on: 15.09.2015
 *      Author: maan
 */

#include "DaisyChain.h"

uint8_t DaisyTransmit[DAISY_BUFFER_SIZE];

/*void InitDaisy()
{
	uint8_t trans = 111;
	uint8_t rec = 0;

	UART001_WriteDataBytes(&UART001_Handle2, &trans, 1);

	while (rec != 111)
		while(!UART001_ReadDataBytes(&UART001_Handle2, &rec, 1));

	// if init-Byte has been received empty IO buffer
	while(UART001_ReadDataBytes(&UART001_Handle2, &rec, 1));
}*/

void SendDaisyData(uint8_t command, uint16_t data1, uint16_t data2, uint16_t data3, uint16_t data4)
{
	//Motor 1
	DaisyTransmit[0]=command;
	DaisyTransmit[1]=(uint8_t)(data1>>8);
	DaisyTransmit[2]=(uint8_t)data1;

	//Motor 2
	DaisyTransmit[3]=command;
	DaisyTransmit[4]=(uint8_t)(data2>>8);
	DaisyTransmit[5]=(uint8_t) data2;

	//Motor 3
	DaisyTransmit[6]=command;
	DaisyTransmit[7]=(uint8_t)(data3>>8);
	DaisyTransmit[8]=(uint8_t) data3;

	//Motor 4
	DaisyTransmit[9]=command;
	DaisyTransmit[10]=(uint8_t)(data4>>8);
	DaisyTransmit[11]=(uint8_t) data4;

	DaisyTransmit[12]=DAISY_STOP_BYTE;

	UART001_WriteDataBytes(&UART001_Handle1, DaisyTransmit, DAISY_BUFFER_SIZE);
}
