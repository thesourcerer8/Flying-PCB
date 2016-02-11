
/*CODE_BLOCK_BEGIN[RTC001.c]*/

/*******************************************************************************
 Copyright (c) 2011-2013, Infineon Technologies AG                            **
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
** NOTE     : Any Changes made to this file will be overwritten during Code   **
**            Generation                                                      **
**                                                                            **
**                                                                            **
*******************************************************************************/
/*******************************************************************************
** Version History:                                                           **
********************************************************************************
** v1.0.22    23 Feb 2013  JP: Ported for XMC4400 and XMC1000 Devices.        **
**                            Conditional consumption of NVIC_SCU,NVIC_SR101  **
**                            Apps based on the device.                       ** 
**                                                                            **
** v1.0.24    20 Mar 2013  JP: Mirror register status check                   **
**                            statements under the functions RTC001_Disable(),**
**                            RTC001_ConfigAlarm() and RTC001_Clock_SetTime() ** 
**                            are maintained uniquely for both XMC4000 and    ** 
**                            XMC1000 devices. DBG002 related bugs(ID22796)   ** 
**                            are fixed. Revision History added.              **
**                                                                            **
** v1.0.26    23 Apr 2013  JP: In Function RTC001_ldatevalid(uint16_t m,      **
**                            uint16_t d,uint16_t y), "Day (d) == 0" is       ** 
**                            checked.                                        **
**                                                                            **
** v1.0.28    09 Sep 2013  JP: XMC1000 Five new SW IDs are supported.         **
**                            RTC001 --> wrong handling of Hibernate register **  
**                            is fixed.                                       **
**                                                                            **
** v1.0.30    16 Oct 2013  JP: Code has been updated in compliant to          **
**                            coding guidelines.                              **                                                                           
**                                                                            **
**                                                                            **
**                                                                            **
**                                                                            **
*******************************************************************************/ 


/**
 * @file RTC001.c
 * 
 *
 * @brief  Real Time Clock App Implementation Source File.
 *
 *                          
 */
 
 
/*******************************************************************************
 ** Include Files:                                                            **
 ******************************************************************************/

/* Inclusion of header file */
#include "../../inc/RTC001/RTC001.h"
#ifdef DAVE_CE
#include "../../inc/RTC001/RTC001_Conf.h"
#endif
  

/*******************************************************************************
** Private Macro Definitions:                                                 **
*******************************************************************************/
/* Define used for APP_GID */
#define APP_GID DBG002_GID_RTC001

/*******************************************************************************
** Private Type Definitions:                                                  **
*******************************************************************************/

/*******************************************************************************
** Private Function Declarations:                                             **
*******************************************************************************/
/*
 * @brief Function to check whether the time is valid
 *
 * @param[in]  Seconds, Minutes and Hour of type uint8_t
 *
 * @return     1 if time is valid, 0 otherwise
 *
 * <b>Reentrant: NO </b><BR>
 *
 */
static uint32_t RTC001_ltimevalid(uint8_t sec, uint8_t min, uint8_t hour);

/*
 * @brief Function to check whether the date is valid
 *   
 * @param[in]  Month, Day and Year of type uint16_t 
 *           
 * @return     1 if date is valid, 0 otherwise 
 *      
 * <b>Reentrant: NO </b><BR>
 *
 */
static uint32_t RTC001_ldatevalid(uint16_t month, uint16_t day, uint16_t year);

/*
 * @brief Function to check whether the year is leap year
 *   
 * @param[in]  Year of type uint16_t 
 *           
 * @return     1 if year is leap year, 0 otherwise 
 *      
 * <b>Reentrant: NO </b><BR>
 *
 */
static uint8_t RTC001_lleapyear(uint16_t year);


/*
 * @brief Function to calculate day of the week
 * 
 * @param[in]  Month, Day and Year of type uint16_t 
 *             
 * @return     Day of week, eg. Monday = 0 etc.
 *      
 * <b>Reentrant: NO </b><BR>
 *
 */
static uint32_t RTC001_lweekday(uint16_t month, uint16_t day, uint16_t year);

/*
 * @brief  Initialization function for the app. Configures the registers
 *         based on options selected in UI.
 *
 * @param[in]  Handle of type RTC001_HandleType
 *
 * @return     None
 *
 * <b>Reentrant: NO </b><BR>
 *
 */
static void  RTC001_lInit(const RTC001_HandleType* Handle);

/*******************************************************************************
** Global Constant Definitions:                                               **
*******************************************************************************/



/*******************************************************************************
** Global Variable Definitions:                                               **
*******************************************************************************/

/*******************************************************************************
** Private Constant Definitions:                                              **
*******************************************************************************/

