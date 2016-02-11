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
 *Neither the name of the copyright holders nor the names of its              **
 contributors may be used to endorse or promote products derived from this    **
 software without specific prior written permission.                          **
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
** PLATFORM : Infineon XMC4000/ XMC1000 Series                                **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR   : App Developer                                                   **
**                                                                            **
** MAY BE CHANGED BY USER [yes/no]: Yes                                       **
**                                                                            **
** MODIFICATION DATE : Apr 11, 2014                                           **
**                                                                            **
********************************************************************************
** VERSION HISTORY:
********************************************************************************
** 04 Dec 2012 v1.0.4  Changes from 1.0.2 are
**                     1. Modified for baud calculation during initialisation.
**                     2. Modified the macros FUNCTION_ENTRY, FUNCTION_EXIT and
**                     ERROR
**                     3. The hard coded values are replaced with macros in
**                     UART001_lConfigureBaudRate() function.
**                     4. The PCTQ value update in BRG register is removed as
**                     the value is taken as zero.
**                     5. Modified as per coding guidelines and MISRA checks
** 26 Mar 2013 v1.0.10 1. Updated for the baud calculation in UART001_lInit()
**                     function.
**                     2. Updated for the alignment in revision history.
**                     3. Updated the UART001_Init() function for disabling the
**                     clock gating signal for XMC1000 devices.
**                     4. Updated function UART001_lConfigureBaudRate() for the
**                     Baud rate calculation.
** 25 Jul 2013 v1.0.16 1. Removed TBIF bit configuration from UART001_lInit as 
**                     polling is not used in the UART001 App. 
**                     2. Added open-drain output configuration for Half duplex 
**                     operation mode to allow the wired-AND connection in
**                     multiple transmitter communication.
**                     3. Added CCR.MODE configurations in UART001_lInit() 
**                     & UART001_Configure to disable the UART mode before 
**                     configuring USIC registers & to enable the UART mode 
**                     after configurations to avoid unintended edges.
**                     4. Modified the input parameter of 
**                     UART001_WriteDataMultiple() from const uint16_t* to 
**                     uint16_t* to maintain backward compatibility.
**                     5. TX pin set logic high (1) before configuring Open 
**                     Drain mode for Half Duplex operation mode. 
** 04 Feb 2014 V1.0.20 1. Added definitions for "UART001_ReadDataBytes" & 
**                     "UART001_WriteDataBytes" new APIs.
**                     2. Created "UART001_lConfigTXPin" local API to configure
**                     Tx pin as Open-drain General-purpose output to allow 
**                     wired anding connection in the Half Duplex mode.
**                     3. Modified UART001_Init Api to handle the target device
**                     based initialisations. 
**                     4. Added TBIF configuration in the UART001_lInit Api if 
**                     Transmit FIFO buffer is disabled.
**                     5. Modified as per coding guidelines and MISRA 
**                     compliance.
**                     6. Removed DAVE3.h inclusion to fix the MISRA warning for
**                     multiple includes. 
**                     7. Error codes are added in various functions, that can 
**                     be logged with DBG002 App.
**                     8. Removed DBG002_FUNCTION_ENTRY & DBG002_FUNCTION_EXIT 
**                     calling from APIs as using these macros is highly 
**                     discouraged.
**                     9. Added standard buffer functionality into the    
**                     "UART001_ReadDataMultiple" & "UART001_WriteDataMultiple"
**                     Apis. 
** 11 Apr 2014 v1.0.24 1. API (UART001_ReadDataMultiple, UART001_ReadDataBytes, 
**                     UART001_WriteDataMultiple & UART001_WriteDataBytes) 
**                     document corrections.                                                                                           
*******************************************************************************/
/**
 * @file UART001.c
 * 
 * @brief  UART001 App provides non reentrant APIs for higher level Apps 
 *          which can be used in a Non -RTOS environment. 
 *           Limitations of Simple UART App
 *           a) Read/Write functions are non reentrant.
 *           b) No support for DMA mode
 *           
 */

/**
 * @cond INTERNAL_DOCS
 */

/*******************************************************************************
 ** INCLUDE FILES                                                             **
 ******************************************************************************/
#ifndef UART001_H_
#include "../../inc/UART001/UART001.h"
#endif
#if ((__TARGET_DEVICE__ == XMC45) || (__TARGET_DEVICE__ == XMC44) || \
     (__TARGET_DEVICE__ == XMC42) || (__TARGET_DEVICE__ == XMC41)) 
	#include "../../inc/RESET001/RESET001.h"
#else
#ifndef CLK002_H_
#include "../../inc/CLK002/CLK002.h"
#endif
#endif
#ifdef _DBG002_H_
#include "../../inc/DBG002/DBG002.h"
#endif
/*******************************************************************************
              DUMMY DEFINITIONS OF DEBUG LOG MACROS
*******************************************************************************/
/*These definitions are included here to avoid compilation errors,
 since the DBG002 app is not part of the project. All the macros are defined
 as empty*/ 
#ifndef _DBG002_H_

#define DBG002_MESSAGEID_LITERAL
#define DBG002_ERROR(groupid,messageid,length,value)

#endif/* End of definitions of dummy Debug Log macros*/

/*******************************************************************************
**                      Private Macro Definitions                             **
*******************************************************************************/
#define APP_GID DBG002_GID_UART001
/*Flag Offset Transmit Receive Buffer */
#define UART001_FLAG_OFFSET                        0x05U
#define UART001_MAX_VALUE                          1024U
/* (DCTQ + 1) DCTQ value is 9 */
#define UART001_DCTQ_VALUE                         0x0AUL
#define UART001_OPENDRAIN_OUT      				   0x18U

#define FIRST_NIBBLE                               4U
#define SECOND_NIBBLE                              8U
#define THIRD_NIBBLE                               12U
#define FOURTH_NIBBLE                              16U
#define SHIFT_ONE								   0x01U
#define SHIFT_TWO								   0x02U
#define MASK_ONE								   0x01U


/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/


/*******************************************************************************
**                 Private Function Declarations:
*******************************************************************************/

/* Initialises the App based on User provide configuration. */
void UART001_lInit (const UART001_HandleType* Handle);
/* Configures TX pin as Open-drain with General-purpose output */
void UART001_lConfigTXPin(const UART001_HandleType* Handle);
/* Give optimised PDIV and STEP value for the given baud rate */ 
void UART001_lConfigureBaudRate\
                           (uint32_t BaudRate,uint32_t* Pdiv,uint32_t* Step);
/* to find the real type */
float UART001_labsRealType(float Number);                           
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
 * @brief This function initialises the USIC Channel with GUI configured values.
 *
 * @param[in]  Handle of type UART001_HandleType
 *
 * @return  None <BR>
 *
 * <b>Reentrant: No </b><BR>
 ******************************************************************************/ 
