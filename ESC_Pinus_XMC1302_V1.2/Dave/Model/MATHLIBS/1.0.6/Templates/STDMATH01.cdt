
/*CODE_BLOCK_BEGIN[STDMATH01.c]*/

/*******************************************************************************
 Copyright (c) 2013, Infineon Technologies AG                                 **
 All rights reserved.                                                         **
                                                                              **
 Redistribution and use in source and binary forms, with or without           **
 modification,are permitted provided that the following conditions are met:   **
                                                                              **
 *Redistributions of source code must retain the above copyright notice,      **
 this list of conditions and the following disclaimer.                        **
 *Redistributions in binary form must reproduce the above copyright notice,   **
 this list of conditions and the following disclaimer in the documentation    **
 and/or other materials provided with the distribution.                       **
 *Neither the name of the copyright holders nor the names of its contributors **
 may be used to endorse or promote products derived from this software without**
 specific prior written permission.                                           **
                                                                              **
 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"  **
 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **
 IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **
 ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **
 LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **
 CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **
 SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **
 INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **
 CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **
 ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **
 POSSIBILITY OF SUCH DAMAGE.                                                  **
                                                                              **
 To improve the quality of the software, users are encouraged to share        **
 modifications, enhancements or bug fixes with Infineon Technologies AG       **
 dave@infineon.com).                                                          **
                                                                              **
********************************************************************************
**                                                                            **
**                                                                            **
** PLATFORM : Infineon XMC1000 Series                                         **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR   : App Developer                                                   **
**                                                                            **
** MAY BE CHANGED BY USER [yes/no]: Yes                                       **
**                                                                            **
** MODIFICATION DATE : Feb 12, 2013                                           **
**                                                                            **
*******************************************************************************/
/*******************************************************************************
**                      Author(s) Identity                                    **
********************************************************************************
**                                                                            **
** Initials     Name                                                          **
** ---------------------------------------------------------------------------**
** VJS          App Developer                                                 **
*******************************************************************************/
/**
 * @file   STDMATH01.c
 *
 * @brief  This file contains public function implementations of STDMATH01.
 *
 */

/* Revision History
 *  12 Feb 2013   v1.0.0   Initial version
 */
 
/**
 * @cond INTERNAL_DOCS
 */

/*******************************************************************************
 ** INCLUDE FILES                                                             **
 ******************************************************************************/
/** Inclusion of header file */
#include "../../inc/MATHLIBS/STDMATH01.h"

#if ((MATH01_STDMATH01 == 1) && (MATH01_FASTMATH01 == 0))

/*******************************************************************************
**                      Private Macro Definitions                             **
*******************************************************************************/

/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/

/*******************************************************************************
**                 Private Function Declarations:
*******************************************************************************/

/*******************************************************************************
**                      Global Constant Definitions                           **
*******************************************************************************/

/*******************************************************************************
**                      Global Variable Definitions                           **
*******************************************************************************/

/*******************************************************************************
**                      Private Constant Definitions                          **
*******************************************************************************/

/*******************************************************************************
**                 Function like macro definitions                            **
*******************************************************************************/

/*******************************************************************************
**                      Private Function Definitions                          **
*******************************************************************************/

