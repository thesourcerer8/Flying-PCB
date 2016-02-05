/******************************************************************************
 *
 * Copyright (C) 2014 Infineon Technologies AG. All rights reserved.
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
** MODIFICATION DATE : Jan 17, 2014                                           **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                       Author(s) Identity                                   **
********************************************************************************
**                                                                            **
** Initials     Name                                                          **
** ---------------------------------------------------------------------------**
** SNR    App Developer                                                       **
*******************************************************************************/

/**
 * @file IO004.h
 *
 * @brief Header file for Software_Controlled_IO_IO004 App
 */
/* Revision History 
 *
 * 16 Mar 2013 v1.0.14  Modified OMR register configuration (Direct assignment 
 *                        without reading) to upgrade performance.
 * 17 Jan 2014 v1.0.20  C++ support added.
 */

#ifndef IO004_H_
#define IO004_H_

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


/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/

/**
 * @ingroup IO004_publicparam
 * @{
 */

/*******************************************************************************
**                      Global Type Definitions                               **
*******************************************************************************/
/**
* PORTS
*/
typedef struct {
__IO uint32_t   OUT;     /*!<   Port 0 Output Register Offset  0x00000000   */
__O uint32_t    OMR;     /*!<   Port 0 Output Modification Register Offset  0x00000004   */
__I  uint32_t   RESERVED1[2];     /*!<      */
__IO uint32_t   IOCR0;     /*!<   Port 0 Input/Output Control Register 0 Offset  0x00000010   */
__IO uint32_t   IOCR4;     /*!<   Port 0 Input/Output Control Register 4 Offset  0x00000014   */
__IO uint32_t   IOCR8;     /*!<   Port 0 Input/Output Control Register 8 Offset  0x00000018   */
__IO uint32_t   IOCR12;     /*!<   Port 0 Input/Output Control Register 12 Offset  0x0000001C   */
__I  uint32_t   RESERVED2[1];     /*!<      */
__I uint32_t    IN;     /*!<   Port 0 Input Register Offset  0x00000024   */
__I  uint32_t   RESERVED3[6];     /*!<      */
__IO uint32_t   PDR0;     /*!<   Port 0 Pad Driver Mode 0 Register Offset  0x00000040   */
__IO uint32_t   PDR1;     /*!<   Port 0 Pad Driver Mode 1 Register Offset  0x00000044   */
__I  uint32_t   RESERVED4[6];     /*!<      */
__IO uint32_t   PDISC;     /*!<   Port 0 Pin Function Decision Control Register Offset  0x00000060   */
__I  uint32_t   RESERVED5[3];     /*!<      */
__IO uint32_t   PPS;     /*!<   Port 0 Pin Power Safe Register Offset  0x00000070   */
__IO uint32_t   HWSEL;     /*!<   Port 0 Pin Hardware Select Register Offset  0x00000074   */
}IO004_PORTS_TypeDef;

/**
 *This data type describes the App Handle
 */
typedef struct IO004_HandleType
{
  /** Port Number */
  uint8_t PortNr;
  /** Port pins */
  uint8_t PortPin;
  /** Port Regs */
  IO004_PORTS_TypeDef* PortRegs;
}IO004_HandleType;

/**
 * This data type describes the Input Mode type
 */ 

typedef enum IO004_InputModeType
{
  /** Tri-state */
  IO004_TRISTATE,
  /** Input pull-down device connected */
  IO004_PULL_DOWN_DEVICE,
  /** Input pull-up device connected */
  IO004_PULL_UP_DEVICE,
  /** Pn_OUTx continuously polls the input value */
  IO004_CONT_POLLING,
  /** Inverted tri-state */
  IO004_INV_TRISTATE,
  /** Inverted Input pull-down device connected */
  IO004_INV_PULL_DOWN_DEVICE,
  /** Inverted Input pull-up device connected */
  IO004_INV_PULL_UP_DEVICE,
  /** Inverted Pn_OUTx continuously polls the input value */
  IO004_INV_CONT_POLLING,
}IO004_InputModeType;

/**
 * This data type describes the Output Mode type
 */
typedef enum IO004_OutputModeType
{
  /** Push pull output */
  IO004_PUSHPULL =0x10,
  /** Open drain output */
  IO004_OPENDRAIN =0x18
}IO004_OutputModeType;
 
 /**
  * @}
  */
/*******************************************************************************
** FUNCTION PROTOTYPES                                                        **
*******************************************************************************/
/**
 * @ingroup IO004_apidoc
 * @{
 */

 /**
 * Initializes all the App instances based on user configuration
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
 *    DAVE_Init();  // IO004_Init() is called within DAVE_Init()
 *    return 0;
 *  }
 * @endcode<BR> </p>
 */
