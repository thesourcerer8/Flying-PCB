
/*CODE_BLOCK_BEGIN[ERU001.c]*/

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
** v1.0.16, 26 Mar 2014,  BRG: DBG002 macros are removed.         
*******************************************************************************/
/**
 * @file   ERU001.c
 *
 * @brief  This file contains public and private function implementations of 
 * ERU001.
 *
 */
/*******************************************************************************
 ** INCLUDE FILES                                                             **
 ******************************************************************************/

/* Included to access ERU001 app data structure, functions & enumerations */
#include "../../inc/ERU001/ERU001.h"

/*******************************************************************************
** PRIVATE MACRO DEFINITIONS:
*******************************************************************************/

/*******************************************************************************
** PRIVATE TYPE DEFINITIONS:
*******************************************************************************/

/*******************************************************************************
** PRIVATE FUNCTION DECLARATIONS:
*******************************************************************************/
/**
 * @brief This function initialises the Event Request Select(ERSx) and 
 * Event Trigger Logic(ETLx) input channel according GUI configuration.
 * values.
 *
 * @param[in]  Pointer to ERU001_HandleType
 *
 * @return  None <BR>
 *
 * <b>Reentrant: Yes </b><BR>
 */
void ERU001_lInit(const ERU001_HandleType *Handle);

#if ((__TARGET_DEVICE__ == XMC44) || (__TARGET_DEVICE__ == XMC42) || \
	 (__TARGET_DEVICE__ == XMC41))
/**
 * @brief This function Disables clock gating for ERU1 kernel
 *
 * @param[in]  Pointer to ERU001_HandleType
 *
 * @return  Clock gating disable status <BR>
 *
 * <b>Reentrant: Yes </b><BR>
 */
uint32_t ERU001_lDisableClkGating(const ERU001_HandleType *Handle);
#endif

/*******************************************************************************
** GLOBAL CONSTANT DEFINITIONS:
*******************************************************************************/

/*******************************************************************************
** GLOBAL VARIABLE DEFINITIONS:
*******************************************************************************/

/*******************************************************************************
** PRIVATE CONSTANT DEFINITIONS:
*******************************************************************************/

/*******************************************************************************
** FUNCTION LIKE MACRO DEFINITIONS:
*******************************************************************************/

/*******************************************************************************
** PRIVATE VARIABLES:
*******************************************************************************/

/*******************************************************************************
** PRIVATE FUNCTION DEFINITIONS:
*******************************************************************************/
/** @addtogroup ERU001_app Func
 * @{
 */

/**
 * @brief This function initialises the Event Request Select(ERSx) and 
 * Event Trigger Logic(ETLx) input channel according GUI configuration.
 * values.
 *
 * @param[in]  Pointer to ERU001_HandleType
 *
 * @return  None <BR>
 *
 * <b>Reentrant: Yes </b><BR>
 */
void ERU001_lInit(const ERU001_HandleType *Handle)
{
  /* Used to store the value that needs to be loaded to 
     Event Input Control register */
  uint32_t uRegValue = 0U;
  
#if (UC_FAMILY == XMC4)
  /* Check instantiated app resource is ERU1 kernel*/
  if (ERU1 == Handle->ERURegs)
  {
    /* Get the reset status of the ERU1 peripheral */
    if (TRUE == RESET001_GetStatus(PER0_ERU1))
	{ 
	  /* De-assert the ERU1 peripheral */
	  RESET001_DeassertReset(PER0_ERU1);
	}
  }

#endif
  
  /* Rebuild Level Detection for Status Flag ETLx */
  uRegValue |= ( ( (uint32_t)Handle->LevelDetect   << ERU_EXICON_LD_Pos ) & \
		  ERU_EXICON_LD_Msk );
  /* Rising Edge Detection Enable ETLx */
  uRegValue |= ( ( (uint32_t)Handle->RiseEdgeDetEn << ERU_EXICON_RE_Pos ) & \
		  ERU_EXICON_RE_Msk );
  /* Falling Edge Detection Enable ETLx */
  uRegValue |= ( ( (uint32_t)Handle->FallEdgeDetEn << ERU_EXICON_FE_Pos ) & \
		  ERU_EXICON_FE_Msk );
  /* Input Source Select for ERSx */
  uRegValue |= ( ( (uint32_t)Handle->InputSrcSel   << ERU_EXICON_SS_Pos ) & \
		  ERU_EXICON_SS_Msk );
  /* Input A Negation Select for ERSx */
  uRegValue |= ( ( (uint32_t)Handle->InputANegSel  << ERU_EXICON_NA_Pos ) & \
          ERU_EXICON_NA_Msk );
  /* Input B Negation Select for ERSx */
  uRegValue |= ( ( (uint32_t)Handle->InputBNegSel  << ERU_EXICON_NB_Pos ) & \
		  ERU_EXICON_NB_Msk );
  /* Update of Event Input Control register*/
  Handle->ERURegs->EXICON[Handle->InputChannel] |= uRegValue;
} 

