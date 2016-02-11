/*******************************************************************************
 Copyright (c) 2014, Infineon Technologies AG                                 **
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
********************************************************************************
** Filename : CCU8GLOBAL.h                                                    **
**                                                                            **
** PLATFORM : Infineon XMC4000 / XMC1300 Series                               **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR   : App Developer                                                   **
**                                                                            **
** MAY BE CHANGED BY USER [Yes/No]: No                                        **
**                                                                            **
** MODIFICATION DATE : Nov  26, 2013                                          **
**                                                                            **
*******************************************************************************/
/**********************   Version History   ************************************
** Date     Version      Dev    Remarks
**
** V1.0.6   26-11-2013   JBT    Updated after for fixed static file changes.
**                              Coding guidelines followed, MISRA checks done 
**                              New documentation template related  changes done
** V1.0.4   17-09-2012   BKB    Removed function like macro for coding guidline
** V1.0.0   22-03-2012   BKB    Initial Version
*******************************************************************************/
/*******************************************************************************
**  Developer     Name
**----------------------------------------------------------------------------
**  JBT           Jubin Thomas
**  BKB           Balaji Kurra Bala 
*******************************************************************************/
/**
 * @file CCU8GLOBAL.h
 *
 * @brief  CCU8GLOBAL  App implementation header file.
 *
 **/

#ifndef CCU8GLOBAL_H_
#define CCU8GLOBAL_H_

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
#elif (__TARGET_DEVICE__ == XMC11)
#include <XMC1100.h>
#elif (__TARGET_DEVICE__ == XMC12)
#include <XMC1200.h>
#elif (__TARGET_DEVICE__ == XMC13)
#include <XMC1300.h>
#else
#error "Unsupported XMC family"
#endif

#if (UC_FAMILY == XMC4)
#include "../../inc/CLK001/CLK001.h"
#include "../../inc/RESET001/RESET001.h"
#endif

#if (UC_FAMILY == XMC1)
#include "../../inc/CLK002/CLK002.h"
#endif

#ifdef DAVE_CE
#include "../../inc/CCU8GLOBAL/CCU8GLOBAL_Conf.h"
#endif

/* Support for C++ codebase */
#ifdef __cplusplus
extern "C" {
#endif

/*******************************************************************************
**                             ENUMERATIONS                                   **
*******************************************************************************/

/*******************************************************************************
**                            DATA STRUCTURES                                 **
*******************************************************************************/

/**
 * @ingroup CCU8GLOBAL_datastructures
 * @{
 */
/**
 * This saves the context of the CCU8Global App.
 */
typedef struct CCU8Global_HandleType
{

   /* This is the pointer to the CMSIS CCU8 kernel register structure   */
   CCU8_GLOBAL_TypeDef* const CC8yKernRegsPtr;
   
   #if ((__TARGET_DEVICE__ == XMC44)||(__TARGET_DEVICE__ == XMC42)|| \
        (__TARGET_DEVICE__ == XMC13)||(__TARGET_DEVICE__ == XMC41))
   uint32_t ClockGating_Pos;
   #endif
   
   #if (UC_FAMILY == XMC4)
   uint32_t PeriphResetNum;
   #endif

}CCU8GLOBAL_HandleType;

/**
 * @}
 */

/**
 * @ingroup CCU8GLOBAL_apidoc
 * @{
 */
/*******************************************************************************
 **                       FUNCTION PROTOTYPES                                 **
*******************************************************************************/

/**
 *  <b>CCU8GLOBAL Initialization : </b><BR>
 *
 * This function will initialize the CCU8 module. 
 * 
 * @return void 
 * <BR>
 *
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 *  #include <DAVE3.h>
 * 
 *  int main(void)
 *  {
 *    DAVE_Init();  //CCU8GLOBAL_Init() is called within this function
 *  
 *    return 0;
 *  }
 * @endcode<BR> </p>
 */
void CCU8GLOBAL_Init(void);

/**
 * @}
 */

#ifdef DAVE_CE
#include "../../inc/CCU8GLOBAL/CCU8GLOBAL_Extern.h"
#endif

/* Support for C++ codebase */
#ifdef __cplusplus
}
#endif  

#endif /*CCUGLOBAL_H_*/
