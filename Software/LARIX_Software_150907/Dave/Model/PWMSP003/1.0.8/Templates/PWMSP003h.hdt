/*CODE_BLOCK_BEGIN[pwmsp003.h]*/

/*******************************************************************************
**                                                                            **
**                                                                            **
** Copyright (C) 2013 Infineon Technologies AG. All rights reserved.          **
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
** PLATFORM : Infineon XMC4000/XMC1000 Series                                 **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR   : App Developer                                                   **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                      Revision History                                      **
********************************************************************************
   1.0.6  31-Jan-2014   1. Initial version
                        2. Minor updates to remove warnings
                        3. Document automation by DaveDocGen script
                        4. XMC1000 VQFN package support added
                           XMC4000 Device support extended for XMC4500 AC step
                           XMC4400 AB Step and XMC4200 AB Step.
   1.0.8  28-Feb-2014   1. Removal of XMC4100 header file inclusion 						   
*******************************************************************************/

/*******************************************************************************
**                      Author(s) Identity                                    **
********************************************************************************
**                                                                            **
** Initials     Name                                                          **
** ---------------------------------------------------------------------------**
** SSAM         Sridhar Sampath                                               **
*******************************************************************************/

/**
 * @file  PWMSP003.h
 * @brief This file exposes the interfaces to use this App
 */

#ifndef _PWMSP003_H_
#define _PWMSP003_H_

