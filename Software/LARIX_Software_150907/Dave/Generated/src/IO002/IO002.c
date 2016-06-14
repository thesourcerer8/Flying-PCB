/*CODE_BLOCK_BEGIN[IO002.c]*/
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
** PLATFORM : Infineon XMC4000/XMC1000 Series                                 **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR   : App Developer                                                   **
**                                                                            **
** MAY BE CHANGED BY USER [yes/no]: Yes                                       **
**                                                                            **
** MODIFICATION DATE : Oct 10, 2013                                           **
**                                                                            **
*******************************************************************************/
/*******************************************************************************
**                      Author(s) Identity                                    **
********************************************************************************
**                                                                            **
** Initials     Name                                                          **
** ---------------------------------------------------------------------------**
** PAE        App Developer                                                   **
** NSND       App Developer                                                   **
*******************************************************************************/
/**
 * @file   IO002.c
 *
 * @brief  IO_Digital _IO002 App
 */
/* Revision History 
 *
 * 01 Jan 2013 v1.0.12  Added constraint for Pad driver to skip the 
 *                      configuration for XMC1000 devices.
 * 16 Mar 2013 v1.0.14  1.Modified OMR register configuration (Direct assignment 
 *                      without reading) to upgrade performance.                       
 * 19 Jun 2013 v1.0.18  1.Conditional code generation for OMR & PDR registers 
 *                      configuration if Output Driver is enabled.
 *                      2. Removed IO002_DisableOutputDriver() & 
 *                      IO002_EnableOutputDriver() API definitions, as output 
 *                      port pin configuration shall be done by higher level 
 *                      APP connections.
 * 15 Jul 2013 v1.0.20  1. Pad Hysteresis Control register configuration added
 *                      for XMC1000 devices to configure Standard/Large 
 *                      Hysteresis on user selection basis.     
 * 10 Oct 2013 v1.0.24  Separated static and dynamic C code. Added inline functions
 *                      instead of function like macros. 
 * 06 Jan 2014 v1.0.28  Updated the io002 init for handling issue with port 14 
 * pad register access.
 */
/*******************************************************************************
 ** INCLUDE FILES                                                             **
 ******************************************************************************/

/** Inclusion of header file */
#include "../../inc/IO002/IO002.h"

/*******************************************************************************
**                      Private Macro Definitions                             **
*******************************************************************************/

/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/

/*******************************************************************************
**                 Private Function Declarations:
*******************************************************************************/
static void IO002_lInit(const IO002_HandleType * handle);
static void IO002_IOCR_OE_Enabled_lInit(const IO002_HandleType * handle,
		                                                      uint32_t Pin);
static void IO002_IOCR_OE_Disabled_lInit(const IO002_HandleType * handle,
		                                                      uint32_t Pin);
#if(UC_FAMILY == XMC4)
static void IO002_XMC4_lInit(const IO002_HandleType * handle,uint32_t Pin);
#endif
#if(UC_FAMILY == XMC1)
static void IO002_XMC1_lInit(const IO002_HandleType * handle,uint32_t Pin);
#endif

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
/*
*The function initialises the provided instance of IO002 app.
*/
static void IO002_lInit(const IO002_HandleType * handle)
{
	/*Get the port pin assigned for the particular instance of IO002 handle*/
	uint32_t Pin = handle->PortPin;
		
	/* Configuration of port pins based on User configuration */
	if(handle->IOCR_OE == 1U )
	{
		handle->PortRegs->OMR = (handle->OMR_PS << Pin);
	}
  
#if(UC_FAMILY == 4) 
	/*XMC 4 family specific initialisation*/
	IO002_XMC4_lInit(handle,Pin);
#endif

	/*Hardware control configuration*/
	if(handle->HW_SEL == 1U )
	{
		handle->PortRegs->HWSEL  |= ((uint32_t)2U << Pin);
	}

	/*Check input/output control output enable is true*/
	if(handle->IOCR_OE == 1U )
    {
	    IO002_IOCR_OE_Enabled_lInit(handle,Pin);
    }

	/*If output enable is false*/
	if(handle->IOCR_OE == (uint32_t)0 )
	{
#if(UC_FAMILY == 1)
		IO002_XMC1_lInit(handle,Pin);
#endif

		IO002_IOCR_OE_Disabled_lInit(handle,Pin);
	}
}

#if(UC_FAMILY == 1)
/*This function initialises the hysteresis control register for XMC1000 
devices*/
static void IO002_XMC1_lInit(const IO002_HandleType * handle,uint32_t Pin)
{
	if (handle->PHCR_EN == 1U)
	{
		if (Pin < 8U)
		{
			handle->PortRegs->PHCR0 |= handle->PHCR0_MSK;
		}
		else if ((Pin >= 8U) && (Pin <= 15U))
		{
			handle->PortRegs->PHCR1 |= handle->PHCR1_MSK;
		}
		else
		{
		}
	}
	else
	{
		if (Pin < 8U)
		{
			handle->PortRegs->PHCR0 &= ~(handle->PHCR0_MSK);
		}
		else if ((Pin >= 8U) && (Pin <= 15U))
		{
			handle->PortRegs->PHCR1 &= ~(handle->PHCR1_MSK);
		}
		else
		{
		}
	}
}
#endif

