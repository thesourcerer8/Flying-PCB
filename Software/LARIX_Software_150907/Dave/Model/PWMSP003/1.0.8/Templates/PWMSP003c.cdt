/*CODE_BLOCK_BEGIN[pwmsp003.c]*/

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
   1.0.4  31-Jan-2014   1. Initial version
                        2. Minor updates to remove warnings
                        3. Document automation by DaveDocGen script
                        4. XMC1000 VQFN package support added
                           XMC4000 Device support extended for XMC4500 AC step
                           XMC4400 AB Step and XMC4200 AB Step.
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
 * @file  PWMSP003.c
 * @brief This file contains App parameter data as per GUI configurations
 */

#include "../../inc/PWMSP003/PWMSP003.h"

/*******************************************************************************
 **                 Private Function declarations                             **
*******************************************************************************/
/**
 * @cond INTERNAL_DOCS
 */
/**
 * @ingroup PWMSP003_privatefunc
 * @{
 */

 /**
 * @brief This function initializes CCU4 slice as per GUI configurations.
 * @param[in]  HandlePtr Pointer to PWMSP003_HandleType structure
 * @return status_t status
 */
status_t PWMSP003_lInit(const PWMSP003_HandleType* HandlePtr);
/**
 * @brief This function will set duty cycle if edge aligned mode
 *        without timer concatenation is selected.
 * @param[in]  HandlePtr Pointer to PWMSP003_HandleType structure
 * @param[in]  Compare This is duty cycle in percentage
 * @return status_t void
 */
void PWMSP003_lSetCompareEdgeAlign( void* Handle, uint32_t Compare);
/**
 * @brief This function will set duty cycle if center aligned mode is selected.
 * @param[in]  HandlePtr Pointer to PWMSP003_HandleType structure
 * @param[in]  Compare This is duty cycle in percentage
 * @return status_t void
 */
void PWMSP003_lSetCompareCenterAlign(void* Handle, uint32_t Compare);
/**
 * @brief This function will set duty cycle if edge aligned mode without
 *        timer concatenation is selected.
 * @param[in]  HandlePtr Pointer to PWMSP003_HandleType structure
 * @param[in]  Duty This is duty cycle in percentage
 * @return status_t void
 */
void PWMSP003_lSetDutyEdgeAlign( void* Handle, float Duty);
/**
 * @brief This function will set duty cycle if center aligned mode is selected.
 * @param[in]  HandlePtr Pointer to PWMSP003_HandleType structure
 * @param[in]  Duty This is duty cycle in percentage
 * @return status_t void
 */
void PWMSP003_lSetDutyCenterAlign(void* Handle, float Duty);
 /**
 * @}
 */

 /*******************************************************************************
 **                 Function definitions                                      **
 ******************************************************************************/
/**
 * @ingroup PWMSP003_funcdefines
 * @{
 */

/**
 * This function is used to change the compare register value
 * in edge-aligned mode.
 */
void PWMSP003_lSetCompareEdgeAlign( void* Handle, uint32_t Compare)
{
  uint32_t Temp1;
  uint32_t Temp2;
  PWMSP003_HandleType* HandlePtr = (PWMSP003_HandleType*)Handle;

  HandlePtr->CC4yRegsPtr->CRS = (Compare & 0xFFFFU);

  /* Request shadow transfer */
  Temp2 = (PWMSP003_NO_OF_SLICES * (uint32_t)HandlePtr->Slice);
  Temp1 = (uint32_t)CCU4_GCSS_S0SE_Pos + Temp2;
  HandlePtr->CC4yKernRegsPtr->GCSS |= ((uint32_t)0x01 << Temp1);
}

/**
 * This function is used to change the compare register value
 * in center-aligned mode.
 */
void PWMSP003_lSetCompareCenterAlign(void* Handle, uint32_t Compare)
{
  uint32_t Temp1;

  PWMSP003_HandleType* HandlePtr = (PWMSP003_HandleType*)Handle;

  HandlePtr->CC4yRegsPtr->CRS = (Compare & 0xFFFFU);

  /* Request shadow transfer */
  Temp1 = ((uint32_t)CCU4_GCSS_S0SE_Pos +\
                          (PWMSP003_NO_OF_SLICES * (uint32_t)HandlePtr->Slice));
  HandlePtr->CC4yKernRegsPtr->GCSS |= ((uint32_t)0x01 << Temp1);
}

/**
 * This function is used to change the duty cycle of the PWM waveform
 * in edge-aligned mode
 */
void PWMSP003_lSetDutyEdgeAlign( void* Handle, float Duty)
{
  uint32_t CompareVal = (uint32_t)0;
  uint32_t Temp1;
  float fDuty, fPRS ;
  PWMSP003_HandleType* HandlePtr = (PWMSP003_HandleType*)Handle;
  fDuty = Duty;



  fDuty = (float)((float)100.00 - (float)fDuty)/(float)100.00;
  fPRS = (float)((uint32_t)HandlePtr->CC4yRegsPtr->PRS + 1U);
  CompareVal = (uint32_t)( fPRS * fDuty);
  HandlePtr->CC4yRegsPtr->CRS = CompareVal  & 0xFFFFU;

  /*Shadow transfer */
  Temp1 =  ((uint32_t)CCU4_GCSS_S0SE_Pos +\
                ((uint32_t)PWMSP003_NO_OF_SLICES *(uint32_t)HandlePtr->Slice));
  HandlePtr->CC4yKernRegsPtr->GCSS |=\
                                 (uint32_t)((uint32_t)0x01 << (uint32_t)Temp1);

}

/**
 * This function is used to change the duty cycle of the PWM waveform
 * in center-aligned mode
 */
void PWMSP003_lSetDutyCenterAlign(void* Handle, float Duty)
{
  uint32_t CompareVal = (uint32_t)0x00;
  uint32_t Temp1;
  float fDuty, fPRS ;
  PWMSP003_HandleType* HandlePtr = (PWMSP003_HandleType*)Handle;
  fDuty = Duty;

  fDuty = (float)((float)100.00 - (float)fDuty)/(float)100.00;
  fPRS = (float)HandlePtr->CC4yRegsPtr->PRS;
  CompareVal = (uint32_t)( fPRS * fDuty);
  HandlePtr->CC4yRegsPtr->CRS = (uint32_t)CompareVal  & 0xFFFFU;

  /*shadow transfer */
  Temp1 = ((uint32_t)CCU4_GCSS_S0SE_Pos +\
                         (PWMSP003_NO_OF_SLICES * (uint32_t)HandlePtr->Slice));
  HandlePtr->CC4yKernRegsPtr->GCSS |=\
                                 (uint32_t)((uint32_t)0x01 << (uint32_t)Temp1);
}

/**
 * This function initializes the app
 */