/*******************************************************************************
**                      Public Function Definitions                           **
*******************************************************************************/
/* This function computes the cosine of a given angle in radians */
MATHLLD01_STATUS STDMATH01_cos(Q0_23 Angle_In_Rad, Q0_23 *ResultPtr)
{
  if(MATHLLD01_Reserve() == (int32_t) MATHLLD01_SUCCESS)
  {    
	MATH->STATC = (uint32_t) CLEAR_KEEPX + \
	              (uint32_t) CLEAR_KEEPY + \
				  (uint32_t) CLEAR_KEEPZ;
	MATH->CON = (uint32_t) CIRCULAR_MODE + \
	            (uint32_t) ROTATION_MODE + \
			    (uint32_t) CORDIC_AUTO_START + \
				(uint32_t) UNSIGNED_X_RESULT + \
				(uint32_t) MPS_DIVBY1;
	MATH->CORDZ = Angle_In_Rad << MATH_CORDZ_DATA_Pos;
	MATH->CORDY = ZERO;
	MATH->CORDX = RECIPROC_CIRCULAR_GAIN_IN_Q0_23 << MATH_CORDX_DATA_Pos;
	
    *ResultPtr = MATH->CORRX >> MATH_CORRX_RESULT_Pos;
	
	if(MATHLLD01_Release() == (int32_t) MATHLLD01_SUCCESS)
    {
      return (MATHLLD01_ACCEPTED);
    }
    else
    {
      /* Program control never likely to reach here */
      return (MATHLLD01_ERROR);
    }
  }
  else
  {
	return (MATHLLD01_BUSY);
  }  
}

/* This function computes the sine of a given angle in radians */
MATHLLD01_STATUS STDMATH01_sin(Q0_23 Angle_In_Rad, Q0_23 *ResultPtr)
{ 
  if(MATHLLD01_Reserve() == (int32_t) MATHLLD01_SUCCESS)
  {    
	MATH->STATC = (uint32_t) CLEAR_KEEPX + \
	              (uint32_t) CLEAR_KEEPY + \
				  (uint32_t) CLEAR_KEEPZ;
	MATH->CON = (uint32_t) CIRCULAR_MODE + \
	            (uint32_t) ROTATION_MODE + \
			    (uint32_t) CORDIC_AUTO_START + \
				(uint32_t) UNSIGNED_X_RESULT + \
				(uint32_t) MPS_DIVBY1;
	MATH->CORDZ = Angle_In_Rad << MATH_CORDZ_DATA_Pos;		
	MATH->CORDY = ZERO;		
	MATH->CORDX = RECIPROC_CIRCULAR_GAIN_IN_Q0_23 << MATH_CORDX_DATA_Pos;		
	
	*ResultPtr = MATH->CORRY >> MATH_CORRY_RESULT_Pos;
	
	if(MATHLLD01_Release() == (int32_t) MATHLLD01_SUCCESS)
    {
      return (MATHLLD01_ACCEPTED);
    }
    else
    {
      /* Program control never likely to reach here */	
      return (MATHLLD01_ERROR);
    }
  }
  else
  {
	return (MATHLLD01_BUSY);
  }  
}

/* This function computes the tangent of a given angle in radians */
MATHLLD01_STATUS STDMATH01_tan(Q0_23 Angle_In_Rad, Q0_11 *ResultPtr)
{ 
  Q0_23 isin = 0, icos = 0;
  Q0_11 itan = 0;
  
  if(MATHLLD01_Reserve() == (int32_t) MATHLLD01_SUCCESS)
  {	  
	MATH->STATC = (uint32_t) CLEAR_KEEPX + \
	              (uint32_t) CLEAR_KEEPY + \
				  (uint32_t) CLEAR_KEEPZ;
	MATH->CON = (uint32_t) CIRCULAR_MODE + \
	            (uint32_t) ROTATION_MODE + \
			    (uint32_t) CORDIC_AUTO_START + \
				(uint32_t) UNSIGNED_X_RESULT + \
				(uint32_t) MPS_DIVBY1;
	MATH->CORDZ = Angle_In_Rad << MATH_CORDZ_DATA_Pos;	
	MATH->CORDY = ZERO;		
	MATH->CORDX = RECIPROC_CIRCULAR_GAIN_IN_Q0_23 << MATH_CORDX_DATA_Pos;		
		
	icos = MATH->CORRX >> MATH_CORRX_RESULT_Pos;
	isin = MATH->CORRY >> MATH_CORRY_RESULT_Pos;
	
	/* Start of division operation sin/cos */
	__disable_irq(); /* Disable the Interrupt as division cant be pre-empted */  
	MATH->DIVCON = (uint32_t) DIV_AUTO_START + \
   	               (uint32_t) SIGNED_DIVISION + \
	               (uint32_t) DIV_32BIT_BY_32BIT + \
		           (uint32_t) DVS_RIGHT_SHIFT_BY_11;
	MATH->DVD = isin << SHIFT_BY_EIGHT;
	MATH->DVS = icos << SHIFT_BY_EIGHT;
	
	itan = MATH->QUOT;
	__enable_irq(); /* Divison is done, Enable the Interrupt */
	
	*ResultPtr = itan;
	
	if(MATHLLD01_Release() == (int32_t) MATHLLD01_SUCCESS)
    {
      return (MATHLLD01_ACCEPTED);
    }
    else
    {
      /* Program control never likely to reach here */	
      return (MATHLLD01_ERROR);
    }
  }
  else
  {
	return (MATHLLD01_BUSY);
  }  
}

