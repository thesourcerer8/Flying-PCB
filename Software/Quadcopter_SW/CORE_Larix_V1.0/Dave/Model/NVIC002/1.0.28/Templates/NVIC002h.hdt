/*CODE_BLOCK_BEGIN[NVIC002.h]*/
/**************************************************************************//**
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
** MAY BE CHANGED BY USER [yes/no]: Yes                                       **
**                                                                            **
** MODIFICATION DATE : July 17, 2014                                          **
*******************************************************************************/

/*******************************************************************************
**                       Author(s) Identity                                   **
********************************************************************************
**                                                                            **
** Initials     Name                                                          ** 
** ---------------------------------------------------------------------------**
** SNR          App Developer                                                 **
*******************************************************************************/
/**
 * @file NVIC002.h
 *
 * @brief  Header file for NVIC SRGeneral (NVIC002) App.
 *
 */
 /* Revision History
  * 18  Feb 2013   v1.0.12  Comments are added.
  * 28  Nov 2013   v1.0.20  Updated as per coding guidelines
  * 24  Feb 2014   v1.0.24  Modified all macros to STATIC INLINE
  * 28  Feb 2014   v1.0.26  Reverted uc_id header file inclusion for backward 
                            compatibility with DAVE
  * 17  Jul 2014   v1.0.28  Typecasted all the NodeIDs with IRQn_Type                            
  */

#ifndef NVIC002_H_
#define NVIC002_H_

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


/* Include App config file */
#ifdef DAVE_CE
#include "NVIC002_Conf.h"
#endif 
/******************************************************************************
**                      Global Macro Definitions                             **
******************************************************************************/

/******************************************************************************
**                      Global Type Definitions                              **
******************************************************************************/
/**
 * @ingroup NVIC002_datastructures
 * @{
 */

/**
 * Structure which holds the UI configuration mapped for the App
 *        instance.
 *  Note: Sub-Priority is not available for TIMM Devices
 */

typedef struct NVIC002_HandleType
{
  /** Mapped NVIC Node */
  uint8_t NodeID;     
  /**  Node Interrupt Priority */
  uint8_t Priority;    
  /**  Node Interrupt SubPriority */
  uint8_t SubPriority;  
  /* Interrupt enable for Node */
  uint8_t InterruptEnable;
}NVIC002_HandleType;

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
** FUNCTION PROTOTYPES                                                        **
*******************************************************************************/

/**
 * @ingroup NVIC002_apidoc
 * @{
 */

/**
 * This function is used to configure and initialize the NVIC002 App instances
 *
 *
 * @param[in] None
 *
 * @return     void
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 *  #include <DAVE3.h>
 *
 *  int main(void)
 *  {
 *    DAVE_Init(); // NVIC002_Init() is called within DAVE_Init()
 *    return 0;
 *  }
 * @endcode<BR> </p>
 *
 */
void  NVIC002_Init(void);

/**
 * This function is used to enable the IRQ
 *
 * @param[in]  Handle Instance Handle
 *
 * @return     void
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 *  #include <DAVE3.h>
 *
 *  int main(void)
 *  {
 *    DAVE_Init(); // NVIC002_Init() is called within DAVE_Init()
 *    NVIC002_EnableIRQ(&NVIC002_Handle0);
 *    return 0;
 *  }
 * @endcode<BR> </p>
 */
__STATIC_INLINE void NVIC002_EnableIRQ (const NVIC002_HandleType *const Handle) {
    NVIC_EnableIRQ((IRQn_Type)(Handle->NodeID));
}

/**
 * This function is used to disable the IRQ
 *
 * @param[in]  Handle Instance Handle
 *
 * @return     void
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <DAVE3.h>
 *
 *  int main(void)
 *  {
 *    DAVE_Init(); // NVIC002_Init() is called within DAVE_Init()
 *    NVIC002_DisableIRQ(&NVIC002_Handle0);
 *    return 0;
 *  }
 * @endcode<BR> </p>
 */
__STATIC_INLINE void NVIC002_DisableIRQ (const NVIC002_HandleType *const Handle) {
    NVIC_DisableIRQ((IRQn_Type)(Handle->NodeID));
}

/**
 * This function is used to get pending status of the IRQ
 *
 * @param[in]  Handle Instance Handle
 *
 * @return     void
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <DAVE3.h>
 *
 *  int main(void)
 *  {
 *    DAVE_Init(); // NVIC002_Init() is called within DAVE_Init()
 *    NVIC002_GetPendingIRQ(&NVIC002_Handle0);
 *    return 0;
 *  }
 * @endcode<BR> </p>
 */
__STATIC_INLINE uint32_t NVIC002_GetPendingIRQ (const NVIC002_HandleType *const Handle) {
    return NVIC_GetPendingIRQ((IRQn_Type)(Handle->NodeID));
}

/**
 * This function is used to set pending status of the IRQ
 *
 * @param[in]  Handle Instance Handle
 *
 * @return     void
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <DAVE3.h>
 *
 *  int main(void)
 *  {
 *    DAVE_Init(); // NVIC002_Init() is called within DAVE_Init()
 *    NVIC002_SetPendingIRQ(&NVIC002_Handle0);
 *    return 0;
 *  }
 * @endcode<BR> </p>
 */
__STATIC_INLINE void NVIC002_SetPendingIRQ (const NVIC002_HandleType *const Handle) {
    NVIC_SetPendingIRQ((IRQn_Type)(Handle->NodeID));
}

/**
 * This function is used to clear pending status of the IRQ
 *
 * @param[in]  Handle Instance Handle
 *
 * @return     void
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <DAVE3.h>
 *
 *  int main(void)
 *  {
 *    DAVE_Init(); // NVIC002_Init() is called within DAVE_Init()
 *    NVIC002_ClearPendingIRQ(&NVIC002_Handle0);
 *    return 0;
 *  }
 * @endcode<BR> </p>
 */
__STATIC_INLINE void NVIC002_ClearPendingIRQ (const NVIC002_HandleType *const Handle) {
    NVIC_ClearPendingIRQ((IRQn_Type)(Handle->NodeID));
}

/**
 *@}
 */

#ifdef DAVE_CE
/* Include external references */
#include "NVIC002_Extern.h"
#endif   /*Externs.h*/    

#ifdef __cplusplus
}
#endif
#endif /* NVIC002_H_ */
/*CODE_BLOCK_END*/