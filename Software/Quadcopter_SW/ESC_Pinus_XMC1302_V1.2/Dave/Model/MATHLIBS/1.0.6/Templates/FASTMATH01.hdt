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
 * @file FASTMATH01.h
 *
 * @brief  This file contains enums and function prototypes of FASTMATH01.
 *
 */

/* Revision History
 *  12 Feb 2013   v1.0.0   Initial version
 */
 
#ifndef FASTMATH01_H_
#define FASTMATH01_H_

/* Support for C++ codebase */
#ifdef __cplusplus
extern "C" {
#endif

/*******************************************************************************
**                      Include Files                                         **
*******************************************************************************/
#include "MATHLLD01.h"

#if ((MATH01_STDMATH01 == 0) && (MATH01_FASTMATH01 == 1) && (MATH01_AEABI == 0))

/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/

/*******************************************************************************
**                      Global Variable Definitions                           **
*******************************************************************************/

/*******************************************************************************
**                      Global Type Definitions                               **
*******************************************************************************/
/**
  * @ingroup MATHLIBS_publicparam
  * @{
  */

/**
 * @brief   Callback function prototype
 */
typedef void (*FASTMATH01_CallbackType)(void);

/**
 * @brief Data structure which has the Channel Configuration options.
 * The channel selection and address configurations are done using
 * this structure.
 */

typedef struct FASTMATH01_HandleType
{
  FASTMATH01_CallbackType CbListener; // User defined function
}FASTMATH01_HandleType;

/**
 * @}
 */

/*******************************************************************************
** 							FUNCTION PROTOTYPES                               **
*******************************************************************************/
/**
 * @ingroup MATHLIBS_apidoc
 * @{
 */

/**
 * @brief Function to register callback functions for MATH end of calculation 
 * 		  Event. Successfully registered callback function is invoked 
 * 		  from ISR.
 *
 * @param[in]  User defined Event Callback function
 *
 * @return   status <BR>
 *           MATHLLD01_ACCEPTED: Callback function registration is success.<BR>
 *           MATHLLD01_BUSY    : Callback function registration fail.<BR>
 *
 * <b>Reentrant: NO </b><BR>
 * <b>Sync/Async:  Synchronous</b>
 * 
 * @code
 * 
 *  #include <DAVE3.h>
 *  #include "../../inc/MATHLIBS/MATH01.h" // Include MATH Libraries 
 *  
 *  void CbListener(void)
 *  {
 *    // Callback function implementation
 *  };
 *  
 *  int main(void)
 *  {
 *    DAVE_Init();
 *    MATH01_Init(); // Initialization of MATH module 
 *    
 *    // Example usage of API
 *    FASTMATH01_RegisterCallback(CbListener);
 *    // .....
 *    return 0;
 *  }
 *
 * @endcode<BR> </p>
 */
MATHLLD01_STATUS FASTMATH01_RegisterCallback(FASTMATH01_CallbackType userFunction);

/**
 * @brief This function computes the cosine of a given angle in radians.
 * 
 * Note: The input angle in radians must be in the format of Q0_23.
 *
 * @param[in] Angle_In_Rad - Normalised Angle in Radians (in Signed Q0_23 format)
 *
 * @return   status <BR>
 *           MATHLLD01_ACCEPTED: MATH unit accepted to process the request.<BR>
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
 *  Q0_23 Result=0;
 *  MATHLLD01_STATUS status=0;
 *  // 0.7857 radians (45 degree) Normalised in Q0_23 format
 *  Q0_23 Angle_In_Rad = 2097152;
 *  
 *  DAVE_Init();
 *  MATH01_Init(); // Initialization of MATH module 
 *  
 *  status = FASTMATH01_cos(Angle_In_Rad);
 *  
 *  // <user code>
 *  
 *  Result = FASTMATH01_GetResult();
 *  
 *  while(1);
 *  return 0;
 * }
 * 
 * @endcode<BR> </p>
 *
 */
MATHLLD01_STATUS FASTMATH01_cos(Q0_23 Angle_In_Rad);

/**
 * @brief This function computes the sine of a given angle in radians.
 * 
 * Note: The input angle in radians must be in the format of Signed Q0_23.
 *
 * @param[in] Angle_In_Rad - Normalised Angle in Radians (in Signed Q0_23 format)
 *
 * @return   status <BR>
 *           MATHLLD01_ACCEPTED: MATH unit accepted to process the request.<BR>
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
 *  Q0_23 Result=0;
 *  MATHLLD01_STATUS status=0;
 *  // 0.7857 radians (45 degree) Normalised in Q0_23 format
 *  Q0_23 Angle_In_Rad = 2097152;
 *  
 *  DAVE_Init();
 *  MATH01_Init(); // Initialization of MATH module 
 * 
 *  status = FASTMATH01_sin(Angle_In_Rad);
 * 
 *  // <user code>
 *  
 *  Result = FASTMATH01_GetResult();
 *  
 *  while(1);
 *  return 0;
 * }
 * 
 * @endcode<BR> </p>
 *
 */
MATHLLD01_STATUS FASTMATH01_sin(Q0_23 Angle_In_Rad);

/**
 * @brief This function computes the tangent of a given angle in radians.
 * 
 * Note: The input angle in radians must be in the format of Signed Q0_23.
 *
 * @param[in] Angle_In_Rad - Normalised Angle in Radians (in Signed Q0_23 format)
 *
 * @return   status <BR>
 *           MATHLLD01_ACCEPTED: MATH unit accepted to process the request.<BR>
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
 *  Q0_23 Result=0;
 *  MATHLLD01_STATUS status=0;
 *  // 0.7857 radians (45 degree) Normalised in Q0_23 format
 *  Q0_23 Angle_In_Rad = 2097152;
 *  
 *  DAVE_Init();
 *  MATH01_Init(); // Initialization of MATH module 
 * 
 *  status = FASTMATH01_tan(Angle_In_Rad);
 *  
 *  // <user code>
 *  
 *  Result = FASTMATH01_GetResult();
 *  
 *  while(1);
 *  return 0;
 * }
 * 
 * @endcode<BR> </p>
 *
 */
MATHLLD01_STATUS FASTMATH01_tan(Q0_23 Angle_In_Rad);

/**
 * @brief This function computes the arc tangent of a given value.
 * 
 * Note: The input value must be in the format of Signed Q8_15.
 *
 * @param[in] x (in Signed Q8_15 format)
 * @param[in] y (in Signed Q8_15 format)
 *
 * @return   status <BR>
 *           MATHLLD01_ACCEPTED: MATH unit accepted to process the request.<BR>
 *           MATHLLD01_BUSY  	 : MATH unit is busy.<BR>
 *
 * <b>Reentrant: NO </b><BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * int main(void)
 * {
 *  Q0_23 Result=0;
 *  MATHLLD01_STATUS status=0;
 *  Q8_15 x = 32768;
 *  Q8_15 y = 32768;
 *  
 *  DAVE_Init();
 *  MATH01_Init(); // Initialization of MATH module 
 * 
 *  status = FASTMATH01_atan(y);
 *  
 *  // <user code>
 *  
 *  Result = FASTMATH01_GetResult();
 *  
 *  while(1);
 *  return 0;
 * }
 * 
 * @endcode<BR> </p>
 *
 */
MATHLLD01_STATUS FASTMATH01_atan(Q8_15 x, Q8_15 y);

/**
 * @brief This function computes the hyperbolic cosine of a given angle in 
 * radians.
 * 
 * Note: The input angle in radians must be in the format of Signed Q0_23.
 *
 * @param[in] Angle_In_Rad - Normalised Angle in Radians (in Signed Q0_23 format)
 *
 * @return   status <BR>
 *           MATHLLD01_ACCEPTED: MATH unit accepted to process the request.<BR>
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
 *  Q0_23 Result=0;
 *  MATHLLD01_STATUS status=0;
 *  DAVE_Init();
 *  MATH01_Init(); // Initialization of MATH module
 *   
 *  status = FASTMATH01_cosh(Angle_In_Rad);
 *  
 *  // <user code>
 *  
 *  Result = FASTMATH01_GetResult();
 *  
 *  while(1);
 *  return 0;
 * }
 * 
 * @endcode<BR> </p>
 *
 */
MATHLLD01_STATUS FASTMATH01_cosh(Q0_23 Angle_In_Rad);

/**
 * @brief This function computes the hyperbolic sine of a given angle in 
 * radians.
 * 
 * Note: The input angle in radians must be in the format of Signed Q0_23.
 *
 * @param[in]  Angle_In_Rad - Normalised Angle in Radians (in Signed Q0_23 format)
 *
 * @return   status <BR>
 *           MATHLLD01_ACCEPTED: MATH unit accepted to process the request.<BR>
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
 *  Q0_23 Result=0;
 *  MATHLLD01_STATUS status=0;
 *  // 0.7857 radians (45 degree) Normalised in Q0_23 format
 *  Q0_23 Angle_In_Rad = 2097152;
 *  
 *  DAVE_Init();
 *  MATH01_Init(); // Initialization of MATH module 
 *  
 *  status = FASTMATH01_sinh(Angle_In_Rad);
 * 
 *  // <user code>
 *  
 *  Result = FASTMATH01_GetResult();
 *  
 *  while(1);
 *  return 0;
 * }
 * 
 * @endcode<BR> </p>
 *
 */
MATHLLD01_STATUS FASTMATH01_sinh(Q0_23 Angle_In_Rad);

/**
 * @brief This function computes the hyperbolic tangent of a given angle in 
 * radians.
 * 
 * Note: The input angle in radians must be in the format of Signed Q0_23.
 *
 * @param[in]  Angle_In_Rad - Normalised Angle in Radians (in Signed Q0_23 format)
 *
 * @return   status <BR>
 *           MATHLLD01_ACCEPTED: MATH unit accepted to process the request.<BR>
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
 *  Q0_23 Result=0;
 *  MATHLLD01_STATUS status=0;
 *  // 0.7857 radians (45 degree) Normalised in Q0_23 format
 *  Q0_23 Angle_In_Rad = 2097152;
 *  
 *  DAVE_Init();
 *  MATH01_Init(); // Initialization of MATH module 
 *  
 *  status = FASTMATH01_tanh(Angle_In_Rad);
 *  
 *  // <user code>
 *  
 *  Result = FASTMATH01_GetResult();
 *  
 *  while(1);
 *  return 0;
 * }
 * 
 * @endcode<BR> </p>
 *
 */
MATHLLD01_STATUS FASTMATH01_tanh(Q0_23 Angle_In_Rad);

/**
 * @brief This function performs unsigned integer division.
 *  
 * Note: Ensure Divisor is smaller than Dividend.
 *  
 * @param[in]   uDividend of type uint32_t
 * @param[in]   uDivisor of type uint32_t \n
 *
 * @return   status <BR>
 *           MATHLLD01_ACCEPTED: MATH unit accepted to process the request.<BR>
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
 *  uint32_t Result=0;
 *  MATHLLD01_STATUS status=0;
 *  uint32_t uDividend = 100, uDivisor = 5;
 *  
 *  DAVE_Init();
 *  MATH01_Init(); // Initialization of MATH module
 *   
 *  status = FASTMATH01_uidiv(uDividend, uDivisor);
 * 
 *  // <user code>
 *  
 *  Result = FASTMATH01_GetResult();
 * 
 *  while(1);
 *  return 0;
 * }
 * 
 * @endcode<BR> </p>
 *
 */
MATHLLD01_STATUS FASTMATH01_uidiv(uint32_t uDividend, uint32_t uDivisor);

/**
 * @brief This function performs signed integer division.
 *  
 * @param[in]   iDividend of type int32_t
 * @param[in]   iDivisor of type int32_t \n
 *
 * @return   status <BR>
 *           MATHLLD01_ACCEPTED: MATH unit accepted to process the request.<BR>
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
 *  int32_t Result=0;
 *  MATHLLD01_STATUS status=0;
 *  uint32_t iDividend = -100, iDivisor = 5;
 *  
 *  DAVE_Init();
 *  MATH01_Init(); // Initialization of MATH module 
 *  
 *  status = FASTMATH01_idiv(iDividend, iDivisor);
 *  
 *  // <user code>
 *  
 *  Result = FASTMATH01_GetResult();
 *  
 *  while(1);
 *  return 0;
 * }
 * 
 * @endcode<BR> </p>
 *
 */
MATHLLD01_STATUS FASTMATH01_idiv(int32_t iDividend, int32_t iDivisor);

/**
 * @brief This function performs unsigned integer division modulo.
 *  
 * @param[in]   uDividend of type uint32_t
 * @param[in]   uDivisor of type uint32_t \n
 *
 * @return   status <BR>
 *           MATHLLD01_ACCEPTED: MATH unit accepted to process the request.<BR>
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
 *  uint32_t Result=0;
 *  MATHLLD01_STATUS status=0;
 *  uint32_t uDividend = 49, uDivisor = 5;  
 *  
 *  DAVE_Init();
 *  MATH01_Init(); // Initialization of MATH module 
 *  
 *  status = FASTMATH01_uidivmod(uDividend, uDivisor);
 *  
 *  // <user code>
 *  
 *  Result = FASTMATH01_GetResult();
 * 
 *  while(1);
 *  return 0;
 * }
 * 
 * @endcode<BR> </p>
 *
 */
MATHLLD01_STATUS FASTMATH01_uidivmod(uint32_t uDividend, uint32_t uDivisor);

/**
 * @brief This function performs signed integer division modulo.
 * 
 * @param[in]   iDividend of type int32_t
 * @param[in]   iDivisor of type int32_t \n
 *
 * @return   status <BR>
 *           MATHLLD01_ACCEPTED: MATH unit accepted to process the request.<BR>
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
 *  int32_t Result=0;
 *  MATHLLD01_STATUS status=0;
 *  uint32_t uDividend = -49, uDivisor = 5;
 *    
 *  DAVE_Init();
 *  MATH01_Init(); // Initialization of MATH module 
 *  
 *  status = FASTMATH01_idivmod(iDividend, iDivisor);
 * 
 *  // <user code>
 * 
 *  Result = FASTMATH01_GetResult();
 *  
 *  while(1);
 *  return 0;
 * }
 * 
 * @endcode<BR> </p>
 *
 */
MATHLLD01_STATUS FASTMATH01_idivmod(int32_t iDividend, int32_t iDivisor);

/**
 * @brief This function returns the result of last computed operation.
 * 
 * @return   status <BR>
 *           MATHLLD01_ACCEPTED: MATH unit accepted to process the request.<BR>
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
 *  Q0_23 Result=0;
 *  MATHLLD01_STATUS status=0;
 *  // 0.7857 radians (45 degree) Normalised in Q0_23 format
 *  Q0_23 Angle_In_Rad = 2097152;
 *  
 *  DAVE_Init();
 *  MATH01_Init(); // Initialization of MATH module 
 *  
 *  // This function takes ~65 cycles to compute the result
 *  status = FASTMATH01_cos(Angle_In_Rad);
 *  
 *  <user code>
 *  
 *  Result = FASTMATH01_GetResult(); // should be called after 65+ cycles
 * 
 *  while(1);
 *  return 0;
 * }
 * 
 * @endcode<BR> </p>
 *
 */
int32_t FASTMATH01_GetResult(void);

/**
 * @}
 */

/*******************************************************************************
 *                   			ENUMERATIONS        				          **
 ******************************************************************************/
/**
 * This enumerates the names of the functions in FASTMATH01
 */
typedef enum
{
  /**
   * Reference to FASTMATH01_cos function
   */
  FASTMATH01_cos_API,
  /**
   * Reference to FASTMATH01_sin function
   */  
  FASTMATH01_sin_API,
  /**
   * Reference to FASTMATH01_tan function
   */  
  FASTMATH01_tan_API,
  /**
   * Reference to FASTMATH01_atan function
   */  
  FASTMATH01_atan_API,
  /**
   * Reference to FASTMATH01_cosh function
   */  
  FASTMATH01_cosh_API,
  /**
   * Reference to FASTMATH01_sinh function
   */  
  FASTMATH01_sinh_API,
  /**
   * Reference to FASTMATH01_tanh function
   */  
  FASTMATH01_tanh_API,
  /**
   * Reference to FASTMATH01_uidiv function
   */  
  FASTMATH01_uidiv_API,
  /**
   * Reference to FASTMATH01_idiv function
   */  
  FASTMATH01_idiv_API,
  /**
   * Reference to FASTMATH01_uidivmod function
   */  
  FASTMATH01_uidivmod_API,
  /**
   * Reference to FASTMATH01_idovmod function
   */  
  FASTMATH01_idivmod_API,
  /**
   * Reference, if none of the function is selected
   */   
  FASTMATH01_NONE_API
} MATHLLD_CORDIC_APIS;

#endif /* FASTMATH01_H_ */

/* Support for C++ codebase */
#ifdef __cplusplus
}
#endif   

#endif /* ((MATH01_STDMATH == 0) && (MATH01_FASTMATH == 1) &&
          (MATH01_AEABI == 0)) */
/*CODE_BLOCK_END*/