/* This function computes the arc tangent of a given angle in radians */
MATHLLD01_STATUS STDMATH01_atan(Q8_15 x, Q8_15 y, Q0_23 *ResultPtr)
{ 
  if(MATHLLD01_Reserve() == (int32_t) MATHLLD01_SUCCESS)
  {    	  
	MATH->STATC = (uint32_t) CLEAR_KEEPX + \
	              (uint32_t) CLEAR_KEEPY + \
				  (uint32_t) CLEAR_KEEPZ;
	MATH->CON = (uint32_t) CIRCULAR_MODE + \
	            (uint32_t) VECTORING_MODE + \
			    (uint32_t) CORDIC_AUTO_START + \
	            (uint32_t) UNSIGNED_X_RESULT + \
				(uint32_t) MPS_DIVBY1;
	MATH->CORDZ = ZERO;
	MATH->CORDY = y << MATH_CORDY_DATA_Pos;
	MATH->CORDX = x << MATH_CORDX_DATA_Pos;
		
	*ResultPtr = MATH->CORRZ >> MATH_CORRZ_RESULT_Pos;
	
	if(MATHLLD01_Release() == (int32_t) MATHLLD01_SUCCESS)
    {
      return (MATHLLD01_ACCEPTED);
    }
    else
    {
      /* Program control never likely to reach here */	
      return (MATHLLD01_ERROR);
    }
  }
  else
  {
	return (MATHLLD01_BUSY);
  }  
}

/* This function computes the hyperbolic cosine of a given angle in radians */
MATHLLD01_STATUS STDMATH01_cosh(Q0_23 Angle_In_Rad, Q1_22 *ResultPtr)
{ 
  if(MATHLLD01_Reserve() == (int32_t) MATHLLD01_SUCCESS)
  {    
	MATH->STATC = (uint32_t) CLEAR_KEEPX + \
	              (uint32_t) CLEAR_KEEPY + \
				  (uint32_t) CLEAR_KEEPZ;
	MATH->CON = (uint32_t) HYPERBOLIC_MODE + \
	            (uint32_t) ROTATION_MODE + \
			    (uint32_t) CORDIC_AUTO_START + \
		        (uint32_t) UNSIGNED_X_RESULT + \
				(uint32_t) MPS_DIVBY1;
	MATH->CORDZ =  Angle_In_Rad << MATH_CORDZ_DATA_Pos;
	MATH->CORDY =  ZERO;
	MATH->CORDX =  RECIPROC_HYPERBOLIC_GAIN_IN_Q1_22 << MATH_CORDX_DATA_Pos;
	
	*ResultPtr = MATH->CORRX >> MATH_CORRX_RESULT_Pos;
	
	if(MATHLLD01_Release() == (int32_t) MATHLLD01_SUCCESS)
    {
      return (MATHLLD01_ACCEPTED);
    }
    else
    {
      /* Program control never likely to reach here */	
      return (MATHLLD01_ERROR);
    }
  }
  else
  {
	return (MATHLLD01_BUSY);
  }  
}

