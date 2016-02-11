/*******************************************************************************
**																			  **
**                                                                            **
** Copyright (C) 2011-2013 Infineon Technologies AG. All rights reserved.     **                  
**                                                                            **
** Infineon Technologies AG (Infineon) is supplying this software for use     **
** with Infineon's microcontrollers.                                          **
** This file can be freely distributed within development tools that are      ** 
** supporting such microcontrollers.                                          **
**                                                                            **
** THIS SOFTWARE IS PROVIDED "AS IS". NO WARRANTIES, WHETHER EXPRESS, IMPLIED **
** OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF         ** 
** MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS         ** 
** SOFTWARE. INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR          ** 
** SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.  **
**                                                                            ** 
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
 * @file RTC001.h
 * 
 *
 * @brief  Real Time Clock App implementation header file.
 *
 */

#ifndef RTC001_H_
#define RTC001_H_

#ifdef __cplusplus
extern "C" {
#endif

/*******************************************************************************
** Include Files:                                                             **
*******************************************************************************/
#include "stdint.h"
#include <uc_id.h>

#if defined (__GNUC__)
#include <sys/time.h>
#elif defined(__TASKING__)
#include <time.h>
#endif

#if (__TARGET_DEVICE__ == XMC45)
#include <XMC4500.h>
#elif (__TARGET_DEVICE__ == XMC44)
#include <XMC4400.h>
#elif ((__TARGET_DEVICE__ == XMC42) || (__TARGET_DEVICE__ == XMC41))
#include <XMC4200.h>
#elif (__TARGET_DEVICE__ == XMC11)
#include <XMC1100.h>
#elif (__TARGET_DEVICE__ == XMC12)
#include <XMC1200.h>
#elif (__TARGET_DEVICE__ == XMC13)
#include <XMC1300.h>
#else
#error "Unsupported XMC family"
#endif





/*******************************************************************************
** Global Macro Definitions:                                                  **
*******************************************************************************/


#define RTC001App_SUCCESS  0U
#define RTC001App_FAIL  1U

/*******************************************************************************
** Global Type Definitions:                                                   **
*******************************************************************************/
/**
 * @ingroup RTC001_enumerations
 * @{
 */
/**
 * This enumeration defines RTC001 App error and status values.
 */

typedef enum RTC001_ErrorType
{
/**
  * @cond INTERNAL_DOCS
  * @param MODULENAME RTC001
  * @endcond
  */
/**
  * Invalid handle or parameter
  */
/**
  * @cond INTERNAL_DOCS
  * @param ERRCODESTRING1 RTC001_INVALID_HANDLE
  * @param STRCODESTRING1 Invalid Handle or Parameter
  * @endcond
  */

  RTC001_INVALID_HANDLE = 1U,
/**
  * Undefined Error
  */
/**
  * @cond INTERNAL_DOCS
  * @param ERRCODESTRING2 RTC001_ERROR
  * @param STRCODESTRING2 Undefined Error
  * @endcond
  */
  RTC001_ERROR = 2U,
/**
  * Flag is set
  */  
/**
  * @cond INTERNAL_DOCS
  * @param ERRCODESTRING2 RTC001_SET
  * @param STRCODESTRING2 Flag is Set
  * @endcond
  */
  RTC001_SET = 3U,
/**
  * @cond INTERNAL_DOCS
  * @param ERRCODESTRING2 RTC001_RESET
  * @param STRCODESTRING2 Flag is Reset
  * @endcond
  */
/**
  * Flag is reset
  */  
  RTC001_RESET = 4U,
/**
  * @cond INTERNAL_DOCS
  * @param ERRCODESTRING2 RTC001_FUNCTION_ENTRY
  * @param STRCODESTRING2 Entered function \%s
  * @endcond
  */
  RTC001_FUNCTION_ENTRY = 5U,
/**
  * @cond INTERNAL_DOCS
  * @param ERRCODESTRING3 RTC001_FUNCTION_EXIT
  * @param STRCODESTRING3 Exited function \%s
  * @endcond
  */
  RTC001_FUNCTION_EXIT = 6U
}RTC001_ErrorType;

/**
 * The below set of flags are used to indicate RTC module's
 * Alarm and Periodic Timer event status. They can be
 * used while clearing the status as well.
 */

typedef enum RTC001_FlagType
{
  /** The Seconds flag in RTC */
  SECONDS_FLAG = 0x1U,
  /** The Minutes flag in RTC */
  MINUTES_FLAG = 0x2U,
  /** The Hours flag in RTC */
  HOURS_FLAG = 0x4U,
  /** The Days flag in RTC */
  DAYS_FLAG = 0x8U,
  /** The Months flag in RTC */
  MONTHS_FLAG = 0x20U,
  /** The Years flag in RTC */
  YEARS_FLAG = 0x40U,
  /** The Alarm flag in RTC */
  ALARM_FLAG = 0x100U
}RTC001_FlagType;


/**
 * This enumeration defines RTC001 Module Enable and Disable values.
 */

typedef enum RTC001_EnableType
{
  /** Disable */
  RTC001_DISABLE = 0x0U,
  /** Enable */
  RTC001_ENABLE = 0x1U
}RTC001_EnableType;


/**
 * This enumeration defines RTC001 Module Initialize Once Enable and Disable
 * values.
 */

typedef enum RTC001_InitOnceType
{
  /** Disable */
  RTC001_INITONCE_DISABLE = 0x0U,
  /** Enable */
  RTC001_INITONCE_ENABLE = 0x1U
}RTC001_InitOnceType;

/**
 * This enumeration defines RTC001 Module Interrupt Related Events Enable and 
 * Disable values.
 */

typedef enum RTC001_InterruptEnableType
{
   /** Event Trigger to SCU for Timer Enable */
  RTC001_EVENTTRIGSCU_TIMER_ENABLE = 0x0U,  
  /** Event Trigger to NMI for Timer Enable */
  RTC001_EVENTTRIGNMI_TIMER_ENABLE = 0x1U,
  /** Event Trigger to SCU for Alarm Enable */
  RTC001_EVENTTRIGSCU_ALARM_ENABLE = 0x0U, 
  /** Event Trigger to NMI for Alarm Enable */
  RTC001_EVENTTRIGNMI_ALARM_ENABLE = 0x1U,
  /** Timer Periodic Seconds Interrupt Disable */
  RTC001_PERIODICSECINT_DISABLE = 0x0U,
  /** Timer Periodic Seconds Interrupt Enable */
  RTC001_PERIODICSECINT_ENABLE = 0x1U,
  /** Timer Periodic Minutes Interrupt Disable */
  RTC001_PERIODICMININT_DISABLE = 0x0U,
  /** Timer Periodic Minutes Interrupt Enable */
  RTC001_PERIODICMININT_ENABLE = 0x1U,
  /** Timer Periodic Hours Interrupt Disable */
  RTC001_PERIODICHOURINT_DISABLE = 0x0U,
  /** Timer Periodic Hours Interrupt Enable */
  RTC001_PERIODICHOURINT_ENABLE = 0x1U,
  /** Timer Periodic Days Interrupt Disable */
  RTC001_PERIODICDAYINT_DISABLE = 0x0U,
  /** Timer Periodic Days Interrupt Enable */
  RTC001_PERIODICDAYINT_ENABLE = 0x1U,
  /** Timer Periodic Month Interrupt Disable */
  RTC001_PERIODICMONTHINT_DISABLE = 0x0U,
  /** Timer Periodic Month Interrupt Enable */
  RTC001_PERIODICMONTHINT_ENABLE = 0x1U,
  /** Timer Periodic Years Interrupt Disable */
  RTC001_PERIODICYEARINT_DISABLE = 0x0U,
  /** Timer Periodic Years Interrupt Enable */
  RTC001_PERIODICYEARINT_ENABLE = 0x1U,
  /** Alarm Interrupt Disable */
  RTC001_ALARMINT_DISABLE = 0x0U,
  /** Alarm Interrupt Enable */
  RTC001_ALARMINT_ENABLE = 0x1U
}RTC001_InterruptEnableType;


/**
 * This enumeration defines RTC001 Module Hibernate Mode Events Enable and 
 * Disable values.
 */

typedef enum RTC001_HibernateModeEventEnableType
{
  /** Alarm Event in Hibernate Mode Disable */
  RTC001_HIBALARM_DISABLE = 0x0U,
  /** Alarm Event in Hibernate Mode Enable */
  RTC001_HIBALARM_ENABLE = 0x1U,
  /** Periodic Seconds Event in Hibernate Mode Disable */
  RTC001_HIBPERIODICSEC_DISABLE = 0x0U,
  /** Periodic Seconds Event in Hibernate Mode Enable */
  RTC001_HIBPERIODICSEC_ENABLE = 0x1U,
  /** Periodic Minutes Event in Hibernate Mode Disable */
  RTC001_HIBPERIODICMIN_DISABLE = 0x0U,
  /** Periodic Minutes Event in Hibernate Mode Enable */
  RTC001_HIBPERIODICMIN_ENABLE = 0x1U,
  /** Periodic Minutes Event in Hibernate Mode Disable */
  RTC001_HIBPERIODICHOUR_DISABLE = 0x0U,
  /** Periodic Minutes Event in Hibernate Mode Enable */
  RTC001_HIBPERIODICHOUR_ENABLE = 0x1U,
  /** Periodic Days Event in Hibernate Mode Disable */
  RTC001_HIBPERIODICDAY_DISABLE = 0x0U,
  /** Periodic Days Event in Hibernate Mode Enable */
  RTC001_HIBPERIODICDAY_ENABLE = 0x1U,
  /** Periodic Months Event in Hibernate Mode Disable */
  RTC001_HIBPERIODICMONTH_DISABLE = 0x0U,
  /** Periodic Months Event in Hibernate Mode Enable */
  RTC001_HIBPERIODICMONTH_ENABLE = 0x1U,
  /** Periodic Months Event in Hibernate Mode Disable */
  RTC001_HIBPERIODICYEAR_DISABLE = 0x0U,
  /** Periodic Months Event in Hibernate Mode Enable */
  RTC001_HIBPERIODICYEAR_ENABLE = 0x1U
}RTC001_HibernateEventModeEnableType;

/**
 *@}
 */

 /**
 * Type of Call back function for Alarm Event.
 * A uint32_t argument can be optionally used.
 */
typedef void (*AlarmCallBackPtr)(uint32_t CbArg);

/**
 * Type of Call back function for Periodic Timer Event.
 * A uint32_t argument can be optionally used.
 *
 */
typedef void (*RTC001_TimerCallBackPtr)(uint32_t CbArg);

/**
  * @ingroup RTC001_datastructures
  * @{
  */

/**
 * Structure for RTC Time configuration.
 */
typedef struct RTC001_TimeHandle
{
  /* Time value to be entered in seconds field */
  uint8_t Sec;
  /* Time value to be entered in minutes field */
  uint8_t Min;
  /* Time value to be entered in hours field */
  uint8_t Hours;
  /* Time value to be entered in days field */
  uint8_t Days;
  /* Time value to be entered in days of week field */
  uint8_t DaWe;
  /* Time value to be entered in months field */
  uint8_t Month;
  /* Time value to be entered in years field */
  uint16_t Year;
}RTC001_TimeHandle;


/**
* RTC001 App Handle structure. Stores a few parameters configured in App UI.
 */

typedef struct  RTC001_HandleType
{

 /**
  * General Configurations
  */

 /* RTC Enable */
 RTC001_EnableType RTCEnable;

 /* If value of this flag is 1, then RTC time value will be initialized
  * only once even after system reset
  */
 RTC001_InitOnceType RTCInitOnce;

 /* Clock divider value */
 uint16_t DividerValue;

 /**
  * Interrupt Configurations
  */

  /* Timer Event Trigger */
  RTC001_InterruptEnableType RTCEventTrigTimer;

  /* Timer Periodic Seconds Interrupt */
  RTC001_InterruptEnableType RTCPeriodicSecInterrupt;

  /* Timer Periodic Minutes Interrupt */
  RTC001_InterruptEnableType RTCPeriodicMinInterrupt;

  /* Timer Periodic Hours Interrupt */
  RTC001_InterruptEnableType RTCPeriodicHourInterrupt;

  /* Timer Periodic Days Interrupt */
  RTC001_InterruptEnableType RTCPeriodicDayInterrupt;

  /* Timer Periodic Months Interrupt */
  RTC001_InterruptEnableType RTCPeriodicMonthInterrupt;

  /* Timer Periodic Years Interrupt */
  RTC001_InterruptEnableType RTCPeriodicYearInterrupt;

  /* Alarm Interrupt */
  RTC001_InterruptEnableType RTCAlarmInterrupt;

  /* Alarm Event Trigger */
  RTC001_InterruptEnableType RTCEventTrigAlarm;


  /**
   * Hibernate Configurations
   */

  /* Alarm Event in Hibernate Mode */
  RTC001_HibernateEventModeEnableType RTCHibAlarmEvent;

  /* Periodic Seconds Event in Hibernate Mode */
  RTC001_HibernateEventModeEnableType RTCHibPeriodicSecEvent;

  /* Periodic Minutes Event in Hibernate Mode */
  RTC001_HibernateEventModeEnableType RTCHibPeriodicMinEvent;

  /* Periodic Hours Event in Hibernate Mode */
  RTC001_HibernateEventModeEnableType RTCHibPeriodicHourEvent;

  /* Periodic Days Event in Hibernate Mode */
  RTC001_HibernateEventModeEnableType RTCHibPeriodicDayEvent;

  /* Periodic Months Event in Hibernate Mode */
  RTC001_HibernateEventModeEnableType RTCHibPeriodicMonthEvent;

  /* Periodic Years Event in Hibernate Mode */
  RTC001_HibernateEventModeEnableType RTCHibPeriodicYearEvent;

  /**
   * Listener functions for RTC Interrupt Events.
   */

  /* Event: Timer Periodic Interrupt */
  RTC001_TimerCallBackPtr RTC001_PI_Listener;
  /* Event: Alarm Interrupt */
  AlarmCallBackPtr RTC001_AI_Listener;
    
}RTC001_HandleType;

/**
 *@}
 */


/*******************************************************************************
** Global Constant Declarations:                                              **
*******************************************************************************/


/*******************************************************************************
** Extern Variables:                                                          **
*******************************************************************************/


/*******************************************************************************
** Function ProtoTypes:                                                       **
*******************************************************************************/
/**
 * @ingroup RTC001_apidoc
 * @{
 */

 /**
 * Initialization function for the App.
 * This function configures the RTC module registers as per options given in 
 * App UI and enables the RTC module.
 *
 * @param[in]  None<BR>
 *
 * @return     void
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 *  #include <DAVE3.h>
 *  int main(void)
 *  {
 *    // Initialize Apps
 *    DAVE_Init(); // RTC001_Init() will be called within DAVE_Init()
 *    // ... infinite loop ...
 *    while(1)
 *    {}
 *  }
 * @endcode<BR> </p> 
 */
void  RTC001_Init(void);


 /**
 * Deinitialization function for the app. 
 *
 * @param[in]  None<BR>
 * @return     void
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 *  #include <DAVE3.h>
 *  int main(void)
 *  {
 *    // Initialize Apps
 *    DAVE_Init(); // RTC001_Init() will be called within DAVE_Init()
 *    RTC001_DeInit();
 *    // ... infinite loop ...
 *    while(1)
 *    {}
 *  }
 * @endcode<BR> </p> 
 */
void  RTC001_DeInit(void);


 /**
 * This function enables the RTC module. It may be called 
 * if the RTC module is disabled previously.
 *
 * Note : This function is not required after Initialization if the RTC Enable 
 *        UI option is checked. 
 *
 * @param[in]  void<BR>
 *
 * @return     uint32_t<BR>
 *             RTC001App_SUCCESS : for success <br>
 *             RTC001_ERROR  	 : for failure case <br>
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code 
 *  #include <DAVE3.h>
 *  int main(void)
 *  {
 *    // Initialize Apps
 *    DAVE_Init(); // RTC001_Init() will be called within DAVE_Init()
 *    RTC001_Enable();
 *    // ... infinite loop ...
 *    while(1)
 *    {}
 *  }
 * @endcode<BR> </p> 
 */
uint32_t  RTC001_Enable(void);


 /**
 * This function disables the RTC Module.
 * Time and Alarm registers are cleared. Can be used to Disable RTC module 
 * before configuring RTC Time.
 *
 * @param[in]  void<BR>
 *
 * @return     uint32_t<BR>
 *             RTC001App_SUCCESS : If Disable successful <br>
 *             RTC001_ERROR  	 : If any error during Disable <br>
 *
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code 
 *  #include <DAVE3.h>
 *  int main(void)
 *  {
 *    // Initialize Apps
 *    DAVE_Init(); // RTC001_Init() will be called within DAVE_Init()
 *    RTC001_Disable();
 *    // ... infinite loop ...
 *    while(1)
 *    {}
 *  }
 * @endcode<BR> </p> 
 */
uint32_t  RTC001_Disable(void);


 /**
 * This function clears the given RTC flag.
 * 
 * @param[in]  Flag Indicates which flag to clear. Use the symbolic constants 
 *             enumerated by RTC001_FlagType<BR>
 * 
 * @return     void<BR>
 *
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code 
 *  #include <DAVE3.h>
 *  int main(void)
 *  {
 *    // Initialize Apps
 *    DAVE_Init(); // RTC001_Init() will be called within DAVE_Init()
 *    RTC001_Enable();
 *    while(!RTC001_GetFlagStatus(HOURS_FLAG))
 *    {
 *      // Hour event happened
 *      RTC001_ClearFlagStatus(HOURS_FLAG);
 *    }
 *    // ... infinite loop ...
 *    while(1)
 *    {}
 *  }
 * @endcode<BR> </p> 
 */
void  RTC001_ClearFlagStatus(RTC001_FlagType Flag);


 /**
 * Get the status of specified flag.
 *
 * @param[in]  Flag Indicates which Flag to be checked. Use the symbolic 
 *             constants enumerated by RTC001_FlagType<BR>
 *
 * @return     uint32_t <BR>
 *             RTC001_SET	    : Flag is set <br>
 *             RTC001_RESET  	: Flag is reset <br>
 *
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code 
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   // Initialize Apps
 *   DAVE_Init(); // RTC001_Init() will be called within DAVE_Init()
 *   RTC001_Enable();
 *   while(!RTC001_GetFlagStatus(HOURS_FLAG))
 *   {
 *     // Hour event happened
 *     RTC001_ClearFlagStatus(HOURS_FLAG);
 *   }
 *   // ... infinite loop ...
 *   while(1)
 *   {}
 * }
 * @endcode<BR> </p> 
 */
uint32_t  RTC001_GetFlagStatus(RTC001_FlagType Flag);


/**
 * This function configures the RTC001 Alarm.
 * If the Alarm Event interrupt is connected to SCU, then optionally a call
 * back function can be registered for the interrupt.
 *
 * @param[in] Handle of type RTC001_HandleType<BR>
 * @param[in] timeptr Pointer to structure which contains Alarm Time <BR>
 *           
 * @param[in] CallBack Alarm event call back function.
 *            If the Alarm Event is connected to SCU, the call back will be 
 *            registered with NVIC_SCU001 app.
 *            If NULL is given, then call back is not registered<BR>
 * @param[in] CbArg(Optional)argument to be passed to the call back function<BR>
 *
 * @return     uint32_t<BR>
 *             RTC001App_SUCCESS    : If Alarm configuration is successful<br>
 *             RTC001_INVALID_HANDLE: If any of the parameter is invalid<br>
 *             RTC001_ERROR       : If any error during Alarm configuration<br>
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code 
 * #include <DAVE3.h>
 * static volatile bool AlarmEvent;
 * void Alarm_CallBack(uint32_t Temp)
 * {
 *   AlarmEvent = TRUE;
 * }
 * int main(void)
 * {
 *   uint32_t Status;
 *   RTC001_TimeHandle Alarm_Time;
 *    // ... Initializes Apps ...
 *   DAVE_Init();
 *   Alarm_Time.Sec = 32;
 *   Alarm_Time.Min = 30;
 *   Alarm_Time.Hours = 4;
 *   Alarm_Time.Days = 15;
 *   Alarm_Time.Month = 5;
 *   Alarm_Time.Year = 2012;
 *   Status = RTC001_ConfigAlarm(&RTC001_Handle,&Alarm_Time,Alarm_CallBack,0);
 *   if(Status == DAVEApp_SUCCESS)
 *   {
 *     //Alarm is created successfully
 *   }
 *   // ... infinite loop ...
 *   while(1)
 *   {}
 * }
 * @endcode<BR> </p> 
 */
uint32_t RTC001_ConfigAlarm (const RTC001_HandleType* Handle,
    RTC001_TimeHandle* timeptr, AlarmCallBackPtr CallBack,uint32_t CbArg);

/**
 * This function gets the current time from RTC.
 *
 * @param[in] timeptr Pointer to structure in which current time is returned<BR>
 * @return     uint32_t<BR>
 *             RTC001App_SUCCESS : If RTC time is read successfully<br>
 *             RTC001_ERROR      : If any error during reading<br>
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code 
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   RTC001_TimeHandle CurrentTime;
 *   // Initialize Apps
 *   DAVE_Init(); // RTC001_Init() will be called within DAVE_Init()
 *   RTC001_Enable();
 *   while(!RTC001_GetFlagStatus(HOURS_FLAG))
 *   {
 *     // Read current time
 *     RTC001_Clock_GetTime(&CurrentTime);
 *   }
 *   // ... infinite loop ...
 *   while(1)
 *   {}
 * }
 * @endcode<BR> </p> 
 */
uint32_t RTC001_Clock_GetTime (RTC001_TimeHandle* timeptr);

/**
 * This function sets the RTC time. It is recommended to Disable RTC module 
 * before using this function.
 *
 * @param[in] timeptr Pointer to structure which contains time 
 * 					  values to be configured<BR>
 * @return     uint32_t<BR>
 *             RTC001App_SUCCESS: If the RTC time is successfully configured<br>
 *             RTC001_ERROR     : If any error during reading the time<br>
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code 
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   RTC001_TimeHandle SetTime;
 *   uint32_t Status;
 *   // Initialize Apps
 *   DAVE_Init(); // RTC001_Init() will be called within DAVE_Init()
 *   RTC001_Disable();
 *   SetTime.Sec = 32;
 *   SetTime.Min = 30;
 *   SetTime.Hours = 4;
 *   SetTime.Days = 15;
 *   SetTime.Month = 5;
 *   SetTime.Year = 2012;
 *   Status = RTC001_Clock_SetTime(&SetTime);
 *   if(Status == DAVEApp_SUCCESS)
 *   {
 *     //Success
 *   }
 *   RTC001_Enable();
 *   // ... infinite loop ...
 *   while(1)
 *   {}
 * }
 * @endcode<BR> </p> 
 */
uint32_t RTC001_Clock_SetTime(RTC001_TimeHandle* timeptr);


/**
 * This function returns the time in seconds since the epoch time(01/01/1970).
 * @param[in] time_value Pointer to an object of type time_t, 
 *            for returning the time.<BR>
 *
 * 
 * @return     uint32_t<BR>
 *             RTC001App_SUCCESS : if time value is calculated successfully<br>
 *             RTC001_ERROR      : If any error<br>
 *                 
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code 
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   status_t status = RTC001_ERROR;
 *   time_t Time_Sec;
 *   // ... Initializes Apps ...
 *   DAVE_Init();
 *   status = RTC001_Time(&Time_Sec);
 *   if(status != DAVEApp_SUCCESS)
 *   {
 *	   //error
 *   }
 *   RTC001_Disable();
 *   // ... infinite loop ...
 *   while(1)
 *   {}
 * }
 * @endcode<BR> </p> 
 */
uint32_t RTC001_Time(time_t* time_value) ;

  
/**
 *@}
 */



/** Include App extern file */
#ifdef DAVE_CE
#include "../../inc/RTC001/RTC001_Extern.h"
#endif

#ifdef __cplusplus
}
#endif

#endif /* RTC001_H_ */