void PWMSP003_Init(void)
{
  status_t Error = (uint32_t)PWMSP003_OPER_NOT_ALLOWED_ERROR;
  uint8_t HandleNum;

  for(HandleNum = 0; HandleNum < PWMSP003_NUM_INSTANCES; HandleNum++)
  {
    Error = PWMSP003_lInit((PWMSP003_HandleType*)PWMSP003_HandleArr[HandleNum]);

    /* Start the app if "Start after initialization" is checked */
    if(Error == (uint32_t)DAVEApp_SUCCESS)
    {
      if (PWMSP003_HandleArr[HandleNum]->StartControl == (uint8_t)SET)
      {
        Error = PWMSP003_Start((PWMSP003_HandleType*)
                                            PWMSP003_HandleArr[HandleNum]);
      }
    }
  }
}

/**
 * This function initializes an instance of the app
 */
status_t PWMSP003_lInit(const PWMSP003_HandleType* HandlePtr)
{
  status_t Status = (uint32_t)PWMSP003_OPER_NOT_ALLOWED_ERROR;
  uint32_t Temp;
  PWMSP003_EdgeTriggerType EdgeSelection = PWMSP003_NO_TRIGGER;
  PWMSP003_ActiveLevelType LevelSelection = PWMSP003_ACTIVE_ON_HIGH;

  do
  {
    if (HandlePtr->DynamicDataType->StateType != PWMSP003_UNINITIALIZED)
    {
      break;
    }
    HandlePtr->CC4yRegsPtr->TCCLR = PWMSP003_SLICE_CLEAR;

    if(HandlePtr->kEvent0Function != PWMSP003_NO_FUNCTION)
    {
      if(HandlePtr->kEvent0Function == PWMSP003_EXTERNAL_START)
      {
        EdgeSelection = HandlePtr->kStartEdge;
      }
      else if(HandlePtr->kEvent0Function == PWMSP003_EXTERNAL_STOP)
      {
        EdgeSelection = HandlePtr->kStopEdge;
      }
      else if(HandlePtr->kEvent0Function == PWMSP003_EXTERNAL_LOAD)
      {
        EdgeSelection = HandlePtr->kLoadEventEdge;
      }
      else if(HandlePtr->kEvent0Function == PWMSP003_EXTERNAL_COUNT)
      {
        EdgeSelection = HandlePtr->kCountEventEdge;
      }
      else
      {
        EdgeSelection = PWMSP003_RISING_EDGE;
      }

      if(HandlePtr->kEvent0Function == PWMSP003_EXTERNAL_COUNT_DIRECTION)
      {
        LevelSelection = HandlePtr->kCntDirActiveLevel;
      }
      else if(HandlePtr->kEvent0Function == PWMSP003_EXTERNAL_MODULATION)
      {
        LevelSelection = HandlePtr->kModulationActiveLevel;
      }
      else if(HandlePtr->kEvent0Function == PWMSP003_EXTERNAL_GATING)
      {
        LevelSelection = HandlePtr->kGateEventActiveLevel;
      }
      else
      {
        /** */
      }

      WR_REG(HandlePtr->CC4yRegsPtr->INS, (uint32_t)CCU4_CC4_INS_EV0EM_Msk,\
               (uint32_t)CCU4_CC4_INS_EV0EM_Pos, (uint32_t)EdgeSelection);

      WR_REG(HandlePtr->CC4yRegsPtr->INS, (uint32_t)CCU4_CC4_INS_EV0LM_Msk,\
               (uint32_t)CCU4_CC4_INS_EV0LM_Pos, (uint32_t)LevelSelection);

      WR_REG(HandlePtr->CC4yRegsPtr->INS, (uint32_t)CCU4_CC4_INS_LPF0M_Msk,\
               (uint32_t)CCU4_CC4_INS_LPF0M_Pos, HandlePtr->kEvent0_lpfconfig);

      if(HandlePtr->kEvent0Function != PWMSP003_EXTERNAL_START)
      {
        WR_REG(HandlePtr->CC4yRegsPtr->CMC,\
              (uint32_t)(CCU4_CC4_CMC_STRTS_Msk << HandlePtr->kEvent0Function),\
               (uint32_t)(CCU4_CC4_CMC_STRTS_Pos + HandlePtr->kEvent0Function),\
               PWMSP003_EVENT_0);
      }
    }

    /* Reset to default */
    EdgeSelection = PWMSP003_NO_TRIGGER;
    LevelSelection = PWMSP003_ACTIVE_ON_HIGH;

    if(HandlePtr->kEvent1Function != PWMSP003_NO_FUNCTION)
    {
      if(HandlePtr->kEvent1Function == PWMSP003_EXTERNAL_START)
      {
        EdgeSelection = HandlePtr->kStartEdge;
      }
      else if(HandlePtr->kEvent1Function == PWMSP003_EXTERNAL_STOP)
      {
        EdgeSelection = HandlePtr->kStopEdge;
      }
      else if(HandlePtr->kEvent1Function == PWMSP003_EXTERNAL_LOAD)
      {
        EdgeSelection = HandlePtr->kLoadEventEdge;
      }
      else if(HandlePtr->kEvent1Function == PWMSP003_EXTERNAL_COUNT)
      {
        EdgeSelection = HandlePtr->kCountEventEdge;
      }
      else
      {
        EdgeSelection = PWMSP003_RISING_EDGE;
      }

      if(HandlePtr->kEvent1Function == PWMSP003_EXTERNAL_COUNT_DIRECTION)
      {
        LevelSelection = HandlePtr->kCntDirActiveLevel;
      }
      else if(HandlePtr->kEvent1Function == PWMSP003_EXTERNAL_MODULATION)
      {
        LevelSelection = HandlePtr->kModulationActiveLevel;
      }
      else if(HandlePtr->kEvent1Function == PWMSP003_EXTERNAL_OVERRIDE)
      {
        LevelSelection = HandlePtr->kOverrideActiveLevel;
      }
      else if(HandlePtr->kEvent1Function == PWMSP003_EXTERNAL_GATING)
      {
        LevelSelection = HandlePtr->kGateEventActiveLevel;
      }
      else
      {
        /** */
      }

      WR_REG(HandlePtr->CC4yRegsPtr->INS, (uint32_t)CCU4_CC4_INS_EV1EM_Msk,\
               (uint32_t)CCU4_CC4_INS_EV1EM_Pos, (uint32_t)EdgeSelection);

      WR_REG(HandlePtr->CC4yRegsPtr->INS, (uint32_t)CCU4_CC4_INS_EV1LM_Msk,\
               (uint32_t)CCU4_CC4_INS_EV1LM_Pos, (uint32_t)LevelSelection);

      WR_REG(HandlePtr->CC4yRegsPtr->INS, (uint32_t)CCU4_CC4_INS_LPF1M_Msk,\
               (uint32_t)CCU4_CC4_INS_LPF1M_Pos, HandlePtr->kEvent1_lpfconfig);

      if(HandlePtr->kEvent1Function != PWMSP003_EXTERNAL_START)
      {
        /* Override Config in CMC Register is only one bit each */
        /* START/STOP etc. are 2 bits each */
        if(HandlePtr->kEvent1Function == PWMSP003_EXTERNAL_OVERRIDE)
        {
          /* Mask for Trap, 1 bit */
          Temp = PWMSP003_OVERRIDEEVENT_BITMASK;
        }
        else
        {
          /* Mask for START,STOP etc. functions, 2 bits */
          Temp = PWMSP003_STARTEVENT_BITMASK;
        }

        if(HandlePtr->kEvent1Function == PWMSP003_EXTERNAL_OVERRIDE)
        {
          WR_REG(HandlePtr->CC4yRegsPtr->CMC,\
              (uint32_t)((CCU4_CC4_CMC_STRTS_Msk & Temp) <<\
              HandlePtr->kEvent1Function),\
              (uint32_t)(CCU4_CC4_CMC_STRTS_Pos + HandlePtr->kEvent1Function),\
              0x01U);
        }
        else
        {
          WR_REG(HandlePtr->CC4yRegsPtr->CMC,\
              (uint32_t)((CCU4_CC4_CMC_STRTS_Msk & Temp) <<\
              HandlePtr->kEvent1Function),\
              (uint32_t)(CCU4_CC4_CMC_STRTS_Pos + HandlePtr->kEvent1Function),\
              PWMSP003_EVENT_1);
        }
      }
    }

    /* Reset to default */
    EdgeSelection = PWMSP003_NO_TRIGGER;
    LevelSelection = PWMSP003_ACTIVE_ON_HIGH;

    if(HandlePtr->kEvent2Function != PWMSP003_NO_FUNCTION)
    {
      if(HandlePtr->kEvent2Function == PWMSP003_EXTERNAL_START)
      {
        EdgeSelection = HandlePtr->kStartEdge;
      }
      else if(HandlePtr->kEvent2Function == PWMSP003_EXTERNAL_STOP)
      {
        EdgeSelection = HandlePtr->kStopEdge;
      }
      else if(HandlePtr->kEvent2Function == PWMSP003_EXTERNAL_LOAD)
      {
        EdgeSelection = HandlePtr->kLoadEventEdge;
      }
      else if(HandlePtr->kEvent2Function == PWMSP003_EXTERNAL_COUNT)
      {
        EdgeSelection = HandlePtr->kCountEventEdge;
      }
      else
      {
        EdgeSelection = PWMSP003_RISING_EDGE;
      }

      if(HandlePtr->kEvent2Function == PWMSP003_EXTERNAL_COUNT_DIRECTION)
      {
        LevelSelection = HandlePtr->kCntDirActiveLevel;
      }
      else if(HandlePtr->kEvent2Function == PWMSP003_EXTERNAL_TRAP)
      {
        LevelSelection = HandlePtr->kTrapLevel;
      }
      else if(HandlePtr->kEvent2Function == PWMSP003_EXTERNAL_MODULATION)
      {
        LevelSelection = HandlePtr->kModulationActiveLevel;
      }
      else if(HandlePtr->kEvent2Function == PWMSP003_EXTERNAL_OVERRIDE)
      {
        LevelSelection = HandlePtr->kOverrideActiveLevel;
      }
      else if(HandlePtr->kEvent2Function == PWMSP003_EXTERNAL_GATING)
      {
        LevelSelection = HandlePtr->kGateEventActiveLevel;
      }
      else
      {
       /** */
      }

      WR_REG(HandlePtr->CC4yRegsPtr->INS, (uint32_t)CCU4_CC4_INS_EV2EM_Msk,\
               (uint32_t)CCU4_CC4_INS_EV2EM_Pos, (uint32_t)EdgeSelection);

      WR_REG(HandlePtr->CC4yRegsPtr->INS, (uint32_t)CCU4_CC4_INS_EV2LM_Msk,\
               (uint32_t)CCU4_CC4_INS_EV2LM_Pos, (uint32_t)LevelSelection);

      WR_REG(HandlePtr->CC4yRegsPtr->INS, (uint32_t)CCU4_CC4_INS_LPF2M_Msk,\
               (uint32_t)CCU4_CC4_INS_LPF2M_Pos, HandlePtr->kEvent2_lpfconfig);

      if(HandlePtr->kEvent2Function != PWMSP003_EXTERNAL_START)
      {
        /* Trap and Override Config in CMC Register is only one bit each */
        /* START/STOP etc. are 2 bits each */
        if(HandlePtr->kEvent2Function == PWMSP003_EXTERNAL_OVERRIDE)
        {
          /* Mask for Trap, 1 bit */
          Temp = PWMSP003_OVERRIDEEVENT_BITMASK;
        }
        else if(HandlePtr->kEvent2Function == PWMSP003_EXTERNAL_TRAP)
        {
          /* Mask for Trap, 1 bit */
          Temp = PWMSP003_TRAPEVENT_BITMASK;
        }
        else
        {
          /* Mask for START,STOP etc. functions, 2 bits */
          Temp = PWMSP003_STARTEVENT_BITMASK;
        }

        if(HandlePtr->kEvent2Function == PWMSP003_EXTERNAL_OVERRIDE)
        {
          WR_REG(HandlePtr->CC4yRegsPtr->CMC,\
              (uint32_t)((CCU4_CC4_CMC_STRTS_Msk & Temp) <<\
              HandlePtr->kEvent2Function),\
              (uint32_t)(CCU4_CC4_CMC_STRTS_Pos + HandlePtr->kEvent2Function),\
              0x01U);
        }
        else
        {
          WR_REG(HandlePtr->CC4yRegsPtr->CMC,\
              (uint32_t)((CCU4_CC4_CMC_STRTS_Msk & Temp) <<\
              HandlePtr->kEvent2Function),\
              (uint32_t)(CCU4_CC4_CMC_STRTS_Pos + HandlePtr->kEvent2Function),\
              PWMSP003_EVENT_2);
        }
      }
    }

    /* Slice Timer Control */
    HandlePtr->CC4yRegsPtr->TC &= ~(CCU4_CC4_TC_TCM_Msk |\
      CCU4_CC4_TC_TSSM_Msk | CCU4_CC4_TC_CMOD_Msk |\
        CCU4_CC4_TC_STRM_Msk | CCU4_CC4_TC_ENDM_Msk | CCU4_CC4_TC_DITHE_Msk);

    /* Timer control configurations */
    HandlePtr->CC4yRegsPtr->TC |= (((uint32_t)HandlePtr->CountingModeType <<\
        CCU4_CC4_TC_TCM_Pos) & CCU4_CC4_TC_TCM_Msk) |\
        (((uint32_t)HandlePtr->kTimerMode  << CCU4_CC4_TC_TSSM_Pos) &\
        CCU4_CC4_TC_TSSM_Msk)|(((uint32_t)PWMSP003_COMPARE_MODE <<\
        CCU4_CC4_TC_CMOD_Pos)& CCU4_CC4_TC_CMOD_Msk) |\
        (((uint32_t)HandlePtr->ExtStartConfigType <<CCU4_CC4_TC_STRM_Pos) &\
        CCU4_CC4_TC_STRM_Msk)|(((uint32_t)HandlePtr->ExtStopConfigType <<\
        CCU4_CC4_TC_ENDM_Pos)& CCU4_CC4_TC_ENDM_Msk);

    /*Set the dither mode setting*/
    WR_REG(HandlePtr->CC4yRegsPtr->TC,(uint32_t)CCU4_CC4_TC_DITHE_Msk,\
      (uint32_t)CCU4_CC4_TC_DITHE_Pos, HandlePtr->kDitherSetting);

    /* Set the floating point prescaler mode */
    WR_REG(HandlePtr->CC4yRegsPtr->TC,(uint32_t)CCU4_CC4_TC_FPE_Msk,\
      (uint32_t)CCU4_CC4_TC_FPE_Pos, HandlePtr->kPrescalerMode);

    WR_REG(HandlePtr->CC4yRegsPtr->DITS,(uint32_t)CCU4_CC4_DITS_DCVS_Msk,\
      (uint32_t)CCU4_CC4_DITS_DCVS_Pos, HandlePtr->kDitherCompare);

    /* Configure Trap mode */
    WR_REG(HandlePtr->CC4yRegsPtr->TC, (uint32_t)CCU4_CC4_TC_TRPSE_Msk,\
          (uint32_t)CCU4_CC4_TC_TRPSE_Pos, HandlePtr->kTrapSync);

    /* Configure Trap exit mode */
    WR_REG(HandlePtr->CC4yRegsPtr->TC, (uint32_t)CCU4_CC4_TC_TRPSW_Msk,\
          (uint32_t)CCU4_CC4_TC_TRPSW_Pos, HandlePtr->kTrapExitControl);

    /* External modulation sync  */
    WR_REG(HandlePtr->CC4yRegsPtr->TC, (uint32_t)CCU4_CC4_TC_EMS_Msk,\
          (uint32_t)CCU4_CC4_TC_EMS_Pos, HandlePtr->kModulationSync);

    /* External modulation type  */
    WR_REG(HandlePtr->CC4yRegsPtr->TC, (uint32_t)CCU4_CC4_TC_EMT_Msk,\
          (uint32_t)CCU4_CC4_TC_EMT_Pos, HandlePtr->kModulationMode);

    /* Set the prescaler divider and passive level of the o/p signal */
    WR_REG(HandlePtr->CC4yRegsPtr->PSC, (uint32_t)CCU4_CC4_PSC_PSIV_Msk,\
      (uint32_t)CCU4_CC4_PSC_PSIV_Pos, HandlePtr->kCCUPrescaler);

    /* if Selected prescaler is Floating Prescaler, set FP register */
    if(HandlePtr->kPrescalerMode ==
                        (PWMSP003_PrescalerModeType)PWMSP003_FLOATING_PRESCALER)
    {
      HandlePtr->CC4yRegsPtr->FPCS =\
                        (uint32_t)HandlePtr->kFloatingPrescalepcmpvalue;
    }
    HandlePtr->CC4yRegsPtr->PSL = HandlePtr->kPassiveLevel;

    /* Setting period register's value */
    HandlePtr->CC4yRegsPtr->PRS = (uint32_t)(HandlePtr->kPeriodVal & 0xFFFFU);
    /*Setting compare register's value*/
    HandlePtr->CC4yRegsPtr->CRS = (uint32_t)(HandlePtr->kCompareValue &0xFFFFU);
    HandlePtr->CC4yRegsPtr->SWR |= PWMSP003_ALL_CCU4_INTR_CLEAR;

    /* Applying Interrupt settings */
    HandlePtr->CC4yRegsPtr->INTE |= HandlePtr->InterruptControl;

    /* Request SW shadow transfer for period, compare, dither and prescaler */
    HandlePtr->CC4yKernRegsPtr->GCSS |=\
    (((uint32_t)0x1U << (PWMSP003_NO_OF_SLICES * (uint32_t)HandlePtr->Slice)) |\
    ((uint32_t)0x1U <<\
    ((PWMSP003_NO_OF_SLICES * (uint32_t)HandlePtr->Slice) + (uint32_t)0x1U)) |\
    ((uint32_t)0x1U <<\
    ((PWMSP003_NO_OF_SLICES * (uint32_t)HandlePtr->Slice) + (uint32_t)0x2U)));

    /* Multi channel shadow transfer enable or disable */
    WR_REG(HandlePtr->CC4yRegsPtr->TC,  (uint32_t)CCU4_CC4_TC_MCME_Msk,\
                        (uint32_t)CCU4_CC4_TC_MCME_Pos, HandlePtr->kMCMode);

    /* Multi channel shadow transfer source select */
    WR_REG(HandlePtr->CC4yKernRegsPtr->GCTRL,
            (uint32_t)(CCU4_GCTRL_MSE0_Msk << HandlePtr->Slice),\
            (uint32_t)(CCU4_GCTRL_MSE0_Pos + HandlePtr->Slice),\
            (uint32_t)HandlePtr->kMCModeShadowRequest);

    /* Multi channel shadow transfer configuration */
    WR_REG(HandlePtr->CC4yKernRegsPtr->GCTRL,
              (uint32_t)CCU4_GCTRL_MSDE_Msk,\
            (uint32_t)CCU4_GCTRL_MSDE_Pos,
            (uint32_t)HandlePtr->kMCModeShadowConfig);

    Status = (uint32_t)DAVEApp_SUCCESS;
    HandlePtr->DynamicDataType->StateType = PWMSP003_INITIALIZED;
  } while (0);

  return Status;
}