/* Constant array used to store the number of days in each month */
const uint32_t RTC001_DAYS_IN_MONTH[13] =
{
   /* Index from 1, hence skip 0*/
    0U,
    /*Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec*/
      31U, 28U, 31U, 30U, 31U, 30U, 31U, 31U, 30U, 31U, 30U, 31U
};

/* Constant used for the number of days in an year */
#define RTC001_DAYS_IN_AN_YEAR     (365U)
/* Constant used for the seconds in a day */
#define RTC001_SECONDS_IN_A_DAY    (24U * 60U * 60U)
/* Constant used for the seconds in an hour */
#define RTC001_SECONDS_IN_AN_HOUR  (60U * 60U)
/* Constant used for the seconds in a minute */
#define RTC001_SECONDS_IN_A_MINUTE (60U)
/* Constant used for the epoch year */
#define RTC001_EPOCH_YEAR          (1970U)
/*******************************************************************************
** Function Like Macro Definitions:                                           **
*******************************************************************************/



/*******************************************************************************
** Private Function Definitions:                                              **
*******************************************************************************/
 

/*
 *  Initialization function for the app. Configures the registers
 *  based on options selected in UI.
 */ 

static void  RTC001_lInit(const RTC001_HandleType* Handle)
{
  
  /* Used to store the return status */
  uint32_t status = (uint32_t) RTC001App_SUCCESS;

  /* Used to store the value that needs to be loaded to register */
  uint32_t uRegValue = 0U;

   /* <<<DD_RTC001_API_1>>> */
  DBG002_FUNCTION_ENTRY(APP_GID,RTC001_FUNCTION_ENTRY); 
   	  
  #if (UC_FAMILY == XMC1)
   /* Used for delay */
   uRegValue = 0x3FFU;
  /* To disable gating for RTC : RTC Gating Clear  */
  SCU_CLK->CLKCR =(((uint32_t)uRegValue << (uint32_t)SCU_CLK_CLKCR_CNTADJ_Pos)&\
                  (uint32_t)SCU_CLK_CLKCR_CNTADJ_Msk) | \
	              ((uint32_t)SCU_CLK->CLKCR & \
				  ((uint32_t)~((uint32_t)SCU_CLK_CLKCR_CNTADJ_Msk)));
   SCU_GENERAL->PASSWD = 0x000000C0UL;
   SET_BIT(SCU_CLK->CGATCLR0, SCU_CLK_CGATCLR0_RTC_Pos);
   while(SCU_CLK->CLKCR & SCU_CLK_CLKCR_VDDC2LOW_Msk)
   {}
   SCU_GENERAL->PASSWD = 0x000000C3UL;
   uRegValue = 0U;
  #endif
  
  /* Clear Mirror register update status of RTC registers in SCU*/
  SCU_INTERRUPT->SRCLR = \
      (uint32_t)(SCU_INTERRUPT_SRCLR_RTC_CTR_Msk | \
	   SCU_INTERRUPT_SRCLR_RTC_ATIM0_Msk | SCU_INTERRUPT_SRCLR_RTC_ATIM1_Msk | \
  	   SCU_INTERRUPT_SRCLR_RTC_TIM0_Msk | SCU_INTERRUPT_SRCLR_RTC_TIM1_Msk);
	   
  if ((((RTC->CTR & RTC_CTR_ENB_Msk) >> RTC_CTR_ENB_Pos) == 0U ) || \
     (Handle->RTCInitOnce != RTC001_INITONCE_ENABLE))
  {
     /* <<<DD_RTC001_API_4>>> */
	 /* RTC disabled to set the time */
     status = RTC001_Disable();
     /*Assert status == RTC001App_SUCCESS*/
     DBG002_I(status == RTC001App_SUCCESS);
     /* Calendar time and date set in RTC registers */
     status = RTC001_Clock_SetTime(&timeptr1);
     /*Assert status == RTC001App_SUCCESS*/
     DBG002_I(status == RTC001App_SUCCESS);
  }
  
  /* Wait for Mirror register update */
  while(SCU_GENERAL->MIRRSTS & SCU_GENERAL_MIRRSTS_RTC_CTR_Msk)
  {}
  /* Enable the RTC module */
  RTC->CTR |= (((uint32_t)Handle->RTCEnable) << RTC_CTR_ENB_Pos);
  
  /* Enable interrupt on alarm event  */
  RTC->MSKSR |= (((uint32_t)Handle->RTCAlarmInterrupt) << RTC_MSKSR_MAI_Pos);

  #if (UC_FAMILY == XMC4)
   
   /* Enable RTC alarm interrupt in SCU */
   SCU_INTERRUPT->SRMSK |= (((uint32_t)Handle->RTCAlarmInterrupt) << \
   SCU_INTERRUPT_SRMSK_AI_Pos);   
  
   /*Enable wake up from hibernate mode on an RTC alarm, periodic second,
     minute, hour, day, month and year events	 
   */   
   uRegValue = (((uint32_t)Handle->RTCHibAlarmEvent << RTC_CTR_TAE_Pos) | \
             ((uint32_t)Handle->RTCHibPeriodicSecEvent << RTC_CTR_ESEC_Pos) | \
             ((uint32_t)Handle->RTCHibPeriodicMinEvent << RTC_CTR_EMIC_Pos) | \
			 ((uint32_t)Handle->RTCHibPeriodicHourEvent << RTC_CTR_EHOC_Pos)| \
			 ((uint32_t)Handle->RTCHibPeriodicDayEvent << RTC_CTR_EDAC_Pos) | \
			 ((uint32_t)Handle->RTCHibPeriodicMonthEvent << RTC_CTR_EMOC_Pos)| \
			 ((uint32_t)Handle->RTCHibPeriodicYearEvent << RTC_CTR_EYEC_Pos));
   /**
    * Program Control Register (CTR)
    */
   /* Wait for Mirror register update */
   while(SCU_GENERAL->MIRRSTS & SCU_GENERAL_MIRRSTS_RTC_CTR_Msk)
   {}
   RTC->CTR |= uRegValue;
   
  #endif

   while(SCU_GENERAL->MIRRSTS & SCU_GENERAL_MIRRSTS_RTC_CTR_Msk)
   {}
   /*Configure RTC prescaler*/
   RTC->CTR = (((uint32_t)Handle->DividerValue << (uint32_t)RTC_CTR_DIV_Pos) & \
              (uint32_t)RTC_CTR_DIV_Msk) | \
    	      (RTC->CTR & ((uint32_t)~((uint32_t)RTC_CTR_DIV_Msk)));
					
  /* Reset the variable */
  uRegValue = 0U;
  
  /* Enable periodic seconds, minutes, hours 
	 days, months and years interrupts
   */
  uRegValue =(((uint32_t)Handle->RTCPeriodicSecInterrupt<<RTC_MSKSR_MPSE_Pos)| \
            ((uint32_t)Handle->RTCPeriodicMinInterrupt<<RTC_MSKSR_MPMI_Pos) | \
            ((uint32_t)Handle->RTCPeriodicHourInterrupt<<RTC_MSKSR_MPHO_Pos) | \
			((uint32_t)Handle->RTCPeriodicDayInterrupt<<RTC_MSKSR_MPDA_Pos) | \
			((uint32_t)Handle->RTCPeriodicMonthInterrupt<< RTC_MSKSR_MPMO_Pos)|\
			((uint32_t)Handle->RTCPeriodicYearInterrupt<< RTC_MSKSR_MPYE_Pos));
  /**
   * Program Service Request Mask Register (MSKSR)
   */
  RTC->MSKSR |= uRegValue;

  #if (UC_FAMILY == XMC4)
   /* Enable RTC periodic interrupt in SCU 
    * when any of the periodic interrupts are enabled
    */
   if (uRegValue != 0U)
   {
     SCU_INTERRUPT->SRMSK |= (uint32_t)SCU_INTERRUPT_SRMSK_PI_Msk;       
   }
   /* Register User defined Event Handler for Timer function
    * when user defines the handler name in the UI
    */
   #ifdef RTC001_EVENTTRIGTOSCU
   	if ((Handle->RTC001_PI_Listener != NULL) && (uRegValue != 0U))
	{
     NVIC_SCU001_RegisterCallback(NVIC_SCU001_PI,Handle->RTC001_PI_Listener,0U);
	}
   #endif
  #endif

  #if (UC_FAMILY == XMC1)
   /* Register User defined Event Handler for Timer function
    * when user defines the handler name in the UI
    */
   if ((Handle->RTC001_PI_Listener != NULL) && (uRegValue != 0U))  
   { 
     NVIC_SR101_RegisterCallback(NVIC_SR101_PI,Handle->RTC001_PI_Listener,0U);
   }
  #endif
  
  #ifdef RTC001_ALARMINTERRUPT
   /* Configure RTC alarm and register the call back function */
   status = \
   RTC001_ConfigAlarm(&RTC001_Handle,&Alarmptr1,Handle->RTC001_AI_Listener,0U);
  #endif
  if (status != (uint32_t)RTC001App_SUCCESS)
  {
    DBG002_ERROR(APP_GID, 0, 4,status);
  }
  DBG002_FUNCTION_EXIT(APP_GID,RTC001_FUNCTION_EXIT);
}

