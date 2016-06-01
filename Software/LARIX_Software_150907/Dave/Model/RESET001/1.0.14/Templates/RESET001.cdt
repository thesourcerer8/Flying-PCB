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
** PLATFORM : Infineon XMC4000 Series   			                          **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR   : App Developer                                                   **
**                                                                            **
** MAY BE CHANGED BY USER [yes/no]: No                                        **
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
** V0.0.2    JBT     Updated for template changes from .jet to hdt and fixed  **
**                   driver functionality and updates as per Coding Guidelines** 
** V1.0.0    JBT     Updated after review completion (ID - REV_004865)        **
**                   Additional API added, RESET001_ClearResetInfo()          **                         
*******************************************************************************/
/**
 * @file RESET001.c
 *
 * @brief  Reset App implementation Source File.
 *
 */
/*******************************************************************************
 ** INCLUDE FILES                                                             **
 ******************************************************************************/


/** Inclusion of header file */
#include "../../inc/RESET001/RESET001.h"


/*******************************************************************************
**                      Private Macro Definitions                             **
*******************************************************************************/
/* Invalid Input */
#define RESET001_RCU_INVALID_INPUT      0x0000000FU
/** To check bit value is 1 */ 
#define RESET001_RCU_SET                1U
/** To check bit value is 0 */
#define RESET001_RCU_RESET              0U
/** Clear BitMask  */
#define RESET001_CLEAR_BITMASK	        0xF0000000U
/** Reset BitMask */
#define RESET001_BITMASK                0x0FFFFFFFU
/** Shift Right Mask for moving MSB position Nibble to LSB */
#define RESET001_SHIFT_RIGHT_MASK       28U
/* Linear Address shift offset from one peripheral to other*/
#define RESET001_PERIPHERAL_ADDR_SHIFT  0x0000000CU

/*******************************************************************************
**                      Public Function Definitions                           **
*******************************************************************************/
void RESET001_AssertReset(RESET001_ResetnType Resetn);
void RESET001_DeassertReset(RESET001_ResetnType Resetn);
RESET001_InfoType RESET001_GetResetInfo(void);
status_t RESET001_GetStatus(RESET001_ResetnType Resetn);
void RESET001_ClearResetInfo(void);
/*******************************************************************************
** Syntax          : void RESET001_AssertReset(RESET001_ResetnType Resetn)    **
**                                                                            **
** Sync /Async     : Synchronous                                              **
**                                                                            **
** Reentrant       : Non reentrant                                            **
**                                                                            **
** Parameters(IN)  : Resetn  : Reset Number                                   **
**                                                                            **
** Parameters(OUT) : None                                                     **
**                                                                            **
** Return value    : None                                                     **
**                                                                            **
** Description     : This function is to enable reset of peripheral by        **
**                   software                                                 **
*******************************************************************************/
 void RESET001_AssertReset(RESET001_ResetnType Resetn)
 {
  uint32_t* RCUControlReg;
  uint32_t  PeripheralInfo;
  PeripheralInfo = 0U;
  RCUControlReg = 0U;
  
  /* <<<DD_RESET001_API_1>>> */
  
  SCU_RESET_TypeDef* RCUCtrlReg = SCU_RESET;
  
  /* Extract the MSB to identify the peripheral in which the module is residing.
  * Shift the MSB to LSB position and store it in a local variable Temp  */  
  PeripheralInfo = (((uint32_t)Resetn & RESET001_CLEAR_BITMASK ) >> 
		                                          RESET001_SHIFT_RIGHT_MASK);
  
  /* Multiply the peripheral info stored in Temp variable with the corresponding
  *  address shift value to get the offset address of RCU register.
  *  Add the offset address with base PRSET peripheral address to get the actual 
  *  RCU PRSET register address  */  
  RCUControlReg = (uint32_t*)((uint32_t)(&RCUCtrlReg->PRSET0) + 
		                   ( RESET001_PERIPHERAL_ADDR_SHIFT * PeripheralInfo));
  
  /* Load the PRSET register with the reset value after ignoring the Most 
   * Significant Nibble.    */  
  *RCUControlReg = ((uint32_t)Resetn & RESET001_BITMASK );
}

 
/*******************************************************************************
** Syntax          : void RESET001_DeassertReset(RESET001_ResetnType Resetn)  **
**                                                                            **
** Sync /Async     : Synchronous                                              **
**                                                                            **
** Reentrant       : Non reentrant                                            **
**                                                                            **
** Parameters(IN)  : Resetn  : Reset Number                                   **
**                                                                            **
** Parameters(OUT) : None                                                     **
**                                                                            **
** Return value    : None                                                     **
**                                                                            **
** Description     : This function is to Deassert the reset of peripheral     **
**                    by software                                             **
*******************************************************************************/
void RESET001_DeassertReset(RESET001_ResetnType Resetn)
{
  uint32_t* RCUControlReg;
  uint32_t  PeripheralInfo;
  PeripheralInfo   = 0U;
  RCUControlReg    = 0U;

  /* <<<DD_RESET001_API_2>>> */
  
  SCU_RESET_TypeDef* RCUCtrlReg = SCU_RESET;  
  /* Extract the MSB to identify the peripheral in which the module is residing.
   * Shift the MSB to LSB position and store it in a local variable Temp   */    
  PeripheralInfo = (((uint32_t)Resetn & RESET001_CLEAR_BITMASK) >> 
                                                   RESET001_SHIFT_RIGHT_MASK);
  
  /* Multiply the peripheral info stored in Temp variable with the corresponding
  * address shift value to get the offset address of RCU register.
  *  Add the offset address with base PRCLR peripheral address to get the actual 
  *  RCU PRCLR register address  */  
  RCUControlReg = (uint32_t*)((uint32_t)(&RCUCtrlReg->PRCLR0) + 
		                    ( RESET001_PERIPHERAL_ADDR_SHIFT * PeripheralInfo));
  
  /* Load the PRCLR register with the reset value after ignoring the Most 
   * Significant Nibble.    */   
  *RCUControlReg = ((uint32_t)Resetn & RESET001_BITMASK) ;
}