/**
 * This function starts the app.
 * This function should be called even if external start is configured.
 */
status_t PWMSP003_Start(const PWMSP003_HandleType* HandlePtr)
{
  status_t Status = (uint32_t)PWMSP003_OPER_NOT_ALLOWED_ERROR;

  do
  {
    if((HandlePtr->DynamicDataType->StateType == PWMSP003_UNINITIALIZED) ||
       (HandlePtr->DynamicDataType->StateType == PWMSP003_RUNNING))
    {
      break;
    }

    HandlePtr->CC4yRegsPtr->SWR = PWMSP003_ALL_CCU4_INTR_CLEAR;

    /* Start the Prescaler */
    HandlePtr->CC4yKernRegsPtr->GIDLC |=\
            ((uint32_t)0x1U << ((uint32_t)CCU4_GIDLC_SPRB_Pos));

    /* Start the timer slice */
    HandlePtr->CC4yKernRegsPtr->GIDLC |=\
        ((uint32_t)0x1U << ((uint32_t)CCU4_GIDLC_CS0I_Pos +\
            (uint32_t)HandlePtr->Slice));

    WR_REG(HandlePtr->CC4yRegsPtr->TC, CCU4_CC4_TC_TRAPE_Msk,\
          (uint32_t)CCU4_CC4_TC_TRAPE_Pos, HandlePtr->kTrapEnable);

    /* Set run bit of slices if external start is not configured */
    if (HandlePtr->kStartEvent == PWMSP003_NO_EVENT)
    {
      HandlePtr->CC4yRegsPtr->TCSET |= (uint32_t)0x1U;
    }
    else
    {
      WR_REG(HandlePtr->CC4yRegsPtr->CMC,\
               (uint32_t)CCU4_CC4_CMC_STRTS_Msk,\
               (uint32_t)CCU4_CC4_CMC_STRTS_Pos,\
               HandlePtr->kStartEvent);
    }

    HandlePtr->DynamicDataType->StateType = PWMSP003_RUNNING;
    Status = (uint32_t)DAVEApp_SUCCESS;
  } while (0);

  return Status;
}

