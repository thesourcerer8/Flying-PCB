/*
 * AttitudeController.c
 *
 *  Created on: 29.12.2014
 *      Author: maan
 */
#include "AttitudeController.h"

void AngleController(float *r, float *y, int n, const float *a, const float *b, float *x, float *u)
{
	//PID-Controller

	//control error
	float e = (*r - *y)*M_PI/180.0;

	//calculate plant input
	*u = x[n-1]+b[n]*e;

	//calculate new coefficients
	for (int i=n-1; i>0; i--)
		x[i]=b[i]*e-a[i]*(*u)+x[i-1];

	x[0]=b[0]*e-a[0]*(*u);

	*u/=4.0;
}

void AngleRateController(float *r, float *y, const float *P, float *u)
{
	//P-Controller
	*u=(*r - *y)*M_PI/(180.0*4) * *P;
}

void CreatePulseWidth(float *u_phi, float *u_theta, float *u_psi_dot, float *u_hover, float *PWM_width)
{
	float saturationMax=100;
	float saturationMin=10;

	//*u_psi_dot = 0;
	//*u_theta = 0;
	//*u_phi = 0;

	if (*u_hover > 5.0)
	{
		PWM_width[0]=-*u_theta+*u_phi-*u_psi_dot+*u_hover;
		PWM_width[1]=-*u_theta-*u_phi+*u_psi_dot+*u_hover;
		PWM_width[2]=*u_theta+*u_phi+*u_psi_dot+*u_hover;
		PWM_width[3]=*u_theta-*u_phi-*u_psi_dot+*u_hover;
	}
	else
	{
		PWM_width[0]=*u_hover;
		PWM_width[1]=*u_hover;
		PWM_width[2]=*u_hover;
		PWM_width[3]=*u_hover;
	}

	if (PWM_width[0]>saturationMax)
		PWM_width[0]=saturationMax;

	if (PWM_width[0]<saturationMin)
		PWM_width[0]=saturationMin;

	if (PWM_width[1]>saturationMax)
		PWM_width[1]=saturationMax;

	if (PWM_width[1]<saturationMin)
		PWM_width[1]=saturationMin;

	if (PWM_width[2]>saturationMax)
		PWM_width[2]=saturationMax;

	if (PWM_width[2]<saturationMin)
		PWM_width[2]=saturationMin;

	if (PWM_width[3]>saturationMax)
		PWM_width[3]=saturationMax;

	if (PWM_width[3]<saturationMin)
		PWM_width[3]=saturationMin;
}