/**
 *@}
 */

/*******************************************************************************
**                      Public Function Definitions                           **
*******************************************************************************/


/** @ingroup RTC001_publicparam
 * @{
 */

/*
 *  Initialization function for the app. Configures the registers
 *  based on options selected in UI.
 */
void RTC001_Init(void)
{
	RTC001_lInit(&RTC001_Handle);

}

/*
 *  Deinitialization function which initializes the App internal data
 *  structures to default values. 
 */
void  RTC001_DeInit(void)
{
  DBG002_FUNCTION_ENTRY(APP_GID,RTC001_FUNCTION_ENTRY);
   /* <<<DD_RTC001_API_2>>> */
  /* Wait for Mirror register update */
  while(SCU_GENERAL->MIRRSTS & SCU_GENERAL_MIRRSTS_RTC_CTR_Msk)
  {}
  /* Clear the RTC Control registers */
  RTC->CTR &= (0xFFFF0000U);
  
  /* Clear the Service Request Mask Register */  
  RTC->MSKSR = 0x00000000U;
  
  /* Clear the Clear Service Request Register */ 
  RTC->CLRSR |= 0x0000016FU;
      	
  /* Clear the RTC Time registers */ 
  while((SCU_GENERAL->MIRRSTS & (SCU_GENERAL_MIRRSTS_RTC_TIM0_Msk | \
         SCU_GENERAL_MIRRSTS_RTC_TIM1_Msk))!= 0x0U)
  {}
  RTC->TIM0 = 0x00000000U;
  RTC->TIM1 = 0x00000000U;
 
  /* Clear the Alarm registers */  
  while((SCU_GENERAL->MIRRSTS & (SCU_GENERAL_MIRRSTS_RTC_ATIM0_Msk | \
         SCU_GENERAL_MIRRSTS_RTC_ATIM1_Msk))!= 0x0U)
  {}
  RTC->ATIM0 = 0x00000000U;
  RTC->ATIM1 = 0x00000000U;
  
  /* Clear Mirror register update status of RTC registers in SCU*/
  SCU_INTERRUPT->SRCLR |= (uint32_t)\
    (SCU_INTERRUPT_SRCLR_RTC_CTR_Msk | SCU_INTERRUPT_SRCLR_RTC_ATIM0_Msk | \
  	 SCU_INTERRUPT_SRCLR_RTC_ATIM1_Msk | SCU_INTERRUPT_SRCLR_RTC_TIM0_Msk | \
  	 SCU_INTERRUPT_SRCLR_RTC_TIM1_Msk);    
  DBG002_FUNCTION_EXIT(APP_GID,RTC001_FUNCTION_EXIT);
}


