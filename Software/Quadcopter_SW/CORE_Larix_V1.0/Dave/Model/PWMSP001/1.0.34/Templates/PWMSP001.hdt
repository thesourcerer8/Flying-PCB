
/*CODE_BLOCK_BEGIN[PWMSP001.h]*/

/******************************************************************************
 *
 * Copyright (C) 2014 Infineon Technologies AG. All rights reserved.
 *
 * Infineon Technologies AG (Infineon) is supplying this software for use with
 * Infineon's microcontrollers.
 * This file can be freely distributed within development tools that are
 * supporting such microcontrollers.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
********************************************************************************
**                                                                            **
**                                                                            **
** PLATFORM : Infineon XMC4000/XMC100 Series                                  **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR   : App Developer                                                   **
**                                                                            **
** MAY BE CHANGED BY USER [yes/no]: Yes                                       **
**                                                                            **
** MODIFICATION DATE : April 28, 2014                                         **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                       Author(s) Identity                                   **
********************************************************************************
**                                                                            **
** Initials     Name                                                          **
** ---------------------------------------------------------------------------**
** KS           App Developer                                                 **
*******************************************************************************/
/**
 * @file  PWMSP001.h
 *
 * @brief This file contains all public data structures,enums and function
 *        prototypes for Single Phase PWM without deadtime.
 */

/* Revision History															  
 * 21 Nov 2012   v1.0.16   coding guidelines 
 * 23 Jan 2014   v1.0.27   C++ support added 
 * 28 Apr 2014   v1.0.34   Example snippet for PWMSP001_SetComapre() API is 
 *                         updated
 */

#ifndef SINGLEPHPWM_H_
#define SINGLEPHPWM_H_

