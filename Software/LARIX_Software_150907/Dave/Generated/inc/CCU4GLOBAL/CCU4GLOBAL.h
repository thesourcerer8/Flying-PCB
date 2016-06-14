/******************************************************************************
 *
 * Copyright (C) 2014 Infineon Technologies AG. All rights reserved.
 *
 * Infineon Technologies AG (Infineon) is supplying this software for use with
 * Infineon's microcontrollers.
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
** PLATFORM : Infineon XMC4000/XMC1000 Series                                 **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR   : App Developer                                                   **
**                                                                            **
** MAY BE CHANGED BY USER [yes/Yes]: Ys                                       **
**                                                                            **
** MODIFICATION DATE : Nov 28,  2013                                          **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                       Author(s) Identity                                   **
********************************************************************************
**                                                                            **
** Initials     Name                                                          **
** ---------------------------------------------------------------------------**
** PM           App Developer                                                 **
*******************************************************************************/

/**
 * @file  CCU4Global.h
 *
 * @brief This file contains all public data structures,enums and function
 *        prototypes.
 */
/* Revision History
 * 22 March    2012   v1.0.0    Initial version
 * 28 Nov      2013   v1.0.20   Enabled doxygen style comments
 */
 

#ifndef CCU4GLOBAL_H_
#define CCU4GLOBAL_H_

#ifdef __cplusplus
extern "C" {
#endif
/******************************************************************************
**                      Include Files                                        **
******************************************************************************/

#include <uc_id.h>

#if (__TARGET_DEVICE__ == XMC45)
#include <XMC4500.h>
#elif (__TARGET_DEVICE__ == XMC44)
#include <XMC4400.h>
#elif ((__TARGET_DEVICE__ == XMC42)||(__TARGET_DEVICE__ == XMC41))
#include <XMC4200.h>
#elif (__TARGET_DEVICE__ == XMC13)
#include <XMC1300.h>
#elif (__TARGET_DEVICE__ == XMC12)
#include <XMC1200.h>
#elif (__TARGET_DEVICE__ == XMC11)
#include <XMC1100.h>
#endif

#include "../../inc/LIBS/types.h"
#if (UC_FAMILY == XMC4)
#include "../../inc/RESET001/RESET001.h"
#include "../../inc/CLK001/CLK001.h"
#endif

#if (UC_FAMILY == XMC1)
#include "../../inc/CLK002/CLK002.h"
#endif

/* Include App config file */
#ifdef DAVE_CE
#include "CCU4Global_Conf.h"
#endif 

/**
  * @ingroup CCU4GLOBAL_constants
  * @{
  */
#define CCU4GLOBAL_DELAYCNT (0x3FFU)

/**
 * @}
 */
/*******************************************************************************
 *                                ENUMERATIONS                                **
 ******************************************************************************/

/*******************************************************************************
 *                                STRUCTURES                                **
 ******************************************************************************/
/**
 * @ingroup CCU4GLOBAL_datastructures
 * @{
 */
/**
 * This structure enumerates the CCU4 module number.
 */
typedef struct CCU4Global_HandleType
{
  /**
   * This is the pointer to the CCU4 kernel register structure.
   */
   CCU4_GLOBAL_TypeDef* const CC4yKernRegsPtr;
   uint32_t KernelNumber;
   
#if ((__TARGET_DEVICE__ == XMC44) || (__TARGET_DEVICE__ == XMC42) || \
     (__TARGET_DEVICE__ == XMC41) || (UC_FAMILY == XMC1))
  uint32_t ClockGating;
#endif
  
#if (UC_FAMILY == XMC4)
  uint32_t PeripheralReset;
#endif
  
}CCU4Global_HandleType;

/**
 * @}
 */


/*******************************************************************************
 **FUNCTION PROTOTYPES                                                        **
*******************************************************************************/
/**
 * @ingroup CCU4GLOBAL_apidoc
 * @{
 */
/**
 * @brief This is the initialization function for the Global App.
 * @return void 
 * <BR>
 *
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 * 
 * @code
 * #include <DAVE3.h>
 * 
 * int main(void)
 * {
 *  DAVE_Init(); //CCU4GLOBAL_Init is called within DAVE_Init.
 *  
 *  return 0;
 *  
 * }
 * @endcode
 */
void CCU4GLOBAL_Init(void);
/**
 * @}
 */

#ifdef DAVE_CE
/* Include external references */
#include "CCU4Global_Extern.h"
#endif   /*Externs.h*/    

#ifdef __cplusplus
}
#endif





#endif /*CCUGLOBAL_H_*/