void UART001_lInit (const UART001_HandleType* Handle)
{
  USIC_CH_TypeDef* UartRegs = Handle->UartRegs;
  
 /* <<<DD_UART001_API_1>>>*/
 
  /** UART initialisation  */

  /* Disable UART mode before configuring all USIC registers to avoid 
   * unintended edges */ 
  UartRegs->CCR &= ~( ((uint32_t)(UART_MODE  & USIC_CH_CCR_MODE_Msk))); 

  /* Enable the USIC Channel */
  UartRegs->KSCFG |= ((((uint32_t)MASK_ONE  & USIC_CH_KSCFG_MODEN_Msk)) | \
                       (((uint32_t)SHIFT_ONE << USIC_CH_KSCFG_BPMODEN_Pos) &  \
                         USIC_CH_KSCFG_BPMODEN_Msk)); 
   
  /* Configuration of USIC Channel Fractional Divider */

  /* Fractional divider mode selected */
  UartRegs->FDR |= (((uint32_t)SHIFT_TWO << USIC_CH_FDR_DM_Pos) \
                                                     & USIC_CH_FDR_DM_Msk);
  
  /* Step value */
  UartRegs->FDR |= ((Handle->BGR_STEP) & USIC_CH_FDR_STEP_Msk);
          
  /* The PreDivider for CTQ, PCTQ = 0  */
  /* The Denominator for CTQ, DCTQ = 16 */
    
  UartRegs->BRG |= \
	  ((((uint32_t)(Handle->BGR_PCTQ) << USIC_CH_BRG_PCTQ_Pos) & \
		  	     USIC_CH_BRG_PCTQ_Msk) | \
      (((uint32_t)(Handle->BGR_DCTQ) << USIC_CH_BRG_DCTQ_Pos) & \
	     USIC_CH_BRG_DCTQ_Msk) | \
      (((uint32_t)(Handle->BGR_PDIV) << USIC_CH_BRG_PDIV_Pos) &  \
	     USIC_CH_BRG_PDIV_Msk));
 
  /* Configuration of USIC Shift Control */
  
  /* Transmit/Receive LSB first is selected  */
  /* Transmission Mode (TRM) = 1  */
  /* Passive Data Level (PDL) = 1 */
  UartRegs->SCTR |= ((((uint32_t)SHIFT_ONE  << USIC_CH_SCTR_PDL_Pos) & \
    USIC_CH_SCTR_PDL_Msk ) | \
    (((uint32_t)SHIFT_ONE  <<  USIC_CH_SCTR_TRM_Pos ) & USIC_CH_SCTR_TRM_Msk ));
  /* Set Word Length (WLE) & Frame Length (FLE) */
  UartRegs->SCTR |= ((((uint32_t)Handle->DataBits  << USIC_CH_SCTR_FLE_Pos) & \
                      USIC_CH_SCTR_FLE_Msk ) | \
                     (((uint32_t)Handle->DataBits  << USIC_CH_SCTR_WLE_Pos) & \
                        USIC_CH_SCTR_WLE_Msk));

       
  /* Configuration of USIC Transmit Control/Status Register */ 
  /* TBUF Data Enable (TDEN) = 1 */
  /* TBUF Data Single Shot Mode (TDSSM) = 1 */
	
  UartRegs->TCSR |= ((((uint32_t)SHIFT_ONE  << USIC_CH_TCSR_TDEN_Pos) & \
    USIC_CH_TCSR_TDEN_Msk ) | \
    (((uint32_t)0x01  << USIC_CH_TCSR_TDSSM_Pos) & USIC_CH_TCSR_TDSSM_Msk));

  /* Configuration of Protocol Control Register */ 
  /* Sample Mode (SMD) = 1 */
  /* 1 Stop bit is selected */   
  /* Sample Point (SP) as configured */
  /* Pulse Length (PL) = 0 */
  
  UartRegs->PCR_ASCMode |= ((((uint32_t)MASK_ONE & USIC_CH_PCR_ASCMode_SMD_Msk)) |\
    (((uint32_t)Handle->StopBit  << USIC_CH_PCR_ASCMode_STPB_Pos) & \
    USIC_CH_PCR_ASCMode_STPB_Msk) | \
    (((uint32_t)(Handle->BGR_SP) << USIC_CH_PCR_ASCMode_SP_Pos) & \
    USIC_CH_PCR_ASCMode_SP_Msk));
      
  if(Handle->RecvNoiseEn)
  {
   	/* Enable Receiver Noise Interrupt*/  
    UartRegs->PCR_ASCMode |=(((uint32_t)SHIFT_ONE  << USIC_CH_PCR_CTR5_Pos) & \
		  	  	  	  	  USIC_CH_PCR_CTR5_Msk); 
  }
  
  if(Handle->FormatErrEn)
  {
   	/* Enable Format Error Interrupt*/  
    UartRegs->PCR_ASCMode |=(((uint32_t)SHIFT_ONE  << USIC_CH_PCR_CTR6_Pos) & \
		  	  	  	  	                             USIC_CH_PCR_CTR6_Msk); 
  }
  
  if(Handle->FrameFinEn)
  {
   	/* Enable Frame Finished Interrupt*/  
    UartRegs->PCR_ASCMode |=(((uint32_t)SHIFT_ONE  << USIC_CH_PCR_CTR7_Pos) & \
		  	                                   	  	 USIC_CH_PCR_CTR7_Msk); 
  } 
  
  if (Handle->TxFifoEn)
  {	
	  /* Configuration of Transmitter Buffer Control Register */ 
	  UartRegs->TBCTR |= ((((uint32_t)Handle->TxLimit  << \
						USIC_CH_TBCTR_LIMIT_Pos ) & USIC_CH_TBCTR_LIMIT_Msk));
  }
  else
  {
	  /* TBIF is set to simplify polling*/
	  UartRegs->PSR_ASCMode |= (((uint32_t)SHIFT_ONE  << USIC_CH_PSR_TBIF_Pos) & \
	 		  (uint32_t)USIC_CH_PSR_TBIF_Msk);
  }
  
  if (Handle->RxFifoEn)
  {
	  /* Configuration of Receiver Buffer Control Register */ 
	  UartRegs->RBCTR |= ((((uint32_t)Handle->RxLimit  << \
						   USIC_CH_RBCTR_LIMIT_Pos) & USIC_CH_RBCTR_LIMIT_Msk) | \
							(((uint32_t)SHIFT_ONE << USIC_CH_RBCTR_LOF_Pos) & \
						   USIC_CH_RBCTR_LOF_Msk));
  }else{}
  
  /* Configuration of Channel Control Register */ 
  UartRegs->CCR |= (((uint32_t)(UART_MODE  & USIC_CH_CCR_MODE_Msk)) | \
                    (((uint32_t)Handle->Parity  << USIC_CH_CCR_PM_Pos) & \
                     USIC_CH_CCR_PM_Msk));

}
/*******************************************************************************
 * @brief This function configures TX pin as Open-drain General-purpose
 * output and sets to '1'. 
 *
 * @param[in]  Handle of type UART001_HandleType
 *
 * @return  None <BR>
 *
 * <b>Reentrant: No </b><BR>
 ******************************************************************************/ 
void UART001_lConfigTXPin(const UART001_HandleType* Handle)
{
	uint32_t TempPortPin;

    /* set the TX portpin to '1' */
    Handle->PinHandle.TX_PortBase->OMR |= (uint32_t)SHIFT_ONE << \
   		                                (uint32_t)Handle->PinHandle.TX_Pin;
     
	/* Configure TX portpin as Open-drain General-purpose output */
    TempPortPin = (uint32_t)Handle->PinHandle.TX_Pin;

    if (FIRST_NIBBLE > TempPortPin)
    {
   	  Handle->PinHandle.TX_PortBase->IOCR0 |= \
   			                ((uint32_t)UART001_OPENDRAIN_OUT << (3U + \
							(TempPortPin * 8U)));
    }
    else if ((FIRST_NIBBLE <= TempPortPin) && (SECOND_NIBBLE > TempPortPin))
    {
	  TempPortPin = TempPortPin - FIRST_NIBBLE;
	  Handle->PinHandle.TX_PortBase->IOCR4 |= \
			                ((uint32_t)UART001_OPENDRAIN_OUT << (3U + \
							(TempPortPin * 8U)));
    }
    else if ((SECOND_NIBBLE <= TempPortPin) && (THIRD_NIBBLE > TempPortPin))
    {
 	  TempPortPin = TempPortPin - SECOND_NIBBLE;
 	  Handle->PinHandle.TX_PortBase->IOCR8 |= \
 			                ((uint32_t)UART001_OPENDRAIN_OUT << (3U + \
							(TempPortPin * 8U)));
    }
    else if ((THIRD_NIBBLE <= TempPortPin) && (FOURTH_NIBBLE > TempPortPin))
    {
	  TempPortPin = TempPortPin - THIRD_NIBBLE;
	  Handle->PinHandle.TX_PortBase->IOCR12 |= \
			                ((uint32_t)UART001_OPENDRAIN_OUT << (3U + \
							(TempPortPin * 8U)));
    }
	else
	{}

}

