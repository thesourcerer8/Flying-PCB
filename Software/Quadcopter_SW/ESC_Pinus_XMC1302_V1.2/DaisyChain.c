/*
 * DaisyChain.c
 *
 *  Created on: 02.05.2015
 *      Author: Andreas
 */

#include <DAVE3.h>
#include "DaisyChain.h"

uint8_t FifoRecBuffer[DAISY_BUFFER_SIZE] = {0};
uint8_t FifoTransBuffer[DAISY_BUFFER_SIZE] = {0};

uint8_t DaisyTimeOut = 1;
uint8_t DaisyCount = 0;

void DaisyChain(void)
{
	uint8_t i=0;
	status_t status=0;
	uint32_t data=0;

	if (DaisyTimeOut)
		StopMotor();

	if(USIC_GetRxFIFOFillingLevel(UART001_Handle0.UartRegs) >= DAISY_BUFFER_SIZE)
	{
		//Read data from UART buffer
		UART001_ReadDataBytes(&UART001_Handle0,FifoRecBuffer,DAISY_BUFFER_SIZE);

		//Assumption that communication is lost --> emtpy Receive Buffer
		if (FifoRecBuffer[DAISY_BUFFER_SIZE-1] != DAISY_STOP_BYTE)
		{
			IO004_TogglePin(IO004_Handle1);
			USIC_FlushRxFIFO(UART001_Handle0.UartRegs);
			return;
		}

		uint8_t cmd = FifoRecBuffer[0];
		uint16_t params =  (FifoRecBuffer[1] << 8 | FifoRecBuffer[2]);

		switch (cmd)
		{
			case SET_REF_CURRENT:
				SetReferenceCurrent(params);
				break;
		}

		for(i=DAISY_MESSAGE_LENGTH; i<DAISY_BUFFER_SIZE-1; i++)
			FifoTransBuffer[i-DAISY_MESSAGE_LENGTH]=FifoRecBuffer[i];

		//Status-Code
		FifoTransBuffer[i-DAISY_MESSAGE_LENGTH]=status;
		i++;
		//Data
		FifoTransBuffer[i-DAISY_MESSAGE_LENGTH]=(uint8_t)(data >> 8);
		i++;
		FifoTransBuffer[i-DAISY_MESSAGE_LENGTH]=(uint8_t)data;
		i++;
		FifoTransBuffer[i-DAISY_MESSAGE_LENGTH]=DAISY_STOP_BYTE;

		UART001_WriteDataBytes(&UART001_Handle0, FifoTransBuffer, DAISY_BUFFER_SIZE);

		DaisyTimeOut = 0;
		DaisyCount++;
	}
}

void InitDaisyWatchDog()
{
	//Watchdog
	CCU40_CC41->PSC |= 0x03;
	CCU40_CC41->PRS = 0xFFFF;
	CCU40_CC41->CRS = 0;
	CCU40->GCSS |= (0x01UL << 4);

	//Interrupt Compare Match Slice 1
	CCU40_CC41->INTE |= 0x04UL;
	CCU40_CC41->SRS |= 0x04UL;
	NVIC_SetPriority((IRQn_Type)22, 1);
	NVIC_EnableIRQ((IRQn_Type)22);

	//Enable slice
	CCU40->GIDLC |= 0x01UL << 1;
	CCU40_CC41->TCSET |= 0x01UL;
}

void DaisyWatchDog_ISR()
{
	static uint8_t lastCount;

	if (lastCount == DaisyCount) DaisyTimeOut = 1;
	lastCount = DaisyCount;
}
