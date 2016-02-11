
/*CODE_BLOCK_BEGIN[ERU001.H]*/

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
** PLATFORM : Infineon XMC4000/XMC1000 Series                                 **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR   : App Developer                                                   **
**                                                                            **
** NOTE     : Any Changes made to this file will be overwritten during Code   **
**            Generation                                                      **
**                                                                            **
********************************************************************************
** VERSION HISTORY:
********************************************************************************
** v1.0.4,  25 Jan 2013,  BRG: Initial version.
** v1.0.6,  14 Mar 2013,  BRG: Supported to XMC4200 and XMC4400 device series.
** v1.0.10, 30 Sep 2013,  BRG: Code has been updated in complaint to coding 
**                             guidelines.                           
*******************************************************************************/

/**
 * @file ERU001.h
 *
 * @brief  This file contains enumeration, structure definitions and function
 * prototypes of ERU001 App.
 *
 */

#ifndef ERU001_H_
#define ERU001_H_

#ifdef __cplusplus
extern "C" {
#endif

/*******************************************************************************
** Include Files                                                              **
*******************************************************************************/

#include <uc_id.h>

#if (__TARGET_DEVICE__ == XMC45)
#include <XMC4500.h>
#elif (__TARGET_DEVICE__ == XMC44)
#include <XMC4400.h>
#elif ((__TARGET_DEVICE__ == XMC42) ||(__TARGET_DEVICE__ == XMC41) )
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
/* Included to access RESET001 app data structure, functions & enumerations */
#include "../../inc/RESET001/RESET001.h"
#endif

#ifdef DAVE_CE
/* Included to access the constants & HandleArray variable */
#include "../../inc/ERU001/ERU001_Conf.h"
#endif

/*******************************************************************************
** GLOBAL MACRO DEFINITIONS                                                   **
*******************************************************************************/
/**
 * @ingroup ERU001_constants
 * @{
 */

/**
 * @}
 */

/*******************************************************************************
** GLOBAL VARIABLE DEFINITIONS:                                               **
*******************************************************************************/

/*******************************************************************************
** GLOBAL TYPE DEFINITIONS:                                                   **
*******************************************************************************/

/**
 * @ingroup ERU001_datastructures
 * @{
 */

/*******************************************************************************
** STRUCTURES                                                                 **
*******************************************************************************/
/**
 * @brief ERU001_HandleType is  data structure for storing the GUI configured 
 * values of a ERU001 app Instance.
 */ 
typedef struct ERU001_HandleType
{
  /**
   * Base address of ERU0 or ERU1(For XMC4000 device series) module. 
   */
  ERU_GLOBAL_TypeDef* ERURegs;  
  /**
   * Input channel Number.  
   */
  uint8_t InputChannel;
  /**
  * Rebuild Level Detection for Status Flag for ETLx.
  */
  uint8_t LevelDetect;
  /**
  * Rising Edge Detection Enable for ETLx.
  */  
  uint8_t RiseEdgeDetEn;
  /**
  * Falling Edge Detection Enable for ETLx
  */
  uint8_t FallEdgeDetEn;
  /**
  * Input Source Select for ERSx.
  */
  uint8_t InputSrcSel;
  /**
  * Input A Negation Select for ERSx.
  */  
  uint8_t InputANegSel;
  /**
  * Input B Negation Select for ERSx.
  */
  uint8_t InputBNegSel;
           
}ERU001_HandleType;

/**
* @}
*/

/*******************************************************************************
** ENUMERATIONS                                                               **
*******************************************************************************/
/**
 * @ingroup ERU001_enumerations
 * @{
 */

/**
 * This enumerates Function status
 */
typedef enum ERU001_StatusType
{
  /**
   * Function Entry
   */
  ERU001_FUNCTION_ENTRY,
  /**
   * Function Exit
   */
  ERU001_FUNCTION_EXIT
}ERU001_StatusType;

/**
* @}
*/

/*******************************************************************************
**                      Global Constant Declarations                          **
*******************************************************************************/

/*******************************************************************************
**                      External Variables                                    **
*******************************************************************************/

/*******************************************************************************
**                     FUNCTION PROTOTYPES                                    **
*******************************************************************************/

/**
 * @ingroup ERU001_apidoc
 * @{
 */

/**
 * FUNCTION PROTOTYPES
 */
 
/**
 * @brief     This function Initialises a  ERU001 App instances (ERSx+ETLx) 
 *            based on user configuration.
 *
 * @param[in]  None
 *
 * @return     None
 *
 * <b>Reentrant: NO </b><BR>
 * <b>Sync/Async:  Synchronous</b>
 * 
 * @code
 * #include <DAVE3.h>
 *  int main(void)
 *	{
 *	  // ... Initialises Apps configurations ...
 *	  DAVE_Init(); // ERU001_Init() will be called from DAVE_Init()
 *    while(1)
 *    {
 *    }
 *	}
 *
 * @endcode<BR> </p>
 */
void ERU001_Init(void);

/**
 *@}
 */

/*******************************************************************************
**                     INLINE FUNCTION DEFINITIONS:                           **
*******************************************************************************/
/**
 * @ingroup ERU001_apidoc
 * @{
 */
/**
 * @brief Which clears the Status Flag of ETLx.
 * @param[in]  ERU001 handle.
 *
 * @return     None
 *
 * <b>Reentrant: No </b><BR>
 * <b>Sync/Async:  Synchronous</b>
 *
 * 
 * @code
 * #include <DAVE3.h>
 *  int main(void)
 *	{
 *	  // ... Initialises Apps configurations ...
 *	  DAVE_Init();
 *    //....
 *    ERU001_ClearFlag(ERU001_Handle0);
 *	}
 *
 * @endcode<BR> </p>
 *
 */
extern void ERU001_ClearFlag(ERU001_HandleType Handle);

/**
 * @}
 */


#ifdef DAVE_CE
#include "ERU001_Extern.h"   /* Included to access the app Handles at Main.c */
#endif 

#ifdef __cplusplus
}
#endif

#endif /* ERU001_H_ */