/*******************************************************************************
 * @brief This function finds the real type of the float number
 *
 * @param[in]  Number of type float
 *
 * @return  return_value <BR>
 * 				 +ve float value if Number is < 0.0 <BR>
 * 				 -ve float value if Number is >= 0.0 <BR>
 *
 * <b>Reentrant: No </b><BR>
 ******************************************************************************/
float UART001_labsRealType(float Number)
{
   float return_value;
	if (Number < 0.0F){
		return_value = -Number;
	}
	else{
		return_value = Number;
	}
	return return_value;
}
/*******************************************************************************
 * @brief This function gives optimised PDIV and STEP value for the given 
 * baud rate.  
 *
 * @param[in]  BaudRate of type uint32_t
 * @param[in]  Pdiv reference of type uint32_t
 * @param[in]  Step reference of type uint32_t
 *
 * @return  None <BR>
 *
 * <b>Reentrant: No </b><BR>
 ******************************************************************************/
void UART001_lConfigureBaudRate\
                              (uint32_t BaudRate,uint32_t* Pdiv,uint32_t* Step)
{
	uint32_t fdr_step = 0x00U;
	uint32_t brg_pdiv = 0x00U;
	uint32_t divisor_in = BaudRate ;
	/* fPB / 1024 * (Brg_dctq + 1) */
	uint32_t dividend_in = 0U;
	uint32_t divisor[4];
	uint32_t dividend[4];
	uint32_t remainder[4];
	uint32_t divisor_array[4];
	uint32_t dividend_array[4];
	uint32_t div_array[4];
	uint32_t max, frac,divisor1,divisor2,dividend1,dividend2;
	uint32_t array_count,array_count_1,array_count_2;
	uint32_t do_while_break = 0U;
	uint32_t temp = 0U;
	float div_factor;
	uint32_t loop_cnt;
	bool swapped;
	dividend_in = (uint32_t)((uint32_t)(UART001_CLOCK * 1000000)/ \
                    	(UART001_MAX_VALUE * UART001_DCTQ_VALUE)); 
	/* swap if divisor_in/dividend_in > max_divisor/max_dividend */
	div_factor = (float) divisor_in/(float) dividend_in;
	if ( div_factor > 1.0F)
	{
		max = UART001_MAX_VALUE;
		swapped = 1U;
		temp = divisor_in;
		divisor_in = dividend_in;
		dividend_in = temp;
	}
	else
	{
		swapped = 0U;
		max = UART001_MAX_VALUE;
	}
	/*Init parameters*/
	loop_cnt = 0U;
	array_count = 0U;
	array_count_1 = 0U;
	divisor[0] = divisor_in;
	remainder[0] = dividend_in;
	divisor_array[0] = 1U;
	dividend_array[0] = 0U;
	do {
			++loop_cnt;
			array_count_2 = array_count_1; /* on first loop is not used */
			array_count_1 = array_count;
			array_count = loop_cnt % 4U;
			dividend[array_count] = divisor[array_count_1];
			
			divisor[array_count] = remainder[array_count_1];
			
			div_array[array_count] = \
			                       dividend[array_count] / divisor[array_count];
			
			remainder[array_count] = \
			                       dividend[array_count] % divisor[array_count];
			
			/* This executed only on first loop */
			if (loop_cnt == 1U)
			{ 
				divisor_array[1] = div_array[1];
				dividend_array[1] = 1U;
			}
			else
			{
				divisor_array[array_count] = \
				      (div_array[array_count] * divisor_array[array_count_1]) + \
				       divisor_array[array_count_2];
				dividend_array[array_count] = \
				      (div_array[array_count] * dividend_array[array_count_1]) + \
				       dividend_array[array_count_2];
			}
			if (dividend_array[array_count] > max) 
			{
				divisor1 = divisor_array[array_count_1];
				dividend1 = dividend_array[array_count_1];
				frac = (max - dividend_array[array_count_2]) / \
				                               dividend_array[array_count_1];
				divisor2 = (frac * divisor_array[array_count-1U]) + \
				                                divisor_array[array_count-2U];
				dividend2 = (frac * dividend_array[array_count-1U]) + \
				                               dividend_array[array_count_2];
				/* Swap if required */
				if (swapped) {
						/* Swap divisor1 and dividend1 */
						temp = divisor1;
						divisor1 = dividend1;
						dividend1 = temp;
						/* Swap divisor2 and dividend2 */
						temp = divisor2;
						divisor2 = dividend2;
						dividend2 = temp;
					}
				/* Remove if one of has divisor 0 */
				if ((dividend1 == 0U) || (divisor1 == 0U)) {
					fdr_step = divisor2;
					brg_pdiv = dividend2;
				}else if ((dividend2 == 0U) || (divisor2 == 0U)) {
					fdr_step = divisor1;
					brg_pdiv = dividend1;
				}else { 
					/*  Find the most nearest to target division */
					if (UART001_labsRealType(div_factor - \
					    ((float) divisor1 / (float) dividend1 )) > \
					    UART001_labsRealType(div_factor - \
					    ((float) divisor2 / (float) dividend2 ))) 
					{
						fdr_step = divisor2;
						brg_pdiv = dividend2;
					}else {
						fdr_step = divisor1;
						brg_pdiv = dividend1;
					}
				}
				do_while_break = 0x05U;
			}
			else if (remainder[array_count]== 0U) 
			{
				fdr_step = divisor_array[array_count];
				brg_pdiv = dividend_array[array_count];
				if (swapped)
				{
					/* Swap fdr_step and brg_pdiv */
					temp = fdr_step;
					fdr_step = brg_pdiv;
					brg_pdiv = temp;
				}
				do_while_break = 0x05U;
			}
			else {
			  /* Do Nothing */
			}
		} while (do_while_break != 0x05U);

	if(fdr_step >= UART001_MAX_VALUE)
	{
	   fdr_step = 1023U;
	}

	*Step = fdr_step;

	*Pdiv = brg_pdiv - 1U;
}
/*******************************************************************************
**                      Public Function Definitions                           **
*******************************************************************************/
/*******************************************************************************
 * @brief This function initialises the App, based on User provided
 * configuration. 
 * 
 * @param[in]  None
 *
 * @return  None <BR>
 *
 * <b>Reentrant: No </b><BR>
 *
 ******************************************************************************/
