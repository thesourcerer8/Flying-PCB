/*
 * DaisyChain.h
 *
 *  Created on: 02.05.2015
 *      Author: Andreas
 */

#ifndef DAISYCHAIN_H_
#define DAISYCHAIN_H_

#include "DaisyCodes.h"
#include "BlockCommutation.h"

#define DaisyWatchDog_ISR IRQ_Hdlr_22

void DaisyChain();
void InitDaisyWatchDog();

#endif /* DAISYCHAIN_H_ */
