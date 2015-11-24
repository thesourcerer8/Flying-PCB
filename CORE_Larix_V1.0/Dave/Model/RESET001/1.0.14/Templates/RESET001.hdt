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
**                                                                            **
** PLATFORM : Infineon XMC4000 Series     			                          **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR   : App Developer                                                   **
**                                                                            **
** MAY BE CHANGED BY USER [yes/Yes]: Yes                                      **
**                                                                            **
** MODIFICATION DATE : Nov 18, 2013                                           **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                       Author(s) Identity                                   **
********************************************************************************
**                                                                            **
** Version   Name    Comments                                                 **
** ---------------------------------------------------------------------------**
** V0.0.1    JBT     Initial Version Updated                                  **
** V0.0.2    JBT     EBU macro updated for XMC4500                            **
** V0.0.3    JBT     Updated for template changes from .jet to hdt and fixed  **
**                   driver functionality and updates as per Coding Guidelines** 
** V1.0.0    JBT     Updated after review completion (ID - REV_004865)        **
**                   Additional API added, RESET001_ClearResetInfo()          **                
*******************************************************************************/

/**
 * @file RESET001.h
 *
 * @brief  Reset App implementation header file.
 *
 */

 #ifndef RESET001_H_
 #define RESET001_H_

#ifdef __cplusplus
extern "C" {
#endif

/*******************************************************************************
**                      Include Files                                         **
*******************************************************************************/
#include <uc_id.h>
#include "../../inc/LIBS/types.h"
#if (__TARGET_DEVICE__ == XMC45)
#include <XMC4500.h>
#elif (__TARGET_DEVICE__ == XMC44)
#include <XMC4400.h>
#elif ((__TARGET_DEVICE__ == XMC42)||(__TARGET_DEVICE__ == XMC41))
#include <XMC4200.h>
#else
#error "Unsupported XMC family"
#endif
/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/


/*******************************************************************************
**                      Global Type Definitions                               **
*******************************************************************************/
/**
 * @ingroup RESET001_enumerations
 * @{
 */
/**
 * This enumeration contains Reset Info Type
 */
typedef enum RESET001_InfoType
{
  /** Power on reset */
   POWER_ON_RESET     = 0x00000001U,
  /** SWD reset  */
   SWD_RESET          = 0x00000002U,
  /** PVC reset */
   PVC_RESET          = 0x00000004U,
  /** CPU system reset */
   CPU_SYS_RESET      = 0x00000008U,
  /** CPU lockup reset */
   CPU_LOCKUP_RESET   = 0x00000010U,
  /** WDT reset */
   WDT_RESET          = 0x00000020U,
  /** TCU reset */
   TCU_RESET          = 0x00000040U,
  /** Parity error reset */
   PARITY_ERROR_RESET = 0x00000080U
}RESET001_InfoType;

/**
 * This enumeration contains Peripheral ID Type
 */
typedef enum RESET001_ResetnType
{
   #if (UC_SERIES == XMC45)
   /** MMC peripheral module */
   PER1_MMC     = 0x10000040U,
   /** USICx peripheral module */
   PER1_USIC2   = 0x10000100U, 
   /** DMA Unit 1 peripheral module */
   PER2_DMA1    = 0x20000020U,
   /** EBU peripheral module */
   PER3_EBU     = 0x30000004U,   
   #endif
   #if ((UC_SERIES == XMC45)||(UC_SERIES == XMC44))
   /** DSD peripheral module */
   PER0_DSD     = 0x00000002U,
   /** CCU4x peripheral module */
   PER0_CCU42   = 0x00000010U,  
   /** CCU8x peripheral module */
   PER0_CCU81   = 0x00000100U,
   /** POSIF peripheral module */
   PER0_POSIF1  = 0x00000400U, 
   /** CCU4x peripheral module */
   PER1_CCU43   = 0x10000001U, 
   /** Ethernet peripheral module */
   PER2_ETH0    = 0x20000004U,   
   #endif    
   #if ((UC_SERIES == XMC42)||(UC_SERIES == XMC41)||(UC_SERIES == XMC44))
   /** HRPWM peripheral module */
   PER0_HRPWM0  = 0x00800000U,
   #endif  
   /** ADC peripheral module */
   PER0_VADC    = 0x00000001U,   
   /** CCU4x peripheral module */
   PER0_CCU40   = 0x00000004U,
   /** CCU4x peripheral module */
   PER0_CCU41   = 0x00000008U,
   /** CCU8x peripheral module  */
   PER0_CCU80   = 0x00000080U,
   /** POSIF peripheral module */
   PER0_POSIF0  = 0x00000200U,
   /** USIC0 peripheral module */
   PER0_USIC0   = 0x00000800U,
   /** ERU peripheral module */
   PER0_ERU1    = 0x00010000U, 
   /** LED TS peripheral module */
   PER1_LEDTSCU = 0x10000008U,
   /** MCAN peripheral module */
   PER1_MCAN0   = 0x10000010U,
   /** DAC peripheral module */
   PER1_DAC     = 0x10000020U,
   /** USICx peripheral module */
   PER1_USIC1   = 0x10000080U,  
   /** Port &amp; Pins peripheral module */
   PER1_PPORTS  = 0x10000200U,
   /** Watch Dog peripheral module */
   PER2_WDT     = 0x20000002U,
   /** DMA Unit 0 peripheral module */
   PER2_DMA0    = 0x20000010U, 
   /** FCE peripheral module */
   PER2_FCE     = 0x20000040U,  
   /** USB peripheral module */
   PER2_USB     = 0x20000080U 
}RESET001_ResetnType;

/**
 *@}
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
 * @ingroup RESET001_apidoc
 * @{
 */

/**
 * @brief       This function is to enable reset of peripheral by software
 *
 * @param [in]  Resetn Peripheral ID
 *
 * @return     void
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *    uint32_t status = 0;
 *    DAVE_Init();
 *    // Assert the module
 *    RESET001_AssertReset(PER0_ERU1);
 *    // Get the status  of the module
 *    status = RESET001_GetStatus(PER0_ERU1);
 *    if(status == 1)
 *    {
 *      // De-assert the module
 *      RESET001_DeassertReset(PER0_ERU1);
 *    }
 *  }
 * @endcode<BR> </p>
 *
 */
extern void RESET001_AssertReset(RESET001_ResetnType Resetn);

/**
 * @brief      This function is used to clear the  Reset of the desired 
 *             peripheral ( de-assert reset).
 *
 * @param[in]  Resetn Peripheral ID
 *
 * @return     void
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *    uint32_t status = 0;
 *    DAVE_Init();
 *    // Assert the module
 *    RESET001_AssertReset(PER0_ERU1);
 *    // Get the status  of the module
 *    status = RESET001_GetStatus(PER0_ERU1);
 *    if(status == 1)
 *    {
 *      // De-assert the module
 *      RESET001_DeassertReset(PER0_ERU1);
 *    }
 *  }
 * @endcode<BR> </p>
 *
 */
extern void RESET001_DeassertReset(RESET001_ResetnType Resetn);


/**
 * @brief      API to get the  reason of last reset.
 *
 * @return     RESET001_InfoType enum  value
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *    RESET001_InfoType ResetInfo;
 *    DAVE_Init();
 *    // Get the Information about last reset
 *    ResetInfo = RESET001_GetResetInfo();
 *  }
 * @endcode<BR> </p>
 *
 */
extern RESET001_InfoType RESET001_GetResetInfo(void);


/**
 * @brief     This API is used to get the current reset status of the peripheral
 *
 * @param[in]  Resetn Peripheral ID
 *
 * @return     status_t
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *    uint32_t status = 0;
 *    DAVE_Init();
 *    // Assert the module
 *    RESET001_AssertReset(PER0_ERU1);
 *    // Get the status  of the module
 *    status = RESET001_GetStatus(PER0_ERU1);
 *    if(status == 1)
 *    {
 *      // De-assert the module
 *      RESET001_DeassertReset(PER0_ERU1);
 *    }
 *  }
 * @endcode<BR> </p>
 *
 */
extern status_t RESET001_GetStatus(RESET001_ResetnType Resetn);
/**
 * @brief      API to clear the status of last reset.
 *
 * @return     None
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *    DAVE_Init();
 *    // Clear the status of last reset
 *    RESET001_ClearResetInfo();
 *  }
 * @endcode<BR> </p>
 *
 */
extern void RESET001_ClearResetInfo(void);

#ifdef __cplusplus
}
#endif

/**
 *@}
 */


#endif /* RESET001_H_ */
