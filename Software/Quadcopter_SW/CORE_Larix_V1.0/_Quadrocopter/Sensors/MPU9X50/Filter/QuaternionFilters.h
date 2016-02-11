/*
 * QuaternionFilters.h
 *
 *  Created on: 06.05.2015
 *      Author: maan
 */

#ifndef QUATERNIONFILTERS_H_
#define QUATERNIONFILTERS_H_

#include <DAVE3.h>
#include <arm_math.h>

#define GYROMEASERROR	PI * (40.0f / 180.0f)
#define Kp 2.0f * 5.0f // these are the free parameters in the Mahony filter and fusion scheme, Kp for proportional feedback, Ki for integral
#define Ki 0.0f

void MadgwickQuaternionUpdate(float* q, float deltat, float ax, float ay, float az, float gx, float gy, float gz, float mx, float my, float mz);
void MahonyQuaternionUpdate(float* q, float* eInt, float deltat, float ax, float ay, float az, float gx, float gy, float gz, float mx, float my, float mz);

#endif /* QUATERNIONFILTERS_H_ */