#ifdef __cplusplus
extern "C" {
#endif

/*******************************************************************************
** INCLUDE FILES:
*******************************************************************************/
/* Incudes device header file to access the registers */
#include <uc_id.h>

#if (__TARGET_DEVICE__ == XMC45)
#include <XMC4500.h>
#elif (__TARGET_DEVICE__ == XMC44)
#include <XMC4400.h>
#elif ((__TARGET_DEVICE__ == XMC42) || (__TARGET_DEVICE__ == XMC41))
#include <XMC4200.h>
#elif (__TARGET_DEVICE__ == XMC13)
#include <XMC1300.h>
#elif (__TARGET_DEVICE__ == XMC12)
#include <XMC1200.h>
#elif (__TARGET_DEVICE__ == XMC11)
#include <XMC1100.h>
#endif

#ifndef TYPES_CONFIG_H_
#include "../../inc/LIBS/types.h"
#endif

#ifndef CCU4GLOBAL_H_
#include "../../inc/CCU4GLOBAL/CCU4GLOBAL.h"
#endif

#ifdef DAVE_CE
#include "../../inc/PWMSP003/PWMSP003_Conf.h"
#endif

/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/
/**
  * @ingroup PWMSP003_constants
  * @{
  */

/** Total number of Slices in a CCU4 kernel */
#define PWMSP003_NO_OF_SLICES 0x04U

/** Bits to clear the CCU4 slice */
#define PWMSP003_SLICE_CLEAR 0x07U

/** Mode setting for normal prescaler */
#define PWMSP003_NORMAL_PRESCALER 0x0U
/** Mode setting for Floating prescaler */
#define PWMSP003_FLOATING_PRESCALER 0x1U

/** This is the value to set compare mode*/
#define PWMSP003_COMPARE_MODE (uint32_t)0x00

/** Bit mask to set Start/Stop/Mod Enable bits */
#define PWMSP003_STARTEVENT_BITMASK 0x03
/** Bit mask to set Trap Enable bit */
#define PWMSP003_TRAPEVENT_BITMASK 0x01
/** Bit mask to set Override Enable bit */
#define PWMSP003_OVERRIDEEVENT_BITMASK 0x01

/** To clear all the interrupts of CCU*/
#define PWMSP003_ALL_CCU4_INTR_CLEAR 0x00000F0FU

typedef void (*PWMSP003_SetCompareFuncionPtr)
                                         (const void* Handle, uint32_t Compare);
typedef void (*PWMSP003_SetDutyFunctionPtr)(const void* Handle, float Duty);
/**
  * @}
  */

/*******************************************************************************
 *                                ENUMERATIONS                                **
 ******************************************************************************/
/**
  * @ingroup PWMSP003_enumerations
  * @{
  */

/**
 * This enumerates the states of the Single Phase PWMSP003 App.
 */
typedef enum PWMSP003_StateType{
  /**
   * This is the default state after power on reset
   */
  PWMSP003_UNINITIALIZED,
  /**
   * This is the INITIALIZED state in which APP is initialized as per selected
   * parameters.
  */
  PWMSP003_INITIALIZED,
 /**
  * This state indicates that CCU4_CCy slice timer is running.
  */
  PWMSP003_RUNNING,
 /**
  * This state indicates that CCU4_CCy slice timer is stopped.
  */
  PWMSP003_STOPPED

} PWMSP003_StateType;

/**
 * This enumerates the trigger type of external event inputs.
 */
typedef enum PWMSP003_EdgeTriggerType{
    /**
     * Trigger is not required.
     */
  PWMSP003_NO_TRIGGER,
    /**
     * Trigger on rising edge
     */
  PWMSP003_RISING_EDGE,
    /**
     * Trigger on falling edge
     */
  PWMSP003_FALLING_EDGE,
    /**
     * Trigger on both edges
     */
  PWMSP003_BOTH_EDGES
}PWMSP003_EdgeTriggerType;

/**
 * This enumerates the trigger type of external event inputs.
 */
typedef enum PWMSP003_ActiveLevelType{
    /**
     * Active on level high
     */
  PWMSP003_ACTIVE_ON_HIGH,
    /**
     * Active on level low
     */
  PWMSP003_ACTIVE_ON_LOW
}PWMSP003_ActiveLevelType;

/**
 * This enumerates the external start configuration of the timer.
 */
typedef enum PWMSP003_ExtStartConfigType
{
  /**
   * This only sets the RUN bit of the timer.
   */
  PWMSP003_START_TIMER,
  /**
   * This clears the timer register value and then sets the RUN bit.
   */
  PWMSP003_CLEAR_START_TIMER
}PWMSP003_ExtStartConfigType;

/**
 * This enumerates the external stop configuration of the timer.
 */
typedef enum PWMSP003_ExtStopConfigType
{
  /**
   * This only sets the RUN bit of the timer.
   */
  PWMSP003_STOP_TIMER,
  /**
   * This clears the timer register value and then sets the RUN bit.
   */
  PWMSP003_CLEAR_TIMER,
  /**
   * This clears the timer register value and then sets the RUN bit.
   */
  PWMSP003_CLEAR_STOP_TIMER
}PWMSP003_ExtStopConfigType;

/**
 * This enumerates the error codes of the Single Phase PWM APP which is a
 * return parameter of function.
 */

typedef enum PWMSP003_ErrorCodesType{
 /**
  * This error code would be returned if the current API operation is not
  * possible because the App is in certain state. E.g PWMSP003_Start
  * API can be called only when the App instance is in
  * PWMSP003_INITIALISED State.
  */
    /**
     * @cond INTERNAL_DOCS
     * @param MODULENAME PWMSP003
     * @endcond
    */
    /**
     * @cond INTERNAL_DOCS
     * @param ERRCODESTRING1 PWMSP003_OPER_NOT_ALLOWED_ERROR
     * @param STRCODESTRING1 Function execution is not allowed in current state
     * @endcond
    */
  PWMSP003_OPER_NOT_ALLOWED_ERROR = 1,
 /**
  * This error code means that the parameters passed to an API are invalid
  */
  /**
   * @cond INTERNAL_DOCS
   * @param ERRCODESTRING2 PWMSP003_INVALID_PARAM_ERROR
   * @param STRCODESTRING2 Input parameter is not valid
   * @endcond
  */
  PWMSP003_INVALID_PARAM_ERROR,

  /* Debug Log Codes starts here*/
  /**
   * DebugLog Message Id for Function Entry
   */
  /**
   * @cond INTERNAL_DOCS
   * @param ERRCODESTRING3 PWMSP003_FUNCTION_ENTRY
   * @param STRCODESTRING3 Entered Function %s
   * @endcond
  */
  PWMSP003_FUNCTION_ENTRY,
  /**
   * DebugLog Message Id for Function Exit
   */
  /**
   * @cond INTERNAL_DOCS
   * @param ERRCODESTRING4 PWMSP003_FUNCTION_EXIT
   * @param STRCODESTRING4 Exited Function %s
   * @endcond
  */
  PWMSP003_FUNCTION_EXIT
}PWMSP003_ErrorCodesType;

/**
 * This enumerates the events that can be generated by this app
 */
typedef enum PWMSP003_InterruptType
{
  /**
   * This is the period match interrupt while counting UP
   */
  PWMSP003_PERIODMATCH_COUNTUP_INTERRUPT = 0U,
  /**
   * This is One Match while counting DOWN interrupt
   */
  PWMSP003_ONEMATCH_COUNTDOWN_INTERRUPT = 1U,
  /**
   * This is the compare match while counting UP interrupt
   */
  PWMSP003_COMPAREMATCH_COUNTUP_INTERRUPT = 2U,
  /**
   * This is the compare match while counting DOWN interrupt
   */
  PWMSP003_COMPAREMATCH_COUNTDOWN_INTERRUPT = 3U,
  /**
   * This is the Event 0 interrupt
   */
  PWMSP003_EXTERNALEVENT_0_INTERRUPT = 8U,
  /**
   * This is the Event 1 interrupt
   */
  PWMSP003_EXTERNALEVENT_1_INTERRUPT = 9U,
  /**
   * This is the Event 2 interrupt
   */
  PWMSP003_EXTERNALEVENT_2_INTERRUPT = 10U,
  /**
   * This is the Trap Flag Status
   */
  PWMSP003_EXTERNALTRAP_INTERRUPT = 11U
}PWMSP003_InterruptType;

/**
 * This enumerates the External Events numbers for a single slice
 */
typedef enum PWMSP003_ExtEventType{

  /** Enumeration if no Event is mapped */
  PWMSP003_NO_EVENT = 0x0U,

  /** This is Event 0 */
  PWMSP003_EVENT_0 = 0x1U,

  /** This is Event 1 */
  PWMSP003_EVENT_1 = 0x2U,

  /** This is Event 2 */
  PWMSP003_EVENT_2 = 0x3U

} PWMSP003_ExtEventType;

/**
 * This enumerates the functionalities for the external Events
 */
typedef enum PWMSP003_ExtEventFunctionType{

  /** No functionality mapped to event */
  PWMSP003_NO_FUNCTION = -1,

  /** Timer Start functionality */
  PWMSP003_EXTERNAL_START = 0U,

  /** Timer Stop functionality */
  PWMSP003_EXTERNAL_STOP = 2U,

  /** Gating functionality */
  PWMSP003_EXTERNAL_GATING = 8U,

  /** Counting direction functionality */
  PWMSP003_EXTERNAL_COUNT_DIRECTION = 10U,

  /** Load Timer functionality */
  PWMSP003_EXTERNAL_LOAD = 12U,

  /** Counter functionality */
  PWMSP003_EXTERNAL_COUNT = 14U,

  /** Override functionality */
  PWMSP003_EXTERNAL_OVERRIDE = 16U,

  /** Trap functionality */
  PWMSP003_EXTERNAL_TRAP = 17U,

  /** External modulation functionality */
  PWMSP003_EXTERNAL_MODULATION = 18U

} PWMSP003_ExtEventFunctionType;

/**
 * This enumerates the external event inputs of the CCU4_CCy slice.
 */
typedef enum PWMSP003_InputSelectionType{

  PWMSP003_INPUT_A = 0x0U,
  PWMSP003_INPUT_B,
  PWMSP003_INPUT_C,
  PWMSP003_INPUT_D,
  PWMSP003_INPUT_E,
  PWMSP003_INPUT_F,
  PWMSP003_INPUT_G,
  PWMSP003_INPUT_H,
  PWMSP003_INPUT_I,
  PWMSP003_INPUT_J,
  PWMSP003_INPUT_K,
  PWMSP003_INPUT_L,
  PWMSP003_INPUT_M,
  PWMSP003_INPUT_N,
  PWMSP003_INPUT_O,
  PWMSP003_INPUT_P
}PWMSP003_InputSelectionType;

/**
 * This enumerates the counting mode of the CCU4_CCy slice.
 */
typedef enum PWMSP003_CountingModeType{
 /**
  * In this mode with up counting direction, timer counts up to the period value
  * and then clears to zero to start counting again. And in down counting, timer
  * decrements from period value to zero and starts again with period value.
  */
  PWMSP003_EDGE_ALIGNED,
 /**
  * In this mode timer counts up till the period value and then counts down to
  * zero.
  * With down counting selected first, timer will decrement from period value
  * to zero and then will increment again to period value to complete one cycle.
  */
  PWMSP003_CENTER_ALIGNED
}PWMSP003_CountingModeType;

/**
 * This enumerates the counting direction of the CCU4_CCy slice.
 */
typedef enum PWMSP003_CountDirectionType{
 /**
  * Count up
  */
  PWMSP003_COUNT_UP,
 /**
  * Count Down
  */
  PWMSP003_COUNT_DOWN
}PWMSP003_CountDirectionType;

/**
 * This enumerates the prescaler mode of the CCU4_CCy slice.
 */
typedef enum PWMSP003_PrescalerModeType{
 /**
  * Normal prescaler
  */
  PWMSP003_PRESCALER_NORMAL,
 /**
  * Floating point prescaler
  */
  PWMSP003_PRESCALER_FLOATING
}PWMSP003_PrescalerModeType;

/**
 * This enumerates the CCU4x_CCy slice number used in this instance.
 */
typedef enum PWMSP003_CCUInUseType{
 /**
  * This is slice 0 of the CCU4
  */
  PWMSP003_SLICE0,
 /**
  * This is slice 1 of the CCU4
  */
  PWMSP003_SLICE1,
 /**
  * This is slice 2 of the CCU4
  */
  PWMSP003_SLICE2,
 /**
  * This is slice 3 of the CCU4
  */
  PWMSP003_SLICE3
}PWMSP003_CCUInUseType;

/**
 * This enumerates the low pass filter config
 */
typedef enum PWMSP003_LowPassFilterType{
 /**
  * LPF is disabled
  */
  PWMSP003_LPF_DISABLED,
 /**
  * LPF configured for 3 clocks of fCCU4
  */
  PWMSP003_LPF_3_CLOCKS,
 /**
  * LPF configured for 5 clocks of fCCU4
  */
  PWMSP003_LPF_5_CLOCKS,
 /**
  * LPF configured for 7 clocks of fCCU4
  */
  PWMSP003_LPF_7_CLOCKS
}PWMSP003_LowPassFilterType;

/**
 * This enumerates the functionalities for which shadow transfer is listed
 */
typedef enum PWMSP003_ShadowTransferType{
 /**
  * Shadow transfer for period or compare
  */
  PWMSP003_SHADOW_TRANSFER_PERIOD_COMPARE,
 /**
  * Shadow transfer for dither
  */
  PWMSP003_SHADOW_TRANSFER_DITHER,
  /**
  * Shadow transfer for Prescaler
  */
  PWMSP003_SHADOW_TRANSFER_PRESCALER
}PWMSP003_ShadowTransferType;

/**
  * @}
  */
/*******************************************************************************
 *                             STRUCTURES                                     **
 ******************************************************************************/
/**
  * @ingroup PWMSP003_datastructures
  * @{
  */

/**
 * This structure will hold the configuration parameters which change at run
 * time.
 */
typedef struct PWMSP003_DynamicDataType{
 /**
  * This parameter tells state of the slice
  */
  PWMSP003_StateType StateType;

}PWMSP003_DynamicDataType;


/**
 * This structure contains the timer register values for compare register,
 * period register
 */
typedef struct PWMSP003_TimerRegsType{
 /**
  * This holds the value of compare register
  */
  uint16_t CompReg;
 /**
  * This holds the value of period register
  */
  uint16_t PeriodReg;
 /**
  * This holds the current timer register value.
  */
  uint16_t TimerReg;

}PWMSP003_TimerRegsType;


/**
 * This structure holds all the static configuration parameters for the Single
 * Phase PWM APP.
 */
typedef struct PWMSP003_HandleType{

  /**
   * This decides whether to start the app after initialization
   */
  const uint8_t StartControl;
  /**
  * This is the CCU4 timer resolution
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
  * This parameter gives the active level of the external trap signal\n
  * 0 : Active on High\n
  * 1 : Active on Low
  */
  const PWMSP003_ActiveLevelType kTrapLevel;

  /**
    * This configures the synchronization with the PWM signal is required or
    * not.\n
    * 0 : Trap is not synchronized with PWM output signal\n
    * 1 : Trap is synchronized with PWM output signal
    */
  const uint8_t kTrapSync;

  /**
  * This indicates whether to exit from TRAP state automatically when TRAP
  * condition is removed or SW trigger is required to exit from TRAP state.\n
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
  * This parameter configures dither mode.\n
  * 0 : Dither is disabled\n
  * 1 : Period is extended but duty cycle is constant\n
  * 2 : Period is constant and duty cycle is extended\n
  * 3 : Both duty cycle and period are extended
  */
  const uint8_t kDitherSetting;
 /**
  * This parameter holds the prescaler divider value to achieve given
  * resolution.
  */
  const uint8_t kCCUPrescaler;
 /**
  * This parameter holds the floating prescaler divider value to achieve given
  * resolution.
  */
  const uint8_t kFloatingPrescalepcmpvalue;
 /**
  * This parameter holds the selected prescaler type.
  */
  const PWMSP003_PrescalerModeType kPrescalerMode;
 /**
  * This parameter holds the functionality selected for event 0.
  */
  const PWMSP003_ExtEventFunctionType kEvent0Function;
 /**
  * This parameter holds the functionality selected for event 1.
  */
  const PWMSP003_ExtEventFunctionType kEvent1Function;
 /**
  * This parameter holds the functionality selected for event 2.
  */
  const PWMSP003_ExtEventFunctionType kEvent2Function;
 /**
  * This parameter holds the event number selected for external start function.
  */
  const PWMSP003_ExtEventType kStartEvent;
 /**
  * This parameter holds the event number selected for external stop function.
  */
  const PWMSP003_ExtEventType kStopEvent;
 /**
  * This parameter holds the event number selected for modulation function.
  */
  const PWMSP003_ExtEventType kModulationEvent;
 /**
  * This parameter holds the event number selected for external counting
  * direction function.
  */
  const PWMSP003_ExtEventType kCountDirEvent;
 /**
  * This parameter holds the event number selected for external gating function.
  */
  const PWMSP003_ExtEventType kGatingEvent;
 /**
  * This parameter holds the event number selected for external load function.
  */
  const PWMSP003_ExtEventType kLoadEvent;
 /**
  * This parameter holds the event number selected for external count function.
  */
  const PWMSP003_ExtEventType kCountEvent;
 /**
  * This parameter holds the event number selected for external override.
  */
  const PWMSP003_ExtEventType kOverrideEvent;
 /**
  * This parameter holds the event number selected for external trap function.
  */
  const PWMSP003_ExtEventType kTraptEvent;
 /**
  * This parameter holds the type of low pass filter selected for event 0.
  */
  const PWMSP003_LowPassFilterType kEvent0_lpfconfig;
 /**
  * This parameter holds the type of low pass filter selected for event 1.
  */
  const PWMSP003_LowPassFilterType kEvent1_lpfconfig;
 /**
  * Type of low pass filter selected for event 2.
  */
  const PWMSP003_LowPassFilterType kEvent2_lpfconfig;
 /**
  * Active level of the external Modulation signal
  */
  const PWMSP003_ActiveLevelType kModulationActiveLevel;
 /**
  * Type of external modulation\n
  * 0 : External Modulation functionality clears CC4yST bit.\n
  * 1 : External Modulation functionality is gating the outputs.
  */
  const uint8_t kModulationMode;
 /**
  * Type of external modulation synchronization with PWM signal\n
  * 0 : External Modulation functionality is not synchronized with the PWM\n
  * 1 : External Modulation functionality is synchronized with the PWM
  */
  const uint8_t kModulationSync;
 /**
  * Active level of the external count direction signal
  */
  const PWMSP003_ActiveLevelType kCntDirActiveLevel;
 /**
  * Multi channel mode\n
  * 0 : Multi channel mode disabled\n
  * 1 : Multi channel mode enabled
  */
  const uint8_t kMCMode;
 /**
  * Multi channel shadow transfer mode\n
  * 0 : Shadow transfer can only be requested by SW\n
  * 1 : Shadow transfer can be requested via SW and via the CCU4x.MCSS input
  */
  const uint8_t kMCModeShadowRequest;
 /**
  * Multi channel shadow transfer request type\n
  * 0 : Only the shadow transfer for period and compare values\n
  * 1 : Shadow transfer for the compare, period and prescaler compare values\n
  * 2 : Reserved\n
  * 3 : Shadow transfer for the compare, period, prescaler and dither compare
  */
  const uint8_t kMCModeShadowConfig;
 /**
  * Enable or disable PWM signal Output
  */
  const uint8_t kOutputEnable;
 /**
  * PWM signal Output pin characteristics
  */
  const uint8_t kOutputChar;
 /**
  * PWM signal Output pin pad class
  */
  const uint8_t kOutPadclass;
 /**
  * PWM signal Output pin driver mode
  */
  const uint8_t kOutDriverMode;

 /**
  * Active level of the external gating signal
  */
  const PWMSP003_ActiveLevelType kGateEventActiveLevel;
 /**
  * Active edge of the external counter signal
  */
  const PWMSP003_EdgeTriggerType kCountEventEdge;
 /**
  * Active edge of the external load signal
  */
  const PWMSP003_EdgeTriggerType kLoadEventEdge;
 /**
  * Active edge of the external override signal, event 1
  */
  const PWMSP003_EdgeTriggerType kOverrideTriggerEdge;
 /**
  * Active edge of the external override signal, event 2
  */
  const PWMSP003_ActiveLevelType kOverrideActiveLevel;
 /**
  * Active edge of the external start signal
  */
  const PWMSP003_EdgeTriggerType kStartEdge;
 /**
  * Active edge of the external stop signal
  */
  const PWMSP003_EdgeTriggerType kStopEdge;
  /**
    * Period register value computed based on selected counting mode
    * This represents the PWM frequency.
    */
  const uint32_t kPeriodVal;
  /**
    * Maximum possible period value computed.
    */
  const uint32_t kMaxPeriodVal;
  /**
   * This decides whether to enable interrupts at initialization time.
   * This stores the information in a format of 32-bit register (INTE)
   * with a bit-field for each interrupt.
   */
  const uint32_t InterruptControl;
  /**
   * Timer start mode when external trigger is applied
   */
  const PWMSP003_ExtStartConfigType ExtStartConfigType;
  /**
   * Timer stop Mode when external trigger is applied
   */
  const PWMSP003_ExtStopConfigType ExtStopConfigType;
  /**
   * Counting mode of the timer -- edge-aligned or center-aligned
   */
  const PWMSP003_CountingModeType CountingModeType;
  /**
   * Counting direction of the timer -- Count-Up or Count-Down
   */
  const PWMSP003_CountDirectionType kCountDirection;
  /**
   * This is the slice number for this app instance
   */
  const PWMSP003_CCUInUseType Slice;
  /**
   * This is the dynamic data handle of the app
   */
  PWMSP003_DynamicDataType * const DynamicDataType;
  /**
   * This is the function pointer for the SetCompare function
   */
  PWMSP003_SetCompareFuncionPtr SetCompareFuncPtr;
  /**
   * This is the function pointer for the SetDutyCycle function
   */
  PWMSP003_SetDutyFunctionPtr SetDutyFuncPtr;

}PWMSP003_HandleType;

/**
 * @}
 */

/**
 * @ingroup PWMSP003_apidoc
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
 *  DAVE_Init(); //PWMSP003_Init is called within DAVE_Init()

 *  return 0;
 * }
 * @endcode
 */
void PWMSP003_Init(void);

/**
 * @brief This function will reset CCU4_CCy slice registers with default values.
 * @param[in]   HandlePtr Pointer to PWMSP003_HandleType structure
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * else
 * PWMSP003_OPER_NOT_ALLOWED_ERROR<BR>
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
 * Status = PWMSP003_Deinit((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 * return 0;
 * }
 * @endcode
 */
status_t PWMSP003_Deinit(const PWMSP003_HandleType* HandlePtr);

/**
 * @brief This function will start the Single Phase PWM APP which will in turn
 * start CCU4_CCy slice timer to generate PWM. It also enables the interrupt and
 * clears the IDLE mode of the CCU.\n
 * <b>This function needs to be called to start the App
 * even if External Start is configured. </b>
 * @param[in]   HandlePtr Pointer to PWMSP003_HandleType structure
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * PWMSP003_OPER_NOT_ALLOWED_ERROR: If this function is called when not in the
 * state PWMSP003_INITIALIZED or PWMSP003_STOPPED<BR>
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
 *  //Start to be called only when "Start after initialization" is unchecked
 *  Status = PWMSP003_Start((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  if (Status == (uint32_t)DAVEApp_SUCCESS)
 *  {
 *    //Do something
 *  }
 *  return 0;
 * }
 * @endcode
 */
status_t PWMSP003_Start(const PWMSP003_HandleType* HandlePtr);

/**
 * @brief This function will stop the Single Phase PWM APP which will eventually
 * stop the CCU4_CCy slice. This disables the interrupts and sets the IDLE mode
 * of the CCU slice.
 * @param[in]   HandlePtr Pointer to PWMSP003_HandleType structure
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * PWMSP003_OPER_NOT_ALLOWED_ERROR: If this function is called when not in the
 * state PWMSP003_RUNNING<BR>
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
 *  //Start to be called only when "Start after initialization" is unchecked
 *  Status = PWMSP003_Start((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  if (Status == (uint32_t)DAVEApp_SUCCESS)
 *  {
 *    //Do something
 *  }
 *  Status = PWMSP003_Stop((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  return 0;
 * }
 * @endcode
 */
status_t PWMSP003_Stop(const PWMSP003_HandleType* HandlePtr);

/**
 * @brief This function will set the duty cycle of the PWM signal
 * generated by the selected CCU4_CCy slice.
 * @param[in]   HandlePtr Pointer to PWMSP003_HandleType structure
 * @param[in]   Duty Required Dutycycle in percentage
 * @return status_t\n
 * DAVEApp_SUCCESS: If function is successful\n
 * PWMSP003_OPER_NOT_ALLOWED_ERROR: If this function is called when in the
 * state PWMSP003_UNINITIALIZED<BR>
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
 *  //Start to be called only when "Start after initialization" is unchecked
 *  Status = PWMSP003_Start((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  Status = PWMSP003_Start((PWMSP003_HandleType*)PWMSP003_HandleArr[1]);
 *  if (Status == (uint32_t)DAVEApp_SUCCESS)
 *  {
 *   Status = PWMSP003_SetDutyCycle((PWMSP003_HandleType*)PWMSP003_HandleArr[0],
 *                                  50);
 *    if (Status == (uint32_t)DAVEApp_SUCCESS)
 *    {
 *      //Do something
 *    }
 *   Status = PWMSP003_SetDutyCycle((PWMSP003_HandleType*)PWMSP003_HandleArr[1],
 *                                  30);
 *    if (Status == (uint32_t)DAVEApp_SUCCESS)
 *    {
 *      //Do something
 *    }
 *  }
 *  Status = PWMSP003_Stop((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  Status = PWMSP003_Stop((PWMSP003_HandleType*)PWMSP003_HandleArr[1]);
 *  return 0;
 * }
 * @endcode
 */
status_t PWMSP003_SetDutyCycle(const PWMSP003_HandleType* HandlePtr,
                               float Duty);

/**
 * @brief This function reads the idle status of the given CCU4_CCy slice.
 * @param[in]   HandlePtr Pointer to PWMSP003_HandleType structure
 * @param[in]   State Pointer to hold result
 * @return status_t\n
 * DAVEApp_SUCCESS: If function is successful\n
 * PWMSP003_OPER_NOT_ALLOWED_ERROR: If this function is called when in the
 * state PWMSP003_UNINITIALIZED<BR>
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 *
 * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
 *  status_t Status;
 *  uint32_t State;
 *  DAVE_Init();
 *  //Start to be called only when "Start after initialization" is unchecked
 *  Status = PWMSP003_Start((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  if (Status == (uint32_t)DAVEApp_SUCCESS)
 *  {
 *    Status = PWMSP003_GetSliceIdleStatus(PWMSP003_HandleArr[0], &State);
 *    if (Status == (uint32_t)DAVEApp_SUCCESS)
 *    {
 *      if(State != SET)
 *      {
 *        //Report Error
 *      }
 *    }
 *  }
 *  Status = PWMSP003_Stop((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  return 0;
 * }
 * @endcode
 */
status_t PWMSP003_GetSliceIdleStatus(const PWMSP003_HandleType * HandlePtr,
                                     uint32_t * State);

/**
 * @brief This function sets the given CCU4 slice in idle state.
 * @param[in]   HandlePtr Pointer to PWMSP003_HandleType structure
 * @return status_t\n
 * DAVEApp_SUCCESS: If function is successful\n
 * PWMSP003_OPER_NOT_ALLOWED_ERROR: If this function is called when in the
 * state PWMSP003_UNINITIALIZED<BR>
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 *
 * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
 *  status_t Status;
 *  uint32_t State;
 *  DAVE_Init();
 *  //Start to be called only when "Start after initialization" is unchecked
 *  Status = PWMSP003_Start((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  if (Status == (uint32_t)DAVEApp_SUCCESS)
 *  {
 *    Status = PWMSP003_SetSliceIdleState(PWMSP003_HandleArr[0]);
 *    if (Status == (uint32_t)DAVEApp_SUCCESS)
 *    {
 *      //Do something
 *    }
 *  }
 *  Status = PWMSP003_Stop((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  return 0;
 * }
 * @endcode
 */
status_t PWMSP003_SetSliceIdleState(const PWMSP003_HandleType * HandlePtr);

/**
 * @brief This function removes the given CCU4 slice from idle state.
 * @param[in]   HandlePtr Pointer to PWMSP003_HandleType structure
 * @return status_t\n
 * DAVEApp_SUCCESS: If function is successful\n
 * PWMSP003_OPER_NOT_ALLOWED_ERROR: If this function is called when in the
 * state PWMSP003_UNINITIALIZED<BR>
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 *
 * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
 *  status_t Status;
 *  uint32_t State;
 *  DAVE_Init();
 *  //Start to be called only when "Start after initialization" is unchecked
 *  Status = PWMSP003_Start((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  if (Status == (uint32_t)DAVEApp_SUCCESS)
 *  {
 *    Status = PWMSP003_SetSliceIdleState(PWMSP003_HandleArr[0]);
 *    if (Status == (uint32_t)DAVEApp_SUCCESS)
 *    {
 *      //Do something
 *    }
 *    Status = PWMSP003_RemoveSliceIdleState(PWMSP003_HandleArr[0]);
 *  }
 *  Status = PWMSP003_Stop((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  return 0;
 * }
 * @endcode
 */
status_t PWMSP003_RemoveSliceIdleState(const PWMSP003_HandleType * HandlePtr);

/**
 * @brief This function starts the stopped timer of the given CCU4 slice.
 * @param[in]   HandlePtr Pointer to PWMSP003_HandleType structure
 * @return status_t\n
 * DAVEApp_SUCCESS: If function is successful\n
 * PWMSP003_OPER_NOT_ALLOWED_ERROR: If this function is called when already
 * in the state PWMSP003_RUNNING<BR>
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 *
 * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
 *  status_t Status;
 *  uint32_t State;
 *  DAVE_Init();
 *  //Start to be called only when "Start after initialization" is unchecked
 *  Status = PWMSP003_Start((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  if (Status == (uint32_t)DAVEApp_SUCCESS)
 *  {
 *    Status = PWMSP003_StopTimer(PWMSP003_HandleArr[0]);
 *    if (Status == (uint32_t)DAVEApp_SUCCESS)
 *    {
 *      //Do something
 *    }
 *    Status = PWMSP003_StartTimer(PWMSP003_HandleArr[0]);
 *
 *    if (Status == (uint32_t)DAVEApp_SUCCESS)
 *    {
 *      //Do something
 *    }
 *  }
 *  Status = PWMSP003_Stop((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  return 0;
 * }
 * @endcode
 */
status_t PWMSP003_StartTimer(const PWMSP003_HandleType * HandlePtr);

/**
 * @brief This function stops the timer of the given CCU4 slice.
 * @param[in]   HandlePtr Pointer to PWMSP003_HandleType structure
 * @return status_t\n
 * DAVEApp_SUCCESS: If function is successful\n
 * PWMSP003_OPER_NOT_ALLOWED_ERROR: If this function is called when in the
 * state PWMSP003_UNINITIALIZED<BR>
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 *
 * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
 *  status_t Status;
 *  uint32_t State;
 *  DAVE_Init();
 *  //Start to be called only when "Start after initialization" is unchecked
 *  Status = PWMSP003_Start((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  if (Status == (uint32_t)DAVEApp_SUCCESS)
 *  {
 *    Status = PWMSP003_StopTimer(PWMSP003_HandleArr[0]);
 *    if (Status == (uint32_t)DAVEApp_SUCCESS)
 *    {
 *      //Do something
 *    }
 *    Status = PWMSP003_StartTimer(PWMSP003_HandleArr[0]);
 *
 *    if (Status == (uint32_t)DAVEApp_SUCCESS)
 *    {
 *      //Do something
 *    }
 *  }
 *  Status = PWMSP003_Stop((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  return 0;
 * }
 * @endcode
 */
status_t PWMSP003_StopTimer(const PWMSP003_HandleType * HandlePtr);

/**
 * @brief This function reads the current timer value of the given CCU4 slice.
 * @param[in]   HandlePtr Pointer to PWMSP003_HandleType structure
 * @param[in]   TimerRegs Result Pointer to hold the timer values
 * @return status_t\n
 * DAVEApp_SUCCESS: If function is successful\n
 * PWMSP003_OPER_NOT_ALLOWED_ERROR: If this function is called when in the
 * state PWMSP003_UNINITIALIZED<BR>
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 *
 * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
 *  status_t Status;
 *  PWMSP003_TimerRegsType TimerRegs;
 *  DAVE_Init();
 *  //Start to be called only when "Start after initialization" is unchecked
 *  Status = PWMSP003_Start((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  if (Status == (uint32_t)DAVEApp_SUCCESS)
 *  {
 *    Status = PWMSP003_GetTimerValue(PWMSP003_HandleArr[0], &TimerRegs);
 *    if (Status == (uint32_t)DAVEApp_SUCCESS)
 *    {
 *      //Do something
 *    }
 *  }
 *  Status = PWMSP003_Stop((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  return 0;
 * }
 * @endcode
 */
status_t PWMSP003_GetTimerValue(const PWMSP003_HandleType * HandlePtr,
                                      PWMSP003_TimerRegsType* TimerRegs);

/**
 * @brief This function reads the current timer status of the given CCU4 slice.
 * @param[in]   HandlePtr Pointer to PWMSP003_HandleType structure
 * @param[in]   TimerStatus Result Pointer to hold the RUNNING or IDLE  status
 * @return status_t\n
 * DAVEApp_SUCCESS: If function is successful\n
 * PWMSP003_OPER_NOT_ALLOWED_ERROR: If this function is called when in the
 * state PWMSP003_UNINITIALIZED<BR>
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 *
 * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
 *  status_t Status;
 *  uint32_t TimerStatus;
 *  DAVE_Init();
 *  //Start to be called only when "Start after initialization" is unchecked
 *  Status = PWMSP003_Start((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  if (Status == (uint32_t)DAVEApp_SUCCESS)
 *  {
 *    Status = PWMSP003_GetTimerStatus(PWMSP003_HandleArr[0], &TimerStatus);
 *    if (Status == (uint32_t)DAVEApp_SUCCESS)
 *    {
 *      if(TimerStatus == SET)
 *      {
 *        //Do something
 *      }
 *    }
 *  }
 *  Status = PWMSP003_Stop((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  return 0;
 * }
 * @endcode
 */
status_t PWMSP003_GetTimerStatus(const PWMSP003_HandleType * HandlePtr,
                                 uint32_t* TimerStatus);

/**
 * @brief This function reads the current state (ST bit) of the given CCU4 slice
 * @param[in]   HandlePtr Pointer to PWMSP003_HandleType structure
 * @param[in]   CompareMatchStatus Result Pointer to hold the current state
 * @return status_t\n
 * DAVEApp_SUCCESS: If function is successful\n
 * PWMSP003_OPER_NOT_ALLOWED_ERROR: If this function is called when in the
 * state PWMSP003_UNINITIALIZED<BR>
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 *
 * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
 *  status_t Status;
 *  uint8_t STStatus;
 *  DAVE_Init();
 *  //Start to be called only when "Start after initialization" is unchecked
 *  Status = PWMSP003_Start((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  if (Status == (uint32_t)DAVEApp_SUCCESS)
 *  {
 *    Status = PWMSP003_GetCompareMatchStatus(PWMSP003_HandleArr[0], &STStatus);
 *    if (Status == (uint32_t)DAVEApp_SUCCESS)
 *    {
 *      if(STStatus == SET)
 *      {
 *        //Do something
 *      }
 *    }
 *  }
 *  Status = PWMSP003_Stop((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  return 0;
 * }
 * @endcode
 */
status_t PWMSP003_GetCompareMatchStatus(const PWMSP003_HandleType * HandlePtr,
                                        uint8_t * CompareMatchStatus);

/**
 * @brief This function changes the period value (PWM frequency)
 * @param[in]   HandlePtr Pointer to PWMSP003_HandleType structure
 * @param[in]   Period New period value to be updated in the period register
 * @param[in]   Recall TRUE - Will try to cancel previously made shadow request
 * @return status_t\n
 * DAVEApp_SUCCESS: If function is successful\n
 * PWMSP003_OPER_NOT_ALLOWED_ERROR: If this function is called when in the
 * state PWMSP003_UNINITIALIZED<BR>
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
 *  //Start to be called only when "Start after initialization" is unchecked
 *  Status = PWMSP003_Start((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  if (Status == (uint32_t)DAVEApp_SUCCESS)
 *  {
 *    Status = PWMSP003_UpdatePeriod(PWMSP003_HandleArr[0], 0x7FF, FALSE);
 *    if (Status == (uint32_t)DAVEApp_SUCCESS)
 *    {
 *      //Do something
 *    }
 *  }
 *  Status = PWMSP003_Stop((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  return 0;
 * }
 * @endcode
 */
 status_t PWMSP003_UpdatePeriod(const PWMSP003_HandleType * HandlePtr,
                                uint32_t Period, uint8_t Recall);

/**
 * @brief This function changes the compare value (PWM duty cycle)
 * @param[in]   HandlePtr Pointer to PWMSP003_HandleType structure
 * @param[in]   CompareVal New value to be updated in the compare register
 * @param[in]   Recall TRUE - Will try to cancel previously made shadow request
 * @return status_t\n
 * DAVEApp_SUCCESS: If function is successful\n
 * PWMSP003_OPER_NOT_ALLOWED_ERROR: If this function is called when in the
 * state PWMSP003_UNINITIALIZED<BR>
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
 *  //Start to be called only when "Start after initialization" is unchecked
 *  Status = PWMSP003_Start((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  if (Status == (uint32_t)DAVEApp_SUCCESS)
 *  {
 *    Status = PWMSP003_UpdateCompare(PWMSP003_HandleArr[0], 0x3FF, FALSE);
 *    if (Status == (uint32_t)DAVEApp_SUCCESS)
 *    {
 *      //Do something
 *    }
 *  }
 *  Status = PWMSP003_Stop((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  return 0;
 * }
 * @endcode
 */
status_t PWMSP003_UpdateCompare(const PWMSP003_HandleType * HandlePtr,
                                uint32_t CompareVal, uint8_t Recall);

/**
 * @brief This function changes the floating point prescaler value
 * @param[in]   HandlePtr Pointer to PWMSP003_HandleType structure
 * @param[in]   FloatingPS New value to be updated in the FP register
 * @param[in]   Recall TRUE - Will try to cancel previously made shadow request
 * @return status_t\n
 * DAVEApp_SUCCESS: If function is successful\n
 * PWMSP003_OPER_NOT_ALLOWED_ERROR: If this function is called when in the
 * state PWMSP003_UNINITIALIZED<BR>
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
 *  //Start to be called only when "Start after initialization" is unchecked
 *  Status = PWMSP003_Start((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  if (Status == (uint32_t)DAVEApp_SUCCESS)
 *  {
 *    Status = PWMSP003_UpdateFloatingPrescaler(PWMSP003_HandleArr[0],8,FALSE);
 *    if (Status == (uint32_t)DAVEApp_SUCCESS)
 *    {
 *      //Do something
 *    }
 *  }
 *  Status = PWMSP003_Stop((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  return 0;
 * }
 * @endcode
 */
status_t PWMSP003_UpdateFloatingPrescaler(const PWMSP003_HandleType * HandlePtr,
                                          uint16_t FloatingPS, uint8_t Recall);

/**
 * @brief This function changes the dither compare value
 * @param[in]   HandlePtr Pointer to PWMSP003_HandleType structure
 * @param[in]   DitherVal New value to be updated in the dither register
 * @param[in]   Recall TRUE - Will try to cancel previously made shadow request
 * @return status_t\n
 * DAVEApp_SUCCESS: If function is successful\n
 * PWMSP003_OPER_NOT_ALLOWED_ERROR: If this function is called when in the
 * state PWMSP003_UNINITIALIZED<BR>
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
 *  //Start to be called only when "Start after initialization" is unchecked
 *  Status = PWMSP003_Start((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  if (Status == (uint32_t)DAVEApp_SUCCESS)
 *  {
 *    Status = PWMSP003_UpdateDither(PWMSP003_HandleArr[0], 0xA, FALSE);
 *    if (Status == (uint32_t)DAVEApp_SUCCESS)
 *    {
 *      //Do something
 *    }
 *  }
 *  Status = PWMSP003_Stop((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  return 0;
 * }
 * @endcode
 */
status_t PWMSP003_UpdateDither(const PWMSP003_HandleType * HandlePtr,
                               uint32_t DitherVal, uint8_t Recall);


/**
 * @brief This function reads the status of the shadow transfer requests
 * @param[in]   HandlePtr Pointer to PWMSP003_HandleType structure
 * @param[in]   Function Type of shadow transfer whose status to be read
 * @param[in]   State Result pointer containing the shadow transfer status
 * @return status_t\n
 * DAVEApp_SUCCESS: If function is successful\n
 * PWMSP003_OPER_NOT_ALLOWED_ERROR: If this function is called when in the
 * state PWMSP003_UNINITIALIZED<BR>
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 *
 * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
 *  status_t Status;
 *  uint8_t State;
 *  DAVE_Init();
 *  //Start to be called only when "Start after initialization" is unchecked
 *  Status = PWMSP003_Start((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  if (Status == (uint32_t)DAVEApp_SUCCESS)
 *  {
 *    if (Status == (uint32_t)DAVEApp_SUCCESS)
 *    {
 *      Status = PWMSP003_GetShadowTransferStatus(PWMSP003_HandleArr[0],
 *                                PWMSP003_SHADOW_TRANSFER_DITHER, &State);
 *      if(state == TRUE)
 *      {
          // Do something
        }
 *    }
 *  }
 *  Status = PWMSP003_Stop((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  return 0;
 * }
 * @endcode
 */
status_t PWMSP003_GetShadowTransferStatus(const PWMSP003_HandleType * HandlePtr,
                                          PWMSP003_ShadowTransferType Function,
                                          uint8_t * State);

/**
 * @brief This function reads the current counting direction of the timer
 * @param[in]   HandlePtr Pointer to PWMSP003_HandleType structure
 * @param[in]   CountDir Result pointer containing the counting direction
 * @return status_t\n
 * DAVEApp_SUCCESS: If function is successful\n
 * PWMSP003_OPER_NOT_ALLOWED_ERROR: If this function is called when in the
 * state PWMSP003_UNINITIALIZED<BR>
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 *
 * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
 *  status_t Status;
 *  PWMSP003_CountDirectionType CountDir;
 *  DAVE_Init();
 *  //Start to be called only when "Start after initialization" is unchecked
 *  Status = PWMSP003_Start((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  if (Status == (uint32_t)DAVEApp_SUCCESS)
 *  {
 *    Status = PWMSP003_GetCountingDirection(PWMSP003_HandleArr[0],&CountDir);
 *    if(CountDir == PWMSP003_COUNT_UP)
 *    {
 *      // Do something
 *       }
 *    if(CountDir == PWMSP003_COUNT_DOWN)
 *    {
 *      // Do something else
 *    }
 *  }
 *  Status = PWMSP003_Stop((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  return 0;
 * }
 * @endcode
 */
status_t PWMSP003_GetCountingDirection(const PWMSP003_HandleType * HandlePtr,
                                       PWMSP003_CountDirectionType * CountDir);

/**
 * @brief This function remaps external Events and their Input paths of CCU4
 * @param[in]   HandlePtr Pointer to PWMSP003_HandleType structure
 * @param[in]   Input Input number [A to P] to be mapped to the given event
 * @param[in]   ExtEvent Event [0 to 2] to be mapped with the given Input
 * @return status_t\n
 * DAVEApp_SUCCESS: If function is successful\n
 * PWMSP003_OPER_NOT_ALLOWED_ERROR: If this function is called when in the
 * state PWMSP003_RUNNING<BR>
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
 *  //Start to be called only when "Start after initialization" is unchecked
 *  Status = PWMSP003_Start((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  if (Status == (uint32_t)DAVEApp_SUCCESS)
 *  {
 *    // Do something
 *  }
 *  Status = PWMSP003_Stop((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  if (Status == (uint32_t)DAVEApp_SUCCESS)
 *  {
 *    Status = PWMSP003_RemapInput(PWMSP003_HandleArr[0],
 *                                 PWMSP003_INPUT_E, PWMSP003_EVENT_0);
 *    if (Status == (uint32_t)DAVEApp_SUCCESS)
 *    {
 *      Status = PWMSP003_Start((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *    }
 *    if (Status == (uint32_t)DAVEApp_SUCCESS)
 *    {
 *      // Do something
 *    }
 *  }
 *  else
 *  {
 *    // Report or Handle Input mapping error
 *  }
 *  Status = PWMSP003_Stop((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  return 0;
 * }
 * @endcode
 */
status_t PWMSP003_RemapInput(const PWMSP003_HandleType * HandlePtr,
                             PWMSP003_InputSelectionType Input,
                             PWMSP003_ExtEventType ExtEvent);

/**
 * @brief This function remaps external Events and their functionalities
 * @param[in]   HandlePtr Pointer to PWMSP003_HandleType structure
 * @param[in]   ExtEvent Event [0 to 2] to be mapped with the given Input
 * @param[in]   Function Type of fucntion to be performed by the external event
 * @return status_t\n
 * DAVEApp_SUCCESS: If function is successful\n
 * PWMSP003_OPER_NOT_ALLOWED_ERROR: If this function is called when in the
 * state PWMSP003_RUNNING<BR>
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
 *  //Start to be called only when "Start after initialization" is unchecked
 *  Status = PWMSP003_Start((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  if (Status == (uint32_t)DAVEApp_SUCCESS)
 *  {
 *    // Do something
 *  }
 *  Status = PWMSP003_Stop((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  if (Status == (uint32_t)DAVEApp_SUCCESS)
 *  {
 *    Status = PWMSP003_RemapEvent(PWMSP003_HandleArr[0],
 *                                 PWMSP003_EVENT_0, PWMSP003_EXTERNAL_GATING);
 *    if (Status == (uint32_t)DAVEApp_SUCCESS)
 *    {
 *      Status = PWMSP003_Start((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *    }
 *    if (Status == (uint32_t)DAVEApp_SUCCESS)
 *    {
 *      // Do something
 *    }
 *  }
 *  else
 *  {
 *    // Report or Handle function mapping error
 *  }
 *  Status = PWMSP003_Stop((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  return 0;
 * }
 * @endcode
 */
status_t PWMSP003_RemapEvent(const PWMSP003_HandleType * HandlePtr,
                             PWMSP003_ExtEventType ExtEvent,
                             PWMSP003_ExtEventFunctionType Function);

/**
 * @brief This function clear the trap flag of the given CCU4 slice
 * @param[in]   HandlePtr Pointer to PWMSP003_HandleType structure
 * @return status_t\n
 * DAVEApp_SUCCESS: If function is successful\n
 * PWMSP003_OPER_NOT_ALLOWED_ERROR: If this function is called when in the
 * state PWMSP003_UNINITIALIZED<BR>
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
 *  //Start to be called only when "Start after initialization" is unchecked
 *  Status = PWMSP003_Start((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  if (Status == (uint32_t)DAVEApp_SUCCESS)
 *  {
 *    Status = PWMSP003_ClearTrapFlag(PWMSP003_HandleArr[0]);
 *    if (Status == (uint32_t)DAVEApp_SUCCESS)
 *    {
 *      // Do something
 *       }
 *    else
 *    {
 *      // Do something else
 *    }
 *  }
 *  Status = PWMSP003_Stop((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  return 0;
 * }
 * @endcode
 */
status_t PWMSP003_ClearTrapFlag(const PWMSP003_HandleType * HandlePtr);

/**
 * @brief This function reads the interrupt flag of the given CCU4 slice event
 * @param[in]   HandlePtr Pointer to PWMSP003_HandleType structure
 * @param[in]   Event Type of event whose interrupt to be read
 * @param[in]   InterruptStatus Result pointer to hold the interrupt status
 * @return status_t\n
 * DAVEApp_SUCCESS: If function is successful\n
 * PWMSP003_OPER_NOT_ALLOWED_ERROR: If this function is called when in the
 * state PWMSP003_UNINITIALIZED<BR>
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 *
 * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
 *  status_t Status;
 *  uint8_t InterruptStatus;
 *  DAVE_Init();
 *  //Start to be called only when "Start after initialization" is unchecked
 *  Status = PWMSP003_Start((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  if (Status == (uint32_t)DAVEApp_SUCCESS)
 *  {
 *    Status = PWMSP003_GetInterruptStatus(PWMSP003_HandleArr[0],
 *                                      PWMSP003_COMPAREMATCH_COUNTUP_INTERRUPT,
 *                                      &InterruptStatus);
 *    if (InterruptStatus == TRUE)
 *    {
 *      // Do something
 *       }
 *    else
 *    {
 *      // Do something else
 *    }
 *  }
 *  Status = PWMSP003_Stop((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  return 0;
 * }
 * @endcode
 */
status_t PWMSP003_GetInterruptStatus(const PWMSP003_HandleType * HandlePtr,
                                     PWMSP003_InterruptType Event,
                                     uint8_t * InterruptStatus);

/**
 * @brief This function sets the interrupt flag of the given CCU4 slice event
 * @param[in]   HandlePtr Pointer to PWMSP003_HandleType structure
 * @param[in]   Event Type of event whose interrupt to be set
 * @return status_t\n
 * DAVEApp_SUCCESS: If function is successful\n
 * PWMSP003_OPER_NOT_ALLOWED_ERROR: If this function is called when in the
 * state PWMSP003_UNINITIALIZED<BR>
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
 *  //Start to be called only when "Start after initialization" is unchecked
 *  Status = PWMSP003_Start((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  if (Status == (uint32_t)DAVEApp_SUCCESS)
 *  {
 *    Status = PWMSP003_TriggerInterrupt(PWMSP003_HandleArr[0],
 *                                     PWMSP003_COMPAREMATCH_COUNTUP_INTERRUPT);
 *  }
 *  Status = PWMSP003_Stop((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  return 0;
 * }
 * @endcode
 */
status_t PWMSP003_TriggerInterrupt(const PWMSP003_HandleType * HandlePtr,
                                   PWMSP003_InterruptType Event);

/**
 * @brief This function clears the interrupt flag of the given CCU4 slice event
 * @param[in]   HandlePtr Pointer to PWMSP003_HandleType structure
 * @param[in]   Event Type of event whose interrupt to be cleared
 * @return status_t\n
 * DAVEApp_SUCCESS: If function is successful\n
 * PWMSP003_OPER_NOT_ALLOWED_ERROR: If this function is called when in the
 * state PWMSP003_UNINITIALIZED<BR>
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
 *  //Start to be called only when "Start after initialization" is unchecked
 *  Status = PWMSP003_Start((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  if (Status == (uint32_t)DAVEApp_SUCCESS)
 *  {
 *    Status = PWMSP003_AcknowledgeInterrupt(PWMSP003_HandleArr[0],
 *                                     PWMSP003_COMPAREMATCH_COUNTUP_INTERRUPT);
 *  }
 *  Status = PWMSP003_Stop((PWMSP003_HandleType*)PWMSP003_HandleArr[0]);
 *  return 0;
 * }
 * @endcode
 */
status_t PWMSP003_AcknowledgeInterrupt(const PWMSP003_HandleType * HandlePtr,
                                       PWMSP003_InterruptType Event);

#ifdef DAVE_CE
#include "PWMSP003_Extern.h"
#endif

/* Support for C++ codebase */
#ifdef __cplusplus
}
#endif

#endif
/**
  * @}
  */
/*CODE_BLOCK_END*/