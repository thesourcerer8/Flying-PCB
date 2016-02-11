/*CODE_BLOCK_BEGIN[CLK001.c]*/

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
** PLATFORM : Infineon XMC4000 Series                                         **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR   : App Developer                                                   **
**                                                                            **
** MAY BE CHANGED BY USER [Yes/No]: Yes                                       **
**                                                                            **
** MODIFICATION DATE : Aug 21, 2013                                           **
**                                                                            **
*******************************************************************************/
/**
 * @file   CLK001.c
 *
 * @brief  SCU_Clock_CLK001 App
 *         
 *  CLK001 App is a singleton app which is used by all applications to configure 
 *  the PLL as well as enable the Clock of Peripheral Units.
 
 * Revision History
 * 12 Dec 2012   v1.0.1   modified to take care java.utils and base code updates
 * 18 Mar 2013   v1.0.30  modified to limit maximum frequency 48MHz for XMC42xx
 * 21 Aug 2013   v1.0.34  Static and configuration code separated. 
 * 05 Nov 2013   v1.0.38  Macro name changed from CLK001_CLK001_WDTCLK_EN to 
                          CLK001_WDTCLK_EN. 
 *
 */

/*******************************************************************************
**                      Author(s) Identity                                    **
********************************************************************************
**                                                                            **
** Initials     Name                                                          **
** ---------------------------------------------------------------------------**
** ES           App Developer                                                 **
*******************************************************************************/

/*******************************************************************************
 ** INCLUDE FILES                                                             **
 ******************************************************************************/
/** Inclusion of header file */
#include "../../inc/CLK001/CLK001.h"

/*******************************************************************************
**                      Private Macro Definitions                             **
*******************************************************************************/
/*********************************************************/
/* Macros for Delay function  */
/*********************************************************/
/* delay values used in the below calculation
these are to be used with the delay function defined in this file
they are approximate values based on measurement*/
#define CLK001_DELAY_CNT_50US_50MHZ        100UL
#define CLK001_DELAY_CNT_50US_90MHZ        150UL
#define CLK001_DELAY_CNT_8US_50MHZ         10UL
#define CLK001_LOOP_CNT_150MS              18000UL /*150ms / 8us*/

/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/

/*******************************************************************************
**                 Private Function Declarations:
*******************************************************************************/
static void CLK001_Delay(uint32_t time_1);

#ifdef CLK001_OSC_ULP_USED
static void CLK001_OSCULP_Init(void);
#endif

#ifdef CLK001_EXTCLKOUT_EN
static void CLK001_ExtClk_Init(void);
#endif

static uint32_t CLK001_SysClk_Valid(void);
static uint32_t CLK001_SysClk_Init(void);

#ifdef CLK001_USBCLK_EN
static uint32_t	CLK001_USBClk_Valid(void);
static uint32_t	CLK001_USBClk_Init(void);
#endif

#ifdef CLK001_CCUCLK_EN
static void CLK001_CCUClk_Init(void);
#endif

#if (UC_SERIES == XMC45)
  #ifdef CLK001_EBUCLK_EN
static void CLK001_EBUClk_Init(void);
  #endif
  #ifdef CLK001_MMCCLK_EN
static void CLK001_MMCClk_Init(void);
  #endif
#endif

#ifdef CLK001_WDTCLK_EN
static void CLK001_WDTClk_Init(void);   
#endif

#ifdef CLK001_RTCCLK_EN
static void CLK001_RTCClk_Init(void);
#endif

/*******************************************************************************
**                      Extern Declarations                                   **
*******************************************************************************/
extern void SystemCoreClockUpdate(void);
/*******************************************************************************
**                      Global Variable Definitions                           **
*******************************************************************************/
#if((CLK001_CLOCK_SYS_SRC == CLK001_CLOCK_SRC_PLL) && \
    (CLK001_CLOCK_PLL_MODE == CLK001_CLOCK_PLL_NORMAL))
  static uint32_t VCO; 
  static uint32_t stepping_K2DIV;
#endif
/*******************************************************************************
**                      Private Constant Definitions                          **
*******************************************************************************/

/*******************************************************************************
**                 Function like macro definitions                            **
*******************************************************************************/

/*******************************************************************************
**                      Private Function Definitions                          **
*******************************************************************************/
/**
  * @brief  Function to delay  
  * @note   -  
  * @param  number of loops
  * @retval None
  */
static void CLK001_Delay(uint32_t time_1)
{
  volatile uint32_t i;
  for(i=0UL; i < time_1;i++)
  {
    __NOP();__NOP();__NOP();__NOP();
  }
}

#ifdef CLK001_OSC_ULP_USED
static void CLK001_OSCULP_Init(void)
{
  /*enable OSCUL*/
  while (SCU_GENERAL->MIRRSTS & SCU_GENERAL_MIRRSTS_OSCULCTRL_Msk)
  {}
  SCU_HIBERNATE->OSCULCTRL &= (uint32_t)~SCU_HIBERNATE_OSCULCTRL_MODE_Msk;
      
  /*now check if the clock is OK using OSCULP Oscillator Watchdog (ULPWDG)*/
  /*enable OSCULP WDG Alarm Enable*/
  while (SCU_GENERAL->MIRRSTS & SCU_GENERAL_MIRRSTS_HDCR_Msk)
  {}
  SCU_HIBERNATE->HDCR |= (uint32_t)SCU_HIBERNATE_HDCR_ULPWDGEN_Msk;

  /*wait now for clock is stable */
  do
  {
    while (SCU_GENERAL->MIRRSTS & SCU_GENERAL_MIRRSTS_HDCLR_Msk)
    {}
    SCU_HIBERNATE->HDCLR |= (uint32_t)SCU_HIBERNATE_HDCLR_ULPWDG_Msk;
    /*insert ~50us delay @ maximum back up clock freq */
    CLK001_Delay(CLK001_DELAY_CNT_50US_50MHZ); 
  } while ((SCU_HIBERNATE->HDSTAT & SCU_HIBERNATE_HDSTAT_ULPWDG_Msk) ==
            SCU_HIBERNATE_HDSTAT_ULPWDG_Msk); 
  while (SCU_GENERAL->MIRRSTS & SCU_GENERAL_MIRRSTS_HDCLR_Msk)
  {}
  SCU_HIBERNATE->HDCLR |= (uint32_t)SCU_HIBERNATE_HDCLR_ULPWDG_Msk;
}
#endif