/*
 * This function enables the RTC module. It may be called 
 * if the RTC module is disabled previously.
 *
 * Note : This function is not required after Initialization if the RTC Enable 
 *        UI option is checked. 
 *
 */
uint32_t  RTC001_Enable(void)
{  
  DBG002_FUNCTION_ENTRY(APP_GID,RTC001_FUNCTION_ENTRY);
   /* <<<DD_RTC001_API_3>>> */
 
  /* Clear Mirror register update status of RTC registers in SCU*/
  SCU_INTERRUPT->SRCLR |= (uint32_t)\
    (SCU_INTERRUPT_SRCLR_RTC_CTR_Msk | SCU_INTERRUPT_SRCLR_RTC_ATIM0_Msk | \
  	 SCU_INTERRUPT_SRCLR_RTC_ATIM1_Msk | SCU_INTERRUPT_SRCLR_RTC_TIM0_Msk | \
  	 SCU_INTERRUPT_SRCLR_RTC_TIM1_Msk);
  /* Wait for Mirror register update */
  while(SCU_GENERAL->MIRRSTS & SCU_GENERAL_MIRRSTS_RTC_CTR_Msk)
  {}
  /* Enable the RTC module */
  RTC->CTR  |= ((uint32_t)(RTC_CTR_ENB_Msk));

  DBG002_FUNCTION_EXIT(APP_GID,RTC001_FUNCTION_EXIT);
  return ((uint32_t)RTC001App_SUCCESS);
}


/*
 *  The function disables the RTC module.
 */
 