void IO004_Init(void);

/**
 * @}
 */


/**
 * @ingroup IO004_apidoc
 * @{
 */

/**
 * This macro reads value at  portpin.
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
 *    bool Value = 0;
 *    DAVE_Init(); // IO004_Init() is called within DAVE_Init()
 *    Value = IO004_ReadPin(IO004_Handle0);
 *    return 0;
 *  }
 * @endcode<BR> </p>
 *
 */
   /* <<<DD_IO004_API_2>>> */
#define IO004_ReadPin(Handle ) (((Handle.PortRegs->IN) >> Handle.PortPin) & 1U)

/**
 * This macro sets the chosen portpin to '1'.
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
 *    DAVE_Init(); // IO004_Init() is called within DAVE_Init()
 *    IO004_SetPin(IO004_Handle0);
 *    return 0;
 *  }
 * @endcode <BR> </p>
 */
   /* <<<DD_IO004_API_3>>> */
#define IO004_SetPin(Handle) (Handle.PortRegs->OMR  = 1U << Handle.PortPin)

/**
 * This macro sets the chosen portpin with the boolean value provided.
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
 *    IO004_SetOutputValue(IO004_Handle0,1);
 *    return 0;
 *  }
 * @endcode<BR> </p>
 */
#define IO004_SetOutputValue(Handle,Value) (Handle.PortRegs->OMR = Value  ? (1U << Handle.PortPin):(0x10000UL << Handle.PortPin))

/**
 * This macro sets the chosen portpin to '0'.
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
 *    DAVE_Init(); // IO004_Init() is called within DAVE_Init()
 *    IO004_ResetPin(IO004_Handle0);
 *    return 0;
 *  }
 * @endcode<BR> </p>
 */
   /* <<<DD_IO004_API_4>>> */
#define IO004_ResetPin(Handle) (Handle.PortRegs->OMR  = 0x10000UL << Handle.PortPin)

/**
 * This macro toggles the chosen portpin.
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
 *    DAVE_Init(); // IO004_Init() is called within DAVE_Init()
 *    IO004_TogglePin(IO004_Handle0);
 *    return 0;
 *  }
 * @endcode<BR> </p>
 */
    /* <<<DD_IO004_API_6>>> */
#define IO004_TogglePin(Handle) (Handle.PortRegs->OMR  = 0x10001UL << Handle.PortPin)



/**
 * The chosen portpin is configured as input.
 *            The following definitions for Mode are available:<BR>
 *              IO004_TRISTATE              (no pull device connected)<BR>
 *              IO004_PULL_DOWN_DEVICE      (pull-down device connected)<BR>
 *              IO004_PULL_UP_DEVICE        (pull-up device connected)<BR>
 *              IO004_CONT_POLLING          (Pn_OUTx continuously samples input value)<BR>
 *              IO004_INV_TRISTATE          (Inverted no pull device connected)<BR>
 *              IO004_INV_PULL_DOWN_DEVICE  (Inverted pull-down device connected)<BR>
 *              IO004_INV_IO004_PULL_UP_DEVICE(Inverted pull-up device connected)<BR>
 *              IO004_INV_CONT_POLLING 	    (Pn_OUTx continuously samples input value)<BR>
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
 *    DAVE_Init(); // IO004_Init() is called within DAVE_Init()
 *    IO004_DisableOutputDriver(&IO004_Handle0,IO004_PULL_UP_DEVICE);
 *    return 0;
 *  }
 * @endcode<BR> </p>
 */

void IO004_DisableOutputDriver(const IO004_HandleType* Handle,IO004_InputModeType Mode);


/**
 * The chosen portpin is configured as output.
 *            The following definitions for Mode are available:
 *            IO004_PUSHPULL  (push-pull mode)
 *            IO004_OPENDRAIN (open drain mode)
 *
 *
 * @param[in]  Handle to Port Pin App Instance
 * @param[in]  Mode - Output Characteristic(Push-Pull,Open-Drain)for chosen port Pin
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
 *    DAVE_Init(); // IO004_Init() is called within DAVE_Init()
 *    IO004_EnableOutputDriver(&IO004_Handle0,IO004_OPENDRAIN);
 *    return 0;
 *  }
 * @endcode<BR> </p>
 *
 */
void IO004_EnableOutputDriver(const IO004_HandleType* Handle,IO004_OutputModeType Mode);

/**
 * @}
 */

/* Inclusion of App config file */
#include "IO004_Conf.h"
#ifdef __cplusplus
}
#endif
#endif /* IO004_H_ */

/*CODE_BLOCK_END*/

