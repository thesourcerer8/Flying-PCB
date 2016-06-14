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
** PLATFORM : Infineon XMC4000 Series/XMC1000 series                          **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR   : App Developer                                                   **
**                                                                            **
** MAY BE CHANGED BY USER [yes/no]: Yes                                       **
**                                                                            **
** MODIFICATION DATE : Nov 13, 2013                                           **
**                                                                            **
*******************************************************************************/
/*******************************************************************************
**                      Author(s) Identity                                    **
********************************************************************************
**                                                                            **
** Initials     Name                                                          **
** ---------------------------------------------------------------------------**
** SNR        App Developer                                                   **
*******************************************************************************/
/**
 * @file   ERU002.c
 *
 * Revision History
 * 25 Jan 2013 v1.0.4 Initial Version
 * 14 Mar 2013 v1.0.6 Porting to XMC42xx and XMC44xx
 * 13 Nov 2013 v1.0.12 Made it as static code 
 * @brief  ERU002 App Implementation
 *
 */
/*******************************************************************************
 ** INCLUDE FILES                                                             **
 ******************************************************************************/

/** Inclusion of header file */
#include "../../inc/ERU002/ERU002.h"


#if (DEBUG_APP==0)  
/*****************************************************************************
              DUMMY DEFINTIONS OF DEBUG LOG MACROS
*****************************************************************************/
/*These definitions are included here to avoid compilation errors,
 since the DBG002 app is not part of the project. All the macros are defined
 as empty*/ 
#ifndef _DBG002_H_

#define DBG002_RegisterCallBack(A,B,C)
#define DBG002_I(e) 
#define DBG002_IG(e,g) 
#define DBG002_IH(e,h) 
#define DBG002_IP(e,p) 
#define DBG002_IGH(e,g,h) 
#define DBG002_IGP(e,g,p) 
#define DBG002_IHP(e,h,p) 
#define DBG002_IGHP(e,g,h,p) 
#define DBG002_N(e) 
#define DBG002_NG(e,g) 
#define DBG002_NH(e,h) 
#define DBG002_NP(e,p) 
#define DBG002_NGH(e,g,h) 
#define DBG002_NGP(e,g,p) 
#define DBG002_NHP(e,h,p) 
#define DBG002_NGHP(e,g,h,p) 
#define DBG002_ID(e) 
#define DBG002_IS(e) 
#define DBG002_ISG(e,g) 
#define DBG002_SAFETY_CRITICAL(groupid,messageid,length,value)
#define DBG002_CRITICAL(groupid,messageid,length,value)
#define DBG002_ERROR(groupid,messageid,length,value)
#define DBG002_WARNING(groupid,messageid,length,value)
#define DBG002_INFO(groupid,messageid,length,value)
#define DBG002_TRACE(groupid,messageid,length,value)
#define DBG002_FUNCTION_ENTRY(GID, Status) 
#define DBG002_FUNCTION_EXIT(GID, Status) 

#endif/* End of defintions of dummy Debug Log macros*/
#endif 

#undef APP_GID
#define APP_GID DBG002_GID_ERU002	

/*******************************************************************************
**                      Private Macro Definitions                             **
*******************************************************************************/


#define ERU_INVALID_INPUT     0x0000000FU
#define ERU_INPUT_LEVEL_SET   0x00000001U
#define ERU_OGU_Y_MAX          (uint8_t)3


/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/

/*******************************************************************************
**                 Private Function Declarations:
*******************************************************************************/
void ERU002_lInit(const ERU002_HandleType * Handle);

/*******************************************************************************
**                      Global Constant Definitions                           **
*******************************************************************************/



/*******************************************************************************
**                      Global Variable Definitions                           **
*******************************************************************************/


/*******************************************************************************
**                      Private Constant Definitions                          **
*******************************************************************************/



/*******************************************************************************
**                 Function like macro definitions                            **
*******************************************************************************/



/*******************************************************************************
**                      Private Function Definitions                          **
*******************************************************************************/

/*******************************************************************************
**                      Public Function Definitions                           **
*******************************************************************************/


/** @addtogroup ERU002_app Func
 * @{
 */
/*
 * Function to initialize ERU channel
 */

void ERU002_Init(void)
{
  uint32_t Count;
  
  for (Count = 0U; Count<(uint32_t)ERU002_NUM_INSTANCES; Count++)
  {
	  ERU002_lInit(ERU002_HandleArray[Count]);
  }
}

