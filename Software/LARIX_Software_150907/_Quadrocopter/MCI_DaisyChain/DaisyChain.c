///*
// * DaisyChain.c
// *
// *  Created on: 02.05.2015
// *      Author: Andreas
// */
//
//#include <DAVE3.h>
//
//#include "DaisyChain.h"
//
//uint8_t FifoRecBuffer[MCI_BufferSize] = {0};
//uint8_t FifoTransBuffer[MCI_BufferSize] = {0};
//
//void MCI_DAYSI_RX_ISR(void)
//{
//	uint8_t i=0;
//	status_t status=0;
//	uint32_t data=0;
//
//	//Check if receive buffer interrupt is set
//	if(UART001_GetFlagStatus(&MCI_DAYSI_UART_Handle,UART001_FIFO_STD_RECV_BUF_FLAG) == UART001_SET)
//	{
//		//Read data from UART buffer
//		UART001_ReadDataBytes(&MCI_DAYSI_UART_Handle,FifoRecBuffer,MCI_BufferSize);
//		//Clear receive buffer interrupt flag
//		UART001_ClearFlag(&MCI_DAYSI_UART_Handle,UART001_FIFO_STD_RECV_BUF_FLAG);
//
//		uint8_t cmd = FifoRecBuffer[0];
//		uint16_t params =  (FifoRecBuffer[1] << 8 | FifoRecBuffer[2]);
//
//		switch (cmd)
//		{
//			case MOTOR_START:
//				IRMCK_StartMotor();
//				break;
//			case MOTOR_STOP:
//				IRMCK_StopMotor();
//				break;
//			case SET_MOTOR_SPEED:
//				IRMCK_SetMotorSpeed_3000(params);
//				break;
//		}
//
//		for(i=MCI_MessageLength; i<MCI_BufferSize; i++)
//			FifoTransBuffer[i-MCI_MessageLength]=FifoRecBuffer[i];
//
//		//Status-Code
//		FifoTransBuffer[i-MCI_MessageLength]=status;
//		i++;
//		//Data
//		FifoTransBuffer[i-MCI_MessageLength]=(uint8_t)(data >> 8);
//		i++;
//		FifoTransBuffer[i-MCI_MessageLength]=(uint8_t)data;
//
//		UART001_WriteDataBytes(&MCI_DAYSI_UART_Handle, FifoTransBuffer, MCI_BufferSize);
//	}
//}
//
//void InitDaisy()
//{
//	uint8_t rec=0;
//
//	while (rec != MCI_DAISY_INIT_BYTE)
//		while(!UART001_ReadDataBytes(&MCI_DAYSI_UART_Handle, &rec, 1));
//
//	// if init-Byte has been received empty IO buffer
//	while(UART001_ReadDataBytes(&MCI_DAYSI_UART_Handle, &rec, 1));
//
//	//send init-Byte to next ESC
//	rec=MCI_DAISY_INIT_BYTE;
//	UART001_WriteDataBytes(&MCI_DAYSI_UART_Handle, &rec, 1);
//
//	NVIC002_EnableIRQ(&MCI_DAYSI_NVIC_Handle);
//}