#ifdef CLK001_EXTCLKOUT_EN
/**
  * @brief  Function to setup the external clock pin based on UI configuration 
  * @note   -  
  * @param  None
  * @retval None
  */
static void CLK001_ExtClk_Init(void)
{    
  /* Select the External clock to be observed on Pin and
     configure the divide value for PLL clock output(if opted)*/
  SCU_CLK->EXTCLKCR = ((CLK001_EXTCLK_SEL) | ((uint32_t)(CLK001_EXTCLK_PLLDIV << 
                        SCU_CLK_EXTCLKCR_ECKDIV_Pos)));

  /*Select Driver mode for the external clock pin*/                    
  WR_REG_SIZE (CLK001_EXTCLK_PORT_REG, CLK001_EXTCLK_PAD_MASK, CLK001_EXTCLK_PAD_POS,
          CLK001_EXTCLK_PDR_VAL, 32);
}
#endif

/**
  * @brief  Function to check PLL is switched ON 
  * @note   -  
  * @param  None
  * @retval PASS/FAIL
  */
static uint32_t CLK001_SysClk_Valid(void)
{
  uint32_t MAIN_clock_status = 1UL;

  /* check if PLL is switched on */
  if((SCU_PLL->PLLCON0 & (SCU_PLL_PLLCON0_VCOPWD_Msk | 
      SCU_PLL_PLLCON0_PLLPWD_Msk))!= 0UL)
  {
    MAIN_clock_status=0UL;
  }
  return(MAIN_clock_status);
}

static void CLK001_BackupClkTrim (void)
{
  #if ((CLK001_TRIM_OPTION == CLK001_CLOCK_TRIM_AUTOMATIC) && \
       (CLK001_STANDBY_CLOCK == CLK001_HIB_CLOCK_FOSI))
  {
    /* check if HIB Domain enabled  */
    if((SCU_POWER->PWRSTAT & SCU_POWER_PWRSTAT_HIBEN_Msk) == 0UL)
    {
      /*enable Hibernate domain*/
      SCU_POWER->PWRSET |= (uint32_t)SCU_POWER_PWRSET_HIB_Msk;
    }

    /* check if HIB Domain is not in reset state  */
    if ((SCU_RESET->RSTSTAT & SCU_RESET_RSTSTAT_HIBRS_Msk) != 0UL)
    {
	    /*de-assert hibernate reset*/
      SCU_RESET->RSTCLR |= (uint32_t)SCU_RESET_RSTCLR_HIBRS_Msk;
    }

    SCU_PLL->PLLCON0 &= (uint32_t)~SCU_PLL_PLLCON0_FOTR_Msk;
    /*insert ~50us delay @ maximum back up clock freq */
    CLK001_Delay(CLK001_DELAY_CNT_50US_50MHZ);
    SCU_PLL->PLLCON0 |= (uint32_t)SCU_PLL_PLLCON0_AOTREN_Msk;
  }
  #elif((CLK001_TRIM_OPTION == CLK001_CLOCK_TRIM_AUTOMATIC) && \
        (CLK001_STANDBY_CLOCK == CLK001_HIB_CLOCK_OSCULP))
  {
    /* check for HIB Domain enabled  */
    if((SCU_POWER->PWRSTAT & SCU_POWER_PWRSTAT_HIBEN_Msk) == 0UL)
    {
      /*enable Hibernate domain*/
      SCU_POWER->PWRSET |= (uint32_t)SCU_POWER_PWRSET_HIB_Msk;
    }

    /* check for HIB Domain is not in reset state  */
    if ((SCU_RESET->RSTSTAT & SCU_RESET_RSTSTAT_HIBRS_Msk) != 0UL)
    {
      /*de-assert hibernate reset*/
      SCU_RESET->RSTCLR |= (uint32_t)SCU_RESET_RSTCLR_HIBRS_Msk;
    }

    /*check OSCUL if running correct*/
    if ((SCU_HIBERNATE->OSCULCTRL & SCU_HIBERNATE_OSCULCTRL_MODE_Msk) != 0UL)
    {
      CLK001_OSCULP_Init(); /* select OSCUL clock for RTC*/
      while (SCU_GENERAL->MIRRSTS & SCU_GENERAL_MIRRSTS_HDCR_Msk)
      {}
      SCU_HIBERNATE->HDCR |= (uint32_t)SCU_HIBERNATE_HDCR_RCS_Msk;
    }              
      
    /* now OSCULP is running and can be used*/
    while (SCU_GENERAL->MIRRSTS & SCU_GENERAL_MIRRSTS_HDCR_Msk)
    {}
    
    SCU_HIBERNATE->HDCR  |= (uint32_t)SCU_HIBERNATE_HDCR_STDBYSEL_Msk;
    SCU_PLL->PLLCON0 &= (uint32_t)~SCU_PLL_PLLCON0_FOTR_Msk;
    
    /*insert ~50us delay @ maximum back up clock freq */
    CLK001_Delay(CLK001_DELAY_CNT_50US_50MHZ);
    SCU_PLL->PLLCON0 |= (uint32_t)SCU_PLL_PLLCON0_AOTREN_Msk;
  }
  #else /*trimming option is factory trimming*/
  {
    SCU_PLL->PLLCON0 |= (uint32_t)SCU_PLL_PLLCON0_FOTR_Msk;
  }
  #endif /*end of trimming options*/
}

#if (CLK001_CLOCK_SYS_SRC == CLK001_CLOCK_SRC_PLL)
static uint32_t CLK001_SetMainPLLClkSrc(void)
{
  uint32_t Return_status;
  Return_status = 1UL;
  #if(((CLK001_CLOCK_SYS_SRC == CLK001_CLOCK_SRC_PLL) && \
       (CLK001_CLOCK_PLL_MODE == CLK001_CLOCK_PLL_PRESCALER) && \
       (CLK001_PLL_CLOCK_INPUT != CLK001_CLOCK_BACK_UP_CLOCK))|| \
      ((CLK001_CLOCK_SYS_SRC == CLK001_CLOCK_SRC_PLL) && \
       (CLK001_CLOCK_PLL_MODE == CLK001_CLOCK_PLL_NORMAL) && \
       (CLK001_PLL_CLOCK_INPUT != CLK001_CLOCK_BACK_UP_CLOCK)))
    uint32_t timeout_count;
  #endif
  
  /* enable PLL first */
  SCU_PLL->PLLCON0 &= (uint32_t)~(SCU_PLL_PLLCON0_VCOPWD_Msk | 
                                  SCU_PLL_PLLCON0_PLLPWD_Msk);

  /*if crystal or external digital input for PLL input*/
  #if ((CLK001_PLL_CLOCK_INPUT == CLK001_CLOCK_CRYSTAL)||\
       (CLK001_PLL_CLOCK_INPUT == CLK001_CLOCK_EXT_CLOCK))
  {
    /************************************************************************/
    /*    Use external crystal or digital input for PLL clock input         */
    /************************************************************************/ 
    /* Enable OSC_HP if not already on */
    if ((SCU_OSC->OSCHPCTRL & SCU_OSC_OSCHPCTRL_MODE_Msk) != 
        ((uint32_t)CLK001_OSC_HP_MODE << SCU_OSC_OSCHPCTRL_MODE_Pos))
    {
      /*The OSC HP mode is guaranteed to  be = 11b at this point
       * so we can just clear the bit(s) as per the selected mode
       */
      SCU_OSC->OSCHPCTRL &= (((uint32_t)(~SCU_OSC_OSCHPCTRL_MODE_Msk)) | 
           ((uint32_t)CLK001_OSC_HP_MODE << SCU_OSC_OSCHPCTRL_MODE_Pos));

      /* setup OSC WDG divider - at this point the bitfield would be 0
         hence we can OR with the desired value*/
      SCU_OSC->OSCHPCTRL |= ((uint32_t)((CLK001_CLOCK_CRYSTAL_FREQUENCY /
                     CLK001_SOSCWDG_FREF)-1UL) << SCU_OSC_OSCHPCTRL_OSCVAL_Pos);
      /* select external OSC as PLL input */
      SCU_PLL->PLLCON2 &= (uint32_t)~SCU_PLL_PLLCON2_PINSEL_Msk;
      /* restart OSC Watchdog */
      SCU_PLL->PLLCON0 &= (uint32_t)~SCU_PLL_PLLCON0_OSCRES_Msk;

      /* approximate loop count for 150ms @ max untrimmed Backup clock freq*/
      timeout_count = CLK001_LOOP_CNT_150MS; 
      do 
      {
        /* time out after ~150ms  */
        CLK001_Delay(CLK001_DELAY_CNT_8US_50MHZ);
        timeout_count--;
      }while((((SCU_PLL->PLLSTAT) & CLK001_PLLSTAT_OSC_USABLE_MASK) != 
                CLK001_PLLSTAT_OSC_USABLE_MASK) && (timeout_count !=0UL));

      if (((SCU_PLL->PLLSTAT) & CLK001_PLLSTAT_OSC_USABLE_MASK) != 
            CLK001_PLLSTAT_OSC_USABLE_MASK)
      {
        /* Return Error */
      	Return_status = 0UL;
      }
    }
  }
  #else /*PLL clock source is back up clock */
  {
    /*select Backup Clock as input to PLL*/
    SCU_PLL->PLLCON2 |= (uint32_t)SCU_PLL_PLLCON2_PINSEL_Msk;
  }
  #endif /*end of PLL clock source check */

  return Return_status;
}

