/*
 * util.c
 *
 *  Created on: 04.04.2015
 *      Author: maan
 */

#include "util.h"

volatile uint32_t timer_cnt = 0U;

void Timer_CompareMatch_Int_Handler(void)
{
	timer_cnt++;
}

void delay(uint32_t pause)
{
	uint32_t now = timer_cnt;
	while((now+pause)>timer_cnt);
}

uint32_t millis()
{
	return timer_cnt;
}

void transformation(float* values)
{
  //transformation matrix
  double transformation_matrix[3][3] =
  {
    {-0.70710678118654752440084436210485, -0.70710678118654752440084436210485, 0},
    {0.70710678118654752440084436210485, -0.70710678118654752440084436210485, 0},
    {0, 0, 1}
  };
  //calculation
  float result[3] = {0, 0, 0};
  for (int i=0; i<3; ++i)
	  for (int j=0; j<3; ++j)
		  result[i] += transformation_matrix[i][j] * values[j];

  for (int i=0; i<3; ++i)
	  values[i] = result[i];
}

void transformation_mag(float* values)
{
  double calibration_matrix[3][3] =
  {
    {-0.707106781186548, -0.707106781186547, 0},
    {-0.707106781186547, 0.707106781186548, 0},
    {0, 0, -1}
  };

  double bias[3] =
  {
	  -0.557,
	  217.116,
	  -446.63
  };
  //calculation
  for (int i=0; i<3; ++i) values[i] = values[i] - bias[i];
  float result[3] = {0, 0, 0};
  for (int i=0; i<3; ++i)
    for (int j=0; j<3; ++j)
      result[i] += calibration_matrix[i][j] * values[j];
  for (int i=0; i<3; ++i) values[i] = result[i];
}
