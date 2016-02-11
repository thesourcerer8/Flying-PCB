/*
 * BlockCommutation.c
 *
 *  Created on: 01.09.2015
 *      Author: maan
 */


#include "BlockCommutation.h"

volatile float InnerPWMFreq=25000;
volatile float CurrentDutyCycleStart=0.1;

volatile uint32_t InnerPWMPeriod=0;
volatile uint32_t InnerPWMCompare=0;

volatile int8_t PhaseState=0;
volatile enum MotorState motorState = Stopped;

void InitBlockCommutation()
{
	//Set Period and Compare for all slices
	InnerPWMPeriod=((uint32_t)(1000000000.0f/(InnerPWMFreq*31.25)))-(uint32_t)1;
	InnerPWMCompare=InnerPWMPeriod*CurrentDutyCycleStart;
	CCU80_CC80->PRS = CCU80_CC81->PRS = CCU80_CC82->PRS = CCU80_CC83->PRS = InnerPWMPeriod;
	CCU80_CC80->CR1S = InnerPWMCompare;
	CCU80_CC80->CR2S = InnerPWMPeriod+1;
	CCU80_CC81->CR1S = 0;
	CCU80_CC81->CR2S = 0;
	CCU80_CC82->CR1S = 0;
	CCU80_CC82->CR2S = InnerPWMPeriod+1;
	CCU80_CC83->CR1S = InnerPWMCompare-1;//>>1;
	CCU80_CC83->CR2S = InnerPWMCompare-1;//>>1;
	CCU80->GCSS |= 0x1111UL;

	//Synchronos start
	CCU80_CC80->INS |= 0x10007UL;
	CCU80_CC80->CMC |= 0x1UL;
	CCU80_CC81->INS |= 0x10007UL;
	CCU80_CC81->CMC |= 0x1UL;
	CCU80_CC82->INS |= 0x10007UL;
	CCU80_CC82->CMC |= 0x1UL;
	CCU80_CC83->INS |= 0x10007UL;
	CCU80_CC83->CMC |= 0x1UL;

	//Enable slices
	CCU80->GIDLC |= 0xFUL;

	//CCU8 Channel Selection
	CCU80_CC80->CHC |= 0x1E;
	CCU80_CC81->CHC |= 0x1E;
	CCU80_CC82->CHC |= 0x1E;

	//IO CCU8
	PORT0->IOCR0  |= 0x15UL << 3;		//P0.0  UH
	PORT0->IOCR0  |= 0x15UL << 27;		//P0.3  UL
	PORT0->IOCR4  |= 0x15UL << 27;		//P0.7  VH
	PORT0->IOCR4  |= 0x15UL << 3;		//P0.4  VL
	//The startup software (SSW) will change the PC8 value to input pull-up device active, 00010b.
	PORT0->IOCR8 = 0x00UL;
	PORT0->IOCR8  |= 0x15UL << 3;		//P0.8  WH
	PORT0->IOCR8  |= 0x15UL << 27;		//P0.11 WL

	//Blockcommutation
	CCU40_CC40->PSC |= 0x07;
	CCU40_CC40->PRS = 0xFFFF;
	CCU40_CC40->CRS = 0;
	CCU40->GCSS |= (0x01UL << 0);

	//Interrupt Compare Match Slice 0
	CCU40_CC40->INTE |= 0x04UL;
	NVIC_SetPriority((IRQn_Type)21, 0);
	NVIC_EnableIRQ((IRQn_Type)21);

	//Enable slice
	CCU40->GIDLC |= 0x01UL;

	//ADC Trigger
	CCU80_CC83->SRS |= 2UL<<4;
	CCU80_CC83->SRS |= 1UL<<2;
	CCU80_CC83->INTE |= 1UL<<2;
}