/* This function computes the hyperbolic sine of a given angle in radians */
MATHLLD01_STATUS STDMATH01_sinh(Q0_23 Angle_In_Rad, Q1_22 *ResultPtr)
{ 
  if(MATHLLD01_Reserve() == (int32_t) MATHLLD01_SUCCESS)
  {    
	MATH->STATC = (uint32_t) CLEAR_KEEPX + \
	              (uint32_t) CLEAR_KEEPY + \
				  (uint32_t) CLEAR_KEEPZ;
	MATH->CON = (uint32_t) HYPERBOLIC_MODE + \
	            (uint32_t) ROTATION_MODE + \
			    (uint32_t) CORDIC_AUTO_START + \
				(uint32_t) UNSIGNED_X_RESULT + \
				(uint32_t) MPS_DIVBY1;
	MATH->CORDZ = Angle_In_Rad << MATH_CORDZ_DATA_Pos;
	MATH->CORDY = ZERO;
	MATH->CORDX = RECIPROC_HYPERBOLIC_GAIN_IN_Q1_22 << MATH_CORDX_DATA_Pos;
	
	*ResultPtr = MATH->CORRY >> MATH_CORRY_RESULT_Pos;
	
	if(MATHLLD01_Release() == (int32_t) MATHLLD01_SUCCESS)
    {
      return (MATHLLD01_ACCEPTED);
    }
    else
    {
      /* Program control never likely to reach here */	
      return (MATHLLD01_ERROR);
    }
  }
  else
  {
	return (MATHLLD01_BUSY);
  }  
}

/* This function computes the hyperbolic tangent of a given angle in radians */
MATHLLD01_STATUS STDMATH01_tanh(Q0_23 Angle_In_Rad, Q0_11 *ResultPtr)
{
  Q0_23 isinh = 0, icosh = 0;
  Q0_11 itanh = 0;
	  
  if(MATHLLD01_Reserve() == (int32_t) MATHLLD01_SUCCESS)
  {	  
	MATH->STATC = (uint32_t) CLEAR_KEEPX + \
	              (uint32_t) CLEAR_KEEPY + \
				  (uint32_t) CLEAR_KEEPZ;
	MATH->CON = (uint32_t) HYPERBOLIC_MODE + \
	            (uint32_t) ROTATION_MODE + \
			    (uint32_t) CORDIC_AUTO_START + \
				(uint32_t) UNSIGNED_X_RESULT + \
				(uint32_t) MPS_DIVBY1;
	MATH->CORDZ = Angle_In_Rad << MATH_CORDZ_DATA_Pos;
	MATH->CORDY = ZERO;
	MATH->CORDX = RECIPROC_HYPERBOLIC_GAIN_IN_Q1_22 << MATH_CORDX_DATA_Pos;
	
    icosh = MATH->CORRX >> MATH_CORRX_RESULT_Pos;
	isinh = MATH->CORRY >> MATH_CORRY_RESULT_Pos;

	/* Start of division operation sin/cos */
	__disable_irq(); /* Disable the Interrupt as division cant be pre-empted */
	MATH->DIVCON = (uint32_t) DIV_AUTO_START + \
	               (uint32_t) SIGNED_DIVISION + \
	               (uint32_t) DIV_32BIT_BY_32BIT + \
				   (uint32_t) DVS_RIGHT_SHIFT_BY_11;
	
	MATH->DVD = isinh << SHIFT_BY_EIGHT;
	MATH->DVS =  icosh << SHIFT_BY_EIGHT;
	
	itanh = MATH->QUOT;
	__enable_irq(); /* Divison is done, Enable the Interrupt */
	
	*ResultPtr = itanh;
	
	if(MATHLLD01_Release() == (int32_t) MATHLLD01_SUCCESS)
    {
      return (MATHLLD01_ACCEPTED);
    }
    else
    {
      /* Program control never likely to reach here */	
      return (MATHLLD01_ERROR);
    }
  }
  else
  {
	return (MATHLLD01_BUSY);
  }  
}

#endif /* ((MATH01_STDMATH == 1) && (MATH01_FASTMATH == 0)) */

/**
 * @endcond
 */
/*CODE_BLOCK_END*/