#if(UC_FAMILY == 4)
/*
*This function initialises the pad driver register for XMC4000 devices.
*/
static void IO002_XMC4_lInit(const IO002_HandleType * handle,uint32_t Pin)
{
	if(handle->IOCR_OE == 1U )
	{
		if(Pin < 8U)
		{
		  if(handle->pdr0_ptr != NULL)
		  {
			  *handle->pdr0_ptr &= (uint32_t)(~(handle->PDR0_MSK));
			  *handle->pdr0_ptr |= (uint32_t)((handle->PDR_PD << handle->PDR0_POS)
														  & handle->PDR0_MSK);
		  }
		}
		else
		{
		  if(handle->pdr1_ptr != NULL)
		  {
			  *handle->pdr1_ptr  &= (uint32_t)(~(handle->PDR1_MSK));
			  *handle->pdr1_ptr  |= (uint32_t)((handle->PDR_PD << handle->PDR1_POS)
														   & handle->PDR1_MSK);
		  }
		}
	}
}
#endif

/*This function initialises the input/output control registers.*/
static void IO002_IOCR_OE_Enabled_lInit(const IO002_HandleType * handle,
		                                                      uint32_t Pin)
{
	if(Pin < 4U)
	{
		handle->PortRegs->IOCR0 |= (handle->IOCR << (3U+(Pin*8U)));
	}
	else if ((Pin >= 4U) && (Pin <= 7U))
	{
		Pin = (Pin - 4U);
		handle->PortRegs->IOCR4 |= (handle->IOCR << (3U+(Pin*8U)));
	}
	else if ((Pin >= 8U) && (Pin <= 11U))
	{
		Pin = (Pin - 8U);
		handle->PortRegs->IOCR8 |= (handle->IOCR << (3U+(Pin*8U)));
	}
	else if ((Pin >= 12U) && (Pin <= 15U))
	{
		Pin = (Pin - 12U);
		handle->PortRegs->IOCR12 |= (handle->IOCR << (3U+(Pin*8U)));
	}
	else
	{
	}

}

/*This function initialises the input/output control registers when output 
enable is false*/
static void IO002_IOCR_OE_Disabled_lInit(const IO002_HandleType * handle,
		                                                      uint32_t Pin)
{
	if(Pin < 4U)
	{
		handle->PortRegs->IOCR0 |= (handle->IOCR_PCR2 << (3U+(Pin*8U)));
	}
	else if ((Pin >= 4U) && (Pin <= 7U))
	{
		Pin = (Pin - 4U);
		handle->PortRegs->IOCR4 |= (handle->IOCR_PCR2 << (3U+(Pin*8U)));
	}
	else if ((Pin >= 8U) && (Pin <= 11U))
	{
		Pin = (Pin - 8U);
		handle->PortRegs->IOCR8 |= (handle->IOCR_PCR2 << (3U+(Pin*8U)));
	}
	else if ((Pin >= 12U) && (Pin <= 15U))
	{
		Pin = (Pin - 12U);
		handle->PortRegs->IOCR12 |= (handle->IOCR_PCR2 << (3U+(Pin*8U)));
	}
	else
	{
	}
}


/*******************************************************************************
**                      Public Function Definitions                           **
*******************************************************************************/

/* Function to configure Port Pins based on user configuration & Higher App 
 * configurations.
 */
void IO002_Init(void)
{
	uint32_t i = (uint32_t)0;
	/*Initialize IO for number of instances*/
	for(; i < IO002_NUM_INSTANCES;i++ )
	{
		IO002_lInit(IO002_HandleArr[i]);
	}  
}

/* 
*Function to read the Port Pin.
*/
inline uint32_t IO002_ReadPin(IO002_HandleType Handle)
{
	return ((Handle.PortRegs->IN >> Handle.PortPin) & (uint32_t)1U);
	
}

/*
* The function to set the chosen port pin to '1'
*/
inline void IO002_SetPin(IO002_HandleType Handle)
{
	Handle.PortRegs->OMR = ((uint32_t)1U << Handle.PortPin);
}

/*
*The function to set the chosen port pin to '0'
*/
inline void IO002_ResetPin(IO002_HandleType Handle)
{
	Handle.PortRegs->OMR  = (0x10000UL << Handle.PortPin);
}

/*
*This function sets the chosen port pin with the boolean 'value' provided
*/
inline void IO002_SetOutputValue(IO002_HandleType Handle,uint32_t Value)
{
	if(Value > (uint32_t)0)
	{
		Handle.PortRegs->OMR = ((uint32_t)1U << Handle.PortPin);
	}
	else
	{
		Handle.PortRegs->OMR = (0x10000UL << Handle.PortPin);
	}
}

/*
* The function to toggle the chosen port pin.
*/
inline void IO002_TogglePin(IO002_HandleType Handle)
{
	Handle.PortRegs->OMR  = (0x10001UL << Handle.PortPin);
}

/*This function is a dummy definition for back ward compatibility*/
void IO002_DisableOutputDriver(const IO002_HandleType* Handle,
                                             IO002_InputModeType Mode)
{
	  /* Removed the definition of this API in v1.0.18 Release, 
	  as output port pin configuration shall be done by higher level App */
}

/*This function is a dummy definition for back ward compatibility*/
void IO002_EnableOutputDriver(const IO002_HandleType* Handle,IO002_OutputModeType Mode)
{
   /* Removed the definition of this API in v1.0.18 Release, as output port pin 
	  configuration shall be done by higher level App */
}

	

/*CODE_BLOCK_END*/

