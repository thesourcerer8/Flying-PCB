
/******************************************************************************
 *
 * Copyright (C) 2013 Infineon Technologies AG. All rights reserved.
 *
 * Infineon Technologies AG (Infineon) is supplying this software for use with
 * Infineon’s microcontrollers.
 * This file can be freely distributed within development tools that are
 * supporting such microcontrollers.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
********************************************************************************
**                                                                            **
**                                                                            **
** PLATFORM : Infineon XMC1000 Series                                         **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR   : App Developer                                                   **
**                                                                            **
** MAY BE CHANGED BY USER [yes/Yes]: Yes                                      **
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
 * @file MATH01.h
 *
 * @brief  This file contains enums and function prototypes of MATH01.
 *
 */

/* Revision History
 *  12 Feb 2013   v1.0.0   Initial version
 */
 
#ifndef MATH01_H_
#define MATH01_H_

/* Support for C++ codebase */
#ifdef __cplusplus
extern "C" {
#endif

/*******************************************************************************
**                      Include Files                                         **
*******************************************************************************/
#include "MATHLLD01.h"

#if ((MATH01_STDMATH01 == 1) || (MATH01_FASTMATH01 == 1))
#if ((MATH01_STDMATH01 == 1) && (MATH01_FASTMATH01 == 0))
#include "STDMATH01.h"
#elif ((MATH01_STDMATH01 == 0) && (MATH01_FASTMATH01 == 1) && (MATH01_AEABI == 0))
#include "FASTMATH01.h"
#else
#error "Conflicting MATH configuration. Please correct it"
#endif
#endif

/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/


/*******************************************************************************
**                      Global Type Definitions                               **
*******************************************************************************/

/*******************************************************************************
** 							FUNCTION PROTOTYPES                               **
*******************************************************************************/
/**
 * @ingroup MATHLIBS_apidoc
 * @{
 */

#if (MATH01_MATHLLD01 == 1) && ((MATH01_STDMATH01 == 1) || (MATH01_FASTMATH01 == 1))

/**
 * @brief     Initializes MATH unit
 *
 * @param[in]  None
 *
 * @return     None
 * <b>Reentrant: NO </b><BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * 
 * #include <DAVE3.h>
 * #include "../../inc/MATHLIBS/MATH01.h" // Include MATH Libraries
 * 
 * int main(void)
 * {
 *   // Initializes all App configurations ...
 *   DAVE_Init(); // MATH01_Init() will be called from DAVE_Init()
 *   MATH01_Init(); // Initialization of MATH module 
 * }
 *
 * @endcode <BR> </p>
 */ 
void MATH01_Init(void);

#endif /* (MATH01_MATHLLD01 == 1) && ((MATH01_STDMATH01 == 1) || 
          (MATH01_FASTMATH01 == 1)) */

#if ((MATH01_STDMATH01 == 1) && (MATH01_FASTMATH01 == 0) && (MATH01_AEABI == 1))

/**
 * @brief This function performs unsigned integer division.
 * 
 * Note: THIS FUNCTION IS NOT INTENDED FOR DIRECT USE BY USERS
 *  
 * @param[in]   uDividend of type uint32_t
 * @param[in]   uDivisor of type uint32_t \n
 *
 * @return uint32_t		Quotient result of the division\n
 * 
 * <b>Reentrant: NO </b><BR>
 *  
 */
uint32_t __aeabi_uidiv(uint32_t uDividend, uint32_t uDivisor);

/**
 * @brief This function performs signed integer division.
 * 
 * Note: THIS FUNCTION IS NOT INTENDED FOR DIRECT USE BY USERS
 * 
 * @param[in]   iDividend of type int32_t
 * @param[in]   iDivisor of type int32_t \n
 *
 * @return int32_t		Quotient result of the division\n
 *
 * <b>Reentrant: NO </b><BR>
 * 
 */
int32_t __aeabi_idiv(int32_t iDividend, int32_t iDivisor);

/**
 * @brief This function performs unsigned integer division modulo.
 * 
 * Note: THIS FUNCTION IS NOT INTENDED FOR DIRECT USE BY USERS
 * 
 * @param[in]   uDividend of type uint32_t
 * @param[in]   uDivisor of type uint32_t \n
 *
 * @return uint64_t		Remainder result of the division\n
 * 
 * <b>Reentrant: NO </b><BR>
 *  
 */
uint64_t __aeabi_uidivmod(uint32_t uDividend, uint32_t uDivisor);

/**
 * @brief This function performs signed integer division modulo.
 * 
 * Note: THIS FUNCTION IS NOT INTENDED FOR DIRECT USE BY USERS
 * 
 * @param[in]   iDividend of type int32_t
 * @param[in]   iDivisor of type int32_t \n
 *
 * @return int64_t		Remainder result of the division\n
 * 
 * <b>Reentrant: NO </b><BR>
 *  
 */
int64_t __aeabi_idivmod(int32_t iDividend, int32_t iDivisor);

#endif /* ((MATH01_STDMATH == 1) && (MATH01_FASTMATH == 0) && 
          (MATH01_AEABI == 1)) */

/**
 * @}
 */

/* Support for C++ codebase */
#ifdef __cplusplus
}
#endif   

#endif /* MATH01_H_ */

/*CODE_BLOCK_END*/
