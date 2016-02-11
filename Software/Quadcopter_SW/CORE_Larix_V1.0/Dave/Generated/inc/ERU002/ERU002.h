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
** PLATFORM : Infineon XMC4000 Series/XMC1000 series                          **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR   : App Developer                                                   **
**                                                                            **
** MAY BE CHANGED BY USER [yes/no]: Yes                                       **
**                                                                            **
** MODIFICATION DATE : Nov 14, 2013                                           **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                       Author(s) Identity                                   **
********************************************************************************
**                                                                            **
** Initials     Name                                                          **
** ---------------------------------------------------------------------------**
** SNR         App Developer                                                  **
*******************************************************************************/

/**
 * @file ERU002.h
 *
 * Revision History
 * 25 Jan 2013 v1.0.4 Initial Version
 * 14 Mar 2013 v1.0.6 Porting to XMC42xx and XMC44xx
 * 14 Nov 2013 v1.0.12 Followed coding guidelines
 * 
 * @brief  Header file for ERU002 App
 *
 */

#ifndef ERU002_H_
#define ERU002_H_

#ifdef __cplusplus
extern "C" {
#endif
/*******************************************************************************
**                      Include Files                                         **
*******************************************************************************/
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
#endif

/* Include App config file */
#ifdef DAVE_CE
#include "ERU002_Conf.h"
#endif 

/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/

/*******************************************************************************
**                      Global Type Definitions                               **
*******************************************************************************/

 /**
 * @ingroup ERU002_datastructures
 * @{
 */

/*******************************************************************************
 *                                STRUCTURES                                  **
 ******************************************************************************/
 
/**
 * @brief App Handle Data structure.
 * Mapped ERU base address and Output Channel parameters are stored in this
 * structure.
 */
typedef struct ERU002_HandleType
{
 /**
  * Baseaddress of ERU module 
  */
  ERU_GLOBAL_TypeDef* ERURegs;  
  /**
  * Input channel No  
  */
  uint32_t OutputChannel;
  
  uint32_t GP_Value;
  
  uint32_t GEEN_Value;         
}ERU002_HandleType;

/**
 * @}
 */

/**
 * @ingroup ERU002_enumerations
 * @{
 */

/**
 * @brief Enumurated structure which indicates the Status flags.
 */
typedef enum ERU002_StatusType
{
  /**
   * Function Entry
   */
 /**
  * @cond INTERNAL_DOCS
  * @param MODULENAME ERU001
  * @endcond
  */
  ERU002_FUNCTION_ENTRY,
 /**
  * @cond INTERNAL_DOCS
  * @param ERRCODESTRING2 ERU001_FUN_EXIT
  * @param STRCODESTRING2 Exited function \%s
  * @endcond
  */
  ERU002_FUNCTION_EXIT
}ERU002_StatusType;
 
/**
 * @brief Enumurated structure for the Service request mode flags.
 */
typedef enum {
   ERU002_ServiceRequestMode_NEVER,
   ERU002_ServiceRequestMode_ON_TRIGGER,
   ERU002_ServiceRequestMode_ON_TRIGGER_AND_PATTERN_MATCH,
   ERU002_ServiceRequestMode_ON_TRIGGER_AND_PATTERN_MISMATCH
 } ERU002_ServiceRequestMode_t;


 /**
 * @}
 */

/*******************************************************************************
**                      Global Constant Declarations                          **
*******************************************************************************/


/*******************************************************************************
**                      Extern Variables                                      **
*******************************************************************************/


/*******************************************************************************
**                     FUNCTION PROTOTYPES                                    **
*******************************************************************************/

/**
 * @ingroup ERU002_apidoc
 * @{
 */

/**
 * @brief     This function Initializes a  ERU002 App instances (OGUy) 
 *            based on user configuration.
 *
 *
 * @return     None
 *
 * <b>Reentrant: NO </b><BR>
 * <b>Sync/Async:  Synchronous</b>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <DAVE3.h>
 *  int main(void)
 *	{
 *	  // ... Initializes Apps configurations ...
 *	  DAVE_Init(); // ERU002_Init() will be called from DAVE_Init()
 *     while(1)
 *     {
 *     }
 *	}
 *
 * @endcode<BR> </p>
 */
void ERU002_Init(void);


/**
 * @brief     This function is used to Select peripheral trigger input Source.
 *
 * @param[in]  App instance handle and ERU_OGU_y sel
 *            ( ERU_OGU_y = SIGNAL_ERU_OGU_y3 for signal 1 and 
 *              ERU_OGU_y = SIGNAL_ERU_OGU_y1 for signal 0)
 *
 * @return     status
 *
 * <b>Reentrant: NO </b><BR>
 * <b>Sync/Async:  Synchronous</b>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <DAVE3.h>
 *  int main(void)
 *	{
 *   uint32_t status;
 *	  // ... Initializes Apps configurations ...
 *	  DAVE_Init();
 *    //....
 *    //ERU_OGU_y = SIGNAL_ERU_OGU_y3 for signal 1 
 *    //ERU_OGU_y = SIGNAL_ERU_OGU_y1 for signal 0
 *    status = ERU002_SetPeripheralTrigInputSrc(
 *                             &ERU002_Handle0, SIGNAL_ERU_OGU_y3) ; 
 *	}
 *
 * @endcode<BR> </p>
 *
 */
uint32_t  ERU002_SetPeripheralTrigInputSrc(const ERU002_HandleType *Handle, 
		                                   uint32_t ERU_OGU_y);

/**
 * This function is used to check the pattern detection result flag.
 * @param[in]  Handle  ERU002 device handle.

 * <b>Reentrant: NO </b><BR>
 * <b>Sync/Async:  Synchronous</b>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <DAVE3.h>
 *  int main(void)
 *	{
 *   uint8_t PDFlag =0;
 *	  // ... Initializes Apps configurations ...
 *	  DAVE_Init();
 *    //....
 *    PDFlag = ERU002_GetPatternResult(ERU002_Handle0);
 *	}
 *
 * @endcode<BR> </p>
 *
 */
extern uint32_t ERU002_GetPatternResult(const ERU002_HandleType Handle);

/**
 * This function is used to enable the pattern detection.
 * @param[in]  Handle  ERU002 device handle.

 * <b>Reentrant: NO </b><BR>
 * <b>Sync/Async:  Synchronous</b>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <DAVE3.h>
 *  int main(void)
 *	{
 *   uint8_t PDFlag =0;
 *	  // ... Initializes Apps configurations ...
 *	  DAVE_Init();
 *    //....
 *    PDFlag = ERU002_EnablePatternDetection(&ERU002_Handle0);
 *	}
 *
 * @endcode<BR> </p>
 *
 */
extern void ERU002_EnablePatternDetection(const ERU002_HandleType *Handle);

/**
 * This function is used to disable the pattern detection.
 * @param[in]  Handle  ERU002 device handle.

 * <b>Reentrant: NO </b><BR>
 * <b>Sync/Async:  Synchronous</b>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <DAVE3.h>
 *  int main(void)
 *	{
 *   uint8_t PDFlag =0;
 *	  // ... Initializes Apps configurations ...
 *	  DAVE_Init();
 *    //....
 *    PDFlag = ERU002_DisablePatternDetection(&ERU002_Handle0);
 *	}
 *
 * @endcode<BR> </p>
 *
 */
extern void ERU002_DisablePatternDetection(const ERU002_HandleType *Handle);

/**
 * This function is used to select service request mode.
 * @param[in]  Handle  ERU002 device handle.
 * @param[in]  ERU002_ServiceRequestMode_t Scheme

 * <b>Reentrant: NO </b><BR>
 * <b>Sync/Async:  Synchronous</b>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <DAVE3.h>
 *  int main(void)
 *	{
 *    // ... Initializes Apps configurations ...
 *	  DAVE_Init();
 *    //....
 *    ERU002_SelectServiceRequestMode(&ERU002_Handle0, 
 *                                     ERU002_ServiceRequestMode_ON_TRIGGER);
 *	}
 *
 * @endcode<BR> </p>
 *
 */
extern void ERU002_SelectServiceRequestMode(const ERU002_HandleType *Handle, 
                                           ERU002_ServiceRequestMode_t scheme);

/**
 *@}
 */

#ifdef DAVE_CE
/* Include external references */
#include "ERU002_Extern.h"
#endif   /*Externs.h*/    

#ifdef __cplusplus
}
#endif

#endif /* ERU002_H_ */