/**
 * This function will reset CCU4_CCy slice registers with default values.
 */
status_t PWMSP003_Deinit(const PWMSP003_HandleType* HandlePtr)
{
  status_t Status = (uint32_t)PWMSP003_OPER_NOT_ALLOWED_ERROR;

  if (HandlePtr->DynamicDataType->StateType != PWMSP003_UNINITIALIZED)
  {
    /* Stop and Clear the timer */
    HandlePtr->CC4yRegsPtr->TCCLR = PWMSP003_SLICE_CLEAR;
    /* Clear the interrupts */
    HandlePtr->CC4yRegsPtr->SWR = PWMSP003_ALL_CCU4_INTR_CLEAR;
    /* Disable all CCU4 Interrupts */
    HandlePtr->CC4yRegsPtr->INTE = RESET;

    /*Set IDLE mode for selected slice*/
    HandlePtr->CC4yKernRegsPtr->GIDLS |= (((uint32_t)0x1U <<\
                            ((uint32_t)CCU4_GIDLS_SS0I_Pos +\
                            (uint32_t)HandlePtr->Slice)) |\
                            ((uint32_t)0x1U << (uint32_t)CCU4_GIDLS_CPRB_Pos) |\
                            ((uint32_t)0x1U << (uint32_t)CCU4_GIDLS_PSIC_Pos));

    /*Clear all the registers*/
    HandlePtr->CC4yRegsPtr->INS = RESET;
    HandlePtr->CC4yRegsPtr->CMC = RESET;
    HandlePtr->CC4yRegsPtr->TC = RESET;
    HandlePtr->CC4yRegsPtr->PSC = RESET;
    HandlePtr->CC4yRegsPtr->PSL = RESET;
    HandlePtr->CC4yRegsPtr->DITS = RESET;
    HandlePtr->CC4yRegsPtr->CRS = RESET;
    HandlePtr->CC4yRegsPtr->PRS = RESET;

    HandlePtr->DynamicDataType->StateType = PWMSP003_UNINITIALIZED;

    Status = (uint32_t)DAVEApp_SUCCESS;
  }

  return Status;
}

