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

#define DPS310_I2C_Handle  I2C001_Handle1
#define MPU9150_I2C_Handle I2C001_Handle0

bool I2Cdev_writeByte(const I2C001Handle_type *handle,uint8_t devAddr, uint8_t regAddr, uint8_t data);
bool I2Cdev_writeBytes(const I2C001Handle_type *handle,uint8_t devAddr, uint8_t regAddr, uint8_t length, uint8_t* data);
int16_t I2Cdev_readByte(const I2C001Handle_type *handle, uint8_t devAddr, uint8_t regAddr);
int16_t I2Cdev_readBytes(const I2C001Handle_type *handle,uint8_t devAddr, uint8_t regAddr, uint8_t length, uint8_t* data);
void I2C_Prot_Int_Handler(void);

#endif /* I2C_E_H_ */