void ERU002_lInit(const ERU002_HandleType * Handle)
{
#if (UC_FAMILY == XMC4) 
  if (ERU1 == Handle->ERURegs)
  {
	  /* Reset the ERU Unit 1*/
	  if(RESET001_GetStatus(PER0_ERU1) == 1)
	  {
	    /* De-assert the module */
	    RESET001_DeassertReset(PER0_ERU1);
	  }
	  
	#if ((__TARGET_DEVICE__ == XMC44) || (__TARGET_DEVICE__ == XMC42) || \
		 (__TARGET_DEVICE__ == XMC41))
	   /* Deassert the clock gating under SCU module to enable the WDT 
	      peripheral */
	  	WR_REG(SCU_CLK->CGATCLR0, SCU_CLK_CGATCLR0_ERU1_Msk, 
	  	       SCU_CLK_CGATCLR0_ERU1_Pos, 1U);
	#endif
  }
#endif

  Handle->ERURegs->EXOCON[Handle->OutputChannel] |=  
  (((uint32_t)((uint32_t)Handle->GP_Value  << ERU_EXOCON_GP_Pos) & \
	                     ERU_EXOCON_GP_Msk) | \
	((uint32_t)( Handle->GEEN_Value << ERU_EXOCON_GEEN_Pos) & \
			ERU_EXOCON_GEEN_Msk));	  					 
 
}


	
/*  Function to Select peripheral trigger input Source 
 *  ERU_OGU_y = SIGNAL_ERU_OGU_y3 for signal 1
 *  ERU_OGU_y = SIGNAL_ERU_OGU_y1 for signal 0
 */

uint32_t  ERU002_SetPeripheralTrigInputSrc(const ERU002_HandleType *Handle, 
                                           uint32_t ERU_OGU_y)
{
	 
	uint32_t status = 0;
	
	ERU_GLOBAL_TypeDef *ERURegs = Handle->ERURegs;
	
	/* Check the OGU_y value */
	if( ( ERU_OGU_y <= ERU_OGU_Y_MAX ) && ( ERURegs != NULL) )
	{
		/* ERUx_EXOCON[y]_ISS x =0 and 1, y = 0, 1, 2 and 3 */
		WR_REG(ERURegs->EXOCON[Handle->OutputChannel], ERU_EXOCON_ISS_Msk, 
		       ERU_EXOCON_ISS_Pos, ERU_OGU_y);
		
		status = ERU_INPUT_LEVEL_SET;
	}
	else
	{
		status = ERU_INVALID_INPUT;
	}
	return status;
	
}

/*
 * Function to get pattern result
 */
inline uint32_t ERU002_GetPatternResult(const ERU002_HandleType Handle)
{
	uint32_t Status;
	
	Status = RD_REG(Handle.ERURegs->EXOCON[Handle.OutputChannel],
						  ERU_EXOCON_PDR_Msk,ERU_EXOCON_PDR_Pos);

	return Status;

}

/*
 * Function to enable pattern result
 */
void ERU002_EnablePatternDetection(const ERU002_HandleType *Handle)
{
	if( Handle != NULL )
	{
		WR_REG(Handle->ERURegs->EXOCON[Handle->OutputChannel],
				ERU_EXOCON_GEEN_Msk,ERU_EXOCON_GEEN_Pos, 1);
	}
}


/*
 * Function to disable pattern result
 */
void ERU002_DisablePatternDetection(const ERU002_HandleType *Handle)
{
	if( Handle != NULL )
	{	
		WR_REG(Handle->ERURegs->EXOCON[Handle->OutputChannel],
				ERU_EXOCON_GEEN_Msk,ERU_EXOCON_GEEN_Pos, 0);
	}
}

/*
 * Function to select service request mode
 */
void ERU002_SelectServiceRequestMode(const ERU002_HandleType *Handle, 
		                             ERU002_ServiceRequestMode_t scheme)
{
	if( Handle != NULL )
	{
		WR_REG(Handle->ERURegs->EXOCON[Handle->OutputChannel],
			   ERU_EXOCON_GP_Msk,ERU_EXOCON_GP_Pos,scheme);
	}
}

/**
 *@}
 */



/*CODE_BLOCK_END*/