void BlockCommutation_ISR()
{
	if (motorState == Running)
	{
		PhaseState++;

		if (PhaseState > 5)
			PhaseState = 0;

		switch (PhaseState)
		{
			case 0:
				VADC_G0->ASSEL = 0x04UL;
				CCU80_CC80->CR1S = InnerPWMCompare;
				CCU80_CC80->CR2S = InnerPWMPeriod+1;
				CCU80_CC81->CR1S = 0;
				CCU80_CC81->CR2S = 0;
				CCU80_CC82->CR1S = 0;
				CCU80_CC82->CR2S = InnerPWMPeriod+1;
				break;
			case 1:
				VADC_G0->ASSEL = 0x02UL;
				CCU80_CC80->CR1S = InnerPWMCompare;
				CCU80_CC80->CR2S = InnerPWMPeriod+1;
				CCU80_CC81->CR1S = 0;
				CCU80_CC81->CR2S = InnerPWMPeriod+1;
				CCU80_CC82->CR1S = 0;
				CCU80_CC82->CR2S = 0;
				break;
			case 2:
				VADC_G0->ASSEL = 0x01UL;
				CCU80_CC80->CR1S = 0;
				CCU80_CC80->CR2S = InnerPWMPeriod+1;
				CCU80_CC81->CR1S = InnerPWMCompare;
				CCU80_CC81->CR2S = InnerPWMPeriod+1;
				CCU80_CC82->CR1S = 0;
				CCU80_CC82->CR2S = 0;
				break;
			case 3:
				VADC_G0->ASSEL = 0x04UL;
				CCU80_CC80->CR1S = 0;
				CCU80_CC80->CR2S = 0;
				CCU80_CC81->CR1S = InnerPWMCompare;
				CCU80_CC81->CR2S = InnerPWMPeriod+1;
				CCU80_CC82->CR1S = 0;
				CCU80_CC82->CR2S = InnerPWMPeriod+1;
				break;
			case 4:
				VADC_G0->ASSEL = 0x02UL;
				CCU80_CC80->CR1S = 0;
				CCU80_CC80->CR2S = 0;
				CCU80_CC81->CR1S = 0;
				CCU80_CC81->CR2S = InnerPWMPeriod+1;
				CCU80_CC82->CR1S = InnerPWMCompare;
				CCU80_CC82->CR2S = InnerPWMPeriod+1;
				break;
			case 5:
				VADC_G0->ASSEL = 0x01UL;
				CCU80_CC80->CR1S = 0;
				CCU80_CC80->CR2S = InnerPWMPeriod+1;
				CCU80_CC81->CR1S = 0;
				CCU80_CC81->CR2S = 0;
				CCU80_CC82->CR1S = InnerPWMCompare;
				CCU80_CC82->CR2S = InnerPWMPeriod+1;
				break;
		}
		CCU80_CC83->CR1S = InnerPWMCompare-1;//>>1;
		CCU80_CC83->CR2S = InnerPWMCompare-1;//>>1;
		CCU80->GCSS |= 0x1111;

		// --- all shadow registers set?
		while ((CCU80->GCST & 0x1111) != 0);

		CCU80_CC83->INTE |= 1UL<<4;
	}
	else
		motorState=Running;
}

uint8_t GetPhaseState()
{
	return PhaseState;
}

void StartMotor()
{
	//Start slices
	SCU_GENERAL->CCUCON |= 0x100UL;
	SCU_GENERAL->CCUCON &= ~(0x100UL);

	//Start slices
	CCU40_CC40->TCSET |= 0x01UL;

	motorState=Starting;
}

void StopMotor()
{
	InnerPWMCompare=InnerPWMPeriod*CurrentDutyCycleStart;

	//Stop slices CCU4
	CCU40_CC40->TCCLR |= 3UL;

	//Stop slices CCU8
	CCU80_CC80->TCCLR |= 3UL;
	CCU80_CC81->TCCLR |= 3UL;
	CCU80_CC82->TCCLR |= 3UL;
	CCU80_CC83->TCCLR |= 3UL;

	motorState=Stopped;
}

void SetReferenceCurrent(uint16_t ref)
{
	if (motorState == Stopped && ref > 130)
		StartMotor();
	else if(motorState != Stopped && ref <= 130)
		StopMotor();

	if (motorState == Running)
		InnerPWMCompare=ref;
}