static uint32_t CLK001_ConfigMainPLL (void)
{
  uint32_t Return_status;
  Return_status = 1UL;
  #if(((CLK001_CLOCK_SYS_SRC == CLK001_CLOCK_SRC_PLL) && \
       (CLK001_CLOCK_PLL_MODE == CLK001_CLOCK_PLL_PRESCALER) && \
       (CLK001_PLL_CLOCK_INPUT != CLK001_CLOCK_BACK_UP_CLOCK))|| \
      ((CLK001_CLOCK_SYS_SRC == CLK001_CLOCK_SRC_PLL) && \
       (CLK001_CLOCK_PLL_MODE == CLK001_CLOCK_PLL_NORMAL)))
    uint32_t timeout_count;
  #endif

  /**************************************************************************/
  /*   Setup and lock the main PLL (PLL is in normal mode)                  */
  /**************************************************************************/
  #if ((CLK001_CLOCK_SYS_SRC == CLK001_CLOCK_SRC_PLL) && \
       (CLK001_CLOCK_PLL_MODE == CLK001_CLOCK_PLL_NORMAL))
  {
    if ((SCU_PLL->PLLSTAT & SCU_PLL_PLLSTAT_VCOLOCK_Msk)!= 
	       SCU_PLL_PLLSTAT_VCOLOCK_Msk)
    {
      /* System is still running from Backup clock */ 
      /*Calculation for stepping*/
      #if((CLK001_PLL_CLOCK_INPUT == CLK001_CLOCK_CRYSTAL)||\
          (CLK001_PLL_CLOCK_INPUT == CLK001_CLOCK_EXT_CLOCK))
      {
        VCO = (CLK001_CLOCK_CRYSTAL_FREQUENCY/ 
              (CLK001_PLL_PDIV+1UL))*(CLK001_PLL_NDIV+1UL);
      }
      #else /*PLL clock source is back up clock in normal mode*/
      {
        VCO = (CLK001_CLOCK_BACK_UP/(CLK001_PLL_PDIV+1UL))*(CLK001_PLL_NDIV+1UL);
      }
      #endif /*End of PLL clock source check in normal mode*/

      stepping_K2DIV = (VCO/CLK001_PLL_FREQ_STEP1)-1UL;
           
      /* Go to bypass the Main PLL */
      SCU_PLL->PLLCON0 |= (uint32_t)SCU_PLL_PLLCON0_VCOBYP_Msk;
      /* disconnect Oscillator from PLL */
      SCU_PLL->PLLCON0 |= (uint32_t)SCU_PLL_PLLCON0_FINDIS_Msk;
      /* Setup divider settings for main PLL */
      SCU_PLL->PLLCON1 =(((uint32_t)CLK001_PLL_K1DIV) | 
               ((uint32_t)CLK001_PLL_NDIV<<SCU_PLL_PLLCON1_NDIV_Pos) | 
               ((uint32_t)stepping_K2DIV<<SCU_PLL_PLLCON1_K2DIV_Pos) | 
               ((uint32_t)CLK001_PLL_PDIV<<SCU_PLL_PLLCON1_PDIV_Pos));
      /* Set OSCDISCDIS */
      SCU_PLL->PLLCON0 |= (uint32_t)SCU_PLL_PLLCON0_OSCDISCDIS_Msk;
      /* connect Oscillator to PLL */
      SCU_PLL->PLLCON0 &= (uint32_t)~SCU_PLL_PLLCON0_FINDIS_Msk;
      /* restart PLL Lock detection */
      SCU_PLL->PLLCON0 |= (uint32_t)SCU_PLL_PLLCON0_RESLD_Msk;
      /* wait for PLL Lock */
      /* Timeout for wait loop ~150ms */
      /*approximate loop count for 150ms @ Backup Clock freq*/
      timeout_count = CLK001_LOOP_CNT_150MS;
      do
      {
        CLK001_Delay(CLK001_DELAY_CNT_8US_50MHZ);  /*~8us Delay*/
        timeout_count--;
      } while (((SCU_PLL->PLLSTAT & SCU_PLL_PLLSTAT_VCOLOCK_Msk)!= 
		             SCU_PLL_PLLSTAT_VCOLOCK_Msk)&& (timeout_count !=0UL));

      if ((SCU_PLL->PLLSTAT & SCU_PLL_PLLSTAT_VCOLOCK_Msk)== 
           SCU_PLL_PLLSTAT_VCOLOCK_Msk)
      {
        /* Disable bypass- put PLL clock back */
        SCU_PLL->PLLCON0 &= (uint32_t)~SCU_PLL_PLLCON0_VCOBYP_Msk;
      }
      else
      {
        Return_status =0UL;
      }
    }
  }
  #endif /*end of setting PLL is in Normal mode - first frequency stepping*/

  /**************************************************************************/
  /*   Setup main PLL (PLL is in prescaler mode)                            */
  /**************************************************************************/
  #if ((CLK001_CLOCK_SYS_SRC == CLK001_CLOCK_SRC_PLL) && \
       (CLK001_CLOCK_PLL_MODE == CLK001_CLOCK_PLL_PRESCALER))
  {
    /* Program PLL for Prescaler mode*/
    SCU_PLL->PLLCON0 |= (SCU_PLL_PLLCON0_VCOBYP_Msk|SCU_PLL_PLLCON0_VCOPWD_Msk);
    /* wait for Prescaler mode to be entered*/
    while ((SCU_PLL->PLLSTAT & SCU_PLL_PLLSTAT_VCOBYST_Msk)!= 
	          SCU_PLL_PLLSTAT_VCOBYST_Msk)
    {}

    /* Choose fOSC as an input to K1divider*/
    #if((CLK001_PLL_CLOCK_INPUT == CLK001_CLOCK_CRYSTAL)|| \
        (CLK001_PLL_CLOCK_INPUT == CLK001_CLOCK_EXT_CLOCK))
    {
      SCU_PLL->PLLCON2 &= (uint32_t)~SCU_PLL_PLLCON2_K1INSEL_Msk;
    }
    #else /*Input to K1 divider is back up clock*/
    {
      SCU_PLL->PLLCON2 |= (uint32_t)SCU_PLL_PLLCON2_K1INSEL_Msk;
    }
    #endif /*end of input selection for K1 divider*/

    /* Setup K1 divider for main PLL */
    SCU_PLL->PLLCON1 = CLK001_PLL_K1DIV;
  }
  #endif /*end of Prescaler mode settings*/

  return Return_status;
}

