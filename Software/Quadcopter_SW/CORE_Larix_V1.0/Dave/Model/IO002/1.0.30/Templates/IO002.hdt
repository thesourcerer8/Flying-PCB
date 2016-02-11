/**************************************************************************//**
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
**                       Author(s) Identity                                   **
********************************************************************************
**                                                                            **
** Initials     Name                                                          **
** ---------------------------------------------------------------------------**
** PAE    App Developer                                                       **
** NSND   App Developer                                                       **
*******************************************************************************/

/**
 * @file IO002.h
 *
 * @brief Header file for IO_Digital_IO002 App
 */
/* Revision History 
 *
 * 01 Jan 2013 v1.0.12  Ported To XMC1000 Devices.
 * 16 Mar 2013 v1.0.14  Modified OMR register configuration (Direct assignment 
 *                        without reading) to upgrade performance.
 * 10 Oct 2013 V1.0.24  Separated static and dynamic code, removed function 
 *                      like macros and replaced with inline functions.
 * 06 Jan 2014 V1.0.28  Updated the IO002_HandleType structure to add pad0 and 
 * pad1 pointers. Added the UC_SERIES == XMC41 check for device header file inclusion
 */

#ifndef _IO002_H_
#define _IO002_H_

/*******************************************************************************
**                      Include Files                                         **
*******************************************************************************/
#ifdef __cplusplus
extern "C" {
#endif

#include <uc_id.h>
#if (UC_SERIES == XMC13)
#include <XMC1300.h>
#elif (UC_SERIES == XMC12)
#include <XMC1200.h>
#elif (UC_SERIES == XMC11)
#include <XMC1100.h>
#elif (UC_SERIES == XMC45)
#include <XMC4500.h>
#elif (UC_SERIES == XMC44)
#include <XMC4400.h>
#elif (UC_SERIES == XMC42) || (UC_SERIES == XMC41)
#include <XMC4200.h>
#endif

#include "types.h"	
 

/* Include App config file */
#ifdef DAVE_CE
#include "IO002_Conf.h"
#endif 


/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/


/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/

/**
 * @ingroup IO002_datastructures
 * @{
 */

/*******************************************************************************
**                      Global Type Definitions                               **
*******************************************************************************/
/**
* @brief PORTS register structure: This data structure have the registers which 
  need to be updated for IO002 app for XMC4000 and XMC1000 family. 
	These registers will get updated as part of IO002_Init according to the user 
	configuration input.
*/
typedef struct {
__IO uint32_t   OUT;     /*!<   Port Output Register Offset  0x00000000      */
__O uint32_t    OMR;     /*!<   Port Output Modification Register Offset  
                                                               0x00000004    */
__I  uint32_t   RESERVED1[2];     /*!<      */
__IO uint32_t   IOCR0;     /*!<   Port Input/Output Control Register 0 Offset  
                                                               0x00000010   */
__IO uint32_t   IOCR4;     /*!<   Port Input/Output Control Register 4 Offset  
                                                               0x00000014   */
__IO uint32_t   IOCR8;     /*!<   Port Input/Output Control Register 8 Offset
                                                               0x00000018   */
__IO uint32_t   IOCR12;     /*!<   Port Input/Output Control Register 12 
                                                       Offset  0x0000001C   */
__I  uint32_t   RESERVED2[1];     /*!<      */
__I uint32_t    IN;        /*!<   Port Input Register Offset  0x00000024    */
__I  uint32_t   RESERVED3[6];     /*!<      */
#if (UC_FAMILY == XMC4)
__IO uint32_t   PDR0;     /*!<   Port Pad Driver Mode 0 Register Offset  
                                                              0x00000040   */
__IO uint32_t   PDR1;     /*!<   Port Pad Driver Mode 1 Register Offset  
                                                              0x00000044   */
#elif (UC_FAMILY == XMC1)
__IO uint32_t  PHCR0;     /*!< (At offset0x00000040) Port Pad Hysteresis Control 
                                                             Register 0    */
__IO uint32_t  PHCR1;     /*!< (At offset 0x00000044)Port Pad Hysteresis Control 
                                                           Register 1      */
#endif
__I  uint32_t   RESERVED4[6];     /*!<      */
__IO uint32_t   PDISC;     /*!<   Port Pin Function Decision Control Register
                                                      Offset  0x00000060   */
__I  uint32_t   RESERVED5[3];     /*!<      */
__IO uint32_t   PPS;     /*!<   Port Pin Power Safe Register Offset  
                                                              0x00000070   */
__IO uint32_t   HWSEL;     /*!<   Port Pin Hardware Select Register Offset  
                                                              0x00000074   */
}PORTS_TypeDef;



/**
 *This data type describes the IO002 App Handle
 */
typedef struct IO002_HandleType
{
  /** Port Number */
  uint8_t PortNr;
  /** Port pins */
  uint8_t PortPin;
  /**Output modification register value-default output level setting 
	                                                   to pin/omr_ps*/
  uint32_t OMR_PS;
  /**pad class/driver for pin -mode 0 register value*/
  uint32_t PDR_PD;
  /**Pin Hardware control selection register value*/
  uint32_t HW_SEL;
  /**Input/Output control register value- input characteristics */
  uint32_t IOCR_PCR;
  /**Input/Output control register value- input characteristics */
  uint32_t IOCR_PCR2;
  /**Input/Output control register value- out put characteristics-
	                                            push pull/open drain */
  uint32_t IOCR_PO;
  /**Input/Output control register value-out put mode enable */
  uint32_t IOCR_OE;
  /**Pad Hysteresis control register value-hysteresis enabled*/
  uint32_t PHCR_EN;
  /**Input/Output control register value */
  uint32_t IOCR;
  /**Bit Mask for pad driver mode 0*/
  uint32_t PDR0_MSK;
  /**Bit position for pad driver mode 0*/
  uint32_t PDR0_POS;
  /**Bit mask for pad driver mode 1*/
  uint32_t PDR1_MSK;
  /**Bit position for pad driver mode 1*/
  uint32_t PDR1_POS;
  /**Bit mask for pad hysteresis control register 0*/
  uint32_t PHCR0_MSK;
  /**Bit mask for pad hysteresis control register 0*/
  uint32_t PHCR1_MSK;   
  /** Port Regs */
  PORTS_TypeDef* PortRegs;
  /*Pointer to PDR registers to block the port14 access to invalid register */
  __IO uint32_t *pdr0_ptr;
  __IO uint32_t *pdr1_ptr;
}IO002_HandleType;

/**
  * @}
  */
  
/**
 * @ingroup IO002_enumerations
 * @{
 */

/**
 * This data type describes the Input Mode type
 */ 

typedef enum IO002_InputModeType
{
  /** Tri-state */
  IO002_TRISTATE,
  /** Input pull-down device connected */
  IO002_PULL_DOWN_DEVICE,
  /** Input pull-up device connected */
  IO002_PULL_UP_DEVICE,
  /** Pn_OUTx continuously polls the input value */
  IO002_CONT_POLLING,
  /** Inverted tri-state */
  IO002_INV_TRISTATE,
  /** Inverted Input pull-down device connected */
  IO002_INV_PULL_DOWN_DEVICE,
  /** Inverted Input pull-up device connected */
  IO002_INV_PULL_UP_DEVICE,
  /** Inverted Pn_OUTx continuously polls the input value */
  IO002_INV_CONT_POLLING
}IO002_InputModeType;

/**
 * This data type describes the Output Mode type
 */
typedef enum IO002_OutputModeType
{
  /** Push pull output */
  IO002_PUSHPULL =0x10,
  /** Open drain output */
  IO002_OPENDRAIN =0x18
}IO002_OutputModeType;
 
 /**
  * @}
  */
/*******************************************************************************
** FUNCTION PROTOTYPES                                                        **
*******************************************************************************/
/**
 * @ingroup IO002_apidoc
 * @{
 */

 /**
 * @brief Initialises all the App instances based on user configuration
 *
 *
 *
 * @return     None
 *
 * <b>Reentrant: NO </b><BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <DAVE3.h>
 *
 *  int main(void)
 *  {
 *    DAVE_Init();  // IO002_Init() is called within DAVE_Init()
 *    return 0;
 *  }
 * @endcode<BR> </p>
 */
void IO002_Init(void);

/**
 * @}
 */


/**
 * @ingroup IO002_apidoc
 * @{
 */

/**
 * @brief This function reads value at  port pin.
 *              
 *
 * @param[in]  Handle to Port Pin App Instance
 *
 * @return     Value at Pin
 *
 * <b>Reentrant: NO </b><BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <DAVE3.h>
 *
 *  int main(void)
 *  {
 *    uint32_t Value = 0;
 *    DAVE_Init(); // IO002_Init() is called within DAVE_Init()
 *    Value = IO002_ReadPin(IO002_Handle0);
 *    return 0;
 *  }
 * @endcode<BR> </p>
 *
 */
   /* <<<DD_IO002_API_2>>> */
extern uint32_t IO002_ReadPin(IO002_HandleType Handle);

/**
 * @brief This function sets the chosen port pin to '1'.
 *              
 *
 * @param[in] Handle to Port Pin App Instance
 *
 * @return    None
 *
 * <b>Reentrant: NO </b><BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <DAVE3.h>
 *
 *  int main(void)
 *  {
 *    DAVE_Init(); // IO002_Init() is called within DAVE_Init()
 *    IO002_SetPin(IO002_Handle0);
 *    return 0;
 *  }
 * @endcode <BR> </p>
 */
   /* <<<DD_IO002_API_3>>> */
extern void IO002_SetPin(IO002_HandleType Handle);



/**
 * @brief This function sets the chosen port pin to '0'.
 *              
 *
 * @param[in] Handle to Port Pin App Instance
 *
 * @return    None
 *
 * <b>Reentrant: NO </b><BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <DAVE3.h>
 *
 *  int main(void)
 *  {
 *    DAVE_Init(); // IO002_Init() is called within DAVE_Init()
 *    IO002_ResetPin(IO002_Handle0);
 *    return 0;
 *  }
 * @endcode<BR> </p>
 */
   /* <<<DD_IO002_API_4>>> */
extern void IO002_ResetPin(IO002_HandleType Handle);


/**
 * @brief This function sets the chosen port pin with the boolean value provided.
 *
 * @param[in] Handle Handle to Port Pin App Instance
 * @param[in] Value Pin Status(0/1)
 *
 * @return    None
 *
 * <b>Reentrant: NO </b><BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <DAVE3.h>
 *
 *  int main(void)
 *  {
 *    DAVE_Init(); // IO002_Init() is called within DAVE_Init()
 *    IO002_SetOutputValue(IO002_Handle0,1);
 *    return 0;
 *  }
 * @endcode<BR> </p>
 */
extern void IO002_SetOutputValue(IO002_HandleType Handle,uint32_t Value);


/**
 * @brief This function toggles the chosen port pin.
 *              
 *
 * @param[in]  Handle to Port Pin App Instance
 *
 * @return    None
 *
 * <b>Reentrant: NO </b><BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <DAVE3.h>
 *
 *  int main(void)
 *  {
 *    DAVE_Init(); // IO002_Init() is called within DAVE_Init()
 *    IO002_TogglePin(IO002_Handle0);
 *    return 0;
 *  }
 * @endcode<BR> </p>
 */
    /* <<<DD_IO002_API_6>>> */
extern void IO002_TogglePin(IO002_HandleType Handle);



/**
 * Note: Currently this function is a place holder function. <BR>
 * The chosen port pin is configured as input.
 *    The following definitions for Mode are available:<BR>
 *    IO002_TRISTATE              (no pull device connected)<BR>
 *    IO002_PULL_DOWN_DEVICE      (pull-down device connected)<BR>
 *    IO002_PULL_UP_DEVICE        (pull-up device connected)<BR>
 *    IO002_CONT_POLLING          (Pn_OUTx continuously samples input value)<BR>
 *    IO002_INV_TRISTATE          (Inverted no pull device connected)<BR>
 *    IO002_INV_PULL_DOWN_DEVICE  (Inverted pull-down device connected)<BR>
 *    IO002_INV_PULL_UP_DEVICE    (Inverted pull-up device connected)<BR>
 *    IO002_INV_CONT_POLLING 	    (Pn_OUTx continuously samples input value)<BR>
 *
 *
 * @param[in]  Handle to Port Pin App Instance
 * @param[in]  Mode Input selection(Pull-Down,Pull-Up,Inv-Pull-Down,Inv-Pull-Up)
 *             for chosen port pin
 *
 * @return    None
 *
 * <b>Reentrant: NO </b><BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <DAVE3.h>
 *
 *  int main(void)
 *  {
 *    DAVE_Init(); // IO002_Init() is called within DAVE_Init()
 *    IO002_DisableOutputDriver(&IO002_Handle0,IO002_PULL_UP_DEVICE);
 *    return 0;
 *  }
 * @endcode<BR> </p>
 */
void IO002_DisableOutputDriver(const IO002_HandleType* Handle,
                                                   IO002_InputModeType Mode);

/**
 * Note: Currently this function is a place holder function. <BR>
 * The chosen port pin is configured as output.
 *            The following definitions for Mode are available:
 *            IO002_PUSHPULL  (push-pull mode)
 *            IO002_OPENDRAIN (open drain mode)
 *
 *
 * @param[in]  Handle to Port Pin App Instance
 * @param[in]  Mode - Output Characteristic(Push-Pull,Open-Drain)for chosen 
 *             port Pin
 *
 * @return    None
 *
 * <b>Reentrant: NO </b><BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <DAVE3.h>
 *
 *  int main(void)
 *  {
 *    DAVE_Init(); // IO002_Init() is called within DAVE_Init()
 *    IO002_EnableOutputDriver(&IO002_Handle0,IO002_OPENDRAIN);
 *    return 0;
 *  }
 * @endcode<BR> </p>
 *
 */
void IO002_EnableOutputDriver(const IO002_HandleType* Handle,
                                                   IO002_OutputModeType Mode);

/**
 * @}
 */
 
#ifdef DAVE_CE
/* Include external references */
#include "IO002_Extern.h"
#endif     

#ifdef __cplusplus
}
#endif

#endif /* _IO002_H_ */

/*CODE_BLOCK_END*/