void UART001_Init(void)
{
	/* <<<DD_UART001_API_1>>> */
	 uint32_t LoopIndex;
		
    #if (__TARGET_DEVICE__ != XMC45)
	#if ((__TARGET_DEVICE__ == XMC13) || \
	     (__TARGET_DEVICE__ == XMC12) || \
	     (__TARGET_DEVICE__ == XMC11))
	  /* Disable the USIC0/USIC1 clock gating for XMC1000 devices */	     
	  SCU_GENERAL->PASSWD = 0x000000C0UL;
	  WR_REG(SCU_CLK->CLKCR, SCU_CLK_CLKCR_CNTADJ_Msk, \
	                                SCU_CLK_CLKCR_CNTADJ_Pos,CLK002_DELAYCNT);

	  #if defined(UART001_PER0_USIC0_ENABLED)
	  SET_BIT(SCU_CLK->CGATCLR0, SCU_CLK_CGATCLR0_USIC0_Pos);
      #endif
      #if defined(UART001_PER1_USIC1_ENABLED)
	  SET_BIT(SCU_CLK->CGATCLR1, SCU_CLK_CGATCLR1_USIC1_Pos);
	  #endif
	  while ((SCU_CLK->CLKCR)&(SCU_CLK_CLKCR_VDDC2LOW_Msk))
	  {
	  	;
	  }
	  SCU_GENERAL->PASSWD = 0x000000C3UL;
   #else
	/* Disable the USIC0/USIC1 clock gating for XMC4400 and XMC4200 devices*/
   #if defined(UART001_PER0_USIC0_ENABLED)
	  SET_BIT(SCU_CLK->CGATCLR0, SCU_CLK_CGATCLR0_USIC0_Pos);
   #endif
   #if defined(UART001_PER1_USIC1_ENABLED)  
	  SET_BIT(SCU_CLK->CGATCLR1, SCU_CLK_CGATCLR1_USIC1_Pos);
   #endif
   #endif
   #endif

   #if ((__TARGET_DEVICE__ == XMC45) || \
	    (__TARGET_DEVICE__ == XMC44) || \
	    (__TARGET_DEVICE__ == XMC42))
	  /* Reset the Peripheral*/
   #if defined(UART001_PER0_USIC0_ENABLED)
	  RESET001_DeassertReset(PER0_USIC0);
   #endif
   #if defined(UART001_PER1_USIC1_ENABLED)
	  RESET001_DeassertReset(PER1_USIC1); 
   #endif
   #if defined(UART001_PER1_USIC2_ENABLED)
	  RESET001_DeassertReset(PER1_USIC2); 
   #endif 
   #endif  
	  
   for (LoopIndex = (uint32_t)0; LoopIndex < (uint32_t)UART001_NUM_HANDLES; \
	                           LoopIndex++)
   {
	  if (UART001_HandleArray[LoopIndex]->Mode == UART_HALFDUPLEX)
	  {
	   /*Configure TX Pin in Open-drain mode to allow the Wired-AND connection*/
		UART001_lConfigTXPin(UART001_HandleArray[LoopIndex]);
	  }
	  
	  UART001_lInit(UART001_HandleArray[LoopIndex]);
   }
   
}
/*******************************************************************************
 * @brief This function de-initialises the USIC channel configurations.
 * 
 * @param[in]  Handle of type UART001_HandleType
 *
 * @return  None <BR>
 *
 * <b>Reentrant: No </b><BR>
 *
 ******************************************************************************/
 void  UART001_DeInit (const UART001_HandleType* Handle)
{
  /* <<<DD_UART001_API_2>>> */
  /* Place holder function */      
}
 /******************************************************************************
  * @brief Function which allows changing of baud rate, parity & stop bit  
  * configuration at run time.
  *
  *
  * @param[in]  Handle USIC device handle
  * @param[in]  BaudRate Desired Baud Rate in Bauds
  * @param[in]  Parity Desired Parity
  * @param[in]  Stopbit Desired no of Stop bit(s)
  *
  * @return     status <BR>
  *             DAVEApp_SUCCESS	: for success.<BR>
  *             UART001_ERROR  	: for failure case.<BR>
  *             UART001_BUSY 	: UART channel is busy.<BR>
  *
  * <b>Reentrant: NO </b><BR>
  *
  *****************************************************************************/
