/*
 * DaisyChain.h
 *
 *  Created on: 02.05.2015
 *      Author: Andreas
 */

#ifndef DAISYCHAIN_H_
#define DAISYCHAIN_H_

#define ESC_UART_Handle  UART001_Handle2
#define ESC_UART_RX_NVIC_Handle  NVIC002_Handle10

#define MOTOR_START 	    10
#define MOTOR_STOP          15
#define SET_MOTOR_SPEED    	34

#define MCI_BufferSize 		12
#define MCI_MessageLength 	3
#define MCI_DAISY_INIT_BYTE 111

void InitDaisy();
void MCI_DAYSI_RX_ISR(void);

#endif /* DAISYCHAIN_H_ */
