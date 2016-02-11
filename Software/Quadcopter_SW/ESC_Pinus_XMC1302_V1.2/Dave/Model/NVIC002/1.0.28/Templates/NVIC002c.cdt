/*CODE_BLOCK_BEGIN[NVIC002.c]*/

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
** PLATFORM : Infineon XMC4000/XMC1000 Series   			                  **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR   : App Developer                                                   **
**                                                                            **
** MAY BE CHANGED BY USER [yes/no]: Yes                                       **
**                                                                            **
** MODIFICATION DATE : Feb 24, 2014                                           **
**                                                                            **
*******************************************************************************/
/**
 * @file   NVIC002.c
 *
 * @brief  NVIC_Empty_Handler_NVIC002 App
 *         
 *  NVIC002 App is used by top level Apps when a user defined interrupt handler 
 *  needs to be reassigned to the actual mapped interrupt node
 *	(based on App connectivity).
 *
 *	The use case is as follows: 
 *	Interrupt handler has to be provided by the user and function name is defined
 *  by user in the App GUI. 
 *
 *	NVIC002 App creates a header file (NVIC002.h) with a #define to reassign the
 *  interrupt function name defined by the user to the fixed name based on the
 *	node number.
 *	Note: 
 *	Preemption priority for NVIC  interrupt is fixed to 64.
 *	The App GUI provides lowest priority level as default value.      
 *	It is also possible for top level App to be self-contained(by consuming NVIC
 *  node directly instead of requiring an NVIC App for defining the interrupt
 *  handler.)
 *
 */

/*******************************************************************************
**                      Author(s) Identity                                    **
********************************************************************************
**                                                                            **
** Initials     Name                                                          **
** ---------------------------------------------------------------------------**
** SNR      App Developer                                                     **
*******************************************************************************/
/* Revision History	
 * 18-Feb-13 V1.0.12  1. Porting to XMC1000 Devices.
 *                    2. Conditional Codes are added to support both XMC1000 
 *                    and XMC4000 devices.
 *                    3. Debug related dummy Macros are added. 
 * 25-Mar-13 V1.0.14  1. Interrupt mapping bug fixing. 
 *                    2. Removed Array of irq_numbers.
 * 28-Nov-13 v1.0.20  Updated as per the coding guidelines        
 * 24-Feb-14 v1.0.24  Removed dummy debug macros             
 */


/*******************************************************************************
 ** INCLUDE FILES                                                             **
 ******************************************************************************/
/* Inclusion of header file */
#include "../../inc/NVIC002/NVIC002.h"


/*******************************************************************************
**                      Private Macro Definitions                             **
*******************************************************************************/


/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/

/*******************************************************************************
**                 Private Function Declarations:
*******************************************************************************/
static void NVIC002_lInit(const NVIC002_HandleType * Handle);

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

/**  Function to initialize the NVIC node parameters based on 
 *  UI configuration.
 */
void NVIC002_Init(void)
{
  uint32_t Count;
  for (Count = 0U; Count<(uint32_t)NVIC002_NUM_INSTANCES; Count++)
  {
	  NVIC002_lInit(NVIC002_HandleArray[Count]);
  }
}

static void NVIC002_lInit(const NVIC002_HandleType * Handle)
{
   /* Set Interrupt Priority for NVIC <%=NodeID%> 
      Node App Instance <%=appInst%>  */
	#if (UC_FAMILY == XMC1) 
	   NVIC_SetPriority((IRQn_Type)Handle->NodeID, 
			             Handle->Priority);
	#else 
	   NVIC_SetPriority((IRQn_Type)Handle->NodeID, 
			   	   	     NVIC_EncodePriority(NVIC_GetPriorityGrouping(),
			   	   	     Handle->Priority,
			   	   	     Handle->SubPriority));
	#endif
	if(Handle->InterruptEnable == 1)
	{
	   /* Enable Interrupt */
		NVIC002_EnableIRQ(Handle);
	}
   
}


/*CODE_BLOCK_END*/