status_t  UART001_Configure
( 
  const UART001_HandleType* Handle,
  uint32_t BaudRate,
  UART_ParityType Parity,
  UART_StopBitType Stopbit
)
{
   uint32_t Brg_Pdiv = 0x00U;
   uint32_t Fdr_Step = 0x00U;
   uint32_t TXIDLE_status;
   uint32_t RXIDLE_status;
   USIC_CH_TypeDef* UartRegs = Handle->UartRegs;
   status_t Status = (status_t)UART001_ERROR;
   
   /* <<<DD_UART001_API_3>>>*/

   TXIDLE_status = (uint32_t)\
                 RD_REG(UartRegs->PSR_ASCMode,USIC_CH_PSR_ASCMode_TXIDLE_Msk, \
	                       USIC_CH_PSR_ASCMode_TXIDLE_Pos);

   RXIDLE_status = (uint32_t)\
                 RD_REG(UartRegs->PSR_ASCMode,USIC_CH_PSR_ASCMode_RXIDLE_Msk, \
	                       USIC_CH_PSR_ASCMode_RXIDLE_Pos);
   if(( TXIDLE_status & RXIDLE_status) == 0x01U)
    {
      /* Disable UART mode before configuring all USIC registers to avoid 
       * unintended edges */ 
      UartRegs->CCR &= ~( ((uint32_t)(UART_MODE  & USIC_CH_CCR_MODE_Msk)));  
	  
      /* Configuration of USIC Channel Fractional Divider */
      UART001_lConfigureBaudRate(BaudRate,&Brg_Pdiv,&Fdr_Step);

      /* Step value: 0x3FF */
      UartRegs->FDR &= ~(USIC_CH_FDR_STEP_Msk);
      UartRegs->FDR |= ( Fdr_Step & USIC_CH_FDR_STEP_Msk);
              
      /* The PreDivider for CTQ, PCTQ = 0  */
      /* The Denominator for CTQ, DCTQ = 16 */

      UartRegs->BRG &= ~(USIC_CH_BRG_PDIV_Msk);
      UartRegs->BRG |= ((((uint32_t)Brg_Pdiv  << USIC_CH_BRG_PDIV_Pos) \
    		                                          &  USIC_CH_BRG_PDIV_Msk));

      /* Configure StopBit */
      UartRegs->PCR_ASCMode &= ~(USIC_CH_PCR_ASCMode_STPB_Msk);
      UartRegs->PCR_ASCMode |= \
                      (((uint32_t)Stopbit << USIC_CH_PCR_ASCMode_STPB_Pos) & \
                       USIC_CH_PCR_ASCMode_STPB_Msk);
          
      /* Configure Parity*/
      UartRegs->CCR &= ~(USIC_CH_CCR_PM_Msk);
      UartRegs->CCR |= (((UART_MODE  & USIC_CH_CCR_MODE_Msk)) | \
                        (((uint32_t)Parity  << USIC_CH_CCR_PM_Pos) & \
                                                       USIC_CH_CCR_PM_Msk));

      Status = (status_t)DAVEApp_SUCCESS;
    }
    else
    {
      Status = (status_t)UART001_BUSY;
      DBG002_ERROR(APP_GID, DBG002_MESSAGEID_LITERAL, sizeof(Status), &Status);
    }
  
  return Status;
}

/*******************************************************************************
 * @brief When receive FIFO is enabled, this function reads the USIC receive
 * FIFO Buffer, word by word, until there is no data in the FIFO buffer and 
 * the "Count" value is greater than "0".
 * But when receive FIFO buffer is disabled, it reads a word from standard 
 * receive buffer 
 * 
 * Note: Fifo trigger limit should be adjusted manually to read
 * required amount of data from FIFO buffer.
 *
 * @param[in]  Handle USIC device handle
 * @param[out] DataPtr  Pointer to data
 * @param[in]  Count   Total no of words to be read.
 * 
 * @return  uint32_t Number of data read from FIFO/standard receive buffer <BR>
 * 
 * <i>Imp Note:</i> Return Count will be always '1', if datais read from the 
 *              standard buffer. 
 *
 * <b>Reentrant: NO </b><BR>
 * 
 ******************************************************************************/