/**
 * This function will stop the Single Phase PWM APP which will eventually
 * stop the CCU4_CCy slice. This disables the interrupts and sets the IDLE mode
 * of the CCU slice.
 */
status_t PWMSP003_Stop(const PWMSP003_HandleType* HandlePtr)
{
  status_t Status = (uint32_t)PWMSP003_OPER_NOT_ALLOWED_ERROR;
  uint32_t Temp1;
  uint32_t Temp2;

  do
  {
    if (HandlePtr->DynamicDataType->StateType != PWMSP003_RUNNING)
    {
      break;
    }
    else
    {
      /* Clear the timer run bits, Reset the Prescaler */
      Temp1 = ((uint32_t)CCU4_GIDLS_SS0I_Pos + (uint32_t)HandlePtr->Slice);
      Temp2 = ((uint32_t)0x01 << CCU4_GIDLS_PSIC_Pos);
      HandlePtr->CC4yRegsPtr->TCCLR = PWMSP003_SLICE_CLEAR;
      HandlePtr->CC4yKernRegsPtr->GIDLS |= (((uint32_t)0x01 << Temp1) | Temp2 );

      HandlePtr->DynamicDataType->StateType = PWMSP003_STOPPED;
      Status = (uint32_t)DAVEApp_SUCCESS;
    }
  } while (0);

  return Status;
}

/**
 * This function reads the idle status of the given CCU4 slice
 */
status_t PWMSP003_GetSliceIdleStatus(const PWMSP003_HandleType * HandlePtr,
                                     uint32_t * State)
{
  status_t Status = (uint32_t)PWMSP003_OPER_NOT_ALLOWED_ERROR;

  if(HandlePtr->DynamicDataType->StateType != PWMSP003_UNINITIALIZED)
  {
    /* Get the slice idle status */
    *State = (uint32_t)RD_REG(HandlePtr->CC4yKernRegsPtr->GSTAT,\
             (uint32_t)(CCU4_GSTAT_S0I_Msk << (uint32_t)HandlePtr->Slice),\
             (uint32_t)(CCU4_GSTAT_S0I_Pos + (uint32_t)HandlePtr->Slice));

    Status = (uint32_t)DAVEApp_SUCCESS;
  }

  return Status;
}

/**
 * This function sets the given CCU4 slice to idle state
 */
status_t PWMSP003_SetSliceIdleState(const PWMSP003_HandleType * HandlePtr)
{
  status_t Status = (uint32_t)PWMSP003_OPER_NOT_ALLOWED_ERROR;

  if(HandlePtr->DynamicDataType->StateType != PWMSP003_UNINITIALIZED)
  {
    /* Set the slice idle state */
    HandlePtr->CC4yKernRegsPtr->GIDLS |= (uint32_t)(CCU4_GIDLS_SS0I_Msk << \
                                             (uint32_t)HandlePtr->Slice);

    Status = (uint32_t)DAVEApp_SUCCESS;
  }

  return Status;
}

/**
 * This function brings the given CCU4 slice out of idle state
 */
