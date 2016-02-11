
/*CODE_BLOCK_BEGIN[MATH01.c]*/

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
 * @file   MATH01.c
 *
 * @brief  This file contains public function implementations of MATH01 app.
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
#include "../../inc/MATHLIBS/MATH01.h"

#ifndef DAVE_CE
#define MATH01_NVIC_PRIORITY 3
#endif

#if (MATH01_MATHLLD01 == 1) && ((MATH01_STDMATH01 == 1) || (MATH01_FASTMATH01 == 1))

/*******************************************************************************
**                      Private Macro Definitions                             **
*******************************************************************************/
#define MATH01_CLK_DELAYCNT 0x3FFU

/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/

/*******************************************************************************
**                 	   Private Function Declarations				 		  **
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
void MATH01_Init(void)
{
  SCU_GENERAL->PASSWD = 0x000000C0UL;  
  WR_REG(SCU_CLK->CLKCR, SCU_CLK_CLKCR_CNTADJ_Msk, SCU_CLK_CLKCR_CNTADJ_Pos, \
         MATH01_CLK_DELAYCNT);
  
  /* Disables the gating for MATH kernel */
  SET_BIT(SCU_CLK->CGATCLR0, SCU_CLK_CGATCLR0_MATH_Pos);
  while (SCU_CLK->CLKCR&(SCU_CLK_CLKCR_VDDC2LOW_Msk));
  SCU_GENERAL->PASSWD = 0x000000C3UL;
  
  #ifndef DAVE_CE
  /* Set Interrupt Priority for MATH0_0_IRQn */
  NVIC_SetPriority((IRQn_Type)MATH0_0_IRQn, MATH01_NVIC_PRIORITY);
  /* Enable Interrupt */
  NVIC_EnableIRQ((IRQn_Type)MATH0_0_IRQn);
  #endif
}

#endif /* (MATH01_MATHLLD01 == 1) && ((MATH01_STDMATH01 == 1) || 
          (MATH01_FASTMATH01 == 1)) */

#if ((MATH01_STDMATH01 == 1) && (MATH01_FASTMATH01 == 0) && (MATH01_AEABI == 1))

/* This function performs unsigned integer division */
uint32_t __aeabi_uidiv(uint32_t uDividend, uint32_t uDivisor)
{
  uint32_t uQUOT = 0U;
  
  __disable_irq(); /* Disable the Interrupt as division cant be pre-empted */
  
  if(uDivisor > uDividend) /* Divisor is greater than Dividend - return value is Zero */
  {
    uQUOT = 0;
  }
  else  /* Program CORDIC - Divisor is smaller than Dividend */
  {	  
    MATH->DIVCON = (uint32_t) DIV_AUTO_START + \
                   (uint32_t) UNSIGNED_DIVISION + \
  		           (uint32_t) DIV_32BIT_BY_32BIT;
    
    MATH->DVD = uDividend;
    MATH->DVS = uDivisor;
    while(MATH->DIVST);
    uQUOT = MATH->QUOT;
  }
  
  __enable_irq(); /* Divison is done, Enable the Interrupt */
  
  return(uQUOT);
}

/* This function performs signed integer division */
int32_t __aeabi_idiv(int32_t iDividend, int32_t iDivisor)
{
  int32_t iQUOT = 0U;
  
  __disable_irq(); /* Disable the Interrupt as division cant be pre-empted */
  
  MATH->DIVCON = (uint32_t) DIV_AUTO_START + \
                 (uint32_t) SIGNED_DIVISION + \
  				 (uint32_t) DIV_32BIT_BY_32BIT;
  
  MATH->DVD =  iDividend;
  MATH->DVS =  iDivisor;
  while(MATH->DIVST);
  iQUOT = MATH->QUOT;
    
  __enable_irq(); /* Divison is done, Enable the Interrupt */
  
  return(iQUOT);
}  	

/* This function performs unsigned integer division modulo */
uint64_t __aeabi_uidivmod(uint32_t uDividend, uint32_t uDivisor)
{
  uint64_t uReturnVal = 0U;
  
  __disable_irq(); /* Disable the Interrupt as division cant be pre-empted */
   
  MATH->DIVCON = (uint32_t) DIV_AUTO_START + \
  				 (uint32_t) UNSIGNED_DIVISION + \
  				 (uint32_t) DIV_32BIT_BY_32BIT;
  
  MATH->DVD = uDividend;
  MATH->DVS = uDivisor;
  while(MATH->DIVST);
  uReturnVal = (uint64_t)MATH->RMD << DIVMOD_SHIFT_VAL | MATH->QUOT;
  
  __enable_irq(); /* Divison is done, Enable the Interrupt */
  
  return(uReturnVal);
}

/* This function performs signed integer division modulo */
int64_t __aeabi_idivmod(int32_t iDividend, int32_t iDivisor)
{
  int64_t iReturnVal = 0U;
  
  __disable_irq(); /* Disable the Interrupt as division cant be pre-empted */
  
  MATH->DIVCON = (uint32_t) DIV_AUTO_START + \
                 (uint32_t) SIGNED_DIVISION + \
  				 (uint32_t) DIV_32BIT_BY_32BIT;
    
  MATH->DVD = iDividend;
  MATH->DVS = iDivisor;
  while(MATH->DIVST);
  iReturnVal = (uint64_t)MATH->RMD << DIVMOD_SHIFT_VAL | MATH->QUOT;
  
  __enable_irq(); /* Divison is done, Enable the Interrupt */
  
  return(iReturnVal);
}

#endif /* ((MATH01_STDMATH == 1) && (MATH01_FASTMATH == 0) && 
          (MATH01_AEABI == 1)) */

/**
 * @endcond
 */
/*CODE_BLOCK_END*/
