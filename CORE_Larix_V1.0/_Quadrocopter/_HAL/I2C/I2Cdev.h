/*
 * i2c_e.c
 *
 *  Created on: 25.02.2014
 *      Author: WielandD
 */

#ifndef I2C_E_H_
#define I2C_E_H_

#include <DAVE3.h>
#include <arm_math.h>

#define I2C_TimeOut 5000

bool I2Cdev_writeByte(uint8_t deviceAddress, uint8_t registerAddress, uint8_t data);
bool I2Cdev_writeBytes(uint8_t devAddr, uint8_t regAddr, uint8_t length, uint8_t* data);
uint8_t I2Cdev_readByte(uint8_t devAddr, uint8_t regAddr);
int8_t I2Cdev_readBytes(uint8_t devAddr, uint8_t regAddr, uint8_t length, uint8_t *data);
void I2C_Prot_Int_Handler(void);

#endif /* I2C_E_H_ */