status_t PWMSP003_RemoveSliceIdleState(const PWMSP003_HandleType * HandlePtr)
{
  status_t Status = (uint32_t)PWMSP003_OPER_NOT_ALLOWED_ERROR;

  if(HandlePtr->DynamicDataType->StateType != PWMSP003_UNINITIALIZED)
  {
    /* Clear the slice idle state */
    HandlePtr->CC4yKernRegsPtr->GIDLC |= (uint32_t)(CCU4_GIDLC_CS0I_Msk << \
                                             (uint32_t)HandlePtr->Slice);
    Status = (uint32_t)DAVEApp_SUCCESS;
  }

  return Status;
}

/**
 * This function starts the timer
 */
status_t PWMSP003_StartTimer(const PWMSP003_HandleType * HandlePtr)
{
  status_t Status = (uint32_t)PWMSP003_OPER_NOT_ALLOWED_ERROR;

  if (HandlePtr->DynamicDataType->StateType != PWMSP003_UNINITIALIZED)
  {
    SET_BIT(HandlePtr->CC4yRegsPtr->TCSET, CCU4_CC4_TCSET_TRBS_Pos);
    Status = (uint32_t)DAVEApp_SUCCESS;
  }

  return Status;
}

/**
 * This function stops the timer of the given slice
 */
status_t PWMSP003_StopTimer(const PWMSP003_HandleType * HandlePtr)
{
  status_t Status = (uint32_t)PWMSP003_OPER_NOT_ALLOWED_ERROR;

  if (HandlePtr->DynamicDataType->StateType == PWMSP003_RUNNING)
  {
    SET_BIT(HandlePtr->CC4yRegsPtr->TCCLR, CCU4_CC4_TCCLR_TRBC_Pos);
    Status = (uint32_t)DAVEApp_SUCCESS;
  }

  return Status;
}

/**
 * This function returns the timer registers of the given slice
 */
status_t PWMSP003_GetTimerValue(const PWMSP003_HandleType * HandlePtr,
                                      PWMSP003_TimerRegsType* TimerRegs)
{
  status_t Status = (uint32_t)PWMSP003_OPER_NOT_ALLOWED_ERROR;

  if (HandlePtr->DynamicDataType->StateType != PWMSP003_UNINITIALIZED)
  {
    TimerRegs->TimerReg = (uint32_t)RD_REG(HandlePtr->CC4yRegsPtr->TIMER,
        CCU4_CC4_TIMER_TVAL_Msk, CCU4_CC4_TIMER_TVAL_Pos);

    TimerRegs->CompReg = HandlePtr->CC4yRegsPtr->CRS;
    TimerRegs->PeriodReg = HandlePtr->CC4yRegsPtr->PRS;

    Status = (uint32_t)DAVEApp_SUCCESS;
  }
  return Status;
}

/**
 * This function returns the timer status - Running or Idle
 */
status_t PWMSP003_GetTimerStatus(const PWMSP003_HandleType * HandlePtr,
                                 uint32_t* TimerStatus)
{
  status_t Status = (uint32_t)PWMSP003_OPER_NOT_ALLOWED_ERROR;

  if (HandlePtr->DynamicDataType->StateType != PWMSP003_UNINITIALIZED)
  {
    *TimerStatus = (uint32_t) RD_REG(HandlePtr->CC4yRegsPtr->TCST,
                              CCU4_CC4_TCST_TRB_Msk, CCU4_CC4_TCST_TRB_Pos);

    Status = (uint32_t)DAVEApp_SUCCESS;
  }

  return Status;
}

/**
 * This function reads the compare match status (ST bit) of the given slice.
 */
status_t PWMSP003_GetCompareMatchStatus(const PWMSP003_HandleType * HandlePtr,
                                        uint8_t * CompareMatchStatus)
{
  status_t Status = (uint32_t)PWMSP003_OPER_NOT_ALLOWED_ERROR;

  if (HandlePtr->DynamicDataType->StateType != PWMSP003_UNINITIALIZED)
  {
    *CompareMatchStatus = (uint32_t) RD_REG(HandlePtr->CC4yKernRegsPtr->GCST,\
                          (CCU4_GCST_CC40ST_Msk << (uint32_t)HandlePtr->Slice),\
                          (CCU4_GCST_CC40ST_Pos + (uint32_t)HandlePtr->Slice));

    Status = (uint32_t)DAVEApp_SUCCESS;
  }
  return Status;
}

/**
 * This function changes the PWM frequency.
 * Input parameter is the period register value.
 */
status_t PWMSP003_UpdatePeriod(const PWMSP003_HandleType * HandlePtr,
                                uint32_t Period, uint8_t Recall)
{
  status_t Status = (uint32_t)PWMSP003_OPER_NOT_ALLOWED_ERROR;
  uint32_t Temp1;

  if ((HandlePtr->DynamicDataType->StateType != PWMSP003_UNINITIALIZED))
  {
    if(Recall != TRUE)
    {
      if(Period == (uint32_t)0)
      {
        Status = (uint32_t)PWMSP003_INVALID_PARAM_ERROR;
      }
      else
      {
        if(Period > (uint32_t)HandlePtr->kMaxPeriodVal)
        {
          Status = (uint32_t)PWMSP003_INVALID_PARAM_ERROR;
        }
        else
        {

          HandlePtr->CC4yRegsPtr->PRS = (Period & 0xFFFFU);

          /*Request shadow transfer for the slice*/
          Temp1 = (uint32_t)CCU4_GCSS_S0SE_Pos +\
                  ((uint32_t)PWMSP003_NO_OF_SLICES*(uint32_t)HandlePtr->Slice);

          HandlePtr->CC4yKernRegsPtr->GCSS |=    ((uint32_t)0x01 << Temp1);

          Status = (uint32_t)DAVEApp_SUCCESS;
        }
      }
    }

    else
    {
      /* Cancel any pending shadow transfer for the slice */
      Temp1 = (uint32_t)CCU4_GCSC_S0SC_Pos +\
              ((uint32_t)PWMSP003_NO_OF_SLICES * (uint32_t)HandlePtr->Slice);

      HandlePtr->CC4yKernRegsPtr->GCSC |=  ((uint32_t)0x01 << Temp1);
    }
  }
  return Status;
}

/**
 * This function changes the compare register value.
 */