/**
 * @brief This function Disables clock gating for ERU1 kernel
 *
 * @param[in]  Pointer to ERU001_HandleType
 *
 * @return  Clock gating disable status <BR>
 *
 * <b>Reentrant: Yes </b><BR>
 */
#if ((__TARGET_DEVICE__ == XMC44) || (__TARGET_DEVICE__ == XMC42) || \
	 (__TARGET_DEVICE__ == XMC41))
uint32_t ERU001_lDisableClkGating(const ERU001_HandleType *Handle)
{
  /* Clock gating status variable */
  uint32_t ClkGatStat; 
  /* Check instantiated app resource is ERU1 kernel*/
  if (ERU1 == Handle->ERURegs)
  {
     /* Disable clock gating for ERU1 peripheral */
	 SCU_CLK->CGATCLR0 |= (uint32_t)1U << SCU_CLK_CGATCLR0_ERU1_Pos;	
	 /* Disable clock gating is performed */	  
	 ClkGatStat = TRUE;
  }
  else
  {
     /* Disable clock gating is Not performed */
	 ClkGatStat = FALSE;
  }
  /* Return Disable Clock gating status */
  return ClkGatStat;
}
#endif


/*******************************************************************************
** PUBLIC FUNCTION DEFINITIONS:
*******************************************************************************/

/**
 * @brief This function Initialises a  ERU001 App instances (ERSx+ETLx)
 *            based on user configuration.
 *
 * @param[in]   None
 *
 * @return      None
 *
 * <b>Reentrant: Yes </b><BR>
 */
void ERU001_Init()
{
  /* Controls the loop iterations variable */
  uint32_t HandleCnt;
  		
#if ((__TARGET_DEVICE__ == XMC44) || (__TARGET_DEVICE__ == XMC42) || \
	  (__TARGET_DEVICE__ == XMC41))
  /* Clock gating status variable */
  uint32_t ClkGatStat;  
#endif
 
  /* ERU001_lDisableClkGating for XMC4400 or XMC4200 Device Series  */
#if ((__TARGET_DEVICE__ == XMC44) || (__TARGET_DEVICE__ == XMC42) || \
	  (__TARGET_DEVICE__ == XMC41))
  
  for (HandleCnt = 0U; HandleCnt < ERU001_NUM_INSTANCES; HandleCnt++)
  {
    /* Disable clock gating for ERU1 peripheral */ 
	ClkGatStat = ERU001_lDisableClkGating(ERU001_HandleArray[HandleCnt]);
	/* Check clock gating status */
	if ( TRUE == ClkGatStat )
	{
	  /* Exit from the for loop */
	  break;
	}
  }  
#endif
 
  for (HandleCnt = 0U; HandleCnt < ERU001_NUM_INSTANCES; HandleCnt++)
  {
    /* Initialise the ERU0 or ERU1 channel/s handles */
	ERU001_lInit(ERU001_HandleArray[HandleCnt]);
  }	
}
  
  
/**
 * @brief This function clears the Status Flag of ETLx..
 *
 * @param[in]   None
 *
 * @return      None
 *
 * <b>Reentrant: Yes </b><BR>
 */
inline void ERU001_ClearFlag(ERU001_HandleType Handle)
{
  Handle.ERURegs->EXICON[Handle.InputChannel] &= ~( (uint32_t)1U << ERU_EXICON_FL_Pos);
}
  
/**
 *@}
 */

/*CODE_BLOCK_END*/