uint32_t  RTC001_Disable(void)
{
  DBG002_FUNCTION_ENTRY(APP_GID,RTC001_FUNCTION_ENTRY);
   /* <<<DD_RTC001_API_4>>> */

  /* Wait for Mirror register update */
  while(SCU_GENERAL->MIRRSTS & SCU_GENERAL_MIRRSTS_RTC_CTR_Msk)
  {}
  /* Disable the RTC module */
  RTC->CTR &= (uint32_t)(~(RTC_CTR_ENB_Msk));
      	
  /* Clear the RTC Time registers */ 
  while((SCU_GENERAL->MIRRSTS & (SCU_GENERAL_MIRRSTS_RTC_TIM0_Msk | \
         SCU_GENERAL_MIRRSTS_RTC_TIM1_Msk))!= 0x0U)
  {}
  RTC->TIM0 = 0x00000000U;
  RTC->TIM1 = 0x00000000U;
 
  /* Clear the Alarm registers */  
  while((SCU_GENERAL->MIRRSTS & (SCU_GENERAL_MIRRSTS_RTC_ATIM0_Msk | \
         SCU_GENERAL_MIRRSTS_RTC_ATIM1_Msk))!= 0x0U)
  {}
  RTC->ATIM0 = 0x00000000U;
  RTC->ATIM1 = 0x00000000U;
  
  /* Clear Mirror register update status of RTC registers in SCU*/
  SCU_INTERRUPT->SRCLR |= (uint32_t)\
    (SCU_INTERRUPT_SRCLR_RTC_CTR_Msk | SCU_INTERRUPT_SRCLR_RTC_ATIM0_Msk | \
  	 SCU_INTERRUPT_SRCLR_RTC_ATIM1_Msk | SCU_INTERRUPT_SRCLR_RTC_TIM0_Msk | \
  	 SCU_INTERRUPT_SRCLR_RTC_TIM1_Msk);    
  							
  DBG002_FUNCTION_EXIT(APP_GID,RTC001_FUNCTION_EXIT);
  return ((uint32_t)RTC001App_SUCCESS);
}


/*
 *  The function gets RTC status flag for Alarm and Periodic Timer Events.
 */	
uint32_t  RTC001_GetFlagStatus(RTC001_FlagType Flag)
{
  uint32_t status = (uint32_t) RTC001_RESET;
  uint32_t StatusValue = 0U;
  /* <<<DD_RTC001_API_6>>> */
  DBG002_FUNCTION_ENTRY(APP_GID,RTC001_FUNCTION_ENTRY);

  /*Read the Status Service Request Register*/
  StatusValue = RTC->STSSR;
  
  /*Check the given flag*/
	if((StatusValue & (uint32_t) Flag) != 0U)
	{
	  status = (uint32_t) RTC001_SET;
	}

	DBG002_FUNCTION_EXIT(APP_GID,RTC001_FUNCTION_EXIT);
	return status;
}


/*
 *  The function clears RTC status flag for Alarm and Periodic Timer Events.
 */
void  RTC001_ClearFlagStatus(RTC001_FlagType Flag)
{
  /* <<<DD_RTC001_API_5>>> */
  DBG002_FUNCTION_ENTRY(APP_GID,RTC001_FUNCTION_ENTRY);
  
  /*Write to the Clear Service Request Register*/
  RTC->CLRSR |= (uint32_t)Flag;

  DBG002_FUNCTION_EXIT(APP_GID,RTC001_FUNCTION_EXIT);
}


/*
 *  Interface to configure the RTC alarm.
 */

uint32_t RTC001_ConfigAlarm (const RTC001_HandleType* Handle,
    RTC001_TimeHandle* timeptr, AlarmCallBackPtr CallBack,uint32_t CbArg)
{
  uint16_t month1 = 0U,year1 = 0U,day1 = 0U;
  uint8_t  sec1 = 0U, min1 = 0U, hour1 = 0U;
  uint32_t status = (uint32_t)RTC001_ERROR;
  /* <<<DD_RTC001_API_7>>> */
  DBG002_FUNCTION_ENTRY(APP_GID,RTC001_FUNCTION_ENTRY);
  do
  {
    /* Clear Mirror register update status of RTC registers in SCU*/
    SCU_INTERRUPT->SRCLR = (uint32_t)\
      (SCU_INTERRUPT_SRCLR_RTC_CTR_Msk | SCU_INTERRUPT_SRCLR_RTC_ATIM0_Msk | \
  	   SCU_INTERRUPT_SRCLR_RTC_ATIM1_Msk | SCU_INTERRUPT_SRCLR_RTC_TIM0_Msk | \
  	   SCU_INTERRUPT_SRCLR_RTC_TIM1_Msk);  	

    #ifdef RTC001_EVENTTRIGTOSCU
	/* Register the call back function with NVIC_SCU001 Or NVIC_SR101 */		
    if (Handle->RTCAlarmInterrupt != RTC001_ALARMINT_DISABLE )
	{
		if(CallBack != NULL)
		{
            #if (UC_FAMILY == XMC4)
			  /* Register User defined Event Handler for Timer function */
			  NVIC_SCU001_RegisterCallback(NVIC_SCU001_AI,CallBack,CbArg);
            #endif
            #if (UC_FAMILY == XMC1)
			  /* Register User defined Event Handler for Timer function */
			  NVIC_SR101_RegisterCallback(NVIC_SR101_AI,CallBack,CbArg);
            #endif
		} 
	}
	#endif
	
    /*   Write values into ATIM0 and ATIM1 registers  */
    month1 = timeptr->Month;
    year1 = timeptr->Year;
    day1 = timeptr->Days;
    /* Time value */
    hour1 = timeptr->Hours;
    min1 = timeptr->Min;
    sec1 = timeptr->Sec;
    /* Check whether the date entered is valid */
    if((RTC001_ldatevalid(month1,day1,year1)) && \
       (RTC001_ltimevalid(sec1,min1,hour1)))
    { 
       /*Wait until any transfer over serial interface to ATIM0 and ATIM1 is 
	     completed*/
       while((SCU_GENERAL->MIRRSTS & (SCU_GENERAL_MIRRSTS_RTC_ATIM0_Msk | \
              SCU_GENERAL_MIRRSTS_RTC_ATIM1_Msk))!= 0x0U)
       {}   
       /*Configure the Alarm Time Register 0 */
       RTC->ATIM0 = (uint32_t)\
               (((timeptr->Sec) & (uint32_t)RTC_ATIM0_ASE_Msk) | \
              ((((uint32_t)timeptr->Min) << RTC_ATIM0_AMI_Pos) & \
                                  (uint32_t)RTC_ATIM0_AMI_Msk) | \
            ((((uint32_t)timeptr->Hours) << RTC_ATIM0_AHO_Pos) & \
                                  (uint32_t)RTC_ATIM0_AHO_Msk) | \
        (((((uint32_t)timeptr->Days)-1U) << RTC_ATIM0_ADA_Pos) & \
                                  (uint32_t)RTC_ATIM0_ADA_Msk));        
       /*Configure the Alarm Time Register 1 */
       RTC->ATIM1 = (uint32_t)\
           ((((((uint32_t)timeptr->Month)-1U) << RTC_ATIM1_AMO_Pos) & \
                                       (uint32_t)RTC_ATIM1_AMO_Msk) | \
        ((uint32_t)(((uint32_t)timeptr->Year) << RTC_ATIM1_AYE_Pos) & \
                                       (uint32_t)RTC_ATIM1_AYE_Msk));	     			       
      status = (uint32_t)RTC001App_SUCCESS;
    }  
    else /*Date is not valid*/
    {
      status = (uint32_t)RTC001_INVALID_HANDLE;      
	  DBG002_ERROR(APP_GID, 1, 4,status);
    }
 
  }while(0);
  DBG002_FUNCTION_EXIT(APP_GID,RTC001_FUNCTION_EXIT);
  return status;
}
	

