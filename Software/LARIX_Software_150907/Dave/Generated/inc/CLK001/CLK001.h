/******************************************************************************
 *
 * Copyright (C) 2013 Infineon Technologies AG. All rights reserved.
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
** PLATFORM : Infineon XMC4000 Series                                         **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR   : App Developer                                                   **
**                                                                            **
** MAY BE CHANGED BY USER [Yes/No]: Yes                                       **
**                                                                            **
** MODIFICATION DATE : Aug 21, 2013                                           **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                       Author(s) Identity                                   **
********************************************************************************
**                                                                            **
** Initials     Name            App Version    Date                           **
** ---------------------------------------------------------------------------**
** ES     App Developer      1.0.34        21/08/2013                      **
*******************************************************************************/
/**
 * @file CLK001.h
 *
 * @brief  Header file for Clock App
 *
 * Revision History
 * 21 Aug 2013   v1.0.34   Static and configuration code separated. 
 *
 */

#ifndef CLK001_H_
#define CLK001_H_

/* Support for C++ codebase */
#ifdef __cplusplus
extern "C" {
#endif

/*******************************************************************************
**                           Include Files                                    **
*******************************************************************************/
#include <uc_id.h>

#if (__TARGET_DEVICE__ == XMC45)
#include <XMC4500.h>
#elif (__TARGET_DEVICE__ == XMC44)
#include <XMC4400.h>
#elif ((__TARGET_DEVICE__ == XMC42) ||(__TARGET_DEVICE__ == XMC41) )
#include <XMC4200.h>
#else
#error "Unsupported XMC family"
#endif

#ifdef DAVE_CE
#include "CLK001_Conf.h"
#endif

/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/

/**
 * @ingroup CLK001_publicparam
 * @{
 */


/**
 * @}
 */

/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/

/*******************************************************************************
** FUNCTION PROTOTYPES                                                        **
*******************************************************************************/
/**
 * @ingroup CLK001_apidoc
 * @{
 */

 /**
 * @brief     Initializes SCU Clock registers based on user configuration
 *
 * @param[in]  None
 *
 * @return     None
 * <b>Reentrant: NO </b><BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   // Initializes all App configurations ...
 *   DAVE_Init(); // CLK001_Init() will be called from DAVE_Init()
 * }
 *
 * @endcode <BR> </p>
 */ 
void CLK001_Init(void);

 /**
 * @brief This routine is called by CMSIS startup to find out if clock tree 
 *        setup should be done by it. This routine is WEAKLY defined in CStart.
 *        In the absence of clock app, the weak definition takes precedence
 *        which always permits clock tree setup by CStart. When clock app is
 *        defined, this function overrides the CStart definition. Clock tree 
 *        setup is launched and upon completion, control is gave back to 
 *        CStart. CStart abstains from setting up clock tree and instead 
 *        proceeds with program  loading. Return 0 to disallow CStart from
 *        performing clock tree setup.
 */
uint32_t AllowPLLInitByStartup(void);

/**
 * @}
 */

/* Support for C++ codebase */
#ifdef __cplusplus
}
#endif   
 
#endif /* CLK001_H_ */

/*CODE_BLOCK_END*/

