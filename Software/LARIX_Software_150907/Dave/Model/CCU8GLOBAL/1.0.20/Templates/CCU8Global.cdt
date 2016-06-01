/*CODE_BLOCK_BEGIN[CCU8GLOBAL.c]*/
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
** Filename : CCU8GLOBAL.c                                                    **
**                                                                            **
** PLATFORM : Infineon XMC4000 / XMC1300 Series                               **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR   : App Developer                                                   **
**                                                                            **
** MAY BE CHANGED BY USER [Yes/No]: No                                        **
**                                                                            **
** MODIFICATION DATE : Aug  12, 2014                                          **
**                                                                            **
*******************************************************************************/
/**********************   Version History   ************************************
** Date      Version      Dev   Remarks
**
** V1.0.12   12-08-2014   JAI   Redundant call to CLK001_Init(); CLK002_Init();
**                              is removed in CCU8GLOBAL_Init() api.
**
** V1.0.10   26-11-2013   JBT   Updated after for fixed static file changes.
**                              Coding guidelines followed, MISRA checks done 
**                              New documentation template related  changes done
** V1.0.8    22-01-2013   BKB   Disabling of Clock gating added for XMC1xxx 
**                              devices
** V1.0.4    17-09-2012   BKB   Removed the function like macro to abide coding
**                              rules. Disabling of Clock gating added for 
**                              XMC44 devices
** V1.0.0    22-03-2012   BKB   Initial Version
*******************************************************************************/
/*******************************************************************************
**  Developer     Name
**----------------------------------------------------------------------------
**  JBT           Jubin Thomas
**  BKB           Balaji Kurra Bala 
*******************************************************************************/
/**
 * @file CCU8GLOBAL.c
 *
 * @brief  CCU8GLOBAL  App implementation source file.
 *
 **/

/*******************************************************************************
**                      Include Files                                         **
*******************************************************************************/
#include "../../inc/CCU8GLOBAL/CCU8GLOBAL.h"

/*******************************************************************************
**                 Public Macro declarations                                  **
*******************************************************************************/

#define CCU8GLOBAL_PASSWORD1 0x000000C0
#define CCU8GLOBAL_PASSWORD2 0x000000C3

/*******************************************************************************
**                 Public Function declarations                              **
*******************************************************************************/

static void CCU8GLOBAL_lInit(const CCU8GLOBAL_HandleType* Handle);

/*******************************************************************************
**                 Public Function declarations                              **
*******************************************************************************/

/*******************************************************************************
** Syntax          : void CCU8GLOBAL_Init(void)                               **
**                                                                            **
** Requirement ID  :                                                          **
**                                                                            **
** Sync /Async     : Synchronous                                              **
**                                                                            **
** Reentrant       : Reentrant                                                **
**                                                                            **
** Parameters(IN)  : None                                                     **
**                                                                            **
** Parameters(OUT) : None                                                     **
**                                                                            **
** Return value    : None                                                     **
**                                                                            **
** Description     : Driver Module Initialization function                    **
**                   This service shall initialize the configured CCU slice   **
**                   and provide the clock signal for the upper layer apps.   **
*******************************************************************************/
void CCU8GLOBAL_Init(void)
{
  uint32_t Inst;
  static uint32_t isInitialized = (uint32_t)0U;
    
  if(!isInitialized)
  {   
	for(Inst = 0U; Inst < CCU8GLOBAL_INSTANCES; Inst++)
    {
	    /* Call CCU8 local Init function with all handles configured*/
	    CCU8GLOBAL_lInit(CCU8GLOBAL_HandleArray[Inst]);
    }
     
    /* Update the initialization count variable for restricting multiple
     * initialization by the user*/ 
	isInitialized = (uint32_t)1U;  
  }  
}

/*******************************************************************************
** Syntax          : void CCU8GLOBAL_lInit(const CCU8GLOBAL_HandleType*       **
**                                                                 Handle)    **
**                                                                            **
** Requirement ID  :                                                          **
**                                                                            **
** Sync /Async     : Synchronous                                              **
**                                                                            **
** Reentrant       : Reentrant                                                **
**                                                                            **
** Parameters(IN)  : None                                                     **
**                                                                            **
** Parameters(OUT) : None                                                     **
**                                                                            **
** Return value    : None                                                     **
**                                                                            **
** Description     : Local function which does the actual intialization       **
*******************************************************************************/
static void CCU8GLOBAL_lInit(const CCU8GLOBAL_HandleType* Handle)
{   
	
    #if (UC_FAMILY == XMC4)      
	/* Enable clock gating for XMC44 and XMC42 devices */
	#if((__TARGET_DEVICE__ == XMC44)||(__TARGET_DEVICE__ == XMC42) \
	                                ||(__TARGET_DEVICE__ == XMC41))
    SET_BIT(SCU_CLK->CGATCLR0, Handle->ClockGating_Pos);
    #endif 
   
    /* De-Assert the peripheral reset for XMC4x devices*/
    RESET001_DeassertReset(Handle->PeriphResetNum);    
    #endif
    
    
    #if ( __TARGET_DEVICE__ == XMC13 )
    /* Wait until the clock gating is not set*/
    if(!( (uint32_t)SCU_CLK->CGATCLR0 & 
    	   (uint32_t)Handle->ClockGating_Pos))
    { 
       /* Set mode field in Password register to remove bit protection*/
       SCU_GENERAL->PASSWD = (uint32_t)CCU8GLOBAL_PASSWORD1;
       /* */
       WR_REG(SCU_CLK->CLKCR, SCU_CLK_CLKCR_CNTADJ_Msk, 
			                   SCU_CLK_CLKCR_CNTADJ_Pos,CLK002_DELAYCNT);
       /* Enable clock gating for XMC13 based devices */
       SET_BIT(SCU_CLK->CGATCLR0, Handle->ClockGating_Pos);
       /* Wait until VDDC is not too low and the fractional divider
         input clock is running at the targeted frequency */
       while ((uint32_t)SCU_CLK->CLKCR & (uint32_t)SCU_CLK_CLKCR_VDDC2LOW_Msk)
	   {}
       /* Set mode field in Password register to disable protected access*/
	   SCU_GENERAL->PASSWD = (uint32_t)CCU8GLOBAL_PASSWORD2;
	}
    /* */
    #endif
    
    /* Set the Pre-scalar run bit */
    SET_BIT(Handle->CC8yKernRegsPtr->GIDLC,CCU8_GIDLC_SPRB_Pos);
}

/*CODE_BLOCK_END*/