/*
 *  Function to read the current RTC time
 */
 
uint32_t RTC001_Clock_GetTime (RTC001_TimeHandle* timeptr)
{
  uint32_t TimeReg0Value,TimeReg1Value;
  TimeReg0Value = RTC->TIM0;
  TimeReg1Value = RTC->TIM1;
  DBG002_FUNCTION_ENTRY(APP_GID,RTC001_FUNCTION_ENTRY);
   /* <<<DD_RTC001_API_8>>> */

  /*   Read values from TIM0 and TIM1 registers  */
  /*   Days of Week value  */
	timeptr->DaWe = (uint8_t)(TimeReg1Value & RTC_TIM1_DAWE_Msk);
  /*   Month value  */
	timeptr->Month = \
        (uint8_t)(((TimeReg1Value & RTC_TIM1_MO_Msk) >> RTC_TIM1_MO_Pos) + 1U);
  /*   Year value  */
	timeptr->Year = \
	    (uint16_t)((TimeReg1Value & RTC_TIM1_YE_Msk) >> RTC_TIM1_YE_Pos);

  /*   Seconds value  */
	timeptr->Sec =  (uint8_t)((TimeReg0Value & RTC_TIM0_SE_Msk));
  /*   Minutes value  */
	timeptr->Min = \
	    (uint8_t)(((TimeReg0Value & RTC_TIM0_MI_Msk) >> RTC_TIM0_MI_Pos));
  /*   Hours value  */
	timeptr->Hours = \
	    (uint8_t)(((TimeReg0Value & RTC_TIM0_HO_Msk) >> RTC_TIM0_HO_Pos));
  /*   Days value starting from the 1st day of the month */
	timeptr->Days = \
        (uint8_t)(((TimeReg0Value & RTC_TIM0_DA_Msk) >> RTC_TIM0_DA_Pos) + 1U);	
  DBG002_FUNCTION_EXIT(APP_GID,RTC001_FUNCTION_EXIT);
  return ((uint32_t)RTC001App_SUCCESS);
}


/*
 *  This function is to set the time.
 */
