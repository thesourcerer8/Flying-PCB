/*
 * BlockCommutation.h
 *
 *  Created on: 01.09.2015
 *      Author: maan
 */

#ifndef BLOCKCOMMUTATION_H_
#define BLOCKCOMMUTATION_H_

#include <DAVE3.h>

#define BlockCommutation_ISR IRQ_Hdlr_21
#define ADCTrigger		 IRQ_Hdlr_26

enum MotorState
{
	Stopped,
	Starting,
	Running
};

void InitBlockCommutation();

uint8_t GetPhaseState();

void StartMotor();
void StopMotor();
void SetReferenceCurrent(uint16_t ref);

#endif /* BLOCKCOMMUTATION_H_ */
