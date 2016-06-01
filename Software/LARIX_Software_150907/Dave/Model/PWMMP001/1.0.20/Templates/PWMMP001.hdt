/**************************************************************************//**
 *
 * Copyright (C) 2013 Infineon Technologies AG. All rights reserved.
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
** PLATFORM : Infineon XMC4000/XMC1000 Series                                 **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR   : DAVE App Developer                                              **
**                                                                            **
** MAY BE CHANGED BY USER [yes/no]: Yes                                       **
**                                                                            **
** MODIFICATION DATE : September 24, 2013                                     **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                       Author(s) Identity                                   **
********************************************************************************
**                                                                            **
** Initials     Name                                                          **
** ---------------------------------------------------------------------------**
** KS           DAVE App Developer                                            **
*******************************************************************************/

/**
 * @file  PWMMP001.h
 *
 * @brief This file contains all public data structures, enums and function
 *        prototypes for PWMMP001 APP.
 *
 */
/* Revision History
 * 01 Jan 2013   v1.0.10   taken as base version
 * 25 Apr 2013   v1.0.12   PWMMP001_GetTimerRegsVal() usage example is
 *                         corrected.
 * 24 Sep 2013   v1.0.14   Added c++ support       
 */
#ifndef MULTIPHASYMPWM_H_
#define MULTIPHASYMPWM_H_
/*******************************************************************************
**                      Include Files                                         **
*******************************************************************************/
#ifdef __cplusplus
extern "C" {
#endif

#include <DAVE3.h>
#include "../../inc/LIBS/CCU8PWMLIB.h"

/**
  * @ingroup PWMMP001_publicparam
  * @{
  */
/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/
/*<<<DD_PWMMP001_MACRO_11>>>*/
/**This will enable shadow transfer via the MCSS input*/
#define PWMMP001_MULTICHAN_SHADOW_TRANSFER  0x00003C00

/*<<<DD_PWMMP001_MACRO_16>>>*/
/**Maximum Period ,Shift and Duty Cycle value*/
#define PWMMP001_MAXVAL 0XFFFF

#define USE_PWM_LIB
/*******************************************************************************
 *                                ENUMERATIONS                                **
 ******************************************************************************/
/**
 * This structure enumerates the states of the PWMMP001 APP.
 */
typedef enum PWMMP001_StateType
{
  /**
   * This is the default state after power on reset
   */
  PWMMP001_UNINITIALIZED,
  /**
   * This is the INITIALIZED state in which APP is initialized as per selected
   * parameters
   */
  PWMMP001_INITIALIZED,
  /**
   * This state indicates that PWMMP001 APP is running in PWM mode.
   */
  PWMMP001_RUNNING,
  /**
   * This state indicates that all the phases of multi phase
   * asymmetric PWM App are stopped i.e. CCU8x_CCy slice timers are stopped.
   */
  PWMMP001_STOPPED,
}PWMMP001_StateType;


/**
 * This enumerates the error codes of this APP which will be returned from a
 * function as a return parameter.
 */
typedef enum PWMMP001_ErrorCodesType
{
  /**
   * This error code would be returned if the current API operation
   * is not possible because the App is in certain state.
   */
  /**
  * @cond INTERNAL_DOCS
  * @param MODULENAME PWMMP001
  * @endcond
  */
  /**
  * @cond INTERNAL_DOCS
  * @param ERRCODESTRING1 PWMMP001_OPER_NOT_ALLOWED_ERROR
  * @param STRCODESTRING1 The Operation is not allowed in current state.
  * @endcond
  */   
  PWMMP001_OPER_NOT_ALLOWED_ERROR = 1,
  /**
   * This error code means that the parameter passed to an API are invalid
   */
  /**
  * @cond INTERNAL_DOCS
  * @param ERRCODESTRING2 PWMMP001_INVALID_PARAM_ERROR
  * @param STRCODESTRING2 Invalid Parameter passed.
  * @endcond
  */   
  PWMMP001_INVALID_PARAM_ERROR,
  /* Debug Log Codes starts here*/
  /**
   * DebugLog Message Id for Function Entry
   */
  /**
  * @cond INTERNAL_DOCS
  * @param ERRCODESTRING3 PWMMP001_FUNCTION_ENTRY
  * @param STRCODESTRING3 Entered Function \%s
  * @endcond
  */   
  PWMMP001_FUNCTION_ENTRY,
  /**
   * DebugLog Message Id for Function Exit
   */
  /**
  * @cond INTERNAL_DOCS
  * @param ERRCODESTRING4 PWMMP001_FUNCTION_ENTRY
  * @param STRCODESTRING4 Exited Function \%s
  * @endcond
  */   
  PWMMP001_FUNCTION_EXIT
}PWMMP001_ErrorCodesType;

/**
 * This enumerates the phase number
 */
typedef enum PWMMP001_PhaseType
{
  /**
   * This is the first PWM phase
   */
  PWMMP001_PHASE1 = 1,
  /**
   * This is the second PWM phase
   */
  PWMMP001_PHASE2,
  /**
   * This is the third PWM phase
   */  
  PWMMP001_PHASE3,
  /**
   * This is the fourth PWM phase
   */  
  PWMMP001_PHASE4
}PWMMP001_PhaseType;

/**
 * This enumerates the module no of the CCU8
 */
typedef enum PWMMP001_ModuleType
{
/**
 * This is the Module 0 of the CCU8
 */  
  PWMMP001_CCU80,
/**
 * This is the Module 1 of the CCU8
 */  
  PWMMP001_CCU81
  
}PWMMP001_ModuleType;

/**
 * This enumerates the events of the PWMMP001 app.
 */
typedef enum PWMMP001_EventNameType
{
  /**
   * This is the period match interrupt
   */
  PWMMP001_PERIODMATCHEVENT = 0,
  /**
   * This is the compare match while counting UP interrupt
   */
  PWMMP001_COMPAREMATCHEVENT = 2,

  /**
   * This is the compare match while counting DOWN interrupt
   */
  PWMMP001_COMPAREMATCHEVENTDOWN = 3,

  /**
   * This is the external start interrupt i.e. Event 0 interrupt
   */
  PWMMP001_EXTSTARTEVENT = 8,
  /**
   * This is the external stop interrupt i.e. Event 1 interrupt
   */
  PWMMP001_EXTSTOPEVENT = 9,
  /**
   * This is the trap interrupt i.e. Event 2 interrupt
   */
  PWMMP001_TRAPEVENT = 10,
}PWMMP001_EventNameType;

/*******************************************************************************
 *                             STRUCTURES                                     **
 ******************************************************************************/
/**
 * This structure holds the compare register values corresponding to the duty
 * cycle for all the phases.
 */
typedef struct PWMMP001_DutyCycleType
{
  /**
   * offset sign for four phases. This decides whether to increase or decrease the 
   * compare register value by the offset.
   * If sign is zero, compare register value is increased
   * If sign is one, compare register value is decreased
   */
  uint8_t Sign[4];
  /**
   * Compare register value for four phases.
   * CompReg[0] = Phase1 CR1
   * CompReg[1] = Phase1 CR2 and so on.
   */
  uint32_t CompReg[8];
  /**
   * offset value for four phases for asymmetric mode. Compare register value
   * will be shifted by this offset.
   */
  uint32_t Offset[4];
  /**
   * Duty cycle in %
   */
  float DutyCycle[4];
} PWMMP001_DutyCycleType;

/**
 * This structure will hold the configuration parameters which change
 * at run time.
 */
typedef struct PWMMP001_DynamicHandleType{
  /**
   * This is the state of the app
   */
  PWMMP001_StateType State;
} PWMMP001_DynamicHandleType;

/**
 * This structure holds all the static configuration parameters for the
 * PWMMP001 APP.
 */
typedef struct PWMMP001_HandleType{
  /**
   * Sync Start from SCU enabled. If this is enabled then
   * all the slices are started sync from SCU_General.CCUCON
   */
  const uint8_t SCUSyncStart;
  /**
   * This parameter saves whether multi channel mode is supported or not.
   */
  const uint8_t kMultiChanModeSupport;
  /**
   * This parameter saves the number of phases required for this App.
   */
  const uint8_t kNumPhases;
/**
 * This parameter saves the CCU8 kernel number.
 */  
  PWMMP001_ModuleType kModuleNo;
/**
 * This parameter tells whether to start the app immediately after the initialization.
 */  
  const uint8_t StartControl;
  /**
   * This is the array of instance variables of the CCUPWMLIB app
   * corresponding to the first, second, third and fourth phases
   * respectively.
   */
  const CCU8PWMLIB_HandleType * PhaseHandlePtr[4];
  /**
   * This is the instance pointer of the CCU8 CMSIS kernel register structure.
   */
  CCU8_GLOBAL_TypeDef*  const CCU8KernRegsPtr;
  /**
   * This is the dynamic handle pointer.
   */
  PWMMP001_DynamicHandleType * const DynamicHandle;
} PWMMP001_HandleType;

/**
 * @}
 */

/**
 * @ingroup PWMMP001_apidoc
 * @{
 */
/*******************************************************************************
 **FUNCTION PROTOTYPES                                                        **
*******************************************************************************/
/**
 * @brief This function will enable the global start for the given CCU8 module.
 * It will set the respective module bit in the CCUCON register.
 * @param[in]  HandlePtr Pointer to PWMMP001_HandleType structure
 * @return void 
 * <BR>
 *
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 * 
 * @code
 * #include <DAVE3.h>
 * 
 * int main(void)
 * {
 *  DAVE_Init(); 
 //This will set the CCUCON.CCU80 bit which will generate the rising edge. 
 //CCU80 slices which are configured for external start with the SCU_GLCCST80
 //will be started with this rising edge.
   PWMMP001_EnableGlobalStart(&PWMMP001_Handle0);
 *  
 *  return 0;
 *  
 * }
 * @endcode
 */
void PWMMP001_EnableGlobalStart(const PWMMP001_HandleType* HandlePtr);
/**
 * @brief This function will disable the global start for the given CCU8 module.
 * It will reset the respective module bit in the CCUCON register.
 * @param[in]  HandlePtr Pointer to PWMMP001_HandleType structure
 * @return void 
 * <BR>
 *
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 * 
 * @code
 * #include <DAVE3.h>
 * 
  int main(void)
  {
   DAVE_Init();
 // This will reset the CCUCON.CCU80 bit. This needs to be done to avoid any
 // unwanted start of the other CCU80 slices.
   PWMMP001_DisableGlobalStart(&PWMMP001_Handle0);

   return 0;

  }
 * @endcode
 */
void PWMMP001_DisableGlobalStart(const PWMMP001_HandleType* HandlePtr);   

/**
 * @brief This function is used to initialize the APP.
 * 
 * @return void\n
 * <BR>
 *
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 * 
 * @code
 * #include <DAVE3.h>
 * 
 * int main(void)
 * {
 *  DAVE_Init(); //PWMMP001_Init is called within DAVE_Init.
 *  
 *  return 0;
 *  
 * }
 * @endcode
 */
void PWMMP001_Init(void);

/**
 * @brief This will reset PWMMP001 App.
 * @param[in]   HandlePtr Pointer to PWMMP001_HandleType structure
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * else
 * PWMMP001_OPER_NOT_ALLOWED <BR>
 *
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 * 
 * @code
 * #include <DAVE3.h>
 * 
 * int main(void)
 * {
 * status_t Status;
 *  DAVE_Init(); //PWMMP001_Init is called within DAVE_Init.
 *  //....
 *  Status = PWMMP001_Deinit((PWMMP001_HandleType*)&PWMMP001_Handle0);
 *  return 0;
 *  
 * }
 * @endcode
 */
status_t PWMMP001_Deinit(const PWMMP001_HandleType* HandlePtr);

/**
 * @brief This will start the PWMMP001 App which will in turn
 * start the CCU8x_CCy slices.
 * <b>This function needs to be called to start the App
 * even if External Start is configured. </b>
 * @param[in]   HandlePtr Pointer to PWMMP001_HandleType structure
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * PWMMP001_OPER_NOT_ALLOWED: If this function is called
 * in the state other than  PWMMP001_INITIALIZED <BR>
 *
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
 *  Status = PWMMP001_Start((PWMMP001_HandleType*)&PWMMP001_Handle0);
 *  if (Status == (uint32_t)DAVEApp_SUCCESS)
 *  {
 *    //Do something
 *  }
 *  return 0;
 * }
 * @endcode
 */
status_t PWMMP001_Start(const PWMMP001_HandleType* HandlePtr);

/**
 * @brief This will stop the PWMMP001 APP which will in turn
 * stop the CCU8x_CCy slices.
 * @param[in]   HandlePtr Pointer to PWMMP001_HandleType structure
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * PWMMP001_OPER_NOT_ALLOWED: If this function is called when not in the
 * PWMMP001_RUNNING   <BR>
 *
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
 *  Status = PWMMP001_Start((PWMMP001_HandleType*)&PWMMP001_Handle0);
 *  if (Status == (uint32_t)DAVEApp_SUCCESS)
 *  {
 *    //Do something
 *  }
 *  Status = PWMMP001_Stop((PWMMP001_HandleType*)&PWMMP001_Handle0);
 *  return 0;
 * }
 * @endcode
 */
status_t PWMMP001_Stop(const PWMMP001_HandleType* HandlePtr);

/**
 * @brief This function will modify the duty cycle of the output waveform
 * which will change the pulse width.
 * <b>Duty cycle is given in terms of percentage in DutyCyclePtr->DutyCycle.
 * DutyCyclePtr structure holds values for 4 phases. Enter values for all the
 * phases which are configured. \n 
 * E.g. If 3 phase PWM is used then enter values for phase 1, 2 and 3. 4th phase values
 * can be kept zero.\n
 * Along with duty cycle enter offset and sign for all the phases to get asymmetric waveform.\n
 * if Sign is 0 then CR1 = CompReg + Offset \n
 *            CR2 = CompReg - Offset \n
 * If Sign is 1 then CR1 = CompReg - Offset \n
 *            CR2 = CompRef + Offset \n
 * </b>
 * @param[in]   HandlePtr Pointer to PWMMP001_HandleType structure
 * @param[in]   DutyCyclePtr Pointer to PWMMP001_DytyCycleType structure
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * PWMMP001_OPERNOTALLOWED: If this function is called when in the state
 * PWMMP001_UNINITIALIZED  <BR>
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
    uint32_t Counter;
    PWMMP001_DutyCycleType DutyPtr = 
    {
      .Sign = {0,0,0,0},
      .CompReg = {0,0,0,0,0,0,0,0},
      .Offset = {100, 100, 100, 100},
      .DutyCycle = {50, 20, 10, 60}
    };
    Status = PWMMP001_Start((PWMMP001_HandleType*)&PWMMP001_Handle0);
    // Wait to observe the waveform
    for(Counter = 0;Counter <=0xFFFF;Counter++);
    // Change duty cycle value
    //It should give 60 % duty cycle. Compare register1 value is decreased by 100
    // and compare register1 value is increased by 100 to get asymmetric waveform with
    //60% duty cycle
    Status = PWMMP001_SetDutyCycle((PWMMP001_HandleType*)&PWMMP001_Handle0, &DutyPtr);
    for(Counter = 0;Counter <=0xFFFF;Counter++);

    while(1);
    return 0;
}
* @endcode
 */
status_t PWMMP001_SetDutyCycle
(
  const PWMMP001_HandleType* HandlePtr,
  const PWMMP001_DutyCycleType* DutyCyclePtr
);

/**
 * @brief This function will modify the duty cycle of the output waveform
 * which will change the pulse width.
 * <b>Duty cycle is given in terms of the compare register value in DutyCyclePtr->CompReg
 * and not in terms of the percentage. Compare1 and compare2 values need to be given
 * explicitly. Phase1 values are stored on index 0 and 1, phase2 values in index 2 and 3
 * and so on.
 * DutyCyclePtr structure holds values for 4 phases. Enter values for all the
 * phases which are configured.  \n
 * E.g. If 3 phase PWM is used then enter values for phase 1, 2 and 3. 4th phase values
 * can be kept zero. \n
 * Phase1: CompReg[0] and CompReg[1]
 * Phase2: CompReg[2] and Compred[3]
 * Phase3: CompReg[4] and CompReg[5]
 * </b>
 * @param[in]   HandlePtr Pointer to PWMMP001_HandleType structure
 * @param[in]   DutyCyclePtr Pointer to PWMMP001_DytyCycleType structure
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * PWMMP001_OPERNOTALLOWED: If this function is called when in the state
 * PWMMP001_UNINITIALIZED  <BR>
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
    uint32_t Counter;
    PWMMP001_DutyCycleType DutyPtr = 
    {
      .Sign = {0,0,0,0},
      .CompReg = {2000, 1000, 2000, 1000, 2000, 1000, 0,0},
      .Offset = {100, 100, 100, 100},
      .DutyCycle = {50, 20, 10, 60}
    };
    DAVE_Init();
    Status = PWMMP001_Start((PWMMP001_HandleType*)&PWMMP001_Handle0);
    // Wait to observe the waveform
    for(Counter = 0;Counter <=0xFFFF;Counter++);
    // Change compare register value
    // CR1 = 2000
    // CR2 = 1000
    //if Period register is 10000 this will give 85% duty cycle
    Status = PWMMP001_SetCompare((PWMMP001_HandleType*)&PWMMP001_Handle0,&DutyPtr);
    for(Counter = 0;Counter <=0xFFFF;Counter++);

    while(1);
    return 0;
}
* @endcode
 */
status_t PWMMP001_SetCompare
(
  const PWMMP001_HandleType* HandlePtr,
  const PWMMP001_DutyCycleType* DutyCyclePtr
);

/**
 * @brief This will modify the PWM frequency. \n
 * Please call PWMMP001_SetCompare() or PWMMP001_SetDutyCycle() explicitly after changing
 * PWM frequency to make sure that compare register value is lower than period register value.\n
 * @param[in]   HandlePtr Pointer to PWMMP001_HandleType structure
 * @param[in]   PwmFreq
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * PWMMP001_OPERNOTALLOWED: If this function is called when in the state
 * PWMMP001_UNINITIALIZED  <BR>
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
    uint32_t Counter;
    PWMMP001_DutyCycleType DutyPtr = 
    {
      .Sign = {0,0,0,0},
      .CompReg = {2000, 1000, 2000, 1000, 2000, 1000, 0,0},
      .Offset = {100, 100, 100, 100},
      .DutyCycle = {60, 60, 60, 60}
    };
    DAVE_Init();
    Status = PWMMP001_Start((PWMMP001_HandleType*)&PWMMP001_Handle0);
    // Wait to observe the waveform
    for(Counter = 0;Counter <=0xFFFF;Counter++);
    // Change duty cycle value
    //It should give 60 % duty cycle
     Status = PWMMP001_SetDutyCycle((PWMMP001_HandleType*)&PWMMP001_Handle0, &DutyPtr);
    for(Counter = 0;Counter <=0xFFFF;Counter++);
    // Change PWM frequency to 2500 Hz
    Status = PWMMP001_SetPwmFreq((PWMMP001_HandleType*)&PWMMP001_Handle0, 2500);
    //After changing frequency, set the duty cycle explicitly.
    Status = PWMMP001_SetDutyCycle((PWMMP001_HandleType*)&PWMMP001_Handle0, &DutyPtr);

    // Wait to observe the waveform
    for(Counter = 0;Counter <=0xFFFF;Counter++);

    while(1);
    return 0;
}
* @endcode
 */
status_t PWMMP001_SetPwmFreq
(
  const PWMMP001_HandleType* HandlePtr,
  float PwmFreq
);


/**
 * @brief This will modify the PWM frequency and duty cycle. \n
 * <b>Duty cycle is given in terms of percentage in DutyCyclePtr->DutyCycle.
 * DutyCyclePtr structure holds values for 4 phases. Enter values for all the
 * phases which are configured. \n 
 * E.g. If 3 phase PWM is used then enter values for phase 1, 2 and 3. 4th phase values
 * can be kept zero.\n
 * Along with duty cycle enter offset and sign for all the phases to get asymmetric waveform.\n
 * if Sign is 0 then CR1 = CompReg + Offset \n
 *            CR2 = CompReg - Offset \n
 * If Sign is 1 then CR1 = CompReg - Offset \n
 *            CR2 = CompRef + Offset \n
 * </b>
 * @param[in]   HandlePtr Pointer to PWMMP001_HandleType structure
 * @param[in]   PwmFreq
 * @param[in]   DutyCyclePtr Pointer to PWMMP001_DytyCycleType structure 
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * PWMMP001_OPERNOTALLOWED: If this function is called when in the state
 * PWMMP001_UNINITIALIZED  <BR>
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
    uint32_t Counter;
    PWMMP001_DutyCycleType DutyPtr = 
    {
      .Sign = {0,0,0,0},
      .CompReg = {2000, 1000, 2000, 1000, 2000, 1000, 0,0},
      .Offset = {100, 100, 100, 100},
      .DutyCycle = {60, 60, 60, 60}
    };
    DAVE_Init();
    Status = PWMMP001_Start((PWMMP001_HandleType*)&PWMMP001_Handle0);
    // Wait to observe the waveform
    for(Counter = 0;Counter <=0xFFFF;Counter++);

    // Change PWM frequency to 2500 Hz
    Status = PWMMP001_SetPwmFreqAndDutyCycle((PWMMP001_HandleType*)&PWMMP001_Handle0, 2500,  &DutyPtr);
 
    while(1);
    return 0;
}
* @endcode
 */
status_t PWMMP001_SetPwmFreqAndDutyCycle
(
  const PWMMP001_HandleType* HandlePtr,
  float PwmFreq,
  const PWMMP001_DutyCycleType* DutyCyclePtr
);


/**
 * @brief This will modify the PWM frequency. \n
 * Please call PWMMP001_SetCompare() or PWMMP001_SetDutyCycle() explicitly after changing
 * PWM frequency to make sure that compare register value is lower than period register value.\n
 * <b>In case of timer concatenation, given value is split into two 16-bit values
 * and they are programmed in Second and First slice.\n
 * E.g. 0x80000010 value is written as 0x8000 as Period register of Second slice
 * and 0x0010 as period register of first slice.
 * Total PWM period is ((0x8000 +1) * 0x0010) + 1.
 * </b>
 * @param[in]   HandlePtr Pointer to PWMMP001_HandleType structure
 * @param[in]   PwmFreq
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * PWMMP001_OPERNOTALLOWED: If this function is called when in the state
 * PWMMP001_UNINITIALIZED <BR>
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
    uint32_t Counter;
    PWMMP001_DutyCycleType DutyPtr = 
    {
      .Sign = {0,0,0,0},
      .CompReg = {2000, 1000, 2000, 1000, 2000, 1000, 0,0},
      .Offset = {100, 100, 100, 100},
      .DutyCycle = {60, 60, 60, 60}
    };
    DAVE_Init();
    Status = PWMMP001_Start((PWMMP001_HandleType*)&PWMMP001_Handle0);
    // Wait to observe the waveform
    for(Counter = 0;Counter <=0xFFFF;Counter++);
 
    // Change PWM frequency
    //  PR = 50000
    Status = PWMMP001_SetPeriod((PWMMP001_HandleType*)&PWMMP001_Handle0, 50000);
    //After changing period, set the duty cycle explicitly.
    Status = PWMMP001_SetDutyCycle((PWMMP001_HandleType*)&PWMMP001_Handle0, &DutyPtr);
    // Wait to observe the waveform
    for(Counter = 0;Counter <=0xFFFF;Counter++);
    while(1);
    return 0;
}
* @endcode
 */
status_t PWMMP001_SetPeriod
(
  const PWMMP001_HandleType* HandlePtr,
  uint32_t PwmFreq
);

/**
 * @brief This will modify the PWM frequency. \n
 * <b>In case of timer concatenation,given value is split into two 16-bit values
 * and they are programmed in Second and First slice.\n
 * e.g. 0x80000010 value is written as 0x8000 as Period register of Second slice
 * and 0x0010 as period register of first slice.
 * Total PWM period is ((0x8000 +1) * 0x0010) + 1.
 * </b>\n
 * <b>Duty cycle is given in terms of the compare register value in DutyCyclePtr->CompReg
 * and not in terms of the percentage. Compare1 and compare2 values need to be given
 * explicitly. Phase1 values are stored on index 0 and 1, phase2 values in index 2 and 3
 * and so on.
 * DutyCyclePtr structure holds values for 4 phases. Enter values for all the
 * phases which are configured.  \n
 * E.g. If 3 phase PWM is used then enter values for phase 1, 2 and 3. 4th phase values
 * can be kept zero. \n
 * Phase1: CompReg[0] and CompReg[1]
 * Phase2: CompReg[2] and Compred[3]
 * Phase3: CompReg[4] and CompReg[5]
 * </b>
 * @param[in]   HandlePtr Pointer to PWMMP001_HandleType structure
 * @param[in]   PwmFreq
 * @param[in]   DutyCyclePtr Pointer to PWMMP001_DytyCycleType structure
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * PWMMP001_OPERNOTALLOWED: If this function is called when in the state
 * PWMMP001_UNINITIALIZED <BR>
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
    uint32_t Counter;
    PWMMP001_DutyCycleType DutyPtr = 
    {
      .Sign = {0,0,0,0},
      .CompReg = {2000, 1000, 2000, 1000, 2000, 1000, 0,0},
      .Offset = {100, 100, 100, 100},
      .DutyCycle = {60, 60, 60, 60}
    };
    DAVE_Init();
    Status = PWMMP001_Start((PWMMP001_HandleType*)&PWMMP001_Handle0);
    // Wait to observe the waveform
    for(Counter = 0;Counter <=0xFFFF;Counter++);
    // Change PWM frequency
    //  PR = 50000
    Status = PWMMP001_SetPeriodAndCompare((PWMMP001_HandleType*)&PWMMP001_Handle0, 50000, &DutyPtr);
    // Wait to observe the waveform
    for(Counter = 0;Counter <=0xFFFF;Counter++);
    while(1);
    return 0;
}
* @endcode
 */
status_t PWMMP001_SetPeriodAndCompare
(
  const PWMMP001_HandleType* HandlePtr,
  uint32_t PwmFreq,
  const PWMMP001_DutyCycleType* DutyCyclePtr
);

/**
 * @brief This will update the timer register value when timer is stopped.
 * This is used to set the starting value of the timer.
 * @param[in]   HandlePtr Pointer to PWMMP001_HandleType structure
 * @param[in]   TimerVal
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * PWMMP001_OPERNOTALLOWED: If this function is called when in the state
 * PWMMP001_RUNNING <BR>
 *
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 * 
 *  * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
      status_t Status;
      DAVE_Init();
      //This will load the timer with 500. 
      PWMMP001_SetTimerVal((PWMMP001_HandleType*)&PWMMP001_Handle0, 500);
      Status = PWMMP001_Start((PWMMP001_HandleType*)&PWMMP001_Handle0);
      while(1);
      return 0; 
   }
   * @endcode
 */
status_t PWMMP001_SetTimerVal
(
  const PWMMP001_HandleType* HandlePtr,
  uint32_t TimerVal
);

/**
 * @brief This will request the update of the period register,
 * compare register values from the respective shadow transfers.\n
 * This function needs to be called when shadow compare and period registers are
 * updated explicitly by top level app.\n
 * <b>NOTE: </b> SetDutyCycle, SetCompare, SetPeriod and SetPwmFreq functions call this functions by default.
 * No need to call this function after changing the duty cycle
 * and PWM frequency.
 * @param[in]   HandlePtr Pointer to PWMMP001_HandleType structure
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * PWMMP001_OPERNOTALLOWED: If this function is called when in the state
 * PWMMP001_UNINITIALIZED  <BR>
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
      Status = PWMMP001_Start((PWMMP001_HandleType*)&PWMMP001_Handle0);
      //This is the utility function to initiate the shadow transfer. 
      //This needs to be called if period or compare value is explicitly changed by the user
      Status = PWMMP001_SWRequestShadowTransfer((PWMMP001_HandleType*)&PWMMP001_Handle0);

      while(1);
      return 0; 
   }
* @endcode
 */
status_t PWMMP001_SWRequestShadowTransfer
(
  const PWMMP001_HandleType* HandlePtr
);

/**
 * @brief This function will read the timer values of compare register and
 * period register.
 * @param[in]   HandlePtr Pointer to PWMMP001_HandleType structure
 * @param[in]   TimerRegsPtr Pointer to PWMMP001_TimerRegsType structure
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * PWMMP001_OPERNOTALLOWED: If this function is called when in the state
 * PWMMP001_UNINITIALIZED \n
 * PWMMP001_INVALIDPARAM: If TimerRegs* is invalid.<BR>
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
      CCU8PWMLIB_TimerRegsType TimerVal1;
      CCU8PWMLIB_TimerRegsType TimerVal2;
      CCU8PWMLIB_TimerRegsType TimerVal3;
      CCU8PWMLIB_TimerRegsType TimerVal4;
      CCU8PWMLIB_TimerRegsType* TimerValPtr[4] = {&TimerVal1, &TimerVal2, & TimerVal3, &TimerVal4};
      DAVE_Init();
      Status = PWMMP001_Start((PWMMP001_HandleType*)&PWMMP001_Handle0);
      Status = PWMMP001_GetTimerRegsVal((PWMMP001_HandleType*)&PWMMP001_Handle0, TimerValPtr);

      while(1);
      return 0; 
   }
* @endcode
 */
status_t PWMMP001_GetTimerRegsVal
(
  const PWMMP001_HandleType * HandlePtr,
  CCU8PWMLIB_TimerRegsType * const * TimerRegsPtr
);

/**
 * @brief This function will read the period register value.
 * @param[out]   PeriodRegPtr
 * @param[in]   HandlePtr Pointer to PWMMP001_HandleType structure
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * PWMMP001_OPERNOTALLOWED: If this function is called when in the state
 * PWMMP001_UNINITIALIZED or <BR>
 *
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 * 
 * * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
      status_t Status;
      uint32_t Period;
      DAVE_Init();
      Status = PWMMP001_Start((PWMMP001_HandleType*)&PWMMP001_Handle0);
      //Period will get the period register value. 
      Status = PWMMP001_GetPeriodReg((PWMMP001_HandleType*)&PWMMP001_Handle0, &Period);

      while(1);
      return 0; 
   }
* @endcode
 */
status_t PWMMP001_GetPeriodReg
(
  const PWMMP001_HandleType* HandlePtr,
  uint32_t * PeriodRegPtr
);

/**
 * @brief  This function will read the timer status whether
 * timer is running or idle. 
 * @param[in]   HandlePtr Pointer to PWMMP001_HandleType structure
 * @param[in]   TimerStatusPtr Pointer to PWMMP001_TimerStatusType
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * PWMMP001_OPERNOTALLOWED: If this function is called when in the state
 * PWMMP001_UNINITIALIZED   <BR>
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
      uint32_t TimerStatus;
      DAVE_Init();
      Status = PWMMP001_Start((PWMMP001_HandleType*)&PWMMP001_Handle0);
      Status = PWMMP001_GetTimerStatus((PWMMP001_HandleType*)&PWMMP001_Handle0, &TimerStatus);
      if(TimerStatus == (uint8_t)SET)
      {
        //Timer is running
      }
      while(1);
      return 0; 
   }
   * @endcode
 */
status_t PWMMP001_GetTimerStatus
(
  const PWMMP001_HandleType* HandlePtr,
  uint32_t * TimerStatusPtr
);

/**
 * @brief  This function will reset the trap flag by checking the trap
 * interrupt status.
 * @param[in]   HandlePtr Pointer to PWMMP001_HandleType structure
 * @return status_t\n
 * DAVEApp_SUCCESS: if function is successful\n
 * PWMMP001_OPERNOTALLOWED: If this function is called when in the state
 * other than PWMMP001_TRAP<BR>
 *
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
      status_t Status;
      DAVE_Init();
      Status = PWMMP001_Start((PWMMP001_HandleType*)&PWMMP001_Handle0);
      //Reset the trap flag if SW exit is selected
      Status = PWMMP001_ResetTrapFlag((PWMMP001_HandleType*)&PWMMP001_Handle0);

      while(1);
      return 0; 
   }
* @endcode
 */
status_t PWMMP001_ResetTrapFlag
(
  const PWMMP001_HandleType* HandlePtr
);

/**
 * @brief This function will enable the event. This should be called by the user first
 * for interrupt handling.
 *
 * @param [in] HandlePtr pointer to the Instance variable<BR>
 * @param [in] PhaseNo PWM phase number
 * @param [in] Event Event to be enabled <BR>
 * @return status_t<BR>
 * DAVEApp_SUCCESS: if the function is successful<BR>
 * PWMMP001_OPER_NOT_ALLOWED_ERROR: If the function is called in
 * PWMMP001_UNINITIALIZED State.<BR>
 *
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 * 
 *  * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
      status_t Status;
      DAVE_Init();
      //This needs to be called when "Enable interrupt at initialization" is not checked.
      Status = PWMMP001_EnableEvent((PWMMP001_HandleType*)&PWMMP001_Handle0, PWMMP001_PHASE3, PWMMP001_PERIODMATCHEVENT);
       //Start needs to be called only when "Start after initialization" is not checked
      Status = PWMMP001_Start((PWMMP001_HandleType*)&PWMMP001_Handle0);
      while(1);
      return 0; 
   }
* @endcode 
 */
status_t PWMMP001_EnableEvent
(
     const PWMMP001_HandleType * HandlePtr,
     const PWMMP001_PhaseType PhaseNo,
     const PWMMP001_EventNameType Event
);

/**
 * @brief This function will disable the event.
 *
 * @param [in] HandlePtr pointer to the Instance variable<BR>
  * @param [in] PhaseNo PWM phase number
 * @param [in] Event Event to be disabled <BR>
 * @return status_t<BR>
 * DAVEApp_SUCCESS: if the function is successful<BR>
 * PWMMP001_OPER_NOT_ALLOWED_ERROR: If the function is called in
 * PWMMP001_UNINITIALIZED State.<BR>
 *
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 * 
 *  * @code
 * #include <DAVE3.h>
 *
 * int main(void)
 * {
      status_t Status;
      DAVE_Init();
      //This needs to be called when "Enable interrupt at initialization" is not checked.
      Status = PWMMP001_EnableEvent((PWMMP001_HandleType*)&PWMMP001_Handle0, PWMMP001_PHASE3, PWMMP001_PERIODMATCHEVENT);
       //Start needs to be called only when "Start after initialization" is not checked
      Status = PWMMP001_Start((PWMMP001_HandleType*)&PWMMP001_Handle0);
      //Disable the period match interrupt
      Status = PWMMP001_DisableEvent((PWMMP001_HandleType*)&PWMMP001_Handle0, PWMMP001_PHASE3, PWMMP001_PERIODMATCHEVENT);
      while(1);
      return 0; 
   }
* @endcode 
 */
status_t PWMMP001_DisableEvent
(
    const PWMMP001_HandleType * HandlePtr,
    const PWMMP001_PhaseType PhaseNo,
    const PWMMP001_EventNameType Event
);

/**
 * @brief This function will clear the pending event.
 *
 * @param [in] HandlePtr pointer to the Instance variable<BR>
 * @param [in] PhaseNo PWM phase number
 * @param [in] Event Event to be cleared <BR>
 * @return status_t<BR>
 * DAVEApp_SUCCESS: if the function is successful<BR>
 * PWMMP001_OPER_NOT_ALLOWED_ERROR: If the function is called in
 * PWMMP001_UNINITIALIZED State.<BR>
 *
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 * 
 *  * @code
 * #include <DAVE3.h>
 *
  int main(void)
  {
      status_t Status;
      DAVE_Init();
      //This needs to be called when "Enable interrupt at initialization" is not checked.
      Status = PWMMP001_EnableEvent((PWMMP001_HandleType*)&PWMMP001_Handle0, PWMMP001_PHASE3, PWMMP001_PERIODMATCHEVENT);
       //Start needs to be called only when "Start after initialization" is not checked
      Status = PWMMP001_Start((PWMMP001_HandleType*)&PWMMP001_Handle0);
      while(1);
      return 0;
   }

   void PWMMP001_PeriodMatchInterruptHandler(void)
   {
     status_t Status;
	 //do something and then reset the event
     Status = PWMMP001_ClearPendingEvent((PWMMP001_HandleType*)&PWMMP001_Handle0, PWMMP001_PHASE3, PWMMP001_PERIODMATCHEVENT);
   }
* @endcode 
 */
status_t PWMMP001_ClearPendingEvent
(
    const PWMMP001_HandleType * HandlePtr,
    const PWMMP001_PhaseType PhaseNo,
    const PWMMP001_EventNameType Event
);

/**
 * @brief This function will forcefully set the event. This function should not be called within
 * interrut handler to avoid infinite loop.
 *
 * @param [in] HandlePtr pointer to the Instance variable<BR>
 * @param [in] PhaseNo PWM phase number 
 * @param [in] Event Event to be set <BR>
 * @return status_t<BR>
 * DAVEApp_SUCCESS: if the function is successful<BR>
 * PWMMP001_OPER_NOT_ALLOWED_ERROR: If the function is called in
 * PWMMP001_UNINITIALIZED State.<BR>
 *
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 * 
 * * @code
 * #include <DAVE3.h>
 *
  int main(void)
  {
      status_t Status;
      DAVE_Init();
      //This needs to be called when "Enable interrupt at initialization" is not checked.
      Status = PWMMP001_EnableEvent((PWMMP001_HandleType*)&PWMMP001_Handle0, PWMMP001_PHASE3, PWMMP001_PERIODMATCHEVENT);
       //Start needs to be called only when "Start after initialization" is not checked
      Status = PWMMP001_Start((PWMMP001_HandleType*)&PWMMP001_Handle0);
      //forcefully set the event
      Status = PWMMP001_SetPendingEvent((PWMMP001_HandleType*)&PWMMP001_Handle0, PWMMP001_PHASE3, PWMMP001_PERIODMATCHEVENT);
      while(1);
      return 0;
   }
* @endcode 
 */
status_t PWMMP001_SetPendingEvent
(
    const PWMMP001_HandleType * HandlePtr,
    const PWMMP001_PhaseType PhaseNo,
    const PWMMP001_EventNameType Event
);

/**
 * @brief This function will check whether given event is set.
 *
 * @param [in] HandlePtr pointer to the Instance variable<BR>
 * @param [in] PhaseNo PWM phase number
 * @param [in] Event Event to be set <BR>
 * @param [in] EvtStatus Status of the eventwhether it is set <BR>
 * @return status_t<BR>
 * DAVEApp_SUCCESS: if the function is successful<BR>
 * PWMMP001_OPER_NOT_ALLOWED_ERROR: If the function is called in
 * PWMMP001_UNINITIALIZED State.<BR>
 *
 * <b>Reentrancy:  Yes</b><BR>
 * <b>Sync/Async:  Synchronous</b><BR>
 * 
 * * @code
 * #include <DAVE3.h>
 *
  int main(void)
  {
      status_t Status;
      DAVE_Init();
      //This needs to be called when "Enable interrupt at initialization" is not checked.
      Status = PWMMP001_EnableEvent((PWMMP001_HandleType*)&PWMMP001_Handle0, PWMMP001_PHASE3, PWMMP001_PERIODMATCHEVENT);
       //Start needs to be called only when "Start after initialization" is not checked
      Status = PWMMP001_Start((PWMMP001_HandleType*)&PWMMP001_Handle0);
      while(1);
      return 0;
   }

   void PWMMP001_PeriodMatchInterruptHandler(void)
   {
     uint8_t EventStatus;
	 status_t Status;
     Status = PWMMP001_GetPendingEvent((PWMMP001_HandleType*)&PWMMP001_Handle0, PWMMP001_PHASE3, PWMMP001_PERIODMATCHEVENT, &EventStatus);
     if((EventStatus == (uint8_t)SET)&&
	    (Status == DAVEApp_SUCCESS)
	   )
     {
       //do something and then reset the event
       Status = PWMMP001_ClearPendingEvent((PWMMP001_HandleType*)&PWMMP001_Handle0, PWMMP001_PHASE3, PWMMP001_PERIODMATCHEVENT);
     }
   }
* @endcode
 */
status_t PWMMP001_GetPendingEvent
(
    const PWMMP001_HandleType * HandlePtr,
    const PWMMP001_PhaseType PhaseNo,
    const PWMMP001_EventNameType Event,
    uint8_t* EvtStatus
);

#include "PWMMP001_Conf.h"
/**
 * @}
 */
#ifdef __cplusplus
}
#endif
#endif /* MULTIPHASYMPWM_H_ */
