
/*CODE_BLOCK_BEGIN[FASTMATH01.c]*/

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
 * @file   FASTMATH01.c
 *
 * @brief  This file contains public function implementations of FASTMATH01.
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
#ifndef DAVE_CE
#include <stddef.h>
#endif
#include "../../inc/MATHLIBS/FASTMATH01.h"

#if ((MATH01_STDMATH01 == 0) && (MATH01_FASTMATH01 == 1) && (MATH01_AEABI == 0))

/*******************************************************************************
**                      Private Macro Definitions                             **
*******************************************************************************/
/*******************************************************************************
**                      Private variable Definitions                          **
*******************************************************************************/
/* This variable represents the currently selected FASTMATH01 function */
static uint32_t Selected_API;

/* This variable stores the result of the computed operation. The result is
 * assigned to the variable in the IRQ.*/
static int32_t FASTMATH01_Result;

/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/

/*******************************************************************************
**                 Private Function Declarations:
*******************************************************************************/

/**
 * @brief This function assigns the results of Divider function to 
 * FASTMATH01_GetResult. Disables 'Divider End of Calculation Interrupt',
 * clears the Event flag register for the same & runs the listener function.
 *
 * @param[in]  None
 *
 * @return     void <BR>
 *
 * <b>Reentrant: YES </b><BR>
 *
 */
void MATH_DIV_lIRQHandler(void);

/**
 * @brief This function assigns the results of Divider function to 
 * FASTMATH01_GetResult. Disables 'CORDIC End of Calculation Interrupt',
 * clears the Event flag register for the same & runs the listener function.
 *
 * @param[in]  None
 *
 * @return     void <BR>
 *
 * <b>Reentrant: YES </b><BR>
 *
 */
void MATH_CORDIC_lIRQHandler(void);


/*******************************************************************************
**                      Global Constant Definitions                           **
*******************************************************************************/

/*******************************************************************************
**                      Global Variable Definitions                           **
*******************************************************************************/
FASTMATH01_HandleType FASTMATH01_Handle0;

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
/*
 *  Utility function to register Event Handler for a given event.
 */
MATHLLD01_STATUS FASTMATH01_RegisterCallback(
  FASTMATH01_CallbackType userFunction
 )
{
  if(MATHLLD01_UNIT_AVAILABLE == MATHLLD01_GetReservationStatus())
  {
    FASTMATH01_HandleType* Handle = &FASTMATH01_Handle0;
    Handle->CbListener = userFunction;
    return (MATHLLD01_ACCEPTED);
  }
  else
  {
	return (MATHLLD01_BUSY);
  }
}

/* This function computes the cosine of a given angle in radians */
MATHLLD01_STATUS FASTMATH01_cos(Q0_23 Angle_In_Rad)
{ 
  if(MATHLLD01_Reserve() == (int32_t) MATHLLD01_SUCCESS)
  {    
	Selected_API = (uint32_t) FASTMATH01_cos_API;
	SET_BIT(MATH->EVIER, MATH_EVIER_CDEOCIEN_Pos);
	
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
	
	return (MATHLLD01_ACCEPTED);
  }
  else
  {
	return (MATHLLD01_BUSY);
  }  
}

/* This function computes the sine of a given angle in radians */
MATHLLD01_STATUS FASTMATH01_sin(Q0_23 Angle_In_Rad)
{ 
  if(MATHLLD01_Reserve() == (int32_t) MATHLLD01_SUCCESS)
  {    
	Selected_API = (uint32_t) FASTMATH01_sin_API;
	SET_BIT(MATH->EVIER, MATH_EVIER_CDEOCIEN_Pos);
	
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
	
    return (MATHLLD01_ACCEPTED);
  }
  else
  {
	return (MATHLLD01_BUSY);
  }  
}

/* This function computes the tangent of a given angle in radians */
MATHLLD01_STATUS FASTMATH01_tan(Q0_23 Angle_In_Rad)
{ 
  if(MATHLLD01_Reserve() == (int32_t) MATHLLD01_SUCCESS)
  {    
	Selected_API = (uint32_t) FASTMATH01_tan_API;
	SET_BIT(MATH->EVIER, MATH_EVIER_DIVEOCIEN_Pos);

    /* Chain the results of cordic operation to DIV unit */
    MATH->GLBCON = (uint32_t) CHAIN_CORRY_RESULT_FOR_DVD + \
	               (uint32_t) CHAIN_CORRX_RESULT_FOR_DVS;
	MATH->DIVCON = (uint32_t) DIV_AUTO_START + \
   	               (uint32_t) SIGNED_DIVISION + \
	               (uint32_t) DIV_32BIT_BY_32BIT + \
				   (uint32_t) DVS_RIGHT_SHIFT_BY_11;
	  
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

	return (MATHLLD01_ACCEPTED);
  }
  else
  {
	return (MATHLLD01_BUSY);
  }  
}

