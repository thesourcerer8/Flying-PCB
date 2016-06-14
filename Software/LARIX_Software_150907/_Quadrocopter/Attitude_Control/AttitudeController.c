/*
 * AttitudeController.c
 *
 *  Created on: 29.12.2014
 *      Author: maan
 */
#include "AttitudeController.h"

float FLY = 0.0;

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

void CalculateActuatorSpeed_Percent(float *u_phi, float *u_deta, float *u_psi_dot, float *u_hover, float *PWM_width, float *anglePitch, float *angleRoll)
{
	float saturation=100;

	//*u_psi_dot = 0;
	//*u_phi = 0;
	//*u_deta = 0;

	if (*u_hover > 5.0)
	{
		PWM_width[0]=*u_phi+*u_deta-*u_psi_dot+*u_hover;
		PWM_width[1]=*u_phi-*u_deta+*u_psi_dot+*u_hover;
		PWM_width[2]=-*u_phi+*u_deta+*u_psi_dot+*u_hover;
		PWM_width[3]=-*u_phi-*u_deta-*u_psi_dot+*u_hover;
	}

	else
	{
		PWM_width[0]=*u_hover;
		PWM_width[1]=*u_hover;
		PWM_width[2]=*u_hover;
		PWM_width[3]=*u_hover;
	}


	// Calculate vertical PWM rate of each rotor
	// Calculate the hover force of all rotors
	FLY=(PWM_width[0]+PWM_width[1]+PWM_width[2]+PWM_width[3])*cos(*anglePitch)*cos(*angleRoll);

	if (PWM_width[0]>saturation)
		PWM_width[0]=saturation;

	if (PWM_width[1]>saturation)
		PWM_width[1]=saturation;

	if (PWM_width[2]>saturation)
		PWM_width[2]=saturation;

	if (PWM_width[3]>saturation)
		PWM_width[3]=saturation;

	if (FLY < 4*MIN_SPEED)
	{
		if (PWM_width[0]<0)
			PWM_width[0]=0;

		if (PWM_width[1]<0)
			PWM_width[1]=0;

		if (PWM_width[2]<0)
			PWM_width[2]=0;

		if (PWM_width[3]<0)
			PWM_width[3]=0;
	}
	else
	{
		// preventing that motors turn off during a flight in case of tilting
		if (PWM_width[0]<MIN_SPEED)
			PWM_width[0]=MIN_SPEED;

		if (PWM_width[1]<MIN_SPEED)
			PWM_width[1]=MIN_SPEED;

		if (PWM_width[2]<MIN_SPEED)
			PWM_width[2]=MIN_SPEED;

		if (PWM_width[3]<MIN_SPEED)
			PWM_width[3]=MIN_SPEED;
	}

}