uint32_t UART001_ReadDataMultiple
(
  const UART001_HandleType* Handle,
  uint16_t* DataPtr,
  uint32_t Count
)
{ 
  uint32_t ReadCount = 0x00U;
  USIC_CH_TypeDef* UartRegs = Handle->UartRegs;  
  /* <<<DD_UART001_API_4>>>*/
  /* If FIFO is enabled read data from receive FIFO buffer */
  if(Handle->RxFifoEn) 
  {
	  while(! USIC_ubIsRxFIFOempty(UartRegs) && Count)
	  {
		*DataPtr = (uint16_t)UartRegs->OUTR;
		Count--;
		ReadCount++;
		DataPtr++;
	  }
  }
  else
  {
	  /* If FIFO is disabled read data from standard receive buffer */
	  *DataPtr = (uint16_t)UartRegs->RBUF;
	  ReadCount++;
  }
  return ReadCount;
}
/*******************************************************************************
 * @brief When receive FIFO is enabled, this function reads the USIC receive
 * FIFO Buffer, byte by byte, until there is no data in the FIFO buffer and 
 * the "Count" value is greater than "0".
 * But when receive FIFO buffer is disabled, it reads a byte from standard 
 * receive buffer 
 * 
 * Note: Fifo trigger limit should be adjusted manually to read
 * required amount of data from FIFO buffer.
 *
 *
 * @param[in]  Handle USIC device handle
 * @param[out] DataPtr  Pointer to data
 * @param[in]  Count   Total no of bytes to be read.
 *
 * @return  uint32_t Number of data read from FIFO/standard receive buffer <BR>
 * 
 * <i>Imp Note:</i> Return Count will be always '1', if data is read from the 
 *              standard buffer. 
 *
 * <b>Reentrant: NO </b><BR>
 * 
 ******************************************************************************/
uint32_t UART001_ReadDataBytes
(
  const UART001_HandleType* Handle,
  uint8_t* DataPtr,
  uint32_t Count
)
{ 
  uint32_t ReadCount = 0x00U;
  USIC_CH_TypeDef* UartRegs = Handle->UartRegs;  
  /* <<<DD_UART001_API_4>>>*/
  /* If FIFO is enabled read data from receive FIFO buffer */
  if(Handle->RxFifoEn) 
  {
	  while(! USIC_ubIsRxFIFOempty(UartRegs) && Count)
	  {
		*DataPtr = (uint8_t)UartRegs->OUTR;
		Count--;
		ReadCount++;
		DataPtr++;
	  }
  }
  else
  {
	  /* If FIFO is disabled read data from standard receive buffer */
	  *DataPtr = (uint8_t)UartRegs->RBUF;
	  ReadCount++;
  }  
  return ReadCount;
}

/*******************************************************************************
 * @brief When FIFO is enabled, this function writes data to the USIC FIFO 
 * transmit buffer register, word by word, until the FIFO buffer is full and 
 * the "Count" value is greater than "0".
 * But when transmit FIFO is disabled, it writes a word to the standard 
 * transmit buffer.
 * 
 * Note: Fifo trigger limit should be adjusted manually to transmit 
 * to transmit required amount of data.
 *
 * Reentrant : No
 *
 * @param[in]  Handle  USIC device handle
 * @param[in]  DataPtr Pointer to data
 * @param[in]  Count   Total no of words to be transmitted.
 *
 * @return     uint32_t Number of data written to buffer <BR>
 *
 * <i>Imp Note:</i> Return Count will be always '1', if data is written to the 
 *             standard buffer. 
 *          
 * <b>Reentrant: NO </b><BR>
 *
 ******************************************************************************/
uint32_t UART001_WriteDataMultiple
(
  const UART001_HandleType* Handle,
  uint16_t* DataPtr,
  uint32_t Count
)
{
  uint32_t WriteCount = 0x00U;
  USIC_CH_TypeDef* UartRegs = Handle->UartRegs; 
  /* <<<DD_UART001_API_5>>>*/
  /* If FIFO is enabled write data to the transmit FIFO buffer */
  if(Handle->TxFifoEn) 
  {
	  while(! USIC_IsTxFIFOfull(UartRegs)&& Count)
	  {
		UartRegs->IN[0] = *DataPtr;
		Count--;
		WriteCount++;
		DataPtr++;
	  }
  }
  else
  {	  
	  /* If FIFO is disabled write data to the standard transmit buffer */
	  if (!(USIC_CH_TCSR_TDV_Msk & UartRegs->TCSR))
	  {
		UartRegs->TBUF[0] = *DataPtr;	
		WriteCount++; 
	  }
  }
  return WriteCount;
}