/* This function computes the arc tangent of a given value */
MATHLLD01_STATUS FASTMATH01_atan(Q8_15 x, Q8_15 y)
{ 
  if(MATHLLD01_Reserve() == (int32_t) MATHLLD01_SUCCESS)
  {    
	Selected_API = (uint32_t) FASTMATH01_atan_API;
	SET_BIT(MATH->EVIER, MATH_EVIER_CDEOCIEN_Pos);
	
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
	
	return (MATHLLD01_ACCEPTED);
  }
  else
  {
	return (MATHLLD01_BUSY);
  }  
}

/* This function computes the hyperbolic cosine of a given angle in radians */
MATHLLD01_STATUS FASTMATH01_cosh(Q0_23 Angle_In_Rad)
{ 
  if(MATHLLD01_Reserve() == (int32_t) MATHLLD01_SUCCESS)
  {    
	Selected_API = (uint32_t) FASTMATH01_cosh_API;
	SET_BIT(MATH->EVIER, MATH_EVIER_CDEOCIEN_Pos);
	
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
		
	return (MATHLLD01_ACCEPTED);
  }
  else
  {
	return (MATHLLD01_BUSY);
  }  
}

/* This function computes the hyperbolic sine of a given angle in radians */
MATHLLD01_STATUS FASTMATH01_sinh(Q0_23 Angle_In_Rad)
{ 
  if(MATHLLD01_Reserve() == (int32_t) MATHLLD01_SUCCESS)
  {    
	Selected_API = (uint32_t) FASTMATH01_sinh_API;
	SET_BIT(MATH->EVIER, MATH_EVIER_CDEOCIEN_Pos);
	
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
	
	return (MATHLLD01_ACCEPTED);
  }
  else
  {
	return (MATHLLD01_BUSY);
  }  
}

/* This function computes the hyperbolic tangent of a given angle in radians */
MATHLLD01_STATUS FASTMATH01_tanh(Q0_23 Angle_In_Rad)
{ 
  if(MATHLLD01_Reserve() == (int32_t) MATHLLD01_SUCCESS)
  {    
	Selected_API = (uint32_t) FASTMATH01_tanh_API;
	SET_BIT(MATH->EVIER, MATH_EVIER_DIVEOCIEN_Pos);

    /* Chain the results of cordic operation to DIV unit */  
	MATH->GLBCON = (uint32_t) CHAIN_CORRY_RESULT_FOR_DVD + \
	               (uint32_t) CHAIN_CORRX_RESULT_FOR_DVS;
	MATH->DIVCON = (uint32_t) DIV_AUTO_START + \
	               (uint32_t) SIGNED_DIVISION + \
	               (uint32_t) DIV_32BIT_BY_32BIT + \
                   (uint32_t) DVS_RIGHT_SHIFT_BY_11;
	  
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
		
	return (MATHLLD01_ACCEPTED);
  }
  else
  {
	return (MATHLLD01_BUSY);
  }  
}

/* This function performs division for given two unsigned arguments */
MATHLLD01_STATUS FASTMATH01_uidiv(uint32_t uDividend, uint32_t uDivisor)
{
  if(MATHLLD01_Reserve() == (int32_t) MATHLLD01_SUCCESS)
  {    
	Selected_API = (uint32_t) FASTMATH01_uidiv_API;
	SET_BIT(MATH->EVIER, MATH_EVIER_DIVEOCIEN_Pos);	
	
    MATH->DIVCON = (uint32_t) DIV_AUTO_START + \
	               (uint32_t) UNSIGNED_DIVISION + \
	               (uint32_t) DIV_32BIT_BY_32BIT;
    
    MATH->DVD = uDividend;
    MATH->DVS = uDivisor;
           
	return (MATHLLD01_ACCEPTED);
  }
  else
  {
	return (MATHLLD01_BUSY);
  }  
}

