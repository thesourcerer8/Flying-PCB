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
#include <DAVE3.h>

void Timer_CompareMatch_Int_Handler(void);
void delay(uint32_t pause);
uint32_t millis();
void transformation(float* values);
void transformation_mag(float* values);

#endif /* UTIL_H_ */