uint32_t RTC001_Clock_SetTime(RTC001_TimeHandle* timeptr)
{
  uint16_t month1 = 0U,year1 = 0U,day1 = 0U;
  uint8_t  sec1 = 0U, min1 = 0U, hour1 = 0U;
  uint32_t weekDay = 0U;
  uint32_t status = (uint32_t)RTC001_ERROR;
  
  DBG002_FUNCTION_ENTRY(APP_GID,RTC001_FUNCTION_ENTRY);
   /* <<<DD_RTC001_API_9>>> */
   
  /* Clear Mirror register update status of RTC registers in SCU*/
  SCU_INTERRUPT->SRCLR = \
      (SCU_INTERRUPT_SRCLR_RTC_CTR_Msk | SCU_INTERRUPT_SRCLR_RTC_ATIM0_Msk | \
  	   SCU_INTERRUPT_SRCLR_RTC_ATIM1_Msk | SCU_INTERRUPT_SRCLR_RTC_TIM0_Msk | \
  	   SCU_INTERRUPT_SRCLR_RTC_TIM1_Msk);
 
  /*   Days of Week value  */
  month1 = timeptr->Month;
  year1 = timeptr->Year;
  day1 = timeptr->Days;
  
  /* Time value */
  hour1 = timeptr->Hours;
  min1 = timeptr->Min;
  sec1 = timeptr->Sec;
  do
  {    
    if((RTC001_ldatevalid(month1,day1,year1)) && \
       (RTC001_ltimevalid(sec1,min1,hour1)))
    { 
      weekDay = ((uint32_t)(RTC001_lweekday(month1,day1,year1)));
      if(weekDay < 6U)
      {
        weekDay += 1U;
      }
      else if(weekDay == 6U)
      {
        weekDay = 0U;
      }
      else
      {
        status = (uint32_t)RTC001_INVALID_HANDLE;        
		DBG002_ERROR(APP_GID, 2, 4,status);
        break;
      }
      /*Write values into TIM0 and TIM1 registers  */
      /*Wait until any serial transaction is completed*/
      while((SCU_GENERAL->MIRRSTS & (SCU_GENERAL_MIRRSTS_RTC_TIM0_Msk | \
             SCU_GENERAL_MIRRSTS_RTC_TIM1_Msk))!= 0x0U)
      {}
      /*Configure RTC Time register 0*/
      RTC->TIM0 = (uint32_t)\
               (((timeptr->Sec) & (uint32_t)RTC_TIM0_SE_Msk) | \
              ((((uint32_t)timeptr->Min) << RTC_TIM0_MI_Pos) & \
                                  (uint32_t)RTC_TIM0_MI_Msk) | \
            ((((uint32_t)timeptr->Hours) << RTC_TIM0_HO_Pos) & \
                                  (uint32_t)RTC_TIM0_HO_Msk) | \
      ((((((uint32_t)timeptr->Days)-1U)) << RTC_TIM0_DA_Pos) & \
                                  (uint32_t)RTC_TIM0_DA_Msk));  
      /*Configure RTC Time register 1*/
      RTC->TIM1 = (uint32_t) (weekDay |\
                   (((((uint32_t)timeptr->Month)-1U) << RTC_TIM1_MO_Pos) & \
                                              (uint32_t)RTC_TIM1_MO_Msk) | \
                         ((((uint32_t)timeptr->Year) << RTC_TIM1_YE_Pos) & \
                                              (uint32_t)RTC_TIM1_YE_Msk));  
      status = (uint32_t) RTC001App_SUCCESS;
    }  
    else
    {
      status = (uint32_t) RTC001_INVALID_HANDLE;
	  DBG002_ERROR(APP_GID, 3, 4,status);
    }
  }while(0);

  DBG002_FUNCTION_EXIT(APP_GID,RTC001_FUNCTION_EXIT);
  return status;
}


/*
 *  This function is to get the time in seconds calculated from Epoch time 
 *  (01/01/1970).
 */

