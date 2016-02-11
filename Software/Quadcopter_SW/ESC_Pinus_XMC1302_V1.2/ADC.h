/*
 * ADC.h
 *
 *  Created on: 01.09.2015
 *      Author: maan
 */

#ifndef ADC_H_
#define ADC_H_

#include <DAVE3.h>
#include "BlockCommutation.h"

#define ZeroCrossing_ISR IRQ_Hdlr_18
#define ReferenceResult_ISR IRQ_Hdlr_20

void InitADC();

#endif /* ADC_H_ */