#ifdef __cplusplus
extern "C" {
#endif

/*******************************************************************************
**                      Include Files                                         **
*******************************************************************************/
#include <DAVE3.h>

/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/
/**
  * @ingroup PWMSP001_publicparam
  * @{
  */

/*<<<DD_PWMSP001_MACRO_1>>>*/
/** This is mask for Event 0*/
#define PWMSP001_EVENT_0 0X01U

/*<<<DD_PWMSP001_MACRO_2>>>*/
/** This is mask for Event 1*/
#define PWMSP001_EVENT_1 0X02U

/*<<<DD_PWMSP001_MACRO_3>>>*/
/** This is mask for Event 3*/
#define PWMSP001_EVENT_2 0X03U

/*<<<DD_PWMSP001_MACRO_4>>>*/
/**Active low level*/
#define PWMSP001_ACTIVE_LOW 0x00U

/*<<<DD_PWMSP001_MACRO_5>>>*/
/**Active HIGH level*/
#define PWMSP001_ACTIVE_HIGH 0x01U

/*<<<DD_PWMSP001_MACRO_6>>>*/
/**To clear all the interrupts of CCU*/
#define PWMSP001_ALL_CCU4_INTR_CLEAR 0x00000F0FU

/*<<<DD_PWMSP001_MACRO_7>>>*/
/**To clear the CCU4 slice.*/
#define PWMSP001_SLICE_CLEAR 0x07U

/*<<<DD_PWMSP001_MACRO_8>>>*/
/**Default low pass filter value*/
#define PWMSP001_LPF 0x00U

/*<<<DD_PWMSP001_MACRO_9>>>*/
/**To count the period register value from the PWM frequency and the
 * CCU4 clock.*/
#define PWMSP001_COUNT(PwmTime, Res) (uint32_t)(PwmTime/Res)

/*<<<DD_PWMSP001_MACRO_10>>>*/
/**This is the period register value in edge-aligned mode*/
#define PWMSP001_EDGE_PERIOD_VAL(count) (uint32_t)(count -1)

/*<<<DD_PWMSP001_MACRO_11>>>*/
/**This is the period register value in center-aligned mode*/
#define PWMSP001_CENTER_PERIOD_VAL(count) (uint32_t)((count <<1) -1 )

/*<<<DD_PWMSP001_MACRO_12>>>*/
/**This is the value to set compare mode*/
#define PWMSP001_COMPARE_MODE (uint32_t)0x00

/*<<<DD_PWMSP001_MACRO_14>>>*/
#define PWMSP001_TRAP_FLAG_CLEAR 0xBU

/*<<<DD_PWMSP001_MACRO_15>>>*/
#define PWMSP001_EVENT2_INTERRUPT 0xAU


#define PWMSP001_MAX_VALUE 65535UL

#define PWMSP001_TC_MAX_VALUE 0xFFFFFFFFUL


typedef void (*PWMSP001_SetCompareFuncionPtr)(const void*, uint32_t);
typedef void (*PWMSP001_SetDutyFunctionPtr)(const void*, float);

/*******************************************************************************
 *                                ENUMERATIONS                                **
 ******************************************************************************/

/**
 * This enumerates the states of the Single Phase PWM  APP.
 */
typedef enum PWMSP001_StateType{
  /**
   * This is the default state after power on reset
   */
  PWMSP001_UNINITIALIZED,
  /**
   * This is the INITIALIZED state in which APP is initialized as per selected
   * parameters.
  */
  PWMSP001_INITIALIZED,
 /**
  * This state indicates that CCU4_CCy slice timer is running.
  */
  PWMSP001_RUNNING,
 /**
  * This state indicates that CCU4_CCy slice timer is stopped.
  */
  PWMSP001_STOPPED,

} PWMSP001_StateType;

/**
 * This enumerates the CCU4x_CCy slice used in this APP.
 */
typedef enum PWMSP001_CCUInUseType{
 /**
  * This is slice 0 of the CCU4
  */
  PWMSP001_SLICE0,
 /**
  * This is slice 1 of the CCU4
  */
  PWMSP001_SLICE1,
 /**
  * This is slice 2 of the CCU4
  */
  PWMSP001_SLICE2,
 /**
  * This is slice 3 of the CCU4
  */
  PWMSP001_SLICE3
}PWMSP001_CCUInUseType;

/**
 * This enumerates the external start configuration of the timer.
 */
typedef enum PWMSP001_ExtStartConfigType
{
  /**
   * This only sets the RUN bit of the timer.
   */
  PWMSP001_START_TIMER,
  /**
   * This clears the timer register value and then sets the RUN bit.
   */
  PWMSP001_CLEAR_START_TIMER
}PWMSP001_ExtStartConfigType;

/**
 * This enumerates the external stop configuration of the timer.
 */
typedef enum PWMSP001_ExtStopConfigType
{
 /**
  * This only clears the RUN bit of the timer.
  */
  PWMSP001_STOP_TIMER,
 /**
  * This only clears the timer register but timer is still running.
  */
  PWMSP001_CLEAR_TIMER,
 /**
  * This clears the Timer and RUN bit both.
  */
  PWMSP001_CLEAR_STOP_TIMER
}PWMSP001_ExtStopConfigType;

/**
 * This enumerates the counting mode of the CCU4_CCy slice.
 */
typedef enum PWMSP001_CountingModeType{
 /**
  * In this mode with up counting direction, timer counts up to the period value
  * and then clears to zero to start counting again. And in down counting, timer
  * decrements from period value to zero and starts again with period value.
  */
  PWMSP001_EDGE_ALIGNED,
 /**
  * In this mode timer counts up till the period value and then counts down to
  * zero.
  * With down counting selected first, timer will decrement from period value
  * to zero and then will increment again to period value to complete one cycle.
  */
  PWMSP001_CENTER_ALIGNED
}PWMSP001_CountingModeType;


typedef enum PWMSP001_EdgeTriggerType{
    /**
     * Trigger is not required.
     */
  PWMSP001_NO_TRIGGER,
    /**
     * Trigger on rising edge
     */
  PWMSP001_RISING_EDGE,
    /**
     * Trigger on falling edge
     */
  PWMSP001_FALLING_EDGE,
    /**
     * Trigger on both edges
     */
  PWMSP001_BOTH_EDGES
}PWMSP001_EdgeTriggerType;

/**
 * This enumerates the error codes of the Single Phase PWM APP which is a
 * return parameter of function.
 */

typedef enum PWMSP001_ErrorCodesType{
 /**
  * This error code would be returned if the current API operation is not
  * possible because the App is in certain state. E.g PWMSP001_Start
  * API can be called only when the App instance is in
  * PWMSP001_INITIALISED State.
  */
    /**
     * @cond INTERNAL_DOCS
     * @param MODULENAME PWMSP001
     * @endcond
    */
    /**
     * @cond INTERNAL_DOCS
     * @param ERRCODESTRING1 PWMSP001_OPER_NOT_ALLOWED_ERROR
     * @param STRCODESTRING1 Function execution is not allowed in the current state
     * @endcond
    */  
  PWMSP001_OPER_NOT_ALLOWED_ERROR = 1,
 /**
  * This error code means that the parameters passed to an API are invalid
  */
  /**
   * @cond INTERNAL_DOCS
   * @param ERRCODESTRING2 PWMSP001_INVALID_PARAM_ERROR
   * @param STRCODESTRING2 Input parameter is not valid
   * @endcond
  */  
  PWMSP001_INVALID_PARAM_ERROR,

  /* Debug Log Codes starts here*/
  /**
   * DebugLog Message Id for Function Entry
   */
  /**
   * @cond INTERNAL_DOCS
   * @param ERRCODESTRING3 PWMSP001_FUNCTION_ENTRY
   * @param STRCODESTRING3 Entered Function %s
   * @endcond
  */  
  PWMSP001_FUNCTION_ENTRY,
  /**
   * DebugLog Message Id for Function Exit
   */
  /**
   * @cond INTERNAL_DOCS
   * @param ERRCODESTRING4 PWMSP001_FUNCTION_EXIT
   * @param STRCODESTRING4 Exited Function %s
   * @endcond
  */  
  PWMSP001_FUNCTION_EXIT
}PWMSP001_ErrorCodesType;

/**
 * This enumerates the events that can be genertedcby this app
 */
typedef enum PWMSP001_EventNameType
{
  /**
   * This is the period match interrupt
   */
  PWMSP001_PERIODMATCHEVENT = 0,
  /**
   * This is the compare match while counting UP interrupt
   */
  PWMSP001_COMPAREMATCHEVENT = 2,
  /**
   * This is the external start interrupt i.e. Event 0 interrupt
   */
  PWMSP001_EXTSTARTEVENT = 8,
  /**
   * This is the external stop interrupt i.e. Event 1 interrupt
   */
  PWMSP001_EXTSTOPEVENT = 9,
  /**
   * This is the trap interrupt i.e. Event 2 interrupt
   */
  PWMSP001_TRAPEVENT = 10,
}PWMSP001_EventNameType;


/*******************************************************************************
 *                             STRUCTURES                                     **
 ******************************************************************************/
/**
 * This structure contains the timer register values for compare register,
 * period register
 */
typedef struct PWMSP001_TimerRegsType{
 /**
  * This holds the value of compare register
  */
  uint32_t CompReg;
 /**
  * This holds the value of period register
  */
  uint32_t PeriodReg;
 /**
  * This holds the current timer register value.
  */
  uint32_t TimerReg;

}PWMSP001_TimerRegsType;

/**
 * This structure will hold the configuration parameters which change at run
 * time.
 */
typedef struct PWMSP001_DynamicDataType{
 /**
  * This parameter tells state of the slice
  */
  PWMSP001_StateType StateType;

}PWMSP001_DynamicDataType;

/**
 * This structure holds all the static configuration parameters for the Single
 * Phase PWM APP.
 */
typedef struct PWMSP001_HandleType{

 /**
  * This parameter gives the active level of the external trap signal\n
  * 0 : Active low\n
  * 1 : Active high
  */
  const uint8_t kTrapLevel;    
  /**
   * This decides whether to start the app after initialization
   */  
  const uint8_t StartControl;      
    /**
 * This is the CCU4 lock resolution
 */
  const float kResolution;
  /**
  * This is the initial compare register value which corresponds to initial
  * duty cycle. Duty cycle can be entered by the user in GUI as compare register
  * value or directly the duty cycle value.
  */
  const uint32_t kCompareValue;
 /**
  * This parameter is used to store whether CC4 slice is in single shot mode or
  * in periodic mode.\n
  * 0 : Periodic mode \n
  * 1 : Single shot mode \n
  */
  const uint8_t kTimerMode;
 /**
  * This parameter saves the dither compare value. This value is written in
  * the CC4yDITS register.
  *
  */
  const uint8_t kDitherCompare;
 /**
  * This parameter tells whether to start the CC4 slice with external trigger
  * or by the SW trigger. \n
  * 0 : Software trigger\n
  * 1 : External hardware trigger
  */
  const uint8_t kExtStartTrig;
 /**
  * This parameter tells whether to stop the CC4 slice with external trigger or
  * by the SW trigger.\n
  * 0 : Software trigger\n
  * 1 : External hardware trigger
  */
  const uint8_t kExtStopTrig;
 /**
  * This parameter selects the passive level of the output  - Active High or
  * Active Low\n
  * 0 : Active Low\n
  * 1 : Active High
  */
  const uint8_t kPassiveLevel;
 /**
  * This indicates whether TRAP signal will have an effect on output signal.\n
  * 0 : Disable\n
  * 1 : Enable
  */
  const uint8_t kTrapEnable;
  /**
    * This configures the synchronization with the PWM signal is required or
    * not.\n
    * 0 : Trap is not synchronized with PWM output signal\n
    * 1 : Trap is synchronized with PWM output signal
    */
  const uint8_t kTrapSync;
 /**
  * This indicates whether to exit from TRAP state automatically when TRAP
  * condition is removed or SW trigger is required to exit from the TRAP state.\n
  * 0 : Auto Exit\n
  * 1 : SW Exit
  */
  const uint8_t kTrapExitControl;
 /**
  * This is the pointer to the CMSIS CCU4 kernel register structure.
  */
  CCU4_GLOBAL_TypeDef* const CC4yKernRegsPtr;
 /**
  * This is the pointer to the CMSIS CCU4 slice register structure.
  */
  CCU4_CC4_TypeDef* const CC4yRegsPtr;
 /**
  * This is the pointer to the CMSIS CCU4 slice register structure. This value
  * will be same as CC4yRegsPtr if timer concatenation is not used.
  */
  CCU4_CC4_TypeDef* const CC4yRegs1Ptr;
 /**
  * This parameter tells whether timer concatenation is required or not.\n
  * 0 : No Timer Concatenation\n
  * 1 : Timer concatenation
  */
  const uint8_t kTimerConcatenation;
 /**
  * This parameter configures dither mode.\n
  * 0 : Dither is disabled\n
  * 1 : Period is extended but duty cycle is constant\n
  * 2 : Period is constant and duty cycle is extended\n
  * 3 : Both duty cycle and period are extended
  */
  const uint8_t kDitherSetting;
 /**
  * This parameter holds the prescalar divider value to achieve given
  * resolution.
  */
  const uint8_t kCCUPrescalar;
 /**
  * This parameter gives the active edge of the external start signal
  *
  */
  const PWMSP001_EdgeTriggerType kStartEdge;
 /**
  * This parameter gives the active edge of the external stop signal
  */
  const PWMSP001_EdgeTriggerType kStopEdge;
  /**
    * Period register value computed as per counting mode
    * This represents the PWM frequency.
    */
  const uint32_t kPeriodVal;
  /**
    * Maximum possible period value computed.
    */
  const uint32_t kMaxPeriodVal;
  /**
   * This decides whether to enable interrupts at initialization time. This stores the information in a format of 32-bit register (INTE)
   * with a bit-field for each interrupt.
   */
  const uint32_t InterruptControl;
/**
 * This gives the mode in which timer is started when external trigger is used.
 */
  const PWMSP001_ExtStartConfigType ExtStartConfigType;
  /**
   * This gives the mode in which timer is stopped when external trigger is used.
   */
  const PWMSP001_ExtStopConfigType ExtStopConfigType;
  /**
   * This is the counting mode of the timer - edge-aligned or center-aligned
   */
  const PWMSP001_CountingModeType CountingModeType;
  /**
   * This is the slice number for the first slice.
   */
  const PWMSP001_CCUInUseType FirstSlice;
  /**
   * This is the slice number for the second slice in case of timer concatenation
   */
  const PWMSP001_CCUInUseType SecondSlice;
  /**
   * This is the dynamic data handle of the app
   */
  PWMSP001_DynamicDataType * const DynamicDataType;
  /**
   * This is the function pointer for the SetCompare function
   */
  PWMSP001_SetCompareFuncionPtr SetCompareFuncPtr;
  /**
   * This is the function pointer for the SetDutyCycle function
   */
  PWMSP001_SetDutyFunctionPtr SetDutyFuncPtr;

}PWMSP001_HandleType;

/**
 * @}
 */

/**
 * @ingroup PWMSP001_apidoc
 * @{
 */
/*******************************************************************************
 **FUNCTION PROTOTYPES                                                        **
*******************************************************************************/

/**
 * @brief This function will initialize CCU4x_CCy global and slice registers
 *        with user configured values.
 * 
 * @return void\n<BR>
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 * 
 * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
 *  DAVE_Init(); //PWMSP001_Init is called within DAVE_Init()

 *  return 0;
 * }
 * @endcode
 */
void PWMSP001_Init(void);

/**
 * @brief This function will reset CCU4_CCy slice registers with default values.
 * @param[in]   HandlePtr Pointer to PWMSP001_HandleType structure
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * else
 * PWMSP001_OPER_NOT_ALLOWED_ERROR<BR>
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 * 
 * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
 * DAVE_Init();
 * status_t Status;
 * Status = PWMSP001_Deinit((PWMSP001_HandleType*)&PWMSP001_Handle0);
 * return 0;
 * }
 * @endcode
 */
status_t PWMSP001_Deinit(const PWMSP001_HandleType* HandlePtr);

/**
 * @brief This function will start the Single Phase PWM APP which will in turn
 * start CCU4_CCy slice timer to generate PWM. It also enables the interrupt and
 * clears the IDLE mode of the CCU.\n
 * <b>This function needs to be called to start the App
 * even if External Start is configured. </b>
 * @param[in]   HandlePtr Pointer to PWMSP001_HandleType structure
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * PWMSP001_OPER_NOT_ALLOWED_ERROR: If this function is called when not in the
 * state PWMSP001_INITIALIZED or PWMSP001_STOPPED<BR>
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 *
 * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
 *  status_t Status;
 *  DAVE_Init();
 *  //Start needs to be called only when "Start after initialization" is not checked
 *  Status = PWMSP001_Start((PWMSP001_HandleType*)&PWMSP001_Handle0);
 *  if (Status == (uint32_t)DAVEApp_SUCCESS)
 *  {
 *    //Do something
 *  }
 *  return 0;
 * }
 * @endcode
 */
status_t PWMSP001_Start(const PWMSP001_HandleType* HandlePtr);

/**
 * @brief This function will stop the Single Phase PWM APP which will stop
 * the CCU4_CCy slice.This disables the interrupts and set the IDLE mode
 * of the CCU.
 * @param[in]   HandlePtr Pointer to PWMSP001_HandleType structure
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * PWMSP001_OPER_NOT_ALLOWED_ERROR: If this function is called when not in the
 * state PWMSP001_RUNNING<BR>
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 *
 * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
 *  status_t Status;
 *  DAVE_Init();
 *  //Start needs to be called only when "Start after initialization" is not checked
 *  Status = PWMSP001_Start((PWMSP001_HandleType*)&PWMSP001_Handle0);
 *  if (Status == (uint32_t)DAVEApp_SUCCESS)
 *  {
 *    //Do something
 *  }
 *  Status = PWMSP001_Stop((PWMSP001_HandleType*)&PWMSP001_Handle0);
 *  return 0;
 * }
 * @endcode
 */
status_t PWMSP001_Stop(const PWMSP001_HandleType* HandlePtr);

/**
 * @brief This function will update the duty cycle of the output waveform.\n
 * Always ensure compare value should be less than the period value configured.
 * <b>Duty cycle is given in terms of the compare register value and not in terms
 * of the percentage.</b>
 * @param[in]   HandlePtr Pointer to PWMSP001_HandleType structure
 * @param[in]   Compare Compare register value
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * PWMSP001_OPER_NOT_ALLOWED_ERROR: If this function is called when in the state
 * PWMSP001_UNINTIALIZED.\n
<BR>
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 *
 * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
 *  status_t Status;
 *  uint32_t Counter;
 *  uint32_t compare;
 *  uint32_t period;
 *  float duty;
 *  compare = 0;
 *  duty = 0;
 *  //Period value for PWM frequency of 900Hz with 120Mhz SystemClock
 *	period = 0x10469;
 *  DAVE_Init();
 *  //Start needs to be called only when "Start after initialization" is not checked
 *  Status = PWMSP001_Start((PWMSP001_HandleType*)&PWMSP001_Handle0);
 *
 *  while(1)
 *  {
      compare = (uint32_t)(period * ((100 - duty)/100));
      //Set the compare value
      Status = PWMSP001_SetCompare(&PWMSP001_Handle0,compare);
      // Incrementing duty by 2% for each step
      duty += 2;
      //Resetting duty
      if(duty > 100)
      {
        duty = 0;
      }
      // delay
      for(Counter = 0;Counter <=0xFFFF;Counter++);
 *  };
 *  return 0;
}
* @endcode
 */
status_t PWMSP001_SetCompare
(
  const PWMSP001_HandleType* HandlePtr,
  uint32_t Compare
);

/**
 * @brief This function will update the duty cycle of the output waveform.\n
 * <b>Duty cycle is given in terms of the percentage. </b>
 * @param[in]   HandlePtr Pointer to PWMSP001_HandleType structure
 * @param[in]   Duty Dutycycle value in percentage
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * PWMSP001_OPER_NOT_ALLOWED_ERROR: If this function is called when in the state
 * PWMSP001_UNINTIALIZED.\n
 * PWMSP001_INVALID_PARAM_ERROR: If duty cycle is not in the range 0 to 100<BR>
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 *
 * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
    status_t Status;
    uint32_t Counter;
    DAVE_Init();
    //Start needs to be called only when "Start after initialization" is not checked
    Status = PWMSP001_Start((PWMSP001_HandleType*)&PWMSP001_Handle0);
    // Wait to observe the waveform
    for(Counter = 0;Counter <=0xFFFF;Counter++);
    // Change duty cycle value
    //It should give 60 % duty cycle.
    Status = PWMSP001_SetDutyCycle((PWMSP001_HandleType*)&PWMSP001_Handle0,60);
    for(Counter = 0;Counter <=0xFFFF;Counter++);

    while(1);
    return 0;
}
* @endcode
 */
status_t PWMSP001_SetDutyCycle
(
  const PWMSP001_HandleType* HandlePtr,
  float Duty
);

/**
 * @brief This function will modify the PWM frequency. \n
 * Please call PWMSP001_SetCompare() or PWMSP001_SetDutyCycle() explicitly after changing
 * PWM frequency to make sure that compare register value is not greater than period register value.\n
 * <b> PWM frequency is given in terms of the PWM period.\n
 * In case of timer concatenation,given value is split into two 16-bit values
 * and they are programmed in Second and First slice.\n
 * e.g. 0x80000010 value is written as 0x8000 as Period register of Second slice
 * and 0x0010 as period register of first slice.
 * Total PWM period is ((0x8000 +1) * 0x0010) + 1.
 * </b>
 * @param[in]   HandlePtr Pointer to PWMSP001_HandleType structure
 * @param[in]   Period It corresponds to period register's value
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * PWMSP001_OPER_NOT_ALLOWED_ERROR: If this function is called when in the state
 * PWMSP001_UNINTIALIZED.<BR>
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 *
 * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
    status_t Status;
    uint32_t Counter;
    DAVE_Init();
    //Start needs to be called only when "Start after initialization" is not checked
    Status = PWMSP001_Start((PWMSP001_HandleType*)&PWMSP001_Handle0);
    // Wait to observe the waveform
    for(Counter = 0;Counter <=0xFFFF;Counter++);
    // Change PWM frequency
    //  PR = 50000
    Status = PWMSP001_SetPeriod((PWMSP001_HandleType*)&PWMSP001_Handle0, 50000);
    //After changing period, set the duty cycle explicitly.
    Status = PWMSP001_SetDutyCycle((PWMSP001_HandleType*)&PWMSP001_Handle0,60);
    // Wait to observe the waveform
    for(Counter = 0;Counter <=0xFFFF;Counter++);
    while(1);
    return 0;
}
* @endcode
 */
status_t PWMSP001_SetPeriod
(
  const PWMSP001_HandleType* HandlePtr,
  uint32_t Period
);

/**
 * @brief This function will modify the PWM frequency and duty cycle. \n
 * <b> PWM frequency is given in terms of the PWM period register and duty cycle is
 * given in terms of the compare register value.\n
 * In case of timer concatenation,given <b>period value</b> is split into two 16-bit values
 * and they are programmed in Second and First slice.\n
 * e.g. 0x80000010 value is written as 0x8000 as Period register of Second slice
 * and 0x0010 as period register of first slice.
 * Total PWM period is ((0x8000 +1) * 0x0010) + 1.
 * </b>
 * @param[in]   HandlePtr Pointer to PWMSP001_HandleType structure
 * @param[in]   Period It corresponds to period register's value
 * @param[in]   Compare It corresponds to compare register's value
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * PWMSP001_OPER_NOT_ALLOWED_ERROR: If this function is called when in the state
 * PWMSP001_UNINTIALIZED.<BR>
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 *
 * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
    status_t Status;
    uint32_t Counter;
    DAVE_Init();
    //Start needs to be called only when "Start after initialization" is not checked
    Status = PWMSP001_Start((PWMSP001_HandleType*)&PWMSP001_Handle0);
    // Wait to observe the waveform
    for(Counter = 0;Counter <=0xFFFF;Counter++);
    // Change PWM frequency
    //  PR = 50000
    //  CR = 20000
    Status = PWMSP001_SetPeriodAndCompare((PWMSP001_HandleType*)&PWMSP001_Handle0, 50000, 20000);
    while(1);
    return 0;
}
* @endcode
 */
status_t PWMSP001_SetPeriodAndCompare
(
  const PWMSP001_HandleType* HandlePtr,
  uint32_t Period,
  uint32_t Compare
);

/**
 * @brief This function will modify the PWM frequency.\n
 * <b> PWM frequency is given in Hertz.\n
 * Please call PWMSP001_SetCompare() or PWMSP001_SetDutyCycle() explicitly after 
 * changing PWM frequency to make sure that compare register value is not greater 
 * than period register value.\n
 * If the configured frequency is causing switching between with and without 
 * Timer Concatenation, port assignment for pwm ouput may cause issue and no PWM 
 * will be coming at the port.
 * </b>
 * @param[in]   HandlePtr Pointer to PWMSP001_HandleType structure
 * @param[in]   PwmFreq It corresponds to PWM frequency
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * PWMSP001_OPER_NOT_ALLOWED_ERROR: If this function is called when in the state
 * PWMSP001_UNINTIALIZED.\n
 * PWMSP001_INVALID_PARAM_ERROR: If frequency is zero<BR>
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 *
 * @code
 * #include <DAVE3.h>

 *
 * int main(void)
 * {
    status_t Status;
    uint32_t Counter;
    DAVE_Init();
     //Start needs to be called only when "Start after initialization" is not checked
    Status = PWMSP001_Start((PWMSP001_HandleType*)&PWMSP001_Handle0);
    // Wait to observe the waveform
    for(Counter = 0;Counter <=0xFFFF;Counter++);
    // Change duty cycle value
    //It should give 60 % duty cycle
    Status = PWMSP001_SetDutyCycle((PWMSP001_HandleType*)&PWMSP001_Handle0,60);
    for(Counter = 0;Counter <=0xFFFF;Counter++);
    // Change PWM frequency to 2500 Hz
    Status = PWMSP001_SetPwmFreq((PWMSP001_HandleType*)&PWMSP001_Handle0, 2500);
    //After changing frequency, set the duty cycle explicitly.
    Status = PWMSP001_SetDutyCycle((PWMSP001_HandleType*)&PWMSP001_Handle0,60);
    // Wait to observe the waveform
    for(Counter = 0;Counter <=0xFFFF;Counter++);

    while(1);
    return 0;
}
* @endcode
 */
status_t PWMSP001_SetPwmFreq
(
  const PWMSP001_HandleType* HandlePtr,
  float PwmFreq
);

/**
 * @brief This function will modify the PWM frequency and duty cycle. \n
 * <b> PWM frequency is given in Hertz. and Duty cycle is given in %\n
 * If the configured frequency is causing switching between with and without 
 * Timer Concatenation, port assignment for pwm ouput may cause issue and no PWM 
 * will be coming at the port.
 * </b>
 * @param[in]   HandlePtr Pointer to PWMSP001_HandleType structure
 * @param[in]   PwmFreq It corresponds to PWM frequency
 * @param[in]   Duty It corresponds to PWM duty cycle
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * PWMSP001_OPER_NOT_ALLOWED_ERROR: If this function is called when in the state
 * PWMSP001_UNINTIALIZED <BR>
 * PWMSP001_INVALID_PARAM_ERROR: If frequency is zero or Duty is not in the range 0 to 100<BR>
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 *
 * @code
 * #include <DAVE3.h>

 *
 * int main(void)
 * {
    status_t Status;
    uint32_t Counter;
    DAVE_Init();
     //Start needs to be called only when "Start after initialization" is not checked
    Status = PWMSP001_Start((PWMSP001_HandleType*)&PWMSP001_Handle0);
    // Wait to observe the waveform
    for(Counter = 0;Counter <=0xFFFF;Counter++);
    // Change PWM frequency to 2500 Hz and duty cycle of 50%
    Status = PWMSP001_SetPwmFreqAndDutyCycle((PWMSP001_HandleType*)&PWMSP001_Handle0, 2500, 50);
    while(1);
    return 0;
}
* @endcode
 */
status_t PWMSP001_SetPwmFreqAndDutyCycle
(
  const PWMSP001_HandleType* HandlePtr,
  float PwmFreq,
  float Duty
);

/**
 * @brief This function will update the timer value when timer is stopped.
 * This is used to update the starting value of the timer. This will be useful in
 * single shot mode.
 * @param[in]   HandlePtr Pointer to PWMSP001_HandleType structure
 * @param[in]   TimerVal
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * PWMSP001_OPER_NOT_ALLOWED_ERROR: If this function is called when not in the state
 * PWMSP001_INTIALIZED or or PWMSP001_STOPPED<BR>
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 * 
 * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
      status_t Status;
      DAVE_Init();
      //This will load the timer with 500. 
      PWMSP001_SetTimerVal((PWMSP001_HandleType*)&PWMSP001_Handle0, 500);
       //Start needs to be called only when "Start after initialization" is not checked
      Status = PWMSP001_Start((PWMSP001_HandleType*)&PWMSP001_Handle0);
      while(1);
      return 0; 
   }
   * @endcode
 */
status_t PWMSP001_SetTimerVal
(
  const PWMSP001_HandleType* HandlePtr,
  uint32_t TimerVal
);

/**
 * @brief This function will read the status of the timer - Running (1) or IDLE (0).
 * @param[out]  TimerStatus It holds the Timer Register's Status
 * @param[in]   HandlePtr Pointer to PWMSP001_HandleType structure
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * PWMSP001_OPER_NOT_ALLOWED_ERROR: If this function is called when in the state
 * PWMSP001_UNINTIALIZED.<BR>
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 * 
 * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
      status_t Status;
      uint32_t TimerStatus;
      DAVE_Init();
       //Start needs to be called only when "Start after initialization" is not checked
      Status = PWMSP001_Start((PWMSP001_HandleType*)&PWMSP001_Handle0);
      Status = PWMSP001_GetTimerStatus((PWMSP001_HandleType*)&PWMSP001_Handle0, &TimerStatus);
      if(TimerStatus == (uint8_t)SET)
      {
        //Timer is running
      }
      while(1);
      return 0; 
   }
   * @endcode
 */
status_t PWMSP001_GetTimerStatus
(
  const PWMSP001_HandleType* HandlePtr,
  uint32_t* TimerStatus
);

/**
 * @brief This function is the status function to read the values of the
 * compare register, period register and timer register.
 * @param[out]  TimerRegs It holds the Timer Register's value
 * @param[in]   HandlePtr Pointer to PWMSP001_HandleType structure
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * PWMSP001_OPER_NOT_ALLOWED_ERROR: If this function is called when in the state
 * PWMSP001_UNINTIALIZED.\n
 * PWMSP001_INVALID_PARAM_ERROR: If TimerRegs is not a valid pointer.<BR>
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 * 
 * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
      status_t Status;
      PWMSP001_TimerRegsType TimerVal;
      DAVE_Init();
       //Start needs to be called only when "Start after initialization" is not checked
      Status = PWMSP001_Start((PWMSP001_HandleType*)&PWMSP001_Handle0);
      Status = PWMSP001_GetTimerRegsVal((PWMSP001_HandleType*)&PWMSP001_Handle0, &TimerVal);

      while(1);
      return 0; 
   }
* @endcode
 */
status_t PWMSP001_GetTimerRegsVal
(
  const PWMSP001_HandleType* HandlePtr,
  PWMSP001_TimerRegsType* TimerRegs
);

/**
 * @brief This function will request for the shadow transfer for updating
 * compare and period register values from respective shadow registers.
 * This function needs to be called when shadow compare and period registers are
 * updated explicitely by top level app.\n
 * <b>NOTE: </b> SetDutyCycle and SetPwmFreq functions handle shadow
 * transfer request. No need to call this function after changing the duty cycle
 * and PWM frequency.
 * @param[in]   HandlePtr Pointer to PWMSP001_HandleType structure
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * PWMSP001_OPER_NOT_ALLOWED_ERROR: If this function is called when in the state
 * PWMSP001_UNINTIALIZED .<BR>
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 * 
 * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
      status_t Status;

      DAVE_Init();
       //Start needs to be called only when "Start after initialization" is not checked
      Status = PWMSP001_Start((PWMSP001_HandleType*)&PWMSP001_Handle0);
      //This is the utility function to initiate the shadow transfer. 
      //This needs to be called if period or compare value is explicitly changed by the user
      Status = PWMSP001_SWRequestShadowTransfer((PWMSP001_HandleType*)&PWMSP001_Handle0);

      while(1);
      return 0; 
   }
* @endcode
 */
status_t PWMSP001_SWRequestShadowTransfer
(
  const PWMSP001_HandleType* HandlePtr
);



/**
 * @brief This function is the status function to read the value of the
 * period register.
 * Period register value is required to calculate the compare register value
 * as per the new duty cycle.
 * @param[out]  PeriodReg Value of Period register
 * @param[in]   HandlePtr Pointer to PWMSP001_HandleType structure
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * PWMSP001_OPER_NOT_ALLOWED_ERROR: If this function is called when in the state
 * PWMSP001_UNINTIALIZED .<BR>
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 * 
 * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
      status_t Status;
      uint32_t Period;
      DAVE_Init();
       //Start needs to be called only when "Start after initialization" is not checked
      Status = PWMSP001_Start((PWMSP001_HandleType*)&PWMSP001_Handle0);
      //Period will get the period register value. 
      Status = PWMSP001_GetPeriodReg((PWMSP001_HandleType*)&PWMSP001_Handle0, &Period);

      while(1);
      return 0; 
   }
* @endcode
 */
status_t PWMSP001_GetPeriodReg
(
  const PWMSP001_HandleType* HandlePtr,
  uint32_t* PeriodReg
);

/**
 * @brief This function is used to reset the TRAP flag.
 * It checks whether Trap condition is reset and then only resets the Trap flag.
 * For SW exit, it also clears the Trap Interrupt.
 * @param[in]   HandlePtr Pointer to PWMSP001_HandleType structure
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * PWMSP001_OPER_NOT_ALLOWED_ERROR: If this function is called when in the state
 * PWMSP001_RUNNING OR PWMSP001_INITIALIZED.\n
 * PWMSP001_INTRAP_ERROR: if Trap condition is reset.<BR>
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 * 
 * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
      status_t Status;
      DAVE_Init();
       //Start needs to be called only when "Start after initialization" is not checked
      Status = PWMSP001_Start((PWMSP001_HandleType*)&PWMSP001_Handle0);
      //Reset the trap flag if SW exit is selected
      PWMSP001_ResetTrapFlag((PWMSP001_HandleType*)&PWMSP001_Handle0);

      while(1);
      return 0; 
   }
* @endcode
 */
void PWMSP001_ResetTrapFlag(const PWMSP001_HandleType* HandlePtr);

/**
 * @brief This function will enable the event. This should be called by the user first
 * for interrupt handling if "Enable at initialization" is not selected.
 *
 * @param [in] HandlePtr pointer to the Instance variable<BR>
 * @param [in] Event Event to be enabled <BR>
 * @return status_t<BR>
 * DAVEApp_SUCCESS: if the function is successful<BR>
 * PWMSP001_OPER_NOT_ALLOWED_ERROR: If the function is called in
 * PWMSP001_UNINITIALIZED State.<BR>
 *
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 * 
 * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
      status_t Status;
      DAVE_Init();
      //This needs to be called when "Enable interrupt at initialization" is not checked.
      Status = PWMSP001_EnableEvent((PWMSP001_HandleType*)&PWMSP001_Handle0, PWMSP001_PERIODMATCHEVENT);
       //Start needs to be called only when "Start after initialization" is not checked
      Status = PWMSP001_Start((PWMSP001_HandleType*)&PWMSP001_Handle0);
      while(1);
      return 0; 
   }
* @endcode 
 */
status_t PWMSP001_EnableEvent
(
     const PWMSP001_HandleType * HandlePtr,
     const PWMSP001_EventNameType Event
);

/**
 * @brief This function will disable the event. This disables the event in the CCU4
 * register and not in the NVIC.
 *
 * @param [in] HandlePtr pointer to the Instance variable<BR>
 * @param [in] Event Event to be disabled <BR>
 * @return status_t<BR>
 * DAVEApp_SUCCESS: if the function is successful<BR>
 * PWMSP001_OPER_NOT_ALLOWED_ERROR: If the function is called in
 * PWMSP001_UNINITIALIZED State.<BR>
 *
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 * 
 * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
      status_t Status;
      DAVE_Init();
      //This needs to be called when "Enable interrupt at initialization" is not checked.
      Status = PWMSP001_EnableEvent((PWMSP001_HandleType*)&PWMSP001_Handle0, PWMSP001_PERIODMATCHEVENT);
       //Start needs to be called only when "Start after initialization" is not checked
      Status = PWMSP001_Start((PWMSP001_HandleType*)&PWMSP001_Handle0);
      //Disable the period match interrupt
      Status = PWMSP001_DisableEvent((PWMSP001_HandleType*)&PWMSP001_Handle0, PWMSP001_PERIODMATCHEVENT);
      while(1);
      return 0; 
   }
* @endcode 
 */
status_t PWMSP001_DisableEvent
(
    const PWMSP001_HandleType * HandlePtr,
    const PWMSP001_EventNameType Event
);

/**
 * @brief This function will clear the pending event.
 *
 * @param [in] HandlePtr pointer to the Instance variable<BR>
 * @param [in] Event Event to be cleared <BR>
 * @return status_t<BR>
 * DAVEApp_SUCCESS: if the function is successful<BR>
 * PWMSP001_OPER_NOT_ALLOWED_ERROR: If the function is called in
 * PWMSP001_UNINITIALIZED State.<BR>
 *
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 * 
 * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
      status_t Status;
      DAVE_Init();
      //This needs to be called when "Enable interrupt at initialization" is not checked.
      Status = PWMSP001_EnableEvent((PWMSP001_HandleType*)&PWMSP001_Handle0, PWMSP001_PERIODMATCHEVENT);
       //Start needs to be called only when "Start after initialization" is not checked
      Status = PWMSP001_Start((PWMSP001_HandleType*)&PWMSP001_Handle0);
      while(1);
      return 0; 
   }
   
   void PWMSP001_PeriodMatchInterruptHandler(void)
   {
     //do something and then reset the event
     PWMSP001_ClearPendingEvent((PWMSP001_HandleType*)&PWMSP001_Handle0, PWMSP001_PERIODMATCHEVENT);
   }
* @endcode 
 * 
 * 
 */
status_t PWMSP001_ClearPendingEvent
(
    const PWMSP001_HandleType * HandlePtr,
    const PWMSP001_EventNameType Event
);

/**
 * @brief This function will set the event by SW.This function should not be called 
 * from the interrupt handler routine to forcefully set the same interrupt. This would
 * result in the infinite loop. 
 *
 * @param [in] HandlePtr pointer to the Instance variable<BR>
 * @param [in] Event Event to be set <BR>
 * @return status_t<BR>
 * DAVEApp_SUCCESS: if the function is successful<BR>
 * PWMSP001_OPER_NOT_ALLOWED_ERROR: If the function is called in
 * PWMSP001_UNINITIALIZED State.<BR>
 *
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 * 
* @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
      status_t Status;
      DAVE_Init();
      //This needs to be called when "Enable interrupt at initialization" is not checked.
      Status = PWMSP001_EnableEvent((PWMSP001_HandleType*)&PWMSP001_Handle0, PWMSP001_PERIODMATCHEVENT);
       //Start needs to be called only when "Start after initialization" is not checked
      Status = PWMSP001_Start((PWMSP001_HandleType*)&PWMSP001_Handle0);
      //forcefuly set the event
      Status = PWMSP001_SetPendingEvent((PWMSP001_HandleType*)&PWMSP001_Handle0, PWMSP001_PERIODMATCHEVENT);
      while(1);
      return 0; 
   }
* @endcode 
 */
status_t PWMSP001_SetPendingEvent
(
    const PWMSP001_HandleType * HandlePtr,
    const PWMSP001_EventNameType Event
);

/**
 * @brief This function will check whether given event is set.
 *
 * @param [in] HandlePtr pointer to the Instance variable<BR>
 * @param [in] Event Event to be set <BR>
 * @param [in] EvtStatus Status of the eventwhether it is set <BR>
 * @return status_t<BR>
 * DAVEApp_SUCCESS: if the function is successful<BR>
 * PWMSP001_OPER_NOT_ALLOWED_ERROR: If the function is called in
 * PWMSP001_UNINITIALIZED State.<BR>
 *
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 * 
 * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
      status_t Status;
      DAVE_Init();
      //This needs to be called when "Enable interrupt at initialization" is not checked.
      Status = PWMSP001_EnableEvent((PWMSP001_HandleType*)&PWMSP001_Handle0, PWMSP001_PERIODMATCHEVENT);
       //Start needs to be called only when "Start after initialization" is not checked
      Status = PWMSP001_Start((PWMSP001_HandleType*)&PWMSP001_Handle0);
      while(1);
      return 0; 
   }
   
   void PWMSP001_PeriodMatchInterruptHandler(void)
   {
     uint8_t EventStatus;
     PWMSP001_GetPendingEvent((PWMSP001_HandleType*)&PWMSP001_Handle0, PWMSP001_PERIODMATCHEVENT, &EventStatus);
     if(EvtStatus == (uint8_t)SET)
     {
       //do something and then reset the event
       PWMSP001_ClearPendingEvent((PWMSP001_HandleType*)&PWMSP001_Handle0, PWMSP001_PERIODMATCHEVENT);
     }
   }
* @endcode 
 */
status_t PWMSP001_GetPendingEvent
(
    const PWMSP001_HandleType * HandlePtr,
    const PWMSP001_EventNameType Event,
    uint8_t*EvtStatus
);

#include "PWMSP001_Conf.h"

/**
 * @}
 */
#ifdef __cplusplus
}
#endif

#endif /* SINGLEPHPWM_H_ */