static uint32_t CLK001_FreqStepupMainPLL(void)
{
  uint32_t Return_status;
  Return_status = 1UL;
	  
  /***************************************************************************/
	/*   Frequency stepping for main PLL (PLL is in normal mode)               */
	/***************************************************************************/
	#if ((CLK001_CLOCK_SYS_SRC == CLK001_CLOCK_SRC_PLL) && \
	     (CLK001_CLOCK_PLL_MODE == CLK001_CLOCK_PLL_NORMAL))
	{
	  /* Reset OSCDISCDIS */
	  SCU_PLL->PLLCON0 &= (uint32_t)~SCU_PLL_PLLCON0_OSCDISCDIS_Msk;

    #if((CLK001_PLL_CLOCK_INPUT == CLK001_CLOCK_CRYSTAL)|| \
        (CLK001_PLL_CLOCK_INPUT == CLK001_CLOCK_EXT_CLOCK))
    {
      VCO = (CLK001_CLOCK_CRYSTAL_FREQUENCY/ 
            (CLK001_PLL_PDIV+1UL))*(CLK001_PLL_NDIV+1UL);
    }
    #else /*PLL clock source is back up clock in normal mode*/
    {
      VCO = (CLK001_CLOCK_BACK_UP/(CLK001_PLL_PDIV+1UL))*(CLK001_PLL_NDIV+1UL);
    }
    #endif

	  /*********************************************************
	  here the ramp up of the system clock to FSys < 60MHz
	  *********************************************************/
	  #if (CLK001_CLOCK_FSYS > CLK001_PLL_FREQ_STEP2)
	  {
	    /*********************************************************/
	    /* Delay for next K2 step ~50µs */
	    /*********************************************************/
	    CLK001_Delay(CLK001_DELAY_CNT_50US_50MHZ); /*~50us Backup clock*/

	    /*calculation for stepping*/
	    stepping_K2DIV = (VCO/CLK001_PLL_FREQ_STEP2)-1UL;

	    /*Setup divider settings for main PLL */
	    SCU_PLL->PLLCON1 =(((uint32_t)CLK001_PLL_K1DIV) | 
	               ((uint32_t)CLK001_PLL_NDIV<<SCU_PLL_PLLCON1_NDIV_Pos)|
	               ((uint32_t)stepping_K2DIV<<SCU_PLL_PLLCON1_K2DIV_Pos)|
	               ((uint32_t)CLK001_PLL_PDIV<<SCU_PLL_PLLCON1_PDIV_Pos));
	  }
	  #endif /*end of check - if PLL target frequency is greater than 60 MHz*/

	  /*********************************************************
	  here the ramp up of the system clock to FSys < 90MHz
	  *********************************************************/
	  #if (CLK001_CLOCK_FSYS > CLK001_PLL_FREQ_STEP3)
	  {
	    /*********************************************************/
	    /* Delay for next K2 step ~50us */
	    /*********************************************************/
	    CLK001_Delay(CLK001_DELAY_CNT_50US_50MHZ); /*~50?s @ 60MHz clock*/

	    /* calculation for stepping*/
	    stepping_K2DIV = (VCO/CLK001_PLL_FREQ_STEP3)-1UL;

	    /* Setup Divider settings for main PLL */

	    SCU_PLL->PLLCON1 = (((uint32_t)CLK001_PLL_K1DIV) | 
	               ((uint32_t)CLK001_PLL_NDIV<<SCU_PLL_PLLCON1_NDIV_Pos)|
	               ((uint32_t)stepping_K2DIV<<SCU_PLL_PLLCON1_K2DIV_Pos)| 
	               ((uint32_t)CLK001_PLL_PDIV<<SCU_PLL_PLLCON1_PDIV_Pos));
	  }
	  #endif /*end of check if PLL target frequency is more than 90 MHz*/

	  /*********************************************************/
	  /* Delay for next K2 step ~50µs */
	  /*********************************************************/
    CLK001_Delay(CLK001_DELAY_CNT_50US_90MHZ); /*~50us @ 90 MHz clock*/

    /* Setup Divider settings for main PLL */
	  SCU_PLL->PLLCON1 = (((uint32_t)CLK001_PLL_K1DIV) | 
	            ((uint32_t)CLK001_PLL_NDIV<<SCU_PLL_PLLCON1_NDIV_Pos)  | 
	            ((uint32_t)CLK001_PLL_K2DIV<<SCU_PLL_PLLCON1_K2DIV_Pos)| 
	            ((uint32_t)CLK001_PLL_PDIV<<SCU_PLL_PLLCON1_PDIV_Pos));

	  if((((SCU_PLL->PLLCON1 & SCU_PLL_PLLCON1_PDIV_Msk)>>SCU_PLL_PLLCON1_PDIV_Pos) != CLK001_PLL_PDIV) || \
	       (((SCU_PLL->PLLCON1 & SCU_PLL_PLLCON1_NDIV_Msk)>>SCU_PLL_PLLCON1_NDIV_Pos) != CLK001_PLL_NDIV) || \
	       (((SCU_PLL->PLLCON1 & SCU_PLL_PLLCON1_K1DIV_Msk)>>SCU_PLL_PLLCON1_K1DIV_Pos) != CLK001_PLL_K1DIV) || \
	       (((SCU_PLL->PLLCON1 & SCU_PLL_PLLCON1_K2DIV_Msk)>>SCU_PLL_PLLCON1_K2DIV_Pos) != CLK001_PLL_K2DIV))
	  {
	    Return_status =0U;
	  }

	  /* clear request for System OCS Watchdog Trap and System VCO Lock Trap  */
	  SCU_TRAP->TRAPCLR = SCU_TRAP_TRAPCLR_SOSCWDGT_Msk |
	                      SCU_TRAP_TRAPCLR_SVCOLCKT_Msk;
	}/*end PLL frequency stepping...*/
	#endif /*end of PLL frequency stepping in case of PLL normal mode*/

  return Return_status;
}
#endif

/**
  * @brief  Function to initialize the Main Clock based on UI configuration 
  * @note   -  
  * @param  None
  * @retval PASS/FAIL
  */
