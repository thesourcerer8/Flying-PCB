/*
 * Attitudecontroller.h
 *
 *  Created on: 29.12.2014
 *      Author: maan
 */

#ifndef ATTITUDECONTROLLER_H_
#define ATTITUDECONTROLLER_H_

#include <arm_math.h>

void AngleController(float *r, float *y, int n, const float *a, const float *b, float *x, float *u);
void AngleRateController(float *r, float *y, const float *P, float *u);
void CreatePulseWidth(float *u_phi, float *u_deta, float *u_psi_dot, float *u_hover, float *PWM_width);

#endif /* ATTITUDECONTROlLER_H_ */