status_t PWMSP003_UpdateCompare(const PWMSP003_HandleType * HandlePtr,
                                uint32_t CompareVal, uint8_t Recall)
{
  status_t Status = (uint32_t)PWMSP003_OPER_NOT_ALLOWED_ERROR;
  uint32_t Temp1;

  if ((HandlePtr->DynamicDataType->StateType != PWMSP003_UNINITIALIZED))
  {
    if(Recall != TRUE)
    {
      HandlePtr->CC4yRegsPtr->CRS = (CompareVal & 0xFFFFU);

      /*Request shadow transfer for the slice*/
      Temp1 = CCU4_GCSS_S0SE_Pos +\
                       (PWMSP003_NO_OF_SLICES * (uint32_t)HandlePtr->Slice);

      HandlePtr->CC4yKernRegsPtr->GCSS |=    ((uint32_t)0x01 << Temp1);

      Status = (uint32_t)DAVEApp_SUCCESS;
    }

    else
    {
      /* Cancel any pending shadow transfer of the slice */
      Temp1 = CCU4_GCSC_S0SC_Pos +\
                      (PWMSP003_NO_OF_SLICES * (uint32_t)HandlePtr->Slice);

      HandlePtr->CC4yKernRegsPtr->GCSC |=  ((uint32_t)0x01 << Temp1);
    }
  }

  return Status;
}

/**
 * This function is used to change the duty cycle of the PWM waveform
 */
status_t PWMSP003_SetDutyCycle(const PWMSP003_HandleType* HandlePtr,
                               float Duty)
{
  status_t Status = (uint32_t)PWMSP003_OPER_NOT_ALLOWED_ERROR;

  if ( HandlePtr->DynamicDataType->StateType != PWMSP003_UNINITIALIZED)
  {
    if((Duty > (float)100) || (Duty < (float)0))
    {
      Status = (uint32_t)PWMSP003_INVALID_PARAM_ERROR;
    }
    else
    {
      /* Call the function as per configured mode */
      HandlePtr->SetDutyFuncPtr((const void*)HandlePtr, Duty);
      Status = (uint32_t)DAVEApp_SUCCESS;
    }
  }

  return (Status);
}

/**
 * This function changes the floating prescaler register value
 */
status_t PWMSP003_UpdateFloatingPrescaler(const PWMSP003_HandleType * HandlePtr,
                                          uint16_t FloatingPS, uint8_t Recall)
{
  status_t Status = (uint32_t)PWMSP003_OPER_NOT_ALLOWED_ERROR;
  uint32_t Temp1;

  if ((HandlePtr->DynamicDataType->StateType != PWMSP003_UNINITIALIZED))
  {
    if(Recall != TRUE)
    {
      if(FloatingPS > (uint16_t)0xFU)
      {
        Status = (uint32_t)PWMSP003_INVALID_PARAM_ERROR;
      }
      else
      {
        HandlePtr->CC4yRegsPtr->FPCS = (FloatingPS & 0xFU);

        /* Request shadow transfer for the slice */
        Temp1 = (uint32_t)CCU4_GCSS_S0PSE_Pos +\
                    (PWMSP003_NO_OF_SLICES * (uint32_t)HandlePtr->Slice);

        HandlePtr->CC4yKernRegsPtr->GCSS |=    ((uint32_t)0x01 << Temp1);

        Status = (uint32_t)DAVEApp_SUCCESS;
      }
    }

    else
    {
      /* Cancel any pending shadow transfer for the slice */
      Temp1 = (uint32_t)CCU4_GCSC_S0PSC_Pos +\
                  (PWMSP003_NO_OF_SLICES * (uint32_t)HandlePtr->Slice);

      HandlePtr->CC4yKernRegsPtr->GCSC |=  ((uint32_t)0x01 << Temp1);
    }
  }

  return Status;
}

/**
 * This function changes the dither register value.
 */
status_t PWMSP003_UpdateDither(const PWMSP003_HandleType * HandlePtr,
                               uint32_t DitherVal, uint8_t Recall)
{
  status_t Status = (uint32_t)PWMSP003_OPER_NOT_ALLOWED_ERROR;
  uint32_t Temp1;

  if ((HandlePtr->DynamicDataType->StateType != PWMSP003_UNINITIALIZED))
  {
    if(Recall != TRUE)
    {
      HandlePtr->CC4yRegsPtr->DITS = (DitherVal & 0xFU);

      /*Request shadow transfer for the slice*/
      Temp1 = CCU4_GCSS_S0DSE_Pos +\
                  (PWMSP003_NO_OF_SLICES * (uint32_t)HandlePtr->Slice);

      HandlePtr->CC4yKernRegsPtr->GCSS |=    ((uint32_t)0x01 << Temp1);

      Status = (uint32_t)DAVEApp_SUCCESS;
    }

    else
    {
      /* Cancel any pending shadow transfer for the slice */
      Temp1 = (uint32_t)CCU4_GCSC_S0DSC_Pos +\
              (PWMSP003_NO_OF_SLICES * (uint32_t)HandlePtr->Slice);

      HandlePtr->CC4yKernRegsPtr->GCSC |=  ((uint32_t)0x01 << Temp1);
    }
  }

  return Status;
}

/**
 * This function reads the shadow transfer status of the given slice
 */
status_t PWMSP003_GetShadowTransferStatus(const PWMSP003_HandleType * HandlePtr,
                                          PWMSP003_ShadowTransferType Function,
                                          uint8_t * State)
{
  status_t Status = (uint32_t)PWMSP003_OPER_NOT_ALLOWED_ERROR;

  if (HandlePtr->DynamicDataType->StateType != PWMSP003_UNINITIALIZED)
  {
    *State = (uint8_t)RD_REG(HandlePtr->CC4yKernRegsPtr->GCST,\
                           (uint32_t)(CCU4_GCST_S0SS_Msk << (uint32_t)Function),
                           (uint32_t)(CCU4_GCST_S0SS_Pos + (uint32_t)Function));

    Status = (uint32_t)DAVEApp_SUCCESS;
  }

  return Status;
}

/**
 * This function reads the counting direction of the given slice
 */
status_t PWMSP003_GetCountingDirection(const PWMSP003_HandleType * HandlePtr,
                                       PWMSP003_CountDirectionType * CountDir)
{
  status_t Status = (uint32_t)PWMSP003_OPER_NOT_ALLOWED_ERROR;

  if ((HandlePtr->DynamicDataType->StateType != PWMSP003_UNINITIALIZED))
  {
    *CountDir =
             (PWMSP003_CountDirectionType)RD_REG(HandlePtr->CC4yRegsPtr->TCST,\
             CCU4_CC4_TCST_CDIR_Msk,
             CCU4_CC4_TCST_CDIR_Pos);

    Status = (uint32_t)DAVEApp_SUCCESS;
  }

  return Status;
}

/**
 * This function allows user to change the input mapping
 * for the given event.
 */
