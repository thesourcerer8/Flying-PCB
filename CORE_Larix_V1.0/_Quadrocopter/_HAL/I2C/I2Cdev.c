/*
 * i2c_e.c
 *
 *  Created on: 25.02.2014
 *      Author: WielandD
 */

#include "I2Cdev.h"

bool I2Cdev_writeBytes(uint8_t devAddr, uint8_t regAddr, uint8_t length, uint8_t* data)
{
	I2C001_DataType data1;

	data1.Data1.TDF_Type = I2C_TDF_MStart;
	data1.Data1.Data = (devAddr | I2C_WRITE);
	for (int cnt=1; !I2C001_WriteData(&I2C001_Handle0, &data1); cnt++)
	{
		if (cnt%I2C_TimeOut==0)
			return (bool)FALSE;
	}

	data1.Data1.TDF_Type = I2C_TDF_MTxData;
	data1.Data1.Data = regAddr;
	for (int cnt=1; !I2C001_WriteData(&I2C001_Handle0, &data1); cnt++)
	{
		if (cnt%I2C_TimeOut==0)
			return (bool)FALSE;
	}

	for(int i=0; i<length; i++)
	{
		data1.Data1.TDF_Type = I2C_TDF_MTxData;
		data1.Data1.Data = data[i];
		for (int cnt=1; !I2C001_WriteData(&I2C001_Handle0, &data1); cnt++)
		{
			if (cnt%I2C_TimeOut==0)
				return (bool)FALSE;
		}
	}
	data1.Data1.TDF_Type = I2C_TDF_MStop;
	data1.Data1.Data = ubyteFF;
	for (int cnt=1; !I2C001_WriteData(&I2C001_Handle0, &data1); cnt++)
	{
		if (cnt%I2C_TimeOut==0)
			return (bool)FALSE;
	}

	return (bool)TRUE;
}

bool I2Cdev_writeByte(uint8_t devAddr, uint8_t regAddr, uint8_t data)
{
	return I2Cdev_writeBytes(devAddr, regAddr, 1, &data);
}

int8_t I2Cdev_readBytes(uint8_t devAddr, uint8_t regAddr, uint8_t length, uint8_t* data)
{
	I2C001_DataType data1;
	uint16_t rec=0x00;
	int i=0;

	data1.Data1.TDF_Type = I2C_TDF_MStart;
	data1.Data1.Data = (devAddr | I2C_WRITE);
	for (int cnt=1; !I2C001_WriteData(&I2C001_Handle0, &data1); cnt++)
	{
		if (cnt%I2C_TimeOut==0)
			return 0;
	}

	data1.Data1.TDF_Type = I2C_TDF_MTxData;
	data1.Data1.Data = regAddr;
	for (int cnt=1; !I2C001_WriteData(&I2C001_Handle0, &data1); cnt++)
	{
		if (cnt%I2C_TimeOut==0)
			return 0;
	}

	data1.Data1.TDF_Type = I2C_TDF_MRStart;
	data1.Data1.Data = devAddr | I2C_READ;
	for (int cnt=1; !I2C001_WriteData(&I2C001_Handle0, &data1); cnt++)
	{
		if (cnt%I2C_TimeOut==0)
			return 0;
	}

	for (i=0; i<length; i++)
	{
		if (i<length-1)
			data1.Data1.TDF_Type = I2C_TDF_MRxAck0;
		else
			data1.Data1.TDF_Type = I2C_TDF_MRxAck1;

		data1.Data1.Data = ubyteFF;
		for (int cnt=1; !I2C001_WriteData(&I2C001_Handle0, &data1); cnt++)
		{
			if (cnt%I2C_TimeOut==0)
				return 0;
		}
	}

	data1.Data1.TDF_Type = I2C_TDF_MStop;
	data1.Data1.Data = ubyteFF;
	for (int cnt=1; !I2C001_WriteData(&I2C001_Handle0, &data1); cnt++)
	{
		if (cnt%I2C_TimeOut==0)
			return 0;
	}

	for(i=0; i<length; i++)
	{
		for (int cnt=1; !I2C001_ReadData(&I2C001_Handle0, &rec); cnt++)
		{
			if (cnt%I2C_TimeOut==0)
				return 0;
		}
		data[i]=rec;
	}

	return i;
}

uint8_t I2Cdev_readByte(uint8_t devAddr, uint8_t regAddr)
{
	uint8_t data=0x00;
	if (I2Cdev_readBytes(devAddr, regAddr, 1, &data))
		return data;
	else
		return 0;
}

void I2C_Prot_Int_Handler(void)
{
	// no acknowledge received --> error, turn on LED
	I2C001_Handle0.I2CRegs->FMR = 0x00000002U << USIC_CH_FMR_MTDV_Pos; // clear TDV and TE
	I2C001_Handle0.I2CRegs->TRBSCR = USIC_CH_TRBSCR_FLUSHTB_Msk; // flush FIFO transmit buffer
	I2C001_Handle0.I2CRegs->PSCR |= USIC_CH_PSCR_CST5_Msk; // clear PSR.NACK flag
}
