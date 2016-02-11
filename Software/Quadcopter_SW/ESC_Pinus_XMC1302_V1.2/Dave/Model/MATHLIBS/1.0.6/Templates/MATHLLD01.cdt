
/*CODE_BLOCK_BEGIN[MATHLLD01.c]*/

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
 * @file   MATHLLD01.c
 *
 * @brief  This file contains public function implementations of MATHLLD01.
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
#include "../../inc/MATHLIBS/MATHLLD01.h"

#if (MATH01_MATHLLD01 == 1) && ((MATH01_STDMATH01 == 1) || (MATH01_FASTMATH01 == 1))

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
**                 Private variables                                          **
*******************************************************************************/

/**
 * This variable is used to count number of reservations of MATH unit in
 * MATHLLD01_Reserve() & MATHLLD01_Release() API's
 */
static uint32_t ReservationCount;

/**
 * This variable is used to count number of locks for IRQ disable & enable in
 * MATHLLD01_lIntLock() & MATHLLD01_lIntUnlock() API's
 */
static int32_t LockCount;

/*******************************************************************************
**                      Private Function Definitions                          **
*******************************************************************************/
/*
 * This function attempts to suppress interrupt detection functionality at
 * CPU level
 */
void MATHLLD01_lIntLock(void)
{
	__disable_irq();	
	LockCount++;
}

/*
 * This function attempts to restore interrupt detection functionality at
 * CPU level
 */
void MATHLLD01_lIntUnlock(void)
{
  LockCount--;

  if(0 == LockCount)
  {
    __enable_irq();		/* Interrupt unlock successfull */
  }
  else if(LockCount < 0)
  {
	/* More unlocks than Lock ...So initiate a fault */
    while(1);
  }
  else
  {
    ; /* For MISRA */
  }
}

/*******************************************************************************
**                      Public Function Definitions                           **
*******************************************************************************/
/*
 * Users of MATH unit are expected to first reserve the unit by calling this
 * reservation service
 */
int32_t MATHLLD01_Reserve(void)
{
  MATHLLD01_lIntLock();
  if(ReservationCount)
  {
	MATHLLD01_lIntUnlock();
    return MATHLLD01_FAIL;		/* Failed to reserve the MATH unit */
  }
  else
  {
    ReservationCount++;
    MATHLLD01_lIntUnlock();
    return MATHLLD01_SUCCESS;	/* Successfull reservation of MATH unit */
  }
}

/*
 * Users of MATH unit are expected to relinquish usage of the unit by calling
 * this service
 */
int32_t MATHLLD01_Release(void)
{
  MATHLLD01_lIntLock();
  if(ReservationCount)
  {
	ReservationCount = 0;
	MATHLLD01_lIntUnlock();
	return MATHLLD01_SUCCESS;	/* Successfully released MATH unit */
  }
  else 
  {
    MATHLLD01_lIntUnlock();
	return MATHLLD01_FAIL;		/* Failed to release MATH unit */
  }
}

/* 
 * This function returns the reservation status of MATH unit
 */
int32_t MATHLLD01_GetReservationStatus(void)
{
	return (ReservationCount? MATHLLD01_UNIT_UNAVAILABLE:MATHLLD01_UNIT_AVAILABLE);
}

#endif /* (MATH01_MATHLLD01 == 1) && ((MATH01_STDMATH01 == 1) || 
          (MATH01_FASTMATH01 == 1)) */

/**
 * @endcond
 */
/*CODE_BLOCK_END*/