/*******************************************************************************
** Syntax          : RESET001_InfoType RESET001_GetResetInfo(void)            **
**                                                                            **
** Sync /Async     : Synchronous                                              **
**                                                                            **
** Reentrant       : Non reentrant                                            **
**                                                                            **
** Parameters(IN)  : None                                                     **
**                                                                            **
** Parameters(OUT) : Reset Info Status                                        **
**                                                                            **
** Return value    : None                                                     **
**                                                                            **
** Description     : This API is to get the  reason of last reset             **
*******************************************************************************/	
RESET001_InfoType RESET001_GetResetInfo(void)
{
  SCU_RESET_TypeDef* RCUCtrlReg;  
  RESET001_InfoType ResetInfo;
  
  RCUCtrlReg = SCU_RESET;
  ResetInfo  = (RESET001_InfoType)0x00000000;
  /* <<<DD_RESET001_API_4>>> */
  
  /* Read the Last reset status info from RSTSTAT register*/  
  ResetInfo = (RESET001_InfoType)(RCUCtrlReg->RSTSTAT & 
		                                      SCU_RESET_RSTSTAT_RSTSTAT_Msk);
          
  return ResetInfo;
}

/*******************************************************************************
** Syntax          : status_t RESET001_GetStatus(RESET001_ResetnType Resetn)  **
**                                                                            **
** Sync /Async     : Synchronous                                              **
**                                                                            **
** Reentrant       : Non reentrant                                            **
**                                                                            **
** Parameters(IN)  : Resetn  : Reset Number                                   **
**                                                                            **
** Parameters(OUT) : None                                                     **
**                                                                            **
** Return value    : status_t                                                 **
**                                                                            **
** Description     : This API is to get the reset status of the peripheral    **
*******************************************************************************/		
	
status_t RESET001_GetStatus(RESET001_ResetnType Resetn)
{
  uint32_t  status ;
  uint32_t* RCUControlReg;
  uint32_t  PeripheralInfo;
  uint32_t  Getstatus;
  
  status        = RESET001_RCU_INVALID_INPUT;
  PeripheralInfo= 0U;
  RCUControlReg = 0U;  
  Getstatus     = 0U;
  
  /* <<<DD_RESET001_API_3>>> */
  SCU_RESET_TypeDef* RCUCtrlReg = SCU_RESET;
  
  /* Extract the MSB to identify the peripheral in which the module is residing.
   * Shift the MSB to LSB position and store it in a local variable Temp */     
  PeripheralInfo = (((uint32_t)Resetn & RESET001_CLEAR_BITMASK) >> 
		                                          RESET001_SHIFT_RIGHT_MASK);
  
  /* Multiply the peripheral info stored in Temp variable with the corresponding
  * address shift value to get the offset address of RCU register.
  *  Add the offset address with base PRSTAT peripheral address to get actual 
  *  RCU PRSTAT register address  */   
  RCUControlReg = (uint32_t*)((uint32_t)(&RCUCtrlReg->PRSTAT0) + 
		                  ( RESET001_PERIPHERAL_ADDR_SHIFT * PeripheralInfo));
  
  /* Read the PRCLR register with the masked reset value after ignoring the Most 
   * Significant Nibble.    */   
  Getstatus	 = (uint32_t)((*RCUControlReg) & 
		                               (uint32_t)Resetn & RESET001_BITMASK);
  
  /* If the register return value is set then return SET else return RESET 
   * status   */   
  if(0U != Getstatus)
  {
	  status = RESET001_RCU_SET;
  }
  else
  {
	  status = RESET001_RCU_RESET;
  }
  return status;
}

/*******************************************************************************
** Syntax          : void RESET001_ClearResetInfo(void)                       **
**                                                                            **
** Sync /Async     : Synchronous                                              **
**                                                                            **
** Reentrant       : Non reentrant                                            **
**                                                                            **
** Parameters(IN)  : None                                                     **
**                                                                            **
** Parameters(OUT) : None                                                     **
**                                                                            **
** Return value    : None                                                     **
**                                                                            **
** Description     : This API is to clear the  reset info status              **
*******************************************************************************/
void RESET001_ClearResetInfo(void)
{
   SCU_RESET_TypeDef* RCUCtrlReg;

   RCUCtrlReg = SCU_RESET;
   /* <<<DD_RESET001_API_5>>> */

   /* Clear the last reset status info by setting RSCLR bit in RSTCLR register*/
   RCUCtrlReg->RSTCLR |=  (uint32_t)(SCU_RESET_RSTCLR_RSCLR_Msk);

}

/*CODE_BLOCK_END*/
