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
 * @file STDMATH01.h
 *
 * @brief  This file contains enums and function prototypes of STDMATH01.
 *
 */

/* Revision History
 *  12 Feb 2013   v1.0.0   Initial version
 */
 
#ifndef STDMATH01_H_
#define STDMATH01_H_

/* Support for C++ codebase */
#ifdef __cplusplus
extern "C" {
#endif

/*******************************************************************************
**                      Include Files                                         **
*******************************************************************************/
#include "MATHLLD01.h"

#if ((MATH01_STDMATH01 == 1) && (MATH01_FASTMATH01 == 0))

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

/**
 * @brief This function computes the cosine of a given angle in radians.
 * 
 * Note: The input angle in radians must be in the format of Signed Q0_23.
 *
 * @param[in]  Angle_In_Rad - Normalised Angle in Radians (in Signed Q0_23 format)
 * @param[out] ResultPtr - Pointer to Result (in Signed Q0_23 format)
 *
 * @return   status <BR>
 *           MATHLLD01_ACCEPTED: MATH unit accepted to process the request.<BR>
 *           MATHLLD01_ERROR	 : ERROR during release of MATH unit.<BR>
 *           MATHLLD01_BUSY  	 : MATH unit is busy.<BR>
 *
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
 *  Q0_23 Result;
 *  Q0_23 *ResultPtr = &Result;
 *  MATHLLD01_STATUS status=0;
 *  // 0.7857 radians (45 degree) Normalised in Q0_23 format
 *  Q0_23 Angle_In_Rad = 2097152;
 *  
 *  DAVE_Init();
 *  MATH01_Init(); // Initialization of MATH module 
 *  
 *  status = STDMATH01_cos(Angle_In_Rad, ResultPtr);
 *
 *  if(MATHLLD01_ACCEPTED == status){
 *  //Process result
 *  }
 *  else{
 *  //Handle error
 *  }
 *
 *  while(1);
 *  return 0;
 * }
 * 
 * @endcode<BR> </p>
 *
 */
MATHLLD01_STATUS STDMATH01_cos(Q0_23 Angle_In_Rad, Q0_23 *ResultPtr);

/**
 * @brief This function computes the sine of a given angle in radians.
 * 
 * Note: The input angle in radians must be in the format of Signed Q0_23.
 *
 * @param[in]  Angle_In_Rad - Normalised Angle in Radians (in Signed Q0_23 format)
 * @param[out] ResultPtr - Pointer to Result (in Signed Q0_23 format)
 *
 * @return   status <BR>
 *           MATHLLD01_ACCEPTED: MATH unit accepted to process the request.<BR>
 *           MATHLLD01_ERROR	 : ERROR during release of MATH unit.<BR>
 *           MATHLLD01_BUSY  	 : MATH unit is busy.<BR>
 *
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
 *  Q0_23 Result;
 *  Q0_23 *ResultPtr = &Result;
 *  MATHLLD01_STATUS status=0;
 *  // 0.7857 radians (45 degree) Normalised in Q0_23 format
 *  Q0_23 Angle_In_Rad = 2097152;
 *  
 *  DAVE_Init();
 *  MATH01_Init(); // Initialization of MATH module 
 *  
 *  status = STDMATH01_sin(Angle_In_Rad, ResultPtr);
 *
 *  if(MATHLLD01_ACCEPTED == status){
 *  //Process result
 *  }
 *  else{
 *  //Handle error
 *  }
 *
 *  while(1);
 *  return 0;
 * }
 * 
 * @endcode<BR> </p>
 *
 */
MATHLLD01_STATUS STDMATH01_sin(Q0_23 Angle_In_Rad, Q0_23 *ResultPtr);

/**
 * @brief This function computes the tangent of a given angle in radians.
 * 
 * Note: The input angle in radians must be in the format of Signed Q0_23.
 *
 * @param[in]  Angle_In_Rad - Normalised Angle in Radians (in Signed Q0_23 format)
 * @param[out] ResultPtr - Pointer to Result (in Signed Q0_23 format)
 *
 * @return   status <BR>
 *           MATHLLD01_ACCEPTED: MATH unit accepted to process the request.<BR>
 *           MATHLLD01_ERROR	 : ERROR during release of MATH unit.<BR>
 *           MATHLLD01_BUSY  	 : MATH unit is busy.<BR>
 *
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
 *  Q0_11 Result;
 *  Q0_11 *ResultPtr = &Result;
 *  MATHLLD01_STATUS status=0;
 *  // 0.7857 radians (45 degree) Normalised in Q0_23 format
 *  Q0_23 Angle_In_Rad = 2097152;
 *  
 *  DAVE_Init();
 *  MATH01_Init(); // Initialization of MATH module 
 *  
 *  status = STDMATH01_tan(Angle_In_Rad, ResultPtr);
 *
 *  if(MATHLLD01_ACCEPTED == status){
 *  //Process result
 *  }
 *  else{
 *  //Handle error
 *  }
 *
 *  while(1);
 *  return 0;
 * }
 *
 * @endcode<BR> </p>
 *
 */
MATHLLD01_STATUS STDMATH01_tan(Q0_23 Angle_In_Rad, Q0_11 *ResultPtr);

/**
 * @brief This function computes the arc tangent of a given Value.
 * 
 * Note: The input value must be in the format of Signed Q8_15.
 *
 * @param[in]  x (in Signed Q8_15 format)
 * @param[in]  y (in Signed Q8_15 format)
 * @param[out] ResultPtr - Pointer to Result (in Signed Q0_23 format)
 *
 * @return   status <BR>
 *           MATHLLD01_ACCEPTED: MATH unit accepted to process the request.<BR>
 *           MATHLLD01_ERROR	 : ERROR during release of MATH unit.<BR>
 *           MATHLLD01_BUSY  	 : MATH unit is busy.<BR>
 *
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
 *  Q0_23 Result;
 *  Q0_23 *ResultPtr = &Result;
 *  MATHLLD01_STATUS status=0;
 *  Q8_15 x = 32768;
 *  Q8_15 y = 32768;
 *  
 *  DAVE_Init();
 *  MATH01_Init(); // Initialization of MATH module
 *   
 *  status = STDMATH01_atan(x, y, ResultPtr);
 *
 *  if(MATHLLD01_ACCEPTED == status){
 *  //Process result
 *  }
 *  else{
 *  //Handle error
 *  }
 *
 *  while(1);
 *  return 0;
 * }
 * 
 * @endcode<BR> </p>
 *
 */
MATHLLD01_STATUS STDMATH01_atan(Q8_15 x, Q8_15 y, Q0_23 *ResultPtr);

/**
 * @brief This function computes the hyperbolic cosine of a given angle in 
 * radians.
 * 
 * Note: The input angle in radians must be in the format of Signed Q0_23.
 *
 * @param[in]  Angle_In_Rad - Normalised Angle in Radians (in Signed Q0_23 format)
 * @param[out] ResultPtr - Pointer to Result (in Signed Q1_22 format)
 *
 * @return   status <BR>
 *           MATHLLD01_ACCEPTED: MATH unit accepted to process the request.<BR>
 *           MATHLLD01_ERROR	 : ERROR during release of MATH unit.<BR>
 *           MATHLLD01_BUSY  	 : MATH unit is busy.<BR>
 *
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
 *  Q1_22 Result;
 *  Q1_22 *ResultPtr = &Result;
 *  MATHLLD01_STATUS status=0;
 *  // 0.7857 radians (45 degree) Normalised in Q0_23 format
 *  Q0_23 Angle_In_Rad = 2097152;
 *  
 *  DAVE_Init();
 *  MATH01_Init(); // Initialization of MATH module 
 *  
 *  status = STDMATH01_cosh(Angle_In_Rad, ResultPtr);
 *
 *  if(MATHLLD01_ACCEPTED == status){
 *  //Process result
 *  }
 *  else{
 *  //Handle error
 *  }
 *
 *  while(1);
 *  return 0;
 * }
 * 
 * @endcode<BR> </p>
 *
 */
MATHLLD01_STATUS STDMATH01_cosh(Q0_23 Angle_In_Rad, Q1_22 *ResultPtr);

/**
 * @brief This function computes the hyperbolic sine of a given angle in 
 * radians.
 * 
 * Note: The input angle in radians must be in the format of Signed Q0_23.
 *
 * @param[in]  Angle_In_Rad - Normalised Angle in Radians (in Signed Q0_23 format)
 * @param[out] ResultPtr - Pointer to Result (in Signed Q1_22 format)
 *
 * @return   status <BR>
 *           MATHLLD01_ACCEPTED: MATH unit accepted to process the request.<BR>
 *           MATHLLD01_ERROR	 : ERROR during release of MATH unit.<BR>
 *           MATHLLD01_BUSY  	 : MATH unit is busy.<BR>
 *
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
 *  Q1_22 Result;
 *  Q1_22 *ResultPtr = &Result;
 *  MATHLLD01_STATUS status=0;
 *  // 0.7857 radians (45 degree) Normalised in Q0_23 format
 *  Q0_23 Angle_In_Rad = 2097152;
 *  
 *  DAVE_Init();
 *  MATH01_Init(); // Initialization of MATH module 
 *  
 *  status = STDMATH01_sinh(Angle_In_Rad, ResultPtr);
 *
 *  if(MATHLLD01_ACCEPTED == status){
 *  //Process result
 *  }
 *  else{
 *  //Handle error
 *  }
 *
 *  while(1);
 *  return 0;
 * }
 * 
 * @endcode<BR> </p>
 *
 */
MATHLLD01_STATUS STDMATH01_sinh(Q0_23 Angle_In_Rad, Q1_22 *ResultPtr);

/**
 * @brief This function computes the hyperbolic tangent of a given angle in 
 * radians.
 * 
 * Note: The input angle in radians must be in the format of Signed Q0_23.
 *
 * @param[in]  Angle_In_Rad - Normalised Angle in Radians (in Signed Q0_23 format)
 * @param[out] ResultPtr - Pointer to Result (in Signed Q0_23 format)
 *
 * @return   status <BR>
 *           MATHLLD01_ACCEPTED: MATH unit accepted to process the request.<BR>
 *           MATHLLD01_ERROR	 : ERROR during release of MATH unit.<BR>
 *           MATHLLD01_BUSY  	 : MATH unit is busy.<BR>
 *
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
 *  Q0_11 Result;
 *  Q0_11 *ResultPtr = &Result;
 *  MATHLLD01_STATUS status=0;
 *  // 0.7857 radians (45 degree) Normalised in Q0_23 format
 *  Q0_23 Angle_In_Rad = 2097152;
 *  
 *  DAVE_Init();
 *  MATH01_Init(); // Initialization of MATH module 
 *  
 *  status = STDMATH01_tanh(Angle_In_Rad, ResultPtr);
 *
 *  if(MATHLLD01_ACCEPTED == status){
 *  //Process result
 *  }
 *  else{
 *  //Handle error
 *  }
 *
 *  while(1);
 *  return 0;
 * }
 * 
 * @endcode<BR> </p>
 *
 */
MATHLLD01_STATUS STDMATH01_tanh(Q0_23 Angle_In_Rad, Q0_11 *ResultPtr);

#endif /* ((MATH01_STDMATH == 1) && (MATH01_FASTMATH == 0)) */

/**
 * @}
 */

/* Support for C++ codebase */
#ifdef __cplusplus
}
#endif   

#endif /* STDMATH01_H_ */

/*CODE_BLOCK_END*/