/*******************************************************************************
 * @brief When FIFO is enabled, this function writes data to the USIC FIFO 
 * transmit buffer register, byte by byte, until the FIFO buffer is full and 
 * the "Count" value is greater than "0".
 * But when transmit FIFO is disabled, it writes a byte to the standard 
 * transmit buffer.
 * 
 * Note: Fifo trigger limit should be adjusted manually to transmit 
 * to transmit required amount of data.
 *
 * Reentrant : No
 *
 * @param[in]  Handle  USIC device handle
 * @param[in]  DataPtr Pointer to data
 * @param[in]  Count   Total no of words to be transmitted.
 *
 * @return     uint32_t Number of data written to buffer <BR>
 *
 * <i>Imp Note:</i> Return Count will be always '1', if data is written to the 
 *              standard buffer. 
 *              
 * <b>Reentrant: NO </b><BR>
 *
 ******************************************************************************/
uint32_t UART001_WriteDataBytes
(
  const UART001_HandleType* Handle,
  const uint8_t* DataPtr,
  uint32_t Count
)
{
  uint32_t WriteCount = 0x00U;
  USIC_CH_TypeDef* UartRegs = Handle->UartRegs; 
  /* <<<DD_UART001_API_6>>> */
  
  /* If FIFO is enabled write data to the transmit FIFO buffer */  
  if(Handle->TxFifoEn) 
  {
	  while(! USIC_IsTxFIFOfull(UartRegs)&& Count)
	  {
		UartRegs->IN[0] = *DataPtr;
		Count--;
		WriteCount++;
		DataPtr++;
	  }
  }
  else
  {	  
	  /* If FIFO is disabled write data to the standard transmit buffer */  
	  if (!(USIC_CH_TCSR_TDV_Msk & UartRegs->TCSR))
	  {
		UartRegs->TBUF[0] = *DataPtr;	
		WriteCount++; 
	  }
  }
  return WriteCount;
}

/*******************************************************************************
 * @brief The function is used to get the event flag status specified.
 * 			   It returns UART_SET if the corresponding flag
 *			   is set else otherwise.
 *
 *
 * @param[in]  Handle USIC device handle
 * @param[in]  Flag   UART Flag which needs to be checked
 *
 * @return     status_t <BR>
 *             UART_SET    : indicates Flag is set.<BR>
 *             UART_RESET  : indicates Flag is reset.<BR>
 *
 * <b>Reentrant: NO </b><BR>
 *
 ******************************************************************************/
status_t UART001_GetFlagStatus 
(
  const UART001_HandleType* Handle,
  UART001_FlagStatusType Flag
)
{
  status_t Status = (status_t)UART001_RESET;
  uint32_t TempValue = 0x00U;
  USIC_CH_TypeDef* UartRegs = Handle->UartRegs;
  
  /* <<<DD_UART001_API_7>>>*/
  if(Flag <= UART001_ALT_REC_IND_FLAG)
  {
    TempValue = UartRegs->PSR_ASCMode;
    TempValue  &= ((uint32_t)SHIFT_ONE << (uint32_t)Flag);    
  }
  else if(Flag <= UART001_FIFO_ALTRECV_BUF_FLAG)
  {
    TempValue = UartRegs->TRBSR;
    TempValue  &= ((uint32_t)SHIFT_ONE << \
                  ((uint32_t)Flag - (uint32_t)UART001_FIFO_STD_RECV_BUF_FLAG));
    
  }
  else
  {
    TempValue = UartRegs->TRBSR;
    TempValue  &= ((uint32_t)SHIFT_ONE << \
       (((uint32_t)Flag - (uint32_t)UART001_FIFO_STD_RECV_BUF_FLAG) + 0x05U ));
  } 

  if(TempValue)
  {
    Status = (status_t)UART001_SET;
  }
  return Status;
}

/*******************************************************************************
 * @brief This function clears the specified event flag status.
 *
 *
 * @param[in]  Handle USIC device handle
 * @param[in]  Flag   UART Flag which needs to be cleared
 *
 * @return    None
 *
 * <b>Reentrant: NO </b><BR>
 *
 ******************************************************************************/
void UART001_ClearFlag
(
  const UART001_HandleType* Handle,
  UART001_FlagStatusType Flag
)
{

  USIC_CH_TypeDef* UartRegs = Handle->UartRegs;
  
  /* <<<DD_UART001_API_8>>>*/
  if(Flag <= UART001_ALT_REC_IND_FLAG)
  {
    UartRegs->PSCR  |= ((uint32_t)SHIFT_ONE << (uint32_t)Flag);    
  }
  else if(Flag <= UART001_FIFO_ALTRECV_BUF_FLAG)
  {
    UartRegs->TRBSCR  |= ((uint32_t)SHIFT_ONE << \
                 ((uint32_t)Flag - (uint32_t)UART001_FIFO_STD_RECV_BUF_FLAG)); 
  }
  else
  {
    UartRegs->TRBSCR  |= ((uint32_t)SHIFT_ONE << \
               (((uint32_t)Flag - (uint32_t)UART001_FIFO_STD_RECV_BUF_FLAG) + \
                                                       UART001_FLAG_OFFSET ));
  }  
  
}
/**
 * @endcond
 */
/*CODE_BLOCK_END*/ 
