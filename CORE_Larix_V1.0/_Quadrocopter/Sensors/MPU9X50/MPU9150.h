/*
 * MPU9150.h
 *
 *  Created on: 03.04.2015
 *      Author: maan
 */

#ifndef MPU9150_H_
#define MPU9150_H_

#include <DAVE3.h>
#include <arm_math.h>
#include "../../_HAL/I2C/I2Cdev.h"
#include "../../_HAL/Delay/util.h"

#define ATTITUDEALGORITHM 	2

#if ATTITUDEALGORITHM == 1
#include "Filter/kalman.h"
#elif ATTITUDEALGORITHM == 2
#include "Filter/QuaternionFilters.h"
#endif

#define DEG_TO_RAD 0.017453292519943295769236907684886f
#define RAD_TO_DEG 57.295779513082320876798154814105f

#define MPU9150_ADDRESS  	0xD0
#define AK8975A_ADDRESS 	0x18

#define WHO_AM_I_AK8975A 	0x00
#define AK8975A_INFO       	0x01
#define AK8975A_ST1      	0x02
#define AK8975A_XOUT_L	 	0x03
#define AK8975A_XOUT_H	 	0x04
#define AK8975A_YOUT_L	 	0x05
#define AK8975A_YOUT_H	 	0x06
#define AK8975A_ZOUT_L	 	0x07
#define AK8975A_ZOUT_H	 	0x08
#define AK8975A_ST2      	0x09
#define AK8975A_CNTL     	0x0A
#define AK8975A_ASTC     	0x0C
#define AK8975A_ASAX     	0x10
#define AK8975A_ASAY     	0x11
#define AK8975A_ASAZ     	0x12

#define XA_OFFSET_H      	0x06
#define XA_OFFSET_L_TC   	0x07
#define YA_OFFSET_H      	0x08
#define YA_OFFSET_L_TC   	0x09
#define ZA_OFFSET_H      	0x0A
#define ZA_OFFSET_L_TC  	0x0B
#define SELF_TEST_X 		0x0D
#define SELF_TEST_Y 		0x0E
#define SELF_TEST_Z 		0x0F
#define SELF_TEST_A      	0x10
#define XG_OFFS_USRH     	0x13
#define XG_OFFS_USRL     	0x14
#define YG_OFFS_USRH     	0x15
#define YG_OFFS_USRL     	0x16
#define ZG_OFFS_USRH     	0x17
#define ZG_OFFS_USRL     	0x18
#define SMPLRT_DIV			0x19
#define CONFIG				0x1A
#define GYRO_CONFIG			0x1B
#define ACCEL_CONFIG		0x1C
#define FIFO_EN				0x23
#define I2C_MST_CTRL		0x24
#define I2C_SLV0_ADDR		0x25
#define I2C_SLV0_REG		0x26
#define I2C_SLV0_CTRL		0x27
#define I2C_SLV1_ADDR		0x28
#define I2C_SLV1_REG		0x29
#define I2C_SLV1_CTRL		0x2A
#define I2C_SLV2_ADDR		0x2B
#define I2C_SLV2_REG		0x2C
#define I2C_SLV2_CTRL		0x2D
#define I2C_SLV3_ADDR		0x2E
#define I2C_SLV3_REG		0x2F
#define I2C_SLV3_CTRL		0x30
#define I2C_SLV4_ADDR		0x31
#define I2C_SLV4_REG		0x32
#define I2C_SLV4_DO			0x33
#define I2C_SLV4_CTRL		0x34
#define I2C_SLV4_DI			0x35
#define I2C_MST_STATUS		0x36
#define INT_PIN_CFG			0x37
#define INT_ENABLE			0x38
#define INT_STATUS			0x3A
#define ACCEL_XOUT_H		0x3B
#define ACCEL_XOUT_L		0x3C
#define ACCEL_YOUT_H		0x3D
#define ACCEL_YOUT_L		0x3E
#define ACCEL_ZOUT_H		0x3F
#define ACCEL_ZOUT_L		0x40
#define TEMP_OUT_H			0x41
#define TEMP_OUT_L			0x42
#define GYRO_XOUT_H			0x43
#define GYRO_XOUT_L			0x44
#define GYRO_YOUT_H			0x45
#define GYRO_YOUT_L			0x46
#define GYRO_ZOUT_H			0x47
#define GYRO_ZOUT_L			0x48
#define EXT_SENS_DATA_00	0x49
#define EXT_SENS_DATA_01	0x4A
#define EXT_SENS_DATA_02	0x4B
#define EXT_SENS_DATA_03	0x4C
#define EXT_SENS_DATA_04	0x4D
#define EXT_SENS_DATA_05	0x4E
#define EXT_SENS_DATA_06	0x4F
#define EXT_SENS_DATA_07	0x50
#define EXT_SENS_DATA_08	0x51
#define EXT_SENS_DATA_09	0x52
#define EXT_SENS_DATA_10	0x53
#define EXT_SENS_DATA_11	0x54
#define EXT_SENS_DATA_12	0x55
#define EXT_SENS_DATA_13	0x56
#define EXT_SENS_DATA_14	0x57
#define EXT_SENS_DATA_15	0x58
#define EXT_SENS_DATA_16	0x59
#define EXT_SENS_DATA_17	0x5A
#define EXT_SENS_DATA_18	0x5B
#define EXT_SENS_DATA_19	0x5C
#define EXT_SENS_DATA_20	0x5D
#define EXT_SENS_DATA_21	0x5E
#define EXT_SENS_DATA_22	0x5F
#define EXT_SENS_DATA_23	0x60
#define I2C_SLV0_DO			0x63
#define I2C_SLV1_DO			0x64
#define I2C_SLV2_DO			0x65
#define I2C_SLV3_DO			0x66
#define I2C_MST_DELAY_CTRL	0x67
#define SIGNAL_PATH_RESET	0x68
#define USER_CTRL			0x6A
#define PWR_MGMT_1			0x6B
#define PWR_MGMT_2			0x6C
#define FIFO_COUNTH			0x72
#define FIFO_COUNTL			0x73
#define FIFO_R_W			0x74
#define WHO_AM_I_MPU9150	0x75

// Set initial input parameters
enum Ascale {
  AFS_2G = 0,
  AFS_4G,
  AFS_8G,
  AFS_16G
};

enum Gscale {
  GFS_250DPS = 0,
  GFS_500DPS,
  GFS_1000DPS,
  GFS_2000DPS
};

void MPU9150_Setup();
bool MPU9150_SelfTest();
void MPU9150_Calibrate();
void MPU9150_Init();
void MPU9150_InitAK8975A(float * destination);

void GetAngles(float* angles);
void GetAccData(float* pt);
void GetGyroData(float* pt);
void GetMagData(float* pt);
uint16_t GetSensorCount();

void ERU_Event_Handler();

#endif /* MPU9150_H_ */