static uint32_t CLK001_SysClk_Init(void)
{
	uint32_t Return_status = 1UL;

  /*Back up clock trimming*/
  CLK001_BackupClkTrim();

  /*insert ~50us delay @ maximum back up clock freq after trimming is enabled*/
  CLK001_Delay(CLK001_DELAY_CNT_50US_50MHZ);

  /*Select system clock = back up clock (is the default configuration anyway)*/
  #if (CLK001_CLOCK_SYS_SRC == CLK001_CLOCK_SRC_BACKUP)
  {
    SCU_CLK->SYSCLKCR &= (uint32_t)~(SCU_CLK_SYSCLKCR_SYSSEL_Msk);
  }
  /*system clock = PLL */
  #else/*(CLK001_CLOCK_SYS_SRC == CLK001_CLOCK_SRC_PLL)*/
  {
	/* Select PLL Clock source: External Crystal Oscillator or External Digital
	 Clock Backup Clock */
	Return_status = CLK001_SetMainPLLClkSrc();
	/* Configure a PLL clock */
	Return_status = CLK001_ConfigMainPLL();

	/* Switch system clock to PLL */
    SCU_CLK->SYSCLKCR |=  (CLK001_CLOCK_SRC_PLL << SCU_CLK_SYSCLKCR_SYSSEL_Pos);
  }/* end of PLL configuration if PLL is the system clock (but it is pending 
      frequency stepping to the target frequency) */
  #endif /*end of system clock selection - PLL Vs. Back up clock*/
  
	/*******************************************************************
	Before scaling to final frequency we need to setup the clock dividers 
	*******************************************************************/
  /* Setup PB Clock Divider */
  #if (CLK001_PBCLKDIV_EN == 1)
  {
    SCU_CLK->PBCLKCR |= (uint32_t)SCU_CLK_PBCLKCR_PBDIV_Msk;
  }
  #endif

  /* Setup CPU Clock Divider */
  #if (CLK001_CPUCLKDIV_EN == 1)
	  SCU_CLK->CPUCLKCR |= (uint32_t)SCU_CLK_CPUCLKCR_CPUDIV_Msk;
  #endif

  /* Setup CCU Clock Divider */
  #if ((CLK001_CCUCLK_EN==1) && (CLK001_CCUCLKDIV_EN))
	  SCU_CLK->CCUCLKCR |= (uint32_t)SCU_CLK_CCUCLKCR_CCUDIV_Msk;
  #endif

  /* Set WDT Clock divide value */
  #ifdef CLK001_WDTCLK_EN
	  SCU_CLK->WDTCLKCR |= CLK001_WDTCLKDIV;
  #endif

  /* Set EBU Clock divide value */
  #if (UC_SERIES == XMC45)
    #ifdef CLK001_EBUCLK_EN
	    SCU_CLK->EBUCLKCR |= CLK001_EBU_CLKDIV;
    #endif
  #endif

#if (CLK001_CLOCK_SYS_SRC == CLK001_CLOCK_SRC_PLL)
	  /* PLL frequency stepping...*/
  Return_status = CLK001_FreqStepupMainPLL();
#endif

  /*return success*/
  return Return_status;
}

#ifdef CLK001_USBCLK_EN
/**
  * @brief  Function to check current USB Clock setting based on UI 
            configuration 
  * @note   -  
  * @param  None
  * @retval PASS/FAIL
  */
static uint32_t	CLK001_USBClk_Valid(void)
{
  uint32_t USB_clock_status = 1UL;
  /* check if PLL is switched on */
  if((SCU_PLL->USBPLLCON &(SCU_PLL_USBPLLCON_VCOPWD_Msk | 
                           SCU_PLL_USBPLLCON_PLLPWD_Msk)) != 0UL)
  {
    USB_clock_status=0UL;
  }

  return(USB_clock_status);
}

/**
  * @brief  Function to initialize the USB Clock based on UI configuration 
  * @note   -  
  * @param  None
  * @retval PASS/FAIL
  */
