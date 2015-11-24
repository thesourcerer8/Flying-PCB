/*
 * kalman.c
 *
 *  Created on: 07.04.2015
 *      Author: maan
 */

#include "kalman.h"

// The angle should be in degrees and the rate should be in degrees per second and the delta time in seconds
float KALMAN_getAngle(KALMAN_t *handle, float newAngle, float newRate, float dt)
{
	// KasBot V2  -  Kalman filter module - http://www.x-firm.com/?page_id=145
	// Modified by Kristian Lauszus
	// See my blog post for more information: http://blog.tkjelectronics.dk/2012/09/a-practical-approach-to-kalman-filter-and-how-to-implement-it

	// Discrete Kalman filter time update equations - Time Update ("Predict")
	// Update xhat - Project the state ahead
	/* Step 1 */
	handle->rate = newRate - handle->bias;
	handle->angle += dt * handle->rate;

	// Update estimation error covariance - Project the error covariance ahead
	/* Step 2 */
	handle->P[0][0] += dt * (dt*handle->P[1][1] - handle->P[0][1] - handle->P[1][0] + handle->Q_angle);
	handle->P[0][1] -= dt * handle->P[1][1];
	handle->P[1][0] -= dt * handle->P[1][1];
	handle->P[1][1] += handle->Q_bias * dt;

	// Discrete Kalman filter measurement update equations - Measurement Update ("Correct")
	// Calculate Kalman gain - Compute the Kalman gain
	/* Step 4 */
	float S = handle->P[0][0] + handle->R_measure; // Estimate error
	/* Step 5 */
	float K[2]; // Kalman gain - This is a 2x1 vector
	K[0] = handle->P[0][0] / S;
	K[1] = handle->P[1][0] / S;

	// Calculate angle and bias - Update estimate with measurement zk (newAngle)
	/* Step 3 */
	float y = newAngle - handle->angle; // Angle difference
	/* Step 6 */
	handle->angle += K[0] * y;
	handle->bias += K[1] * y;

	// Calculate estimation error covariance - Update the error covariance
	/* Step 7 */
	float P00_temp = handle->P[0][0];
	float P01_temp = handle->P[0][1];

	handle->P[0][0] -= K[0] * P00_temp;
	handle->P[0][1] -= K[0] * P01_temp;
	handle->P[1][0] -= K[1] * P00_temp;
	handle->P[1][1] -= K[1] * P01_temp;

	return handle->angle;
}

void KALMAN_Init(KALMAN_t *handle, float Q_angle, float Q_bias, float R_measure)
{
    /* We will set the variables like so, these can also be tuned by the user */
	handle->Q_angle = Q_angle;
	handle->Q_bias = Q_bias;
	handle->R_measure = R_measure;

	handle->angle = 0.0f; // Reset the angle
	handle->bias = 0.0f; // Reset bias

	handle->P[0][0] = 0.0f; // Since we assume that the bias is 0 and we know the starting angle (use setAngle), the error covariance matrix is set like so - see: http://en.wikipedia.org/wiki/Kalman_filter#Example_application.2C_technical
	handle->P[0][1] = 0.0f;
	handle->P[1][0] = 0.0f;
	handle->P[1][1] = 0.0f;
}

void KALMAN_setAngle(KALMAN_t *handle, float newAngle) { handle->angle = newAngle; } // Used to set angle, this should be set as the starting angle
float KALMAN_getRate(KALMAN_t *handle) { return handle->rate; } // Return the unbiased rate

/* These are used to tune the Kalman filter */
void KALMAN_setQangle(KALMAN_t *handle, float newQ_angle) { handle->Q_angle = newQ_angle; }
void KALMAN_setQbias(KALMAN_t *handle, float newQ_bias) { handle->Q_bias = newQ_bias; }
void KALMAN_setRmeasure(KALMAN_t *handle, float newR_measure) { handle->R_measure = newR_measure; }

float KALMAN_getQangle(KALMAN_t *handle) { return handle->Q_angle; }
float KALMAN_getQbias(KALMAN_t *handle) { return handle->Q_bias; }
float KALMAN_getRmeasure(KALMAN_t *handle) { return handle->R_measure; }
