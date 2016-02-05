/*
 * ADC.c
 *
 *  Created on: 01.09.2015
 *      Author: maan
 */

#include "ADC.h"

volatile uint16_t ADCReference=0;

void InitADC()
{
	//Converter is permanently on
	VADC_G0->ARBCFG |= 0x83UL;
	VADC_G1->ARBCFG |= 0x83UL;

	//Start-Up Calibration
	VADC->GLOBCFG |= 1UL << 31;
	VADC->GLOBCFG |= 1UL << 31;
	while(VADC_G0->ARBCFG & (1UL<<28) || VADC_G1->ARBCFG & (1UL<<28));

	//Priority Channel
	VADC_G0->CHASS |= 0x07UL;
	VADC_G1->CHASS |= 0x02UL;

	//Input class
	VADC_G0->CHCTR[0] |= 0x341UL;
	VADC_G0->CHCTR[1] |= 0x341UL;
	VADC_G0->CHCTR[2] |= 0x341UL;
	VADC_G0->RCR[0] |= 1UL <<31;

	VADC_G1->CHCTR[1] |= 1UL;
	VADC_G1->CHCTR[1] |= 1UL << 16;
	VADC_G1->RCR[1] |= 1UL <<31;

	//External Trigger
	VADC_G0->ASCTRL |= 0xC800UL;
	VADC_G1->ASCTRL |= 0xC800UL;

	//Gating mode
	VADC_G0->ASMR |= 0x05UL;
	VADC_G1->ASMR |= 0x05UL;

	//Channel Select
	VADC_G0->ASSEL = 0x04UL;
	VADC_G1->ASSEL = 0x02UL;

	//Enable Arbitration slot
	VADC_G0->ARBPR |= 0x01UL << 25;
	VADC_G1->ARBPR |= 0x01UL << 25;

	//Service Request Software Activation Trigger
	VADC_G0->SRACT |= 0x02UL;
	VADC_G0->REVNP0 |= 1UL << 0;
	NVIC_SetPriority((IRQn_Type)18, 0);
	NVIC_EnableIRQ((IRQn_Type)18);
	VADC_G1->SRACT |= 0x02UL;
	VADC_G1->REVNP0 |= 1UL << 4;
	NVIC_SetPriority((IRQn_Type)20, 2);
	NVIC_EnableIRQ((IRQn_Type)20);

	//IO enable
	PORT2->PDISC &= (~((uint32_t)0x1U << 6));		//Pin 2.6
	PORT2->PDISC &= (~((uint32_t)0x1U << 8));		//Pin 2.8
	PORT2->PDISC &= (~((uint32_t)0x1U << 9));		//Pin 2.9

	PORT2->PDISC &= (~((uint32_t)0x1U << 7));		//Pin 2.7
}

void ZeroCrossing_ISR()
{
	if(VADC_G0->RES[0] & (1UL << 31))
	{
		if((GetPhaseState() % 2 == 0 && ((uint16_t) VADC_G0->RES[0]) < ADCReference) ||
		   (GetPhaseState() % 2 != 0 && ((uint16_t) VADC_G0->RES[0]) > ADCReference))
		{
			CCU40_CC40->TCCLR|=0x02;
			CCU80_CC83->INTE &= ~(1UL<<4);
			IO004_TogglePin(IO004_Handle0);
		}
	}
}

void ReferenceResult_ISR()
{
	if(VADC_G1->RES[1] & (1UL << 31))
		ADCReference = VADC_G1->RES[1];
}
