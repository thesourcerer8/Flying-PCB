/*
 * util.c
 *
 *  Created on: 04.04.2015
 *      Author: maan
 */

#include "util.h"

volatile uint32_t timer_cnt = 0U;

void Utils_T_ISR(void)
{
	timer_cnt++;
}

void delay(uint32_t pause)
{
	uint32_t now = timer_cnt;
	while((now+pause)>timer_cnt);
}

uint32_t millis()
{
	return timer_cnt;
}