static uint32_t	CLK001_USBClk_Init(void)
{
  uint32_t timeout_count;
  uint32_t Return_status = 1UL;
  /* enable USB PLL first */
  SCU_PLL->USBPLLCON &= (uint32_t)~(SCU_PLL_USBPLLCON_VCOPWD_Msk | 
                         SCU_PLL_USBPLLCON_PLLPWD_Msk);

  /* check and if not already running enable OSC_HP */
  if ((SCU_OSC->OSCHPCTRL & SCU_OSC_OSCHPCTRL_MODE_Msk) != 
     ((uint32_t)CLK001_OSC_HP_MODE << SCU_OSC_OSCHPCTRL_MODE_Pos))
  {
    /* check if Main PLL is switched on for OSC WD*/
    if ((SCU_PLL->PLLCON0 &(SCU_PLL_PLLCON0_VCOPWD_Msk | 
        SCU_PLL_PLLCON0_PLLPWD_Msk)) != 0UL)
    {
      /* enable PLL first */
      SCU_PLL->PLLCON0 &= (uint32_t)~(SCU_PLL_PLLCON0_VCOPWD_Msk | 
                                      SCU_PLL_PLLCON0_PLLPWD_Msk);
    }

    /*The OSC HP mode is guaranteed to  be = 11b at this point
    * so we can just clear the bit(s) as per the selected mode
    */
    SCU_OSC->OSCHPCTRL &= (((uint32_t)(~(uint32_t)SCU_OSC_OSCHPCTRL_MODE_Msk)) |
       ((uint32_t)CLK001_OSC_HP_MODE << SCU_OSC_OSCHPCTRL_MODE_Pos));
   
    /* setup OSC WDG Divider */
    SCU_OSC->OSCHPCTRL|= ((uint32_t)((CLK001_CLOCK_CRYSTAL_FREQUENCY/
                      CLK001_SOSCWDG_FREF)-1UL) <<SCU_OSC_OSCHPCTRL_OSCVAL_Pos);
   
    /* restart OSC Watchdog */
    SCU_PLL->PLLCON0 &= (uint32_t)~SCU_PLL_PLLCON0_OSCRES_Msk;  

     /* Timeout for wait loo ~150ms */
    /********************************/	  
    /*approximate loop count for 150ms @ Backup Clock freq*/
    timeout_count = CLK001_LOOP_CNT_150MS;
    do
    {
      CLK001_Delay(CLK001_DELAY_CNT_8US_50MHZ);  /*~8us Delay*/
      timeout_count--;
    }while((((SCU_PLL->PLLSTAT) & CLK001_PLLSTAT_OSC_USABLE_MASK) != 
          CLK001_PLLSTAT_OSC_USABLE_MASK) && (timeout_count !=0UL));

    if (((SCU_PLL->PLLSTAT) & CLK001_PLLSTAT_OSC_USABLE_MASK) != 
          CLK001_PLLSTAT_OSC_USABLE_MASK)
    {
      Return_status =0UL;/* Return Error */
      while (1)
      {
        /* The Oscillator frequency not usable, 
        therefore the PLL shall not be used */
      }
    }
  }

  /* Setup USB PLL */
  /* Go to bypass the USB PLL */
  SCU_PLL->USBPLLCON |= (uint32_t)SCU_PLL_USBPLLCON_VCOBYP_Msk;
  /* disconnect Oscillator from USB PLL */
  SCU_PLL->USBPLLCON |= (uint32_t)SCU_PLL_USBPLLCON_FINDIS_Msk;
  /* Setup Divider settings for USB PLL */
  SCU_PLL->USBPLLCON =
    (((uint32_t)CLK001_USBPLL_NDIV<<SCU_PLL_USBPLLCON_NDIV_Pos)|
     ((uint32_t)CLK001_USBPLL_PDIV<<SCU_PLL_USBPLLCON_PDIV_Pos));
  /* Setup USBDIV settings USB clock */
  SCU_CLK->USBCLKCR = CLK001_USBDIV;
  /* Set OSCDISCDIS */
  SCU_PLL->USBPLLCON |= (uint32_t)SCU_PLL_USBPLLCON_OSCDISCDIS_Msk;
  /* connect Oscillator to USB PLL */
  SCU_PLL->USBPLLCON &= (uint32_t)~SCU_PLL_USBPLLCON_FINDIS_Msk;
  /* restart PLL Lock detection */
  SCU_PLL->USBPLLCON |= (uint32_t)SCU_PLL_USBPLLCON_RESLD_Msk;

  /* wait for PLL Lock */
  while ((SCU_PLL->USBPLLSTAT & SCU_PLL_USBPLLSTAT_VCOLOCK_Msk)!= 
          SCU_PLL_USBPLLSTAT_VCOLOCK_Msk)
  {}

  /* Enable USB Clock */
  SCU_CLK->CLKSET |= (uint32_t)SCU_CLK_CLKSET_USBCEN_Msk;

  return Return_status;
} 
#endif

#ifdef CLK001_CCUCLK_EN
/**
  * @brief  Function to enable the CCU4 and CCU8 clock 
  * @note   -  
  * @param  None
  * @retval None
  */
  static void CLK001_CCUClk_Init(void){
  /* Enable CCU Clock */
  SCU_CLK->CLKSET |= (uint32_t)SCU_CLK_CLKSET_CCUCEN_Msk;
}
#endif

#if (UC_SERIES == XMC45)
  #ifdef CLK001_EBUCLK_EN
/**
  * @brief  Function to enable the EBU clock 
  * @note   -  
  * @param  None
  * @retval None
  */
static void CLK001_EBUClk_Init(void)
{
  /* Enable EBU Clock */
  SCU_CLK->CLKSET |= (uint32_t)SCU_CLK_CLKSET_EBUCEN_Msk;
}
  #endif

  #ifdef CLK001_MMCCLK_EN
/**
  * @brief  Function to enable the MMC clock 
  * @note   -  
  * @param  None
  * @retval None
  */
static void CLK001_MMCClk_Init(void){
  /* Enable MMC Clock */
  SCU_CLK->CLKSET |= (uint32_t)SCU_CLK_CLKSET_MMCCEN_Msk;
}
  #endif
#endif

#ifdef CLK001_WDTCLK_EN
/**
  * @brief  Function to initialize the WDT clock based on UI configuration
  * @note   -  
  * @param  None
  * @retval None
  */
static void CLK001_WDTClk_Init(void)
{   
  #if (CLK001_WDT_CLKSRC == CLK001_WDTCLK_STANDBY)
  {
    #if (CLK001_STANDBY_CLOCK == CLK001_HIB_CLOCK_OSCULP)
    {
      /* check if HIB Domain enabled  */
      if((SCU_POWER->PWRSTAT & SCU_POWER_PWRSTAT_HIBEN_Msk) == 1UL)
      {
        if ((SCU_HIBERNATE->OSCULCTRL & SCU_HIBERNATE_OSCULCTRL_MODE_Msk)!= 0UL)
        {
          CLK001_OSCULP_Init();
        }
      }      
    /* Select OSC_ULP */
    /*Selecting Standby Clock Source*/
    while (SCU_GENERAL->MIRRSTS & SCU_GENERAL_MIRRSTS_HDCR_Msk)
    {}
    SCU_HIBERNATE->HDCR |= ((1UL << SCU_HIBERNATE_HDCR_STDBYSEL_Pos) & 
                           SCU_HIBERNATE_HDCR_STDBYSEL_Msk);     
    }
    #endif
  }
  #endif
  /* Select the WDT Clock source */
  SCU_CLK->WDTCLKCR = 
      (uint32_t)((uint32_t)CLK001_WDT_CLKSRC << SCU_CLK_WDTCLKCR_WDTSEL_Pos) & 
       SCU_CLK_WDTCLKCR_WDTSEL_Msk;
  /* Enable WDT Clock */
  SCU_CLK->CLKSET |= (uint32_t)SCU_CLK_CLKSET_WDTCEN_Msk;
}
#endif

