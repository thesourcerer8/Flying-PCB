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
** PLATFORM : Infineon XMC1xxx Series                                         **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR   : App Developer                                                   **
**                                                                            **
** MAY BE CHANGED BY USER [Yes/No]: Yes                                       **
**                                                                            **
** MODIFICATION DATE : Oct 30, 2013                                           **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                       Author(s) Identity                                   **
********************************************************************************
**                                                                            **
** Initials     Name                                                          **
** ---------------------------------------------------------------------------**
** Yogesh       App Developer                                                 **
*******************************************************************************/
/* Revision History
 *****************************************************************************
 *Date           Version   Remarks
 * 9 Jan 2013    v1.0.0    Initial Version
 * 04 Sep 2013   v1.0.4    Added support for XMC1201, XMC1202, XMC1301 devices
 *
 *
*/

/**
 * @file CLK002.h
 *
 * @brief  Header file for Clock App
 *
 */

#ifndef CLK002_H_
#define CLK002_H_

/* Support for C++ codebase */
#ifdef __cplusplus
extern "C" {
#endif

/*******************************************************************************
**                           Include Files                                    **
*******************************************************************************/
#include <DAVE3.h>


/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/

/**
 * @ingroup CLK002_publicparam
 * @{
 */

#define   CLK002_DELAYCNT                (0x3FFU)
/**
 * @}
 */

/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/
    
        


/*******************************************************************************
**                      Global Type Definitions                               **
*******************************************************************************/
/*******************************************************************************
** FUNCTION PROTOTYPES                                                        **
*******************************************************************************/


/**
 * @ingroup CLK002_apidoc
 * @{
 */

 /**
 * @brief     Initialises SCU Clock registers based on user configuration
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
 *   // Initialises all App configurations ...
 *   DAVE_Init(); // CLK002_Init() will be called from DAVE_Init()
 * }
 *
 * @endcode <BR> </p>
 */ 
void CLK002_Init(void);

 /**
 * @brief  This routine is called by CMSIS startup to find out if clock tree 
 *         setup should be done by it.This routine is WEAKLY defined in CStart.
 *         In the absence of clock app, the weak definition takes precedence
 *         which always permits clock tree setup by CStart. When clock app is
 *         defined, this function overrides the CStart definition. Clock tree 
 *         setup is launched and upon completion, control is ceded back to 
 *         CStart.CStart abstains from setting up clock tree and instead 
 *         proceeds with program  loading. Return 0 to disallow CStart from
 *         performing clock tree setup.
 */
uint32_t AllowClkInitByStartup(void);
/**
 * @}
 */

 /* Support for C++ codebase */
#ifdef __cplusplus
}
#endif   

#endif /* CLK002_H_ */

/*CODE_BLOCK_END*/