uint32_t RTC001_Time(time_t* time_value)
{

  uint32_t CurrentYear = 0U, ElapsedYear = 0U;
  uint32_t CurrentMonth = 0U, ElapsedMonth = 0U;
  uint32_t CurrentDay = 0U, ElapsedDays = 0U;
  uint32_t CurrentHour = 0U;
  uint32_t CurrentMin = 0U;
  uint32_t CurrentSec = 0U;
  uint32_t ElapsedSeconds = 0U;
  uint32_t status = (uint32_t)RTC001_ERROR;
  
  DBG002_FUNCTION_ENTRY(APP_GID,RTC001_FUNCTION_ENTRY);
   /* <<<DD_RTC001_API_10>>> */
  
  /*Check if RTC module is enabled and no NULL pointer*/
  if(((RTC->CTR & (RTC_CTR_ENB_Msk)) != 0U) && (time_value != NULL))
  {

    /*   Read values from TIM0 and TIM1 registers  */
    CurrentYear = ((uint32_t)((RTC->TIM1 & RTC_TIM1_YE_Msk) >> 16U));
    CurrentMonth = 	((uint32_t)(((RTC->TIM1 & RTC_TIM1_MO_Msk) >> 8U) + 1U));
    CurrentDay = ((uint32_t)(((RTC->TIM0 & RTC_TIM0_DA_Msk) >> 24U) + 1U));
    CurrentHour = ((uint32_t)(((RTC->TIM0 & RTC_TIM0_HO_Msk) >> 16U)));
    CurrentMin = ((uint32_t)(((RTC->TIM0 & RTC_TIM0_MI_Msk) >> 8U)));
    CurrentSec = ((uint32_t)((RTC->TIM0 & RTC_TIM0_SE_Msk)));
    
    /*Count number of Days for Elapsed Years since Epoch*/
    ElapsedDays = (uint32_t)(CurrentYear - RTC001_EPOCH_YEAR) *\
                  (uint32_t) RTC001_DAYS_IN_AN_YEAR;

    /* Add the number of days to be adjusted for leap years, 
    start from previous year and check backwords */
    for (ElapsedYear=(CurrentYear-1U); ElapsedYear>= 1970U; ElapsedYear--)
    {
      if (RTC001_lleapyear((uint16_t)ElapsedYear))
      {
        ElapsedDays++;
      }
    }
    /*If current year is leap year add 1 only if March or later*/
    if (RTC001_lleapyear((uint16_t)CurrentYear))
    {
      if(CurrentMonth > 2U)
      {
        ElapsedDays++;
      }
    }
    
    /*Add number of Days from Elapsed months from current year*/
    for (ElapsedMonth = (CurrentMonth - 1U); ElapsedMonth != 0U; ElapsedMonth--)
    {
      ElapsedDays += RTC001_DAYS_IN_MONTH[ElapsedMonth];  
    } 
    
    /*Add Elapsed days from current month*/
    ElapsedDays += CurrentDay - 1U;
    
    /*Accumulate the total seconds for ElapsedDays*/
    ElapsedSeconds = (ElapsedDays * RTC001_SECONDS_IN_A_DAY);

    /*Add seconds for current hour, minute and seconds*/
    ElapsedSeconds += (CurrentHour * RTC001_SECONDS_IN_AN_HOUR);   
    ElapsedSeconds += (CurrentMin * RTC001_SECONDS_IN_A_MINUTE); 
    ElapsedSeconds += CurrentSec; 

    *time_value = (time_t) ElapsedSeconds;
    status = (uint32_t) RTC001App_SUCCESS;
    
  }
  DBG002_FUNCTION_EXIT(APP_GID,RTC001_FUNCTION_EXIT);
  return status;
}


/* Return 1 if date is valid, 0 otherwise.	*/
static uint32_t RTC001_ldatevalid(uint16_t month,uint16_t day,uint16_t year)
{
  uint32_t valid = 0U;

  if ((month == 0U) || (month > 12U) )
  {
    valid = 0U;
  }
  else  if ((month != 2U) || (day < 29U))
  {
     if ((day <= RTC001_DAYS_IN_MONTH[month]) && (day > 0U))
     {
       valid = 1U;
     }
  }
  else /*Reaches here only if month = February and day = 29*/
  {
    /*Check if it is leap year*/
    if (RTC001_lleapyear(year))
    {
      if (day == 29U)
      { 
        valid = 1U;
      }
    }
  }
  return valid;
}


/* Return 1 if year is leap year, 0 otherwise.	*/

static uint8_t RTC001_lleapyear(uint16_t year)
{
  uint8_t valid = 0U;
  
  if ((((year) % 400U) == 0U) || ((((year) % 100U) != 0U) && \
     (((year) %4U) == 0U)))
  {
	valid = 1U;
  }
  return valid;
}


/* Given month, day, year, returns day of week, eg. Monday = 0 etc.
*/ 

static uint32_t RTC001_lweekday(uint16_t month,uint16_t day,uint16_t year)
{
  uint16_t vx, tx, ix, feb;
  const uint8_t vx_list[] = 
  {
      0U, 20U, 0U, 16U, 24U, 20U, 0U, 24U, 4U, 12U, 8U, 16U, 12U
  };

  vx = vx_list[month];
  if(year > 1900U)
  {
    year = year - 1900U;
  }
  feb = (month  > 2U)? 1U : 0U;
/* Take care of February */
  ix = ((year - 21U) % 28U) + vx + feb;
/* Take care of leap year */
  tx = ((ix + (ix / 4U)) % 7U) + day;
  tx = tx % 7U;
  return ((uint32_t)tx);
}

/* Return 1 if time is valid, 0 otherwise.	*/
static uint32_t RTC001_ltimevalid(uint8_t sec, uint8_t min, uint8_t hour)
{
  uint32_t valid = 0U;

  if ((sec < 0U) || (min < 0U) || (hour < 0U))
  {
    valid = 0U;
  }
  else if ((sec >= 60U) || (min >= 60U) || (hour >= 24U))
  {
    valid = 0U;
  }
  else
  {
	  valid = 1U;
  }

  return valid;
}
/**
 *@}
 */

/*CODE_BLOCK_END*/

