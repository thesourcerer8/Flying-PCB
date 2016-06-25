/*
 * DPS310.h
 *
 *  Created on: 01.09.2015
 *      Author: SteurerE
 */

#ifndef DPS310_H_
#define DPS310_H_

#ifndef DEBUG_ON_PC
#include <Dave3.h>
#include "../../_HAL/Delay/util.h"
#include "../../_HAL/I2C/I2Cdev.h"
#endif

#define DPS310_Address (0x77<<1)

typedef enum _SENSOR_ERROR_
{
	NO_ERROR,
	PRESSURE_CONFIG,
	TEMPERATURE_CONFIG,
	SET_CONTINOUS,
	IR_CONFIG
}SensorError;

SensorError setupDPS310();
SensorError setRegister(uint8_t DPS310Address, uint8_t registerAdress, uint8_t setValue);
uint32_t getTemperature();
uint32_t getPressure();
void updateValues(uint32_t *press,uint32_t *temp);

#endif /* DPS310_H_ */
