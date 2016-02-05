
/******************************************************************************
 *
 * Copyright (C) 2013 Infineon Technologies AG. All rights reserved.
 *
 * Infineon Technologies AG (Infineon) is supplying this software for use with
 * Infineon’s microcontrollers.
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
** PLATFORM : Infineon XMC1000 Series                                         **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR   : App Developer                                                   **
**                                                                            **
** MAY BE CHANGED BY USER [yes/Yes]: Yes                                      **
**                                                                            **
** MODIFICATION DATE : Aug 12, 2014                                           **
**                                                                            **
*******************************************************************************/
/*******************************************************************************
**                      Author(s) Identity                                    **
********************************************************************************
**                                                                            **
** Initials     Name                                                          **
** ---------------------------------------------------------------------------**
** VJS          App Developer                                                 **
*******************************************************************************/
/**
 * @file MATHLLD01.h
 *
 * @brief  This file contains enums and function prototypes of MATHLLD01.
 *
 */

/* Revision History
 *  12 Feb 2013   v1.0.0   Initial version
 *  12 Aug 2014   v1.0.2   Included uc_id.h to resolve the DAVE_CE symbol 
 *                         definition in KEIL
 */
 
#ifndef MATHLLD01_H_
#define MATHLLD01_H_

/* Support for C++ codebase */
#ifdef __cplusplus
extern "C" {
#endif

/*******************************************************************************
**                      Include Files                                         **
*******************************************************************************/
/*Include uc_id.h to resolve the DAVE_CE symbol definition in KEIL*/
#include "uc_id.h"

#ifdef DAVE_CE
/* DAVE3.h inclusion is primarily for XMC1300.h & MATH01_Conf.h (If MATH01 app 
 * is instantiated) */
#include <DAVE3.h>
#else  /* For non DAVE CE project */
#include <XMC1300.h>
/* Default configuration */
#define MATH01_STDMATH01	1
#define MATH01_FASTMATH01	0
#define MATH01_AEABI		1
#define MATH01_MATHLLD01	1
#endif

#if (MATH01_MATHLLD01 == 1) && ((MATH01_STDMATH01 == 1) || (MATH01_FASTMATH01 == 1))

/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/
/* This macro stores the value 0 */
#define ZERO								0x0U

/* This macro stores the value 1 */
#define ONE									0x1U

/* Reciprocal of Circular gain in Q0_23 format ((2^23)/1.646760258121) */
#define RECIPROC_CIRCULAR_GAIN_IN_Q0_23		0x4DBA76U

/* Reciprocal of Hyperbolic gain in Q1_22 format ((2^22)/0.828159360960) */
#define RECIPROC_HYPERBOLIC_GAIN_IN_Q1_22	0x4D47A1U

/* This macro is used to shift a value by eight times */
#define SHIFT_BY_EIGHT                      0x8U

/* Hyperbolic gain in Q0_8 format ((0.828159360960) * (2^8)) */ 
#define HYPERBOLIC_GAIN_IN_Q0_8				212U

/* This is the value of x, used in xMATH01_atan() functions */
#define x_VAL_IN_Q1_15						0x8000U

/* Used in __aeabi_uidivmod & __aeabi_idivmod functions. The remainder is left
 * shifted by this value */
#define DIVMOD_SHIFT_VAL					32U

/*******************************************************************************
**                      Global Type Definitions                               **
*******************************************************************************/
/*
 * This typedef is used for Input and Output Data representation in STDMATH01 
 * & FASTMATH01 functions.
 *
 * Q0_23 => 1 Signed bit, 0 Integer bits, 23 fraction bits.
 *
 */
typedef int32_t Q0_23;

/*
 * This typedef is used for Input Data representation in STDMATH01 
 * & FASTMATH01 functions.
 *
 * Q8_15 => 1 Signed bit, 8 Integer bits, 15 fraction bits.
 *
 */
typedef int32_t Q8_15;

/*
 * This typedef is used for Output Data representation in STDMATH01 
 * & FASTMATH01 functions.
 *
 * Q1_22 => 1 Signed bit, 1 Integer bits, 22 fraction bits.
 *
 */
typedef int32_t Q1_22;

/*
 * This typedef is used for Output Data representation in STDMATH01 
 * & FASTMATH01 functions.
 *
 * Q0_11 => 1 Signed bit, 0 Integer bits, 11 fraction bits.
 *
 */
typedef int32_t Q0_11;
		
/*******************************************************************************
**                      Global Variable Definitions                           **
*******************************************************************************/



/*******************************************************************************
** 							FUNCTION PROTOTYPES                               **
*******************************************************************************/
/**
 * @ingroup MATHLIBS_apidoc
 * @{
 */

/**
 * @brief Users of MATH unit are expected to first reserve the unit by calling 
 * this reservation service.
 * 
 * Note: THIS FUNCTION IS NOT INTENDED FOR DIRECT USE BY USERS
 * 
 * @return int32_t
 *  1	:	Successful reservation of MATH unit.		
 * -1	:	Failed to reserve the MATH unit. 
 * 
 * <b>Reentrant: YES </b><BR>
 *  
 */
int32_t MATHLLD01_Reserve(void);

/**
 * @brief Users of MATH unit are expected to relinquish usage of the unit by 
 * calling this service.
 * 
 * Note: THIS FUNCTION IS NOT INTENDED FOR DIRECT USE BY USERS
 * 
 * @return int32_t
 *  1	:	Successful release of MATH unit.		
 * -1	:	Failed to release the MATH unit. 
 * 
 * <b>Reentrant: YES </b><BR>
 * 
 */
int32_t MATHLLD01_Release(void);

/**
 * @brief This function returns the reservation status of MATH unit
 *
 *
 * @return int32_t
 *  1	:	Available
 * -1	:	Not available
 *
 * <b>Reentrant: YES </b><BR>
 *
 */
int32_t MATHLLD01_GetReservationStatus(void);

/**
 * @}
 */

/*******************************************************************************
 *                   			ENUMERATIONS        				          **
 ******************************************************************************/
/**
  * @ingroup MATHLIBS_publicparam
  * @{
  */

/**
 * This enumerates the status of MATH unit availability
 */
typedef enum
{
  /**
   * MATH unit is unavailable
   */
  MATHLLD01_UNIT_UNAVAILABLE = -1,
  /**
   * MATH unit is available
   */
  MATHLLD01_UNIT_AVAILABLE = 0x1U
}MATHLLD01_AVAILABLITY_STATUS;

/**
 * This enumerates the return value of the MATH API call
 */
typedef enum
{
  /**
   * MATH unit is not processing any operation & MATH unit release is successful
   */	
  MATHLLD01_ACCEPTED = 0x1U,
  /**
   * MATH unit is processing an operation (reserved by another thread) & MATH 
   * API call is declined with BUSY status
   */
  MATHLLD01_BUSY = 0x2U,
  /**
   * MATH unit release is Unsuccessful
   */  
  MATHLLD01_ERROR = 0x3U
}MATHLLD01_STATUS;

/**
 * This enumerates the status of MATHLLD01 Reserve/Release API call
 */
typedef enum
{
  /**
   * Failed to reserve/release MATH unit
   */	
  MATHLLD01_FAIL = -1,
  /**
   * Successfully reserved/released MATH unit
   */  
  MATHLLD01_SUCCESS = 0x1U
}MATHLLD01_RESOURCE_STATUS;


/*
 *  
 *  MATH GLOBAL REGISTERS
 *   
 */

/* GLBCON Register (Global Control Register) */

/**
 * This enumerates all the sources for 'Dividend Register Result Chaining'
 */
typedef enum
{
  /**
   * No result chaining is selected
   */
  NO_RESULT_CHAINING_FOR_DVD = 0x0U,
  /**
   * QUOT register is the selected source 
   */
  CHAIN_QUOT_RESULT_FOR_DVD = 0x1U,
  /**
   * RMD register is the selected source 
   */
  CHAIN_RMD_RESULT_FOR_DVD = 0x2U,
  /**
   * CORRX register is the selected source 
   */
  CHAIN_CORRX_RESULT_FOR_DVD = 0x3U,
  /**
   * CORRY register is the selected source 
   */
  CHAIN_CORRY_RESULT_FOR_DVD = 0x4U,
  /**
   * CORRZ register is the selected source 
   */
  CHAIN_CORRZ_RESULT_FOR_DVD = 0x5U
} MATHLLD_GLBCON_DVDRC;

/**
 * This enumerates all the sources for 'Divisor Register Result Chaining'
 */
typedef enum
{
  /**
   * No result chaining is selected
   */
  NO_RESULT_CHAINING_FOR_DVS = 0x00U,
  /**
   * QUOT register is the selected source 
   */  
  CHAIN_QUOT_RESULT_FOR_DVS = 0x08U,
  /**
   * RMD register is the selected source 
   */  
  CHAIN_RMD_RESULT_FOR_DVS = 0x10U,
  /**
   * CORRX register is the selected source 
   */  
  CHAIN_CORRX_RESULT_FOR_DVS = 0x18U,
  /**
   * CORRY register is the selected source 
   */  
  CHAIN_CORRY_RESULT_FOR_DVS = 0x20U,
  /**
   * CORRZ register is the selected source 
   */  
  CHAIN_CORRZ_RESULT_FOR_DVS = 0x28U
} MATHLLD_GLBCON_DVSRC;

/**
 * This enumerates all the sources for 'CORDX Register Result Chaining'
 */
typedef enum
{
  /**
   * No result chaining is selected
   */	
  NO_RESULT_CHAINING_FOR_CORDXRC = 0x00U,
  /**
   * QUOT register is the selected source 
   */  
  CHAIN_QUOT_RESULT_FOR_CORDXRC = 0x40U,
  /**
   * RMD register is the selected source 
   */  
  CHAIN_RMD_RESULT_FOR_CORDXRC = 0x80U
} MATHLLD_GLBCON_CORDXRC;

/**
 * This enumerates all the sources for 'CORDY Register Result Chaining'
 */
typedef enum
{
  /**
   * No result chaining is selected
   */	
  NO_RESULT_CHAINING_FOR_CORDYRC = 0x000U,
  /**
   * QUOT register is the selected source 
   */  
  CHAIN_QUOT_RESULT_FOR_CORDYRC = 0x200U,
  /**
   * RMD register is the selected source 
   */  
  CHAIN_RMD_RESULT_FOR_CORDYRC = 0x400U
} MATHLLD_GLBCON_CORDYRC;

/**
 * This enumerates all the sources for 'CORDZ Register Result Chaining'
 */
typedef enum
{
  /**
   * No result chaining is selected
   */	
  NO_RESULT_CHAINING_FOR_CORDZRC = 0x0000U,
  /**
   * QUOT register is the selected source 
   */  
  CHAIN_QUOT_RESULT_FOR_CORDZRC = 0x1000U,
  /**
   * RMD register is the selected source 
   */  
  CHAIN_RMD_RESULT_FOR_CORDZRC = 0x2000U
} MATHLLD_GLBCON_CORDZRC;


/* EVIER (Event Interrupt Enable Register) */

/**
 * This enumerates Enable/Disable states for 'Divider End of Calculation 
 * Interrupt'
 */
typedef enum
{
  /**
   * Divider end of calculation interrupt generation is disabled
   */  	
  DISABLE_DIVIDER_EOC_INT = 0x0U,
  /**
   * Divider end of calculation interrupt generation is enabled
   */    
  ENABLE_DIVIDER_EOC_INT = 0x1U
} MATHLLD_EVIER_DIVEOCIEN;

/**
 * This enumerates Enable/Disable states for 'Divider Error Interrupt'
 */
typedef enum
{
  /**
   * Divider error interrupt generation is disabled
   */  	
  DISABLE_DIVIDER_ERR_INT = 0x0U,
  /**
   * Divider error interrupt generation is enabled
   */
  ENABLE_DIVIDER_ERR_INT = 0x2U
} MATHLLD_EVIER_DIVERRIEN;

/**
 * This enumerates Enable/Disable states for 'CORDIC End of Calculation 
 * Interrupt'
 */
typedef enum
{
  /**
   * CORDIC end of calculation interrupt generation is disabled
   */	
  DISABLE_CORDIC_EOC_INT = 0x0U,
  /**
   * CORDIC end of calculation interrupt generation is enabled
   */	  
  ENABLE_CORDIC_EOC_INT = 0x4U
} MATHLLD_EVIER_CDEOCIEN;

/**
 * This enumerates Enable/Disable states for 'CORDIC Error Interrupt'
 */
typedef enum
{
  /**
   * CORDIC error interrupt generation is disabled
   */	
  DISABLE_CORDIC_ERR_INT = 0x0U,
  /**
   * CORDIC error interrupt generation is enabled
   */  
  ENABLE_CORDIC_ERR_INT = 0x8U
} MATHLLD_EVIER_CDERRIEN;


/* EVFSR (Event Flag Set Register) */

/**
 * This enumerates Set bit for 'Divider End of Calculation Event Flag'
 */
typedef enum
{
  /**
   * Divider End of Calculation Event Flag Set
   */  	
  SET_DIVIDER_EOC_EVENT_FLAG = 0x1U
} MATHLLD_EVFSR_DIVEOCS;

/**
 * This enumerates Set bit for 'Divider Error Event Flag'
 */
typedef enum
{
  /**
   * Divider Error Event Flag Set
   */ 	
  SET_DIVIDER_ERR_EVENT_FLAG = 0x2U
} MATHLLD_EVFSR_DIVERRS;

/**
 * This enumerates Set bit for 'CORDIC End of Calculation Event Flag'
 */
typedef enum
{
  /**
   * CORDIC End of Calculation Event Flag Set
   */ 		
  SET_CORDIC_EOC_EVENT_FLAG = 0x4U
} MATHLLD_EVFSR_CDEOCS;

/**
 * This enumerates Set bit for 'CORDIC Error Event Flag'
 */
typedef enum
{
  /**
   * CORDIC Error Event Flag Set
   */ 	
  SET_CORDIC_ERR_EVENT_FLAG = 0x8U
} MATHLLD_EVFSR_CDERRS;

/* EVFCR (Event Flag Clear Register) */

/**
 * This enumerates Clear bit for 'Divider End of Calculation Event Flag'
 */
typedef enum
{
  /**
   * Divider End of Calculation Event Flag Clear
   */ 	
  CLEAR_DIVIDER_EOC_EVENT_FLAG = 0x1U
} MATHLLD_EVFCR_DIVEOCC;

/**
 * This enumerates Clear bit for 'Divider Error Event Flag'
 */
typedef enum
{
  /**
   * Divider Error Event Flag Clear
   */ 	
  CLEAR_DIVIDER_ERR_EVENT_FLAG = 0x2U
} MATHLLD_EVFCR_DIVERRC;

/**
 * This enumerates Clear bit for 'CORDIC End of Calculation Event Flag'
 */
typedef enum
{
  /**
   * CORDIC End of Calculation Event Flag Clear
   */ 	
  CLEAR_CORDIC_EOC_EVENT_FLAG = 0x4U
} MATHLLD_EVFCR_CDEOCC;

/**
 * This enumerates Clear bit for 'CORDIC Error Event Flag'
 */
typedef enum
{
  /**
   * CORDIC Error Event Flag Clear
   */ 		
  CLEAR_CORDIC_ERR_EVENT_FLAG = 0x8U
} MATHLLD_EVFCR_CDERRC;

/* 
 * 
 * MATH DIV REGISTERS
 *  
 */

/* DIVCON (Divider Control Register) */

/**
 * This enumerates control to start division operation if STMODE bit is set to 1
 */
typedef enum
{
  /**
   * Start the division operation when STMODE=1
   */
  SET_DIV_ST_BIT = 0x1U
} MATHLLD_DIVCON_ST;

/**
 * This enumerates different modes for starting division operation
 */
typedef enum
{
  /**
   * Calculation is automatically started with a write to DVS register
   */	
  DIV_AUTO_START = 0x0U,
  /**
   * Calculation is started by setting the ST bit to 1
   */  
  DIV_ST_START = 0x2U
} MATHLLD_DIVCON_STMODE;

/**
 * This enumerates type of division: Signed / Unsigned
 */
typedef enum
{
  /**
   * Signed division is selected
   */		
  SIGNED_DIVISION = 0x0U,
  /**
   * Unsigned division is selected
   */	  
  UNSIGNED_DIVISION = 0x4U
} MATHLLD_DIVCON_USIGN;

/**
 * This enumerates different division modes: 32bit div by 32bit, 
 * 32bit div by 16bit & 16bit div by 16bit
 */
typedef enum
{
  /**
   * This sets 32-bit divide by 32-bit
   */
  DIV_32BIT_BY_32BIT = 0x0U,
  /**
   * This sets 32-bit divide by 16-bit
   */
  DIV_32BIT_BY_16BIT = 0x08U,
  /**
   * This sets 16-bit divide by 16-bit
   */
  DIV_16BIT_BY_16BIT = 0x10U
}MATHLLD_DIVCON_DIVMODE;

/**
 * This enumerates Dividend Shift Left Count
 */
typedef enum
{
  /**
   * Right Shift the Divisor by 11
   */
	DVS_RIGHT_SHIFT_BY_11 = 0x0B000000U
} MATHLLD_DIVCON_DVDSLC;


/* 
 * 
 * MATH CORDIC REGISTERS
 *  
 */

/***** STATC (CORDIC Status and Data Control Register) *****/
/**
 * This enumerates control to Keep or Clear the last X result as initial data  
 * for next calculation
 */
typedef enum
{
  /**
   * This clears last X Result for a New Calculation
   */	
  CLEAR_KEEPX = 0x00U,
  /**
   * This keeps last X Result as Initial Data for a New Calculation
   */  
  SET_KEEPX = 0x20U
} MATHLLD_STATC_KEEPX;

/**
 * This enumerates control to Keep or Clear the last Y result as initial data  
 * for next calculation
 */
typedef enum
{
  /**
   * This clears last Y Result for a New Calculation
   */	
  CLEAR_KEEPY = 0x00U,
  /**
   * This keeps last Y Result as Initial Data for a New Calculation
   */  
  SET_KEEPY = 0x40U
} MATHLLD_STATC_KEEPY;

/**
 * This enumerates control to Keep or Clear the last Z result as initial data  
 * for next calculation
 */
typedef enum
{
  /**
   * This clears last Z Result for a New Calculation
   */		
  CLEAR_KEEPZ = 0x00U,
  /**
   * This keeps last Z Result as Initial Data for a New Calculation
   */   
  SET_KEEPZ = 0x80U
} MATHLLD_STATC_KEEPZ;

/* CON (CORDIC Control Register) */

/**
 * This enumerates control to start CORDIC operation if STMODE bit is set to 1
 */
typedef enum
{
  /**
   * Start the division operation when STMODE=1
   */	
  SET_CORDIC_ST_BIT = 0x1U
} MATHLLD_CON_ST;

/**
 * This enumerates different modes for CORDIC operating modes
 */
typedef enum
{
  /**
   * This sets CORDIC to Linear Operating Mode
   */
  LINEAR_MODE = 0x0U,
  /**
   * This sets CORDIC to Circular Operating Mode
   */
  CIRCULAR_MODE = 0x2U,
  /**
   * This sets CORDIC to Hyperbolic Operating Mode
   */
  HYPERBOLIC_MODE = 0x6U
} MATHLLD_CON_MODE;

/**
 * This enumerates CORDIC Rotation Vectoring Selection
 */
typedef enum
{
  /**
   * This sets CORDIC to Vectoring Mode
   */
  VECTORING_MODE = 0x0U,
  /**
   * This sets CORDIC to Rotation Mode
   */
  ROTATION_MODE = 0x8U
} MATHLLD_CON_ROTVEC;

/**
 * This enumerates different modes for starting CORDIC operation
 */
typedef enum
{
  /**
   * Auto start of calculation after write access to X parameter data register
   */	
  CORDIC_AUTO_START = 0x00U,
  /**
   * Start calculation only after bit ST is set
   */  
  CORDIC_ST_START = 0x10U
} MATHLLD_CON_STMODE;

/**
 * This enumerates 'X result register' data format in circular vectoring mode.
 */
typedef enum
{
  /**
   * This sets X result data format to Signed (twos complement), when read
   */
  SIGNED_X_RESULT = 0x00U,
  /**
   * This sets X result data format to Unsigned, when read
   */
  UNSIGNED_X_RESULT = 0x20U
}MATHLLD_CON_XUSIGN;

/**
 * This enumerates magnitude prescaler value for calculated value of X & Y
 */
typedef enum
{
  /**
   * After the last iteration of calculation the X & Y values are divided by 1
   */
  MPS_DIVBY1 = 0x00U,
  /**
   * After the last iteration of calculation the X & Y values are divided by 2
   */
  MPS_DIVBY2 = 0x40U,
  /**
   * After the last iteration of calculation the X & Y values are divided by 4
   */
  MPS_DIVBY4 = 0x80U
}MATHLLD_CON_MPS;

/**
 * @}
 */

/*******************************************************************************
 *                             STRUCTURES                                     **
 ******************************************************************************/

#endif /* (MATH01_MATHLLD01 == 1) && ((MATH01_STDMATH01 == 1) || 
          (MATH01_FASTMATH01 == 1)) */

/* Support for C++ codebase */
#ifdef __cplusplus
}
#endif   

#endif /* MATHLLD01_H_ */

/*CODE_BLOCK_END*/
