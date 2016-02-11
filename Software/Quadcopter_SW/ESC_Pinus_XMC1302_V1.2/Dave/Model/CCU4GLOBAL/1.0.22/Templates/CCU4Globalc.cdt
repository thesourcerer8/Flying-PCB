/*CODE_BLOCK_BEGIN[CCU4GLOBAL.c]*/


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
** MODIFICATION DATE : Aug  12, 2014                                          **
**                                                                            **
*******************************************************************************/
/*******************************************************************************
**                      Author(s) Identity                                    **
********************************************************************************
**                                                                            **
** Initials     Name                                                          **
** ---------------------------------------------------------------------------**
** SNR          App Developer                                                 **
**                                                                            **
*******************************************************************************/

/**
 * @file  CCU4GLOBAL.c
 *
 * @brief This file contains implementations of all Public and Private functions
 *        of CCU4GLOBAL App.
 */
/* Revision History
 * 22 March     2012   v1.0.0    Initial version
 * 17 September 2012   v1.0.4    code to disable clock gating for XMC44 devices
 * 25 January   2013   v1.0.10   code to disable clock gating for XMC1  devices
 * 25 November  2013   v1.0.12   Followed coding guidelines  
 * 12 August    2014   v1.0.14   Redundant call to CLK001_Init(); CLK002_Init();
 *                               is removed in CCU4GLOBAL_Init() api. 
 */
/*******************************************************************************
**                      Include Files                                         **
*******************************************************************************/

#include "../../inc/CCU4GLOBAL/CCU4GLOBAL.h"

static void CCU4Global_lInit(const CCU4Global_HandleType * Handle);

/*******************************************************************************
**                 Public Function declarations                              **
*******************************************************************************/
/**
 * @cond INTERNAL_DOCS
 */

void CCU4GLOBAL_Init(void)
{
  static uint32_t CCU4InitCalled = (uint32_t)0U;
  uint32_t Count = 0U;
  
  if(CCU4InitCalled == (uint32_t)0U)
  {
    /*
     * Each instance of the App brings the module out of reset and enable 
     * the prescalar clock
     */
    for (Count = 0U; Count<(uint32_t)CCU4GLOBAL_NUM_INSTANCES; Count++)
    {
  	  CCU4Global_lInit(CCU4Global_HandleArray[Count]);
    }

    CCU4InitCalled = (uint32_t)1;
  }
}

static void CCU4Global_lInit(const CCU4Global_HandleType * Handle)
{
    if( Handle->KernelNumber <= 2 )
	{
		/* Disables the gating for CCU4 kernel */      
		/*This is applicable for XMC4400,XMC4200 and XMC1xxx Devices*/
		#if (UC_FAMILY == XMC1 )
			if (!((uint32_t)SCU_CLK->CGATCLR0 & Handle->ClockGating))
			{ 
				SCU_GENERAL->PASSWD = 0x000000C0UL;
				WR_REG(SCU_CLK->CLKCR, SCU_CLK_CLKCR_CNTADJ_Msk, 
					   SCU_CLK_CLKCR_CNTADJ_Pos,CCU4GLOBAL_DELAYCNT);
				
				SET_BIT(SCU_CLK->CGATCLR0, Handle->ClockGating);
				while ((uint32_t)SCU_CLK->CLKCR & 
					   (uint32_t)SCU_CLK_CLKCR_VDDC2LOW_Msk)
				{
					;
				}
				SCU_GENERAL->PASSWD = 0x000000C3UL;
			}
		#endif
		#if ((__TARGET_DEVICE__ == XMC42) || (__TARGET_DEVICE__ == XMC44))
            	SET_BIT(SCU_CLK->CGATCLR0, Handle->ClockGating);
		#endif
	}
	#if (__TARGET_DEVICE__ == XMC44)		    
	else
	{   
			SET_BIT(SCU_CLK->CGATCLR1, Handle->ClockGating);
	}
	#endif
	
	#if (UC_FAMILY == XMC4)
		/* Deassert the peripheral */
		/*This is applicable for XMC4500, XMC4400 and XMC4200 Devices*/
		RESET001_DeassertReset(Handle->PeripheralReset);
	#endif    

		
    /* Sets Run bit of the Prescalar */
    SET_BIT(Handle->CC4yKernRegsPtr->GIDLC,CCU4_GIDLC_SPRB_Pos);

}


/**
 * @endcond
 */
/*CODE_BLOCK_END*/