#ifdef CLK001_RTCCLK_EN
/**
  * @brief  Function to initialize the RTC clock based on UI configuration
  * @note   -  
  * @param  None
  * @retval None
  */
static void CLK001_RTCClk_Init(void)
{
  /*before enabling hibernate domain (if opted), check if it is already enabled.
  we do not repeat the enable if already done*/
  if((SCU_POWER->PWRSTAT & SCU_POWER_PWRSTAT_HIBEN_Msk) == 0UL )
  {
    /* Enable hibernate domain */
    SCU_POWER->PWRSET = (uint32_t)(SCU_POWER_PWRSET_HIB_Msk);
    
    /* Wait until hibernate enable status is set */
    while((SCU_POWER->PWRSTAT & SCU_POWER_PWRSTAT_HIBEN_Msk)!= 
         SCU_POWER_PWRSTAT_HIBEN_Msk)
    {}
  }
  /* check for HIB Domain is not in reset state  */
  if ((SCU_RESET->RSTSTAT & SCU_RESET_RSTSTAT_HIBRS_Msk) != 0UL)
  {
	  /*de-assert hibernate reset*/
    SCU_RESET->RSTCLR |= (uint32_t)SCU_RESET_RSTCLR_HIBRS_Msk; 
  }

  /*RTC Clock Source Selection*/
  #if (CLK001_RTCCLK_EN == 1)
  {
    #if (CLK001_RTC_CLKSRC == CLK001_RTC_CLOCK_OSCULP)
    {
      /*check OSCUL if running correct*/
      if ((SCU_HIBERNATE->OSCULCTRL & SCU_HIBERNATE_OSCULCTRL_MODE_Msk)!= 0UL)
      {
        CLK001_OSCULP_Init();
      }
      /* Select OSC_ULP */
      /*Selecting RTC Clock Source*/
      while (SCU_GENERAL->MIRRSTS & SCU_GENERAL_MIRRSTS_HDCR_Msk)
      {}
      SCU_HIBERNATE->HDCR |= (uint32_t)(((uint32_t)1UL << 
                      SCU_HIBERNATE_HDCR_RCS_Pos) & SCU_HIBERNATE_HDCR_RCS_Msk);
    }
    #elif (CLK001_RTC_CLKSRC == CLK001_RTC_CLOCK_FOSI)
    {
      while (SCU_GENERAL->MIRRSTS & SCU_GENERAL_MIRRSTS_HDCR_Msk)
      {}
      /* Enable internal slow clock */
	    /*Selecting RTC Clock Source*/
      SCU_HIBERNATE->HDCR |= ((0UL << ((uint32_t)SCU_HIBERNATE_HDCR_RCS_Pos)) & 
                         ((uint32_t)SCU_HIBERNATE_HDCR_RCS_Msk)); 
    }
    #endif
  }
  #endif
}
#endif

/*******************************************************************************
**                      Public Function Definitions                           **
*******************************************************************************/
/**
  * @brief  Function to initialize the Clock Tree based on UI configuration
  * @note   -  
  * @param  None
  * @retval None
  */
void CLK001_Init(void)
{
  uint32_t SysClkinitialized;
  SysClkinitialized = 0UL; /* Default Value */
  /*  Function to check the clock status based on UI configuration */
  if(CLK001_SysClk_Valid() == 0UL)
  {   
    /*  Function to initialize the System Clock based on UI configuration */
	  SysClkinitialized |= CLK001_SysClk_Init();
  }

  #ifdef CLK001_USBCLK_EN
  /*  Function to initialize the USB Clock based on UI configuration */     
  if(CLK001_USBClk_Valid() == 0UL)
  {   
  	CLK001_USBClk_Init();
  }
  #endif

  #ifdef CLK001_CCUCLK_EN
    if(SysClkinitialized == 1UL)
    {
      /*  Function to enable the CCU Clock based on UI configuration */
      CLK001_CCUClk_Init();
    }
  #endif

  #if (UC_SERIES == XMC45)
    #ifdef CLK001_EBUCLK_EN
    /*  Function to enable the EBU Clock based on UI configuration */     
    CLK001_EBUClk_Init();
    #endif
    #ifdef CLK001_MMCCLK_EN
      /*  Function to enable the MMC Clock based on UI configuration */
      CLK001_MMCClk_Init();
    #endif
  #endif

  #ifdef CLK001_WDTCLK_EN
    /*  Function to initialize the WDT Clock based on UI configuration */     
    CLK001_WDTClk_Init();   
  #endif

  #ifdef CLK001_RTCCLK_EN
    /*  Function to initialize the RTC Clock based on UI configuration */     
    CLK001_RTCClk_Init();   
  #endif

  #ifdef CLK001_EXTCLKOUT_EN
    /*  Function to initialize the External clock pin */
    CLK001_ExtClk_Init();
  #endif

  /* Update the clock variable */
  SystemCoreClockUpdate();
}

/*
 * This routine is called by CMSIS startup to find out if clock tree setup 
 * should be done by it. This routine is WEAKLY defined in CStart.
 *
 * In the absence of clock app, the weak definition takes precedence which 
 * always permits clock tree setup by CStart.
 *
 * When clock app is defined, this function overrides the CStart definition.
 * Clock tree setup is launched and upon completion, control is ceded back to 
 * CStart.
 *
 * CStart abstains from setting up clock tree and instead proceeds with program
 * loading.
 *
 * Return 0 to disallow CStart from performing clock tree setup.
 */
uint32_t AllowPLLInitByStartup(void)
{
	/*
	 * Let the CStart know that there is no more a need to perform clock tree
	 * initialization.
	 */
	return 0UL;
}
/*CODE_BLOCK_END*/