/* This function performs division for given two signed arguments */
MATHLLD01_STATUS FASTMATH01_idiv(int32_t iDividend, int32_t iDivisor)
{
  if(MATHLLD01_Reserve() == (int32_t) MATHLLD01_SUCCESS)
  {    
	Selected_API = (uint32_t) FASTMATH01_idiv_API;
	SET_BIT(MATH->EVIER, MATH_EVIER_DIVEOCIEN_Pos);	
	
	MATH->DIVCON = (uint32_t) DIV_AUTO_START + \
	               (uint32_t) SIGNED_DIVISION + \
	               (uint32_t) DIV_32BIT_BY_32BIT;
	
	MATH->DVD = iDividend;
	MATH->DVS = iDivisor;
	
	return (MATHLLD01_ACCEPTED);
  }
  else
  {
	return (MATHLLD01_BUSY);
  }  
}

/* This function performs modulo operation for given two unsigned arguments */
MATHLLD01_STATUS FASTMATH01_uidivmod(uint32_t uDividend, uint32_t uDivisor)
{
  if(MATHLLD01_Reserve() == (int32_t) MATHLLD01_SUCCESS)
  {    
	Selected_API = (uint32_t) FASTMATH01_uidivmod_API;
	SET_BIT(MATH->EVIER, MATH_EVIER_DIVEOCIEN_Pos);	
	
    MATH->DIVCON = (uint32_t) DIV_AUTO_START + \
	               (uint32_t) UNSIGNED_DIVISION + \
	               (uint32_t) DIV_32BIT_BY_32BIT;
    
    MATH->DVD = uDividend;
    MATH->DVS = uDivisor;
   
	return (MATHLLD01_ACCEPTED);
  }
  else
  {
	return (MATHLLD01_BUSY);
  }  
}

/* This function performs modulo operation for given two signed arguments */
MATHLLD01_STATUS FASTMATH01_idivmod(int32_t iDividend, int32_t iDivisor)
{
  if(MATHLLD01_Reserve() == (int32_t) MATHLLD01_SUCCESS)
  {    
	Selected_API = (uint32_t) FASTMATH01_idivmod_API;
	SET_BIT(MATH->EVIER, MATH_EVIER_DIVEOCIEN_Pos);	
	
	MATH->DIVCON = (uint32_t) DIV_AUTO_START + \
	               (uint32_t) SIGNED_DIVISION + \
	               (uint32_t) DIV_32BIT_BY_32BIT;
	
	MATH->DVD = iDividend;
	MATH->DVS = iDivisor;
	
	return (MATHLLD01_ACCEPTED);
  }
  else
  {
	return (MATHLLD01_BUSY);
  }  
}

/* This function returns the result of last computed operation */
int32_t FASTMATH01_GetResult(void)
{
  int32_t iResult = 0;
  
  iResult = FASTMATH01_Result;
  FASTMATH01_Result = 0;
  return(iResult);
}

void MATH_CORDIC_lIRQHandler(void)
{  
  FASTMATH01_CallbackType UserCallback;
  FASTMATH01_HandleType* Handle = &FASTMATH01_Handle0;
	  
  CLR_BIT(MATH->EVIER, MATH_EVIER_CDEOCIEN_Pos);
	
  switch (Selected_API)
  {
	case FASTMATH01_cos_API:
	case FASTMATH01_cosh_API:
	  /* Selected_API is set to its default state */
	  Selected_API = (uint32_t) FASTMATH01_NONE_API;		
	  FASTMATH01_Result = MATH->CORRX >> MATH_CORRX_RESULT_Pos;
	  if(MATHLLD01_Release() == (int32_t) MATHLLD01_SUCCESS)
	  {
		/* No evaluation for success */
		;
	  }
	  else
	  {
		/* Program control never likely to reach here */	
		;
	  }
	  break;    
	
    case FASTMATH01_sin_API:
	case FASTMATH01_sinh_API:
	  /* Selected_API is set to its default state */
	  Selected_API = (uint32_t) FASTMATH01_NONE_API;
	  FASTMATH01_Result = MATH->CORRY >> MATH_CORRY_RESULT_Pos;
	  if(MATHLLD01_Release() == (int32_t) MATHLLD01_SUCCESS)
	  {
		/* No evaluation for success */
		;
	  }
	  else
	  {
		/* Program control never likely to reach here */	
		;
	  }
	  break;

	case FASTMATH01_atan_API:
	  /* Selected_API is set to its default state */
	  Selected_API = (uint32_t) FASTMATH01_NONE_API;
      FASTMATH01_Result = MATH->CORRZ >> MATH_CORRZ_RESULT_Pos;
	  if(MATHLLD01_Release() == (int32_t) MATHLLD01_SUCCESS)
	  {
		/* No evaluation for success */
		;
	  }
	  else
	  {
		/* Program control never likely to reach here */	
		;
	  }
	  break;
    }
    
  /* run the listener function */
  if(Handle->CbListener != NULL)
  {
	UserCallback = Handle->CbListener;
	UserCallback();
  }
}

