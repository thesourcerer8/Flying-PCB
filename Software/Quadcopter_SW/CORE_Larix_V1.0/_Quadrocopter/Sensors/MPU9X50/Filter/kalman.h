/*
 * kalman.h
 *
 *  Created on: 07.04.2015
 *      Author: maan
 */

#ifndef KALMAN_H_
#define KALMAN_H_

typedef struct KALMAN
{
/* Kalman filter variables */
float Q_angle; // Process noise variance for the accelerometer
float Q_bias; // Process noise variance for the gyro bias
float R_measure; // Measurement noise variance - this is actually the variance of the measurement noise

float angle; // The angle calculated by the Kalman filter - part of the 2x1 state vector
float bias; // The gyro bias calculated by the Kalman filter - part of the 2x1 state vector
float rate; // Unbiased rate calculated from the rate and the calculated bias - you have to call getAngle to update the rate

float P[2][2]; // Error covariance matrix - This is a 2x2 matrix
} KALMAN_t;

float KALMAN_getAngle(KALMAN_t *handle, float newAngle, float newRate, float dt);
void KALMAN_Init(KALMAN_t *handle, float Q_angle, float Q_bias, float R_measure);
void KALMAN_setAngle(KALMAN_t *handle, float newAngle);
float KALMAN_getRate(KALMAN_t *handle);
void KALMAN_setQangle(KALMAN_t *handle, float newQ_angle);
void KALMAN_setQbias(KALMAN_t *handle, float newQ_bias);
void KALMAN_setRmeasure(KALMAN_t *handle, float newR_measure);
float KALMAN_getQangle(KALMAN_t *handle);
float KALMAN_getQbias(KALMAN_t *handle);
float KALMAN_getRmeasure(KALMAN_t *handle);

#endif /* KALMAN_H_ */
