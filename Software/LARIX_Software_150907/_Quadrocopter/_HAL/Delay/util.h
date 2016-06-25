/*
 * util.h
 *
 *  Created on: 04.04.2015
 *      Author: maan
 */

#ifndef UTIL_H_
#define UTIL_H_

#include<stdio.h>
#include<math.h>
#ifndef DEBUG_ON_PC
#include <DAVE3.h>
#endif

void Timer_CompareMatch_Int_Handler(void);
void delay(uint32_t pause);
uint32_t millis();

#endif /* UTIL_H_ */