void MATH_DIV_lIRQHandler(void)
{
  FASTMATH01_CallbackType UserCallback;
  FASTMATH01_HandleType* Handle = &FASTMATH01_Handle0;
	  
  CLR_BIT(MATH->EVIER, MATH_EVIER_DIVEOCIEN_Pos);

  switch (Selected_API)
  {
	case FASTMATH01_uidiv_API:
	case FASTMATH01_idiv_API:
	  /* Selected_API is set to its default state */
	  Selected_API = (uint32_t) FASTMATH01_NONE_API;
	  FASTMATH01_Result = MATH->QUOT;
	  if(MATHLLD01_Release() == (int32_t) MATHLLD01_SUCCESS)
	  {
		/* No evaluation for success */
		;
	  }
	  else
	  {
		/* Program control never likely to reach here */	
		;
	  }
	  break;

	case FASTMATH01_uidivmod_API:
	case FASTMATH01_idivmod_API:
	  /* Selected_API is set to its default state */
	  Selected_API = (uint32_t) FASTMATH01_NONE_API;
      FASTMATH01_Result = MATH->RMD; 
	  if(MATHLLD01_Release() == (int32_t) MATHLLD01_SUCCESS)
	  {
		/* No evaluation for success */
		;
	  }
	  else
	  {
		/* Program control never likely to reach here */	
		;
	  }
	  break;
	  
	case FASTMATH01_tan_API:
	case FASTMATH01_tanh_API:
	  /* Clear CORDIC End of Calculation Event Flag */
	  SET_BIT(MATH->EVFCR, MATH_EVFCR_CDEOCC_Pos);
		  	  
	  /* Selected_API is set to its default state */
	  Selected_API = (uint32_t) FASTMATH01_NONE_API;
	  FASTMATH01_Result = MATH->QUOT;
	  if(MATHLLD01_Release() == (int32_t) MATHLLD01_SUCCESS)
	  {
		/* No evaluation for success */
		;
	  }
	  else
	  {
		/* Program control never likely to reach here */	
		;
	  }
	  break;
    }
    
    /* run the listener function */
	if(Handle->CbListener != NULL)
	{
	  UserCallback = Handle->CbListener;
	  UserCallback();
	}
}

void MATH_IRQHandler(void)
{
  uint32_t CordicEvent, DivEvent;

  DivEvent = RD_REG(MATH->EVFR, MATH_EVFR_DIVEOC_Msk, MATH_EVFR_DIVEOC_Pos);
  
  /* High precedence for DIV event. DIV event should be executed before CORDIC 
   * event. Execution of FASTMATH01_tan() & FASTMATH01_tanh() result in both   
   * DIV & CORDIC end of calculations events. The results of these functions are
   * the output of DIV operation. For this case DIV event should be 
   * handled first to return the result (QUOT register) of these functions. */
  if(DivEvent)
  {
    /* Clear Divider End of Calculation Event Flag */
    SET_BIT(MATH->EVFCR, MATH_EVFCR_DIVEOCC_Pos);
    MATH_DIV_lIRQHandler();
  }
  
  CordicEvent = RD_REG(MATH->EVFR, MATH_EVFR_CDEOC_Msk, 
		               MATH_EVFR_CDEOC_Pos);
  /* Low precedence for CORDIC interrupt */
  if(CordicEvent)
  {
	/* Clear CORDIC End of Calculation Event Flag*/
	SET_BIT(MATH->EVFCR, MATH_EVFCR_CDEOCC_Pos);
    MATH_CORDIC_lIRQHandler();
  }
}

#endif /* ((MATH01_STDMATH == 0) && (MATH01_FASTMATH == 1) && 
          (MATH01_AEABI == 0)) */

/**
 * @endcond
 */
/*CODE_BLOCK_END*/
