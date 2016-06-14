/*
 * DPS310.c
 *
 *  Created on: 01.09.2015
 *      Author: SteurerE
 */

#include "DPS310.h"


uint32_t pressure = 0;
uint32_t temperature = 0;
uint32_t arr[100];
uint16_t DPS310_INT_counter = 0;


void DPS_EXT_INT_ISR(void)

{
	pressure = getPressure();
	temperature = getTemperature();
    I2Cdev_readByte((const I2C001Handle_type*)&DPS310_I2C_Handle,DPS310_Address,0x0A);
	arr[DPS310_INT_counter] = pressure;
	DPS310_INT_counter++;

}



void updateValues(uint32_t *press,uint32_t *temp)
{
	*press = pressure;
	*temp = temperature;
}

 SensorError setupDPS310()
{

		SensorError result = I2Cdev_writeByte((const I2C001Handle_type*)&DPS310_I2C_Handle,DPS310_Address,0x0C,0x09);	// Software Reset
		delay(100);
		result = setRegister(DPS310_Address,0x06,0x77); // Pressure Configuration
		if(result)return result;
		result = setRegister(DPS310_Address,0x07,0x77); // Temperature Configuration
		if(result)return result;
		result = setRegister(DPS310_Address,0x08,0xc7); // Bit 4 -7 only read, Bit 0-2 Continous pressure and temperature measurement
		if(result)return result;
		result = setRegister(DPS310_Address,0x09,0x2C); // Interrupt configuration, pressure interrupt/ active low, shift pressure/temperature
		I2Cdev_readByte((const I2C001Handle_type*)&DPS310_I2C_Handle,DPS310_Address,0x0A);//Todo: wird benutzt um IR-Flag garantiert zu clearen(unbedingt noetig fuer funktion)
		return result;
}


uint32_t getPressure()
{
	//Read Pressure start------------------------------------------------------------------------------------------------------------------------------
	uint8_t register0 = I2Cdev_readByte((const I2C001Handle_type*)&DPS310_I2C_Handle, DPS310_Address,0x00);
	uint8_t register1 = I2Cdev_readByte((const I2C001Handle_type*)&DPS310_I2C_Handle, DPS310_Address,0x01);
	uint8_t register2 = I2Cdev_readByte((const I2C001Handle_type*)&DPS310_I2C_Handle, DPS310_Address,0x02);
	//Read Pressure end------------------------------------------------------------------------------------------------------------------------------
	return ((uint32_t)(register0<<16)) | ((uint32_t)(register1<<8)) | ((uint32_t)register2);
}

uint32_t getTemperature()
{
	//Read Temp start------------------------------------------------------------------------------------------------------------------------------
	uint8_t register3 = I2Cdev_readByte((const I2C001Handle_type*)&DPS310_I2C_Handle, DPS310_Address,0x03);
	uint8_t register4 = I2Cdev_readByte((const I2C001Handle_type*)&DPS310_I2C_Handle, DPS310_Address,0x04);
	uint8_t register5 = I2Cdev_readByte((const I2C001Handle_type*)&DPS310_I2C_Handle, DPS310_Address,0x05);
	//Read Temp end------------------------------------------------------------------------------------------------------------------------------
	return ((uint32_t)(register3<<16)) | ((uint32_t)(register4<<8)) | ((uint32_t)register5);
}

SensorError setRegister(uint8_t DPS310Address, uint8_t registerAdress, uint8_t setValue)
{

SensorError	worked = NO_ERROR;
I2Cdev_writeByte((const I2C001Handle_type*)&DPS310_I2C_Handle,DPS310Address,registerAdress,setValue); // write variable in register
if(setValue != I2Cdev_readByte((const I2C001Handle_type*)&DPS310_I2C_Handle,DPS310Address,registerAdress))
{
switch(registerAdress)
{
case 0x06:
worked = PRESSURE_CONFIG;
break;

case 0x07:
worked = TEMPERATURE_CONFIG;
break;

case 0x08:
worked = SET_CONTINOUS;
break;

case 0x09:
worked = IR_CONFIG;
break;
}
}
return worked;
}