status_t PWMSP003_RemapInput(const PWMSP003_HandleType * HandlePtr,
                             PWMSP003_InputSelectionType Input,
                             PWMSP003_ExtEventType ExtEvent)
{
  status_t Status = (uint32_t)PWMSP003_OPER_NOT_ALLOWED_ERROR;

  if ((HandlePtr->DynamicDataType->StateType != PWMSP003_RUNNING))
  {
    WR_REG(HandlePtr->CC4yRegsPtr->INS,\
          ((uint32_t)CCU4_CC4_INS_EV0IS_Msk <<\
          (uint32_t)(((uint32_t)ExtEvent - 1U) * PWMSP003_NO_OF_SLICES)),\
          ((uint32_t)CCU4_CC4_INS_EV0IS_Pos +\
          (uint32_t)(((uint32_t)ExtEvent - 1U) * PWMSP003_NO_OF_SLICES)),\
          (uint32_t)Input);

    Status = (uint32_t)DAVEApp_SUCCESS;
  }

  return Status;
}

/**
 * This function allows user to change the functionality
 * for the given external event.
 */
status_t PWMSP003_RemapEvent(const PWMSP003_HandleType * HandlePtr,
                             PWMSP003_ExtEventType ExtEvent,
                             PWMSP003_ExtEventFunctionType Function)
{
  status_t Status = (uint32_t)PWMSP003_OPER_NOT_ALLOWED_ERROR;

  if (HandlePtr->DynamicDataType->StateType != PWMSP003_RUNNING)
  {
    /* Trap can be configured only for event 2 */
    if(((uint32_t)ExtEvent == PWMSP003_EVENT_2) &&
                                 ((uint32_t)Function == PWMSP003_EXTERNAL_TRAP))
    {
      WR_REG(HandlePtr->CC4yRegsPtr->CMC, (uint32_t)CCU4_CC4_CMC_TS_Msk,\
                              (uint32_t)CCU4_CC4_CMC_TS_Pos, PWMSP003_EVENT_2);

      Status = (uint32_t)DAVEApp_SUCCESS;
    }
    else if(((uint32_t)ExtEvent!=PWMSP003_EVENT_2) &&
                                   ((uint32_t)Function==PWMSP003_EXTERNAL_TRAP))
    {
      Status = PWMSP003_INVALID_PARAM_ERROR;
    }
    /* Override can be configured only for event 1 and event 2 */
    else if(((ExtEvent == PWMSP003_EVENT_1)
            || ((uint32_t)ExtEvent == PWMSP003_EVENT_2))
            && ((uint32_t)Function == PWMSP003_EXTERNAL_OVERRIDE))
    {
      WR_REG(HandlePtr->CC4yRegsPtr->CMC, (uint32_t)CCU4_CC4_CMC_OFS_Msk,\
                            (uint32_t)CCU4_CC4_CMC_OFS_Pos, (uint32_t)ExtEvent);

      Status = (uint32_t)DAVEApp_SUCCESS;
    }
    else if(((uint32_t)ExtEvent == PWMSP003_EVENT_0) &&\
               ((uint32_t)Function == PWMSP003_EXTERNAL_OVERRIDE))
    {
      Status = PWMSP003_INVALID_PARAM_ERROR;
    }
    else
    {
      WR_REG(HandlePtr->CC4yRegsPtr->CMC,\
                ((uint32_t)CCU4_CC4_CMC_STRTS_Msk << (uint32_t)Function),\
                ((uint32_t)CCU4_CC4_CMC_STRTS_Pos  + (uint32_t)Function),\
                (uint32_t)ExtEvent);
      Status = (uint32_t)DAVEApp_SUCCESS;
    }
  }

  return Status;
}

/**
 * This function resets the trap flag if trap condition is inactive
 */
status_t PWMSP003_ClearTrapFlag(const PWMSP003_HandleType * HandlePtr)
{
  status_t Status = (uint32_t)PWMSP003_OPER_NOT_ALLOWED_ERROR;

  if ((HandlePtr->DynamicDataType->StateType != PWMSP003_UNINITIALIZED))
  {
    if (HandlePtr->kTrapExitControl == (uint8_t)SET)
    {
      SET_BIT(HandlePtr->CC4yRegsPtr->SWR, PWMSP003_EXTERNALEVENT_2_INTERRUPT);
    }
    SET_BIT(HandlePtr->CC4yRegsPtr->SWR, PWMSP003_EXTERNALTRAP_INTERRUPT);

    Status = (uint32_t)DAVEApp_SUCCESS;
  }
  return Status;
}

/**
 *  This function reads the requested event status for the given slice
 */
status_t PWMSP003_GetInterruptStatus(const PWMSP003_HandleType * HandlePtr,
                                     PWMSP003_InterruptType Event,
                                     uint8_t * InterruptStatus)
{
  status_t Status = (uint32_t)PWMSP003_OPER_NOT_ALLOWED_ERROR;

  if (HandlePtr->DynamicDataType->StateType != PWMSP003_UNINITIALIZED)
  {
    *InterruptStatus = (uint32_t) RD_REG(HandlePtr->CC4yRegsPtr->INTS,\
                          (CCU4_CC4_INTS_PMUS_Msk << (uint32_t)Event),\
                          (CCU4_CC4_INTS_PMUS_Pos + (uint32_t)Event));

    Status = (uint32_t)DAVEApp_SUCCESS;
  }

  return Status;
}

/**
 * This function triggers the requested event for the given slice
 */
status_t PWMSP003_TriggerInterrupt(const PWMSP003_HandleType * HandlePtr,
                                   PWMSP003_InterruptType Event)
{
  status_t Status = (uint32_t)PWMSP003_OPER_NOT_ALLOWED_ERROR;

  if (HandlePtr->DynamicDataType->StateType != PWMSP003_UNINITIALIZED)
  {
    WR_REG(HandlePtr->CC4yRegsPtr->SWS,\
                       (CCU4_CC4_SWS_SPM_Msk << (uint32_t)Event),\
                       (CCU4_CC4_SWS_SPM_Pos + (uint32_t)Event),\
                       (uint32_t)0x1U);

    Status = (uint32_t)DAVEApp_SUCCESS;
  }

  return Status;
}

/**
 * This function clear the requested event flag for the given slice
 */
status_t PWMSP003_AcknowledgeInterrupt(const PWMSP003_HandleType * HandlePtr,
                                       PWMSP003_InterruptType Event)
{
  status_t Status = (uint32_t)PWMSP003_OPER_NOT_ALLOWED_ERROR;

  if (HandlePtr->DynamicDataType->StateType != PWMSP003_UNINITIALIZED)
  {
    WR_REG(HandlePtr->CC4yRegsPtr->SWR,\
                       (CCU4_CC4_SWR_RPM_Msk << (uint32_t)Event),\
                       (CCU4_CC4_SWR_RPM_Pos + (uint32_t)Event),\
                       (uint32_t)0x1U);

    Status = (uint32_t)DAVEApp_SUCCESS;
  }

  return Status;
}

/**
 * @}
 */
/**
 * @endcond
 */
/*CODE_BLOCK_END*/
