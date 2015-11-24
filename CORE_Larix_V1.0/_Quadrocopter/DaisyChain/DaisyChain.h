/*
 * DaisyChain.h
 *
 *  Created on: 15.09.2015
 *      Author: maan
 */

#ifndef DAISYCHAIN_H_
#define DAISYCHAIN_H_

#include "../../../ESC_Pinus_XMC1302_V1.2/DaisyCodes.h"
#include <DAVE3.h>

void InitDaisy();
void SendDaisyData(uint8_t command, uint16_t data1, uint16_t data2, uint16_t data3, uint16_t data4);

#endif /* DAISYCHAIN_H_ */
