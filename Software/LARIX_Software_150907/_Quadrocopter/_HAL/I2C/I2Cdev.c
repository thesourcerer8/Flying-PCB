/*
 * i2c_e.c
 *
 *  Created on: 25.02.2014
 *      Author: WielandD
 */

#include "I2Cdev.h"

bool I2Cdev_writeBytes(const I2C001Handle_type *handle,uint8_t devAddr, uint8_t regAddr, uint8_t length, uint8_t* data)
{
	I2C001_DataType data1;

	data1.Data1.TDF_Type = I2C_TDF_MStart;
	data1.Data1.Data = (devAddr | I2C_WRITE);
	for (int cnt=1; !I2C001_WriteData(handle, &data1); cnt++)
	{
		if (cnt%I2C_TimeOut==0)
			return (bool)FALSE;
	}

	data1.Data1.TDF_Type = I2C_TDF_MTxData;
	data1.Data1.Data = regAddr;
	for (int cnt=1; !I2C001_WriteData(handle, &data1); cnt++)
	{
		if (cnt%I2C_TimeOut==0)
			return (bool)FALSE;
	}

	for(int i=0; i<length; i++)
	{
		data1.Data1.TDF_Type = I2C_TDF_MTxData;
		data1.Data1.Data = data[i];
		for (int cnt=1; !I2C001_WriteData(handle, &data1); cnt++)
		{
			if (cnt%I2C_TimeOut==0)
				return (bool)FALSE;
		}
	}
	data1.Data1.TDF_Type = I2C_TDF_MStop;
	data1.Data1.Data = ubyteFF;
	for (int cnt=1; !I2C001_WriteData(handle, &data1); cnt++)
	{
		if (cnt%I2C_TimeOut==0)
			return (bool)FALSE;
	}

	return (bool)TRUE;
}

bool I2Cdev_writeByte(const I2C001Handle_type *handle,uint8_t devAddr, uint8_t regAddr, uint8_t data)
{
	return I2Cdev_writeBytes(handle,devAddr, regAddr, 1, &data);
}


int16_t I2Cdev_readBytes(const I2C001Handle_type *handle,uint8_t devAddr, uint8_t regAddr, uint8_t length, uint8_t* data)
{
	I2C001_DataType data1;
	uint16_t rec=0x00;
	int16_t i=0;

	data1.Data1.TDF_Type = I2C_TDF_MStart;
	data1.Data1.Data = (devAddr | I2C_WRITE);
	for (int cnt=1; !I2C001_WriteData(handle, &data1); cnt++)
	{
		if (cnt%I2C_TimeOut==0)
			return 0;
	}

	data1.Data1.TDF_Type = I2C_TDF_MTxData;
	data1.Data1.Data = regAddr;
	for (int cnt=1; !I2C001_WriteData(handle, &data1); cnt++)
	{
		if (cnt%I2C_TimeOut==0)
			return 0;
	}

	data1.Data1.TDF_Type = I2C_TDF_MRStart;
	data1.Data1.Data = devAddr | I2C_READ;
	for (int cnt=1; !I2C001_WriteData(handle, &data1); cnt++)
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
		for (int cnt=1; !I2C001_WriteData(handle, &data1); cnt++)
		{
			if (cnt%I2C_TimeOut==0)
				return 0;
		}
	}

	data1.Data1.TDF_Type = I2C_TDF_MStop;
	data1.Data1.Data = ubyteFF;
	for (int cnt=1; !I2C001_WriteData(handle, &data1); cnt++)
	{
		if (cnt%I2C_TimeOut==0)
			return 0;
	}

	for(i=0; i<length; i++)
	{
		for (int cnt=1; !I2C001_ReadData(handle, &rec); cnt++)
		{
			if (cnt%I2C_TimeOut==0)
				return 0;
		}
		data[i]=(uint8_t)rec;
		/*Todo: I2C001.c I2C001_ReadData(...) -> 16bit ausgelesen, aber 8 bit übergeben
		sollte ausgebessert werden
		*/
	}

	return i;
}

int16_t I2Cdev_readByte(const I2C001Handle_type *handle, uint8_t devAddr, uint8_t regAddr)
{
	uint8_t data=0x00;
	if (I2Cdev_readBytes(handle,devAddr, regAddr, 1, &data))
		return (int16_t)data;
	else
		return -1;
}

void MPU9X50_I2C_FORMAT_ERROR_ISR(void)
{
	// no acknowledge received --> error, turn on LED
	MPU9150_I2C_Handle.I2CRegs->FMR = 0x00000002U << USIC_CH_FMR_MTDV_Pos; // clear TDV and TE
	MPU9150_I2C_Handle.I2CRegs->TRBSCR = USIC_CH_TRBSCR_FLUSHTB_Msk; // flush FIFO transmit buffer
	MPU9150_I2C_Handle.I2CRegs->PSCR |= USIC_CH_PSCR_CST5_Msk; // clear PSR.NACK flag
}

void DPS310_I2C_FORMAT_ERROR_ISR(void)
{
	// no acknowledge received --> error, turn on LED
	DPS310_I2C_Handle.I2CRegs->FMR = 0x00000002U << USIC_CH_FMR_MTDV_Pos; // clear TDV and TE
	DPS310_I2C_Handle.I2CRegs->TRBSCR = USIC_CH_TRBSCR_FLUSHTB_Msk; // flush FIFO transmit buffer
	DPS310_I2C_Handle.I2CRegs->PSCR |= USIC_CH_PSCR_CST5_Msk; // clear PSR.NACK flag
}


