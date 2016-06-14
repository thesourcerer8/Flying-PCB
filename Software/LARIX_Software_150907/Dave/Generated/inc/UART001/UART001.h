/*******************************************************************************
**                                                                            **
** Copyright (C) 2014 Infineon Technologies AG. All rights reserved.          **
**                                                                            **
** Infineon Technologies AG (Infineon) is supplying this software for use     **
** with Infineon's microcontrollers.                                          **
** This file can be freely distributed within development tools that are      **
** supporting such microcontrollers.                                          **
**                                                                            **
** THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS,        **
** IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF **
** MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS         **
** SOFTWARE. INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, ** 
** INCIDENTAL, OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.           **
**                                                                            **
********************************************************************************
********************************************************************************
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
********************************************************************************
** VERSION HISTORY:
********************************************************************************
** 04 Dec 2012 v1.0.4  Changes from 1.0.2 are
**                     1. Modified as per coding guidelines and MISRA checks
** 26 Mar 2013 v1.0.10 1. Updated for the example code for
**                     UART001_GetFlagStatus() API.
**                     2. Added file revision history.
**                     3. Updated to support XMC1000 devices.
**                     4. Updated examples for UART001_WriteData() and
**                     UART001_ReadData() macros.
**                     5. Modified the structure UART001_HandleType to add baud
**                     parameters for the baud rate.
** 13 Jun 2013 v1.0.16 1. Modified the input parameter of 
**                     UART001_WriteDataMultiple() from const uint16_t* to 
**                     uint16_t* to maintain backward compatibility.
** 04 Feb 2014 v1.0.22 1. Removed DAVE3.h inclusion to fix the MISR warning for
**                     multiple includes.
**                     2. Added types.h & UART001_Conf.h inclusion to get the 
**                     Global macro definitions & type definitions 
**                     3. Added prototypes and example code for new Apis 
**                     "UART001_ReadDataBytes" & "UART001_WriteDataBytes".              
** 11 Apr 2014 v1.0.24 1. API (UART001_ReadDataMultiple, UART001_ReadDataBytes, 
**                     UART001_WriteDataMultiple & UART001_WriteDataBytes) 
**                     document & example corrections.                                                          
*******************************************************************************/
/**
 * @file UART001.h
 *
 * @brief  Header file for UART001 App. Provides API prototypes, enumerations, 
 * constants and data structure declarations needed by the users of the app.
 *
 */
 
#ifndef UART001_H_
#define UART001_H_

#ifdef __cplusplus
extern "C" {
#endif

/*******************************************************************************
**                      Include Files                                         **
*******************************************************************************/

#include "Usic.h"
#include "types.h"
#include "UART001_Conf.h"

/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/

/**
 * @ingroup UART001_apidoc
 * @{
 */
#ifdef UART001_TXFIFO_ENABLE
/** 
 * @brief Macro which writes a data word into the transmit FIFO buffer register. 
 * @param[in]  Handle  USIC device handle.
 * @param[in]  Data  Data to be transmitted.
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I><b>UART001_Handle0</b></I> is a global structure of type
 * UART001_HandleType which will be configured in UART001_Conf.c file using
 * UI parameters.
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *  uint16_t data = 0xAAAA;
 *  DAVE_Init();
 *  // Send data 0xAAAA
 *  UART001_WriteData(UART001_Handle0,data);
 *  while(1);
 *  return 0;
 * }
 * @endcode<BR> </p>
 *
 */
#define UART001_WriteData(Handle,Data) (Handle.UartRegs->IN[0] = Data)
#endif

#ifdef UART001_RXFIFO_ENABLE
/** 
 * @brief Macro which reads a data word from the receive FIFO buffer register. 
 * @param[in]  Handle  USIC device handle.
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I><b>UART001_Handle0</b></I> is a global structure of type
 * UART001_HandleType which will be configured in UART001_Conf.c file using
 * UI parameters.
 * @code
 * #include <DAVE3.h>
 *
 * uint16_t Readdata;
 * int main(void)
 * {
 *
 *  DAVE_Init();
 *  while(1);
 *  return 0;
 * }
 *
 *  void RecvFifoHandler()
 * {
 * 	 Readdata = UART001_ReadData(UART001_Handle0);
 * }
 * @endcode<BR> </p>
 *
 */
#define UART001_ReadData(Handle)  ((uint16_t)Handle.UartRegs->OUTR)
#endif

/**
 * @}
 */
/*******************************************************************************
**                      Global Type Definitions                               **
*******************************************************************************/

/**
 * @ingroup UART001_enumerations
 * @{
 */

/**
 * @brief This data type describes the possible status values returned
 *  by functions.
 */
typedef enum UART001_StatusType
{
  /**
   * Indicates Flag is not set
   */
  /**
	* @cond INTERNAL_DOCS
	* @param MODULENAME UART001
	* @endcond
  */
  /**
  * @cond INTERNAL_DOCS
  *	@param ERRCODESTRING1 UART001_RESET
  * @param STRCODESTRING1 Flag is not set
  * @endcond
  */
  UART001_RESET = 1,
  /**
   * Indicates Flag is set
   */
  /**
   * @cond INTERNAL_DOCS
   * @param ERRCODESTRING2 UART001_SET
   * @param STRCODESTRING2 Flag is set
   * @endcond
   */
  UART001_SET,
  /**
   * UART Busy
   */
  /**
  * @cond INTERNAL_DOCS
  *	@param ERRCODESTRING3 UART001_BUSY
  *	@param STRCODESTRING3 Uart channel busy
  * @endcond
  */
  UART001_BUSY,
  /**
   * Invalid parameter
   */
  /**
   * @cond INTERNAL_DOCS
   * @param ERRCODESTRING4 UART001_INVALID_PARAM
   * @param STRCODESTRING4 Invalid parameter
   * @endcond
  */
  UART001_INVALID_PARAM,
  /**
   * Unknown error
   */
  /**
   * @cond INTERNAL_DOCS
   * @param ERRCODESTRING5 UART001_ERROR
   * @param STRCODESTRING5 Uart Error
   * @endcond
  */
  UART001_ERROR,
  /**
   * Function Entry
   */
  /**
   * @cond INTERNAL_DOCS
   * @param ERRCODESTRING6 UART001_FUN_ENTRY
   * @param STRCODESTRING6 Entered function \%s
   * @endcond
  */
  UART001_FUN_ENTRY,
  /**
   *  Function Exit
   */
  /**
   * @cond INTERNAL_DOCS
   * @param ERRCODESTRING7 UART001_FUN_EXIT
   * @param STRCODESTRING7 Exited function \%s
   * @endcond
  */
  UART001_FUN_EXIT
}UART001_StatusType;



/**
 * @brief This data type describes the available UART Status flags
 */
typedef enum UART001_FlagStatusType
{
  /** Transmission Idle */
  UART001_TXIDLE_FLAG = 0,
  /** Reception Idle */
  UART001_RXIDLE_FLAG = 1,
  /** Receiver Noise Detected */
  UART001_RECV_NOISE_FLAG = 4,
  /** Format Error in Stop Bit 0 */
  UART001_FORMAT_ERR0_FLAG = 5,
  /** Format Error in Stop Bit 1 */
  UART001_FORMAT_ERR1_FLAG = 6,
  /** Receive Frame Finished */
  UART001_REC_FRAME_FIN_FLAG = 7,
  /** Transmitter Frame Finished*/
  UART001_TRANSMIT_FRAME_FIN_FLAG = 8,
  /** Transfer Status BUSY */
  UART001_TRANSFER_STATUS_BUSY_FLAG = 9,
  /** Receiver Start Indication Flag */
  UART001_RECV_START_IND_FLAG = 10,
  /** Data Lost Indication Flag */
  UART001_DATA_LOST_IND_FLAG = 11,
  /** Transmit Shift Indication Flag */
  UART001_TRANS_SHIFT_IND_FLAG = 12,
  /** Transmit Buffer Indication Flag */
  UART001_TRANS_BUFFER_IND_FLAG = 13,
  /** Receive Indication Flag */
  UART001_RECV_IND_FLAG = 14,
  /** Alternative receive indication flag */
  UART001_ALT_REC_IND_FLAG = 15,
  /** FIFO Standard Receive Buffer Event */
  UART001_FIFO_STD_RECV_BUF_FLAG = 16,                           
  /** FIFO Receive Buffer Error Event */						  
  UART001_FIFO_RECV_BUF_ERR_FLAG = 17,                
  /** FIFO Alternative Receive Buffer Event */
  UART001_FIFO_ALTRECV_BUF_FLAG = 18,                 
  /** FIFO Standard Transmit Buffer Event */
  UART001_FIFO_STD_TRANSMIT_BUF_FLAG = 19,            
  /** FIFO Transmit Buffer Error Event */
  UART001_FIFO_TRANSMIT_BUF_ERR_FLAG = 20              
}UART001_FlagStatusType;

/**
 * @}
 */
/**
* @ingroup UART001_datastructures
* @{
*/
/**
 * @brief  This data type is to describe the I/O Port registers
 */
typedef struct {
__IO uint32_t   OUT; /*!< Port Output Register Offset 0x00000000 */
__O  uint32_t   OMR; /*!< Port Output Modification Register Offset 0x00000004 */
__I  uint32_t   RESERVED1[2];
__IO uint32_t   IOCR0; /*!< Port Input/Output Control Register 0 Offset 
                                                  0x00000010 */
__IO uint32_t   IOCR4; /*!< Port Input/Output Control Register 4 Offset 
                                                  0x00000014 */
__IO uint32_t   IOCR8; /*!< Port Input/Output Control Register 8 Offset 
                                                  0x00000018 */
__IO uint32_t   IOCR12;  /*!< Port Input/Output Control Register 12 Offset
                                                  0x0000001C */
__I  uint32_t   RESERVED2[1];
__I  uint32_t   IN;           /*!< Port Input Register Offset  0x00000024 */
__I  uint32_t   RESERVED3[6];
__IO uint32_t   PDR0; /*!< Port Pad Driver Mode 0 Register Offset  0x00000040 */
__IO uint32_t   PDR1; /*!< Port Pad Driver Mode 1 Register Offset  0x00000044 */
__I  uint32_t   RESERVED4[6];
__IO uint32_t   PDISC; /*!< Port Pin Function Decision Control Register Offset  
                                                  0x00000060 */
__I  uint32_t   RESERVED5[3];
__IO uint32_t   PPS;  /*!< Port Pin Power Safe Register Offset  0x00000070 */
__IO uint32_t   HWSEL; /*!< Port Pin Hardware Select Register Offset 
                                                  0x00000074 */
}UART001_PORTS_TypeDef;

/**
 * @brief  This data type is to describe the UART Port pin's(TX & RX) 
 * base address & pin no.
 */
typedef struct UART001_PinHandleType{
  UART001_PORTS_TypeDef* TX_PortBase;/*!< TX Port address */
  uint8_t TX_Pin; /*!< TX Pin Number */
  UART001_PORTS_TypeDef* RX_PortBase; /*!< RX Port address */  
  uint8_t RX_Pin;/*!< RX Pin Number */
}UART001_PinHandleType;
/**
 * @brief This data type describes UART App instance handle details
 */
 typedef struct UART001_HandleType
{
  USIC_CH_TypeDef* UartRegs;/** CMSIS defined structure for USIC module */ 
  UART001_PinHandleType PinHandle; /*!< User selected TX & RX Port pins */
  UART_ModeType Mode;/** USIC Operation mode */
  UART_StopBitType StopBit; /** No of stopbit selected */
  UART_ParityType Parity;/** Parity  selected */ 
  uint32_t BaudRate; /** Desired baud rate */  
  uint16_t DataBits;/** Word Length */ 
  bool TxFifoEn; /** Enable additional Transmit FIFO buffer capability */
  bool RxFifoEn;  /** Enable additional Receive FIFO buffer capability */
  uint8_t TxLimit;/** TX FIFO Trigger value */
  uint8_t RxLimit; /** RX FIFO Triger value */
  uint8_t TxFifoSize; /** Tx FIFO Size value */
  uint8_t RxFifoSize;/** Rx FIFO Size value */  
  bool RecvNoiseEn;/** Enable Receiver Noise Interrupt */  
  bool FormatErrEn;/** Enable Format Error Interrupt */  
  bool FrameFinEn;/** Enable Frame Finished Interrupt */  
  uint16_t BGR_STEP;/** Calculated step value */  
  uint16_t BGR_PDIV;/** Calculated pdiv value */  
  uint16_t BGR_DCTQ;/** Calculated  dctq value */
  uint16_t BGR_SP;/** Calculated  sampling point value 
                           [SP = (((1+dctq)/2)+1)]*/
  uint8_t BGR_PCTQ;/** Calculated  pctq value */
}UART001_HandleType;


/**
 * @}
 */
/*******************************************************************************
**                      Global Constant Declarations                          **
*******************************************************************************/


/*******************************************************************************
**                      Extern Variables                                      **
*******************************************************************************/
/**
 * @ingroup UART001_apidoc
 * @{
 */

/*******************************************************************************
** FUNCTION PROTOTYPES                                                        **
*******************************************************************************/

/**
 * @brief This function initialises the App, based on User provided
 * configuration. 
 *
 * @return     None
 *
 * <b>Reentrant: NO </b><BR>
 * <b>Sync/Async:  Synchronous</b>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I><b>UART001_Handle0</b></I> is a global structure of type
 * UART001_HandleType which will be configured in UART001_Conf.c file using
 * UI parameters.
 * @code
 *  #include <DAVE3.h>
 *
 *  int main(void)
 *  {
 *	  // ... Initialises Apps configurations ...
 *    DAVE_Init(); // UART001_Init() will be called inside DAVE_Init()
 *    while(1)
 *    {
 *
 *    }
 * }
 * @endcode<BR> </p>
 *
 */
void  UART001_Init (void);

/**
 * @brief This function de-initialises the USIC channel configurations.
 *
 *
 * @param[in]  Handle of type UART001_HandleType
 *
 * @return     None
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I><b>UART001_Handle0</b></I> is a global structure of type
 * UART001_HandleType which will be configured in UART001_Conf.c file using
 * UI parameters.
 * @code
 *  #include <DAVE3.h>
 *
 *  int main(void)
 *  {
 *    UART001_DeInit(&UART001_Handle0);
 *    while(1)
 *    {
 *
 *    }
 * }
 * @endcode<BR> </p>
 *
 */
void  UART001_DeInit (const UART001_HandleType* Handle);

/**
 * @brief Function which allows changing of baud rate, parity & stop bit  
 * configuration at run time.
 *
 *
 * @param[in]  Handle USIC device handle
 * @param[in]  BaudRate Desired Baud Rate in Bauds
 * @param[in]  Parity Desired Parity
 * @param[in]  Stopbit Desired no of Stop bit(s)
 *
 * @return     status <BR>
 *             DAVEApp_SUCCESS	: for success.<BR>
 *             UART001_ERROR  	: for failure case.<BR>
 *             UART001_BUSY 	: UART channel is busy.<BR>
 *
 * <b>Reentrant: NO </b><BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I><b>UART001_Handle0</b></I> is a global structure of type
 * UART001_HandleType which will be configured in UART001_Conf.c file using
 * UI parameters.
 * @code
 *  #include <DAVE3.h>
 *
 *  int main(void)
 *  {
 *    uint32_t Status = UART001_ERROR;
 *    // ... Initialises Apps configurations ...
 *    DAVE_Init();
 *    Status = UART001_Configure\
                    (&UART001_Handle0,19200,UART_PARITY_EVEN,UART_ONE_STOPBIT);
 *    if(Status == DAVEApp_SUCCESS)
 *    {
 *        // Uart channel reconfiguration successful 
 *    }
 *    // ... infinite loop ...
 *    while(1)
 *    {
 *
 *    }
 *  }
 * @endcode<BR> </p>
 *
 */
status_t  UART001_Configure
(
  const UART001_HandleType* Handle,
  uint32_t BaudRate,
  UART_ParityType Parity,
  UART_StopBitType Stopbit
);

/**
 * @brief When receive FIFO is enabled, this function reads the USIC receive
 * FIFO Buffer, word by word, until there is no data in the FIFO buffer and
 * the "Count" value is greater than "0".
 * But when receive FIFO buffer is disabled, it reads a word from standard 
 * receive buffer 
 *
 * @param[in]  Handle USIC device handle
 * @param[out] DataPtr  Pointer to data
 * @param[in]  Count   Total no of words to be read.
 * 
 * @return  uint32_t Number of data read from FIFO/standard receive buffer <BR>
 * 
 * <i>Imp Note:</i> Return Count will be always '1', if data is read from the 
 *              standard buffer. 
 *
 * <b>Reentrant: NO </b><BR>
 *
 * <b>Note</b>: FIFO trigger limit should be adjusted manually in the UI based
 * on the number of data's to be buffered.
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I><b>UART001_Handle0</b></I> is a global structure of type
 * UART001_HandleType which will be configured in UART001_Conf.c file using
 * UI parameters (additional FIFO buffer enabled).
 * <BR><I><b>UART001_Handle1</b></I> is a global structure of type
 * UART001_HandleType which will be configured in UART001_Conf.c file using
 * UI parameters (additional FIFO buffer disabled).
 * @code
 * #include <DAVE3.h>
 *
 * uint16_t FifoReaddata[11];
 * uint16_t StdReaddata[11];
 * int main(void)
 * {
 *
 *  DAVE_Init();
 *  while(1);
 *  return 0;
 * }
 * // Read data from FIFO buffer when FIFO is enabled.
 * void RecvFifoHandler()
 * {
 * 	 UART001_ReadDataMultiple(&UART001_Handle0,FifoReaddata,11);
 * }
 * 
 * // Read data byte from standard buffer when FIFO is disabled.
 * void RecvStdBuffHandler()
 * {
 *   static uint8_t count;
 *   UART001_ReadDataMultiple(&UART001_Handle1,&StdReaddata[count],1);
 *   count++;
 * }
 * @endcode<BR> </p>
 *
 */
uint32_t UART001_ReadDataMultiple(
const UART001_HandleType* Handle,
uint16_t* DataPtr,
uint32_t Count);

/**
 * @brief When receive FIFO is enabled, this function reads the USIC receive
 * FIFO Buffer, byte by byte, until there is no data in the FIFO buffer and 
 * the "Count" value is greater than "0".
 * But when receive FIFO buffer is disabled, it reads a byte from standard 
 * receive buffer 
 *
 * @param[in]  Handle USIC device handle
 * @param[out] DataPtr  Pointer to data
 * @param[in]  Count   Total no of bytes to be read.
 *
 * @return  uint32_t Number of data read from FIFO/standard receive buffer <BR>
 * 
 * <i>Imp Note:</i> Return Count will be always '1', if data is read from the 
 *              standard buffer. 
 *
 * <b>Reentrant: NO </b><BR>
 * 
 * <b>Note</b>: FIFO trigger limit should be adjusted manually in the UI based
 * on the number of data's to be buffered.
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I><b>UART001_Handle0</b></I> is a global structure of type
 * UART001_HandleType which will be configured in UART001_Conf.c file using
 * UI parameters (additional FIFO buffer enabled).
 * <BR><I><b>UART001_Handle1</b></I> is a global structure of type
 * UART001_HandleType which will be configured in UART001_Conf.c file using
 * UI parameters (additional FIFO buffer disabled).
 * @code
 * #include <DAVE3.h>
 *
 * uint8_t FifoReaddata[11];
 * uint8_t StdReaddata[11];
 * int main(void)
 * {
 *
 *  DAVE_Init();
 *  while(1);
 *  return 0;
 * }
 * // Read data from FIFO buffer when FIFO is enabled.
 *  void RecvFifoHandler()
 * {
 * 	 UART001_ReadDataBytes(&UART001_Handle0,FifoReaddata,11);
 * }
 * // Read data byte from standard buffer when FIFO is disabled.
 * void RecvStdBuffHandler()
 * {
 *   static uint8_t count;
 *   UART001_ReadDataBytes(&UART001_Handle1,&StdReaddata[count],1);
 *   count++;
 * }
 * @endcode<BR> </p>
 * 
 */
uint32_t UART001_ReadDataBytes
(
  const UART001_HandleType* Handle,
  uint8_t* DataPtr,
  uint32_t Count);

/**
 * @brief When FIFO is enabled, this function writes data to the USIC FIFO 
 * transmit buffer register, word by word, until the FIFO buffer is full and 
 * the "Count" value is greater than "0".
 * But when transmit FIFO is disabled, it writes a word to the standard 
 * transmit buffer.
 *
 * Reentrant : No
 *
 * @param[in]  Handle  USIC device handle
 * @param[in]  DataPtr Pointer to data
 * @param[in]  Count   Total no of words to be transmitted.
 *
 * @return     uint32_t Number of data written to buffer <BR>
 *
 * <i>Imp Note:</i> Return Count will be always '1', if data is written to the 
 *             standard buffer. 
 *          
 * <b>Reentrant: NO </b><BR>
 *
 * <b>Note</b>: FIFO trigger limit should be adjusted manually in the UI based
 * on the number of data's to be buffered.
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I><b>UART001_Handle0</b></I> is a global structure of type
 * UART001_HandleType which will be configured in UART001_Conf.c file using
 * UI parameters (additional FIFO buffer enabled).
 * <BR><I><b>UART001_Handle1</b></I> is a global structure of type
 * UART001_HandleType which will be configured in UART001_Conf.c file using
 * UI parameters (additional FIFO buffer disabled).
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *  uint32_t status = 0;
 *  uint32_t count = 0;
 *  uint8_t data[] = "H E L L O   W O R L D";
 *  uint8_t data1[] = "h e l l o  w o r l d";
 *  DAVE_Init();
 *  // Send hello world to PC hyper terminal
 *  status = UART001_WriteDataMultiple(&UART001_Handle0, (uint16_t*)&data[0], \
 *                                      (uint32_t)sizeof(data)/2);
 *  if(status == 11)
 *  {
 * 	 //data transmitted
 *  }
 *  //Send "hello world" to PC hyper terminal using Tx standard buffer
 *  for(count=0; count<11; count++)
 *  {
 *  	while(!UART001_WriteDataMultiple(&UART001_Handle1, &data1[count], 1));
 *  }
 *  while(1);
 *  return 0;
 * }
 * @endcode<BR> </p>
 *
 */
uint32_t UART001_WriteDataMultiple(
const UART001_HandleType* Handle,
uint16_t* DataPtr,
uint32_t Count);

/**
 * @brief When FIFO is enabled, this function writes data to the USIC FIFO 
 * transmit buffer register, byte by byte, until the FIFO buffer is full and 
 * the "Count" value is greater than "0".
 * But when transmit FIFO is disabled, it writes a byte to the standard 
 * transmit buffer.
 *
 * Reentrant : No
 *
 * @param[in]  Handle  USIC device handle
 * @param[in]  DataPtr Pointer to data
 * @param[in]  Count   Total no of words to be transmitted.
 *
 * @return     uint32_t Number of data written to buffer <BR>
 *
 * <i>Imp Note:</i> Return Count will be always '1', if data is written to the 
 *              standard buffer. 
 *              
 * <b>Reentrant: NO </b><BR>
 * 
 * <b>Note</b>: FIFO trigger limit should be adjusted manually in the UI based
 * on the number of data's to be buffered.
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I><b>UART001_Handle0</b></I> is a global structure of type
 * UART001_HandleType which will be configured in UART001_Conf.c file using
 * UI parameters(additional FIFO buffer enabled).
 * <BR><I><b>UART001_Handle1</b></I> is a global structure of type
 * UART001_HandleType which will be configured in UART001_Conf.c file using
 * UI parameters(additional FIFO buffer disabled).
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *  uint32_t status = 0;
 *  uint32_t count = 0;
 *  uint8_t data[] = "HELLO WORLD";
 *  uint8_t data1[] = "hello world";
 *  DAVE_Init();
 *  // Send "HELLO WORLD" to PC hyper terminal using Tx FIFO buffer
 *  	status = UART001_WriteDataBytes(&UART001_Handle0, &data[0], 11);
 *  if(status == 11)
 *  {
 * 	 //data transmitted
 *  } 
 *  //Send "hello world" to PC hyper terminal using Tx standard buffer
 *  for(count=0; count<11; count++)
 *  {
 *  	while(!UART001_WriteDataBytes(&UART001_Handle1, &data1[count], 1));
 *  }
 *  while(1);
 *  return 0;
 * }
 * @endcode<BR> </p>
 *
 */
uint32_t UART001_WriteDataBytes
(
  const UART001_HandleType* Handle,
  const uint8_t* DataPtr,
  uint32_t Count);

/**
 * @brief The function is used to get the event flag status specified.
 * 			   It returns UART_SET if the corresponding flag
 *			   is set else otherwise.
 *
 *
 * @param[in]  Handle USIC device handle
 * @param[in]  Flag   UART Flag which needs to be checked
 *
 * @return     status_t <BR>
 *             UART_SET    : indicates Flag is set.<BR>
 *             UART_RESET  : indicates Flag is reset.<BR>
 *
 * <b>Reentrant: NO </b><BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I><b>UART001_Handle0</b></I> is a global structure of type
 * UART001_HandleType which will be configured in UART001_Conf.c file using
 * UI parameters.
 * @code
 *  #include <DAVE3.h>
 * 
 *  int main(void)
 *  {
 *    uint32_t Status = UART001_ERROR;
 *    uint16_t Data;
 *    // Initialises Apps configurations ...
 *    DAVE_Init();
 *    Status = UART001_Configure\
                    (&UART001_Handle0,19200,UART_PARITY_EVEN,UART_ONE_STOPBIT);
 *    if(Status == DAVEApp_SUCCESS)
 *    {
 *      // Uart channel reconfiguration successful
 *      //wait till standard receive buffer event is occurred
 *      while((UART001_GetFlagStatus\
 *             (&UART001_Handle0,UART001_FIFO_STD_RECV_BUF_FLAG))!=UART001_SET)
 *      {}
 *      //Read Receive FIFO buffer till the buffer is empty
 *      Data = UART001_ReadData(UART001_Handle0);
 *      UART001_ClearFlag(&UART001_Handle0,UART001_FIFO_STD_RECV_BUF_FLAG);
 *      if(Data == 0x43)
 *      {
 *     	 //Checking the data received
 *      }
 *    }
 *    // ... infinite loop ...
 *    while(1)
 *    {
 * 
 *    }
 *  }
 * 
 * @endcode<BR> </p>
 *
 */

status_t UART001_GetFlagStatus
(
  const UART001_HandleType* Handle,
  UART001_FlagStatusType Flag);

/**
 * @brief This function clears the specified event flag status.
 *
 *
 * @param[in]  Handle USIC device handle
 * @param[in]  Flag   UART Flag which needs to be cleared
 *
 * @return    None
 *
 * <b>Reentrant: NO </b><BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I><b>UART001_Handle0</b></I> is a global structure of type
 * UART001_HandleType which will be configured in UART001_Conf.c file using
 * UI parameters.
 * @code
 *  #include <DAVE3.h>
 * 
 *  int main(void)
 *  {
 *    uint32_t Status = UART001_ERROR;
 *    uint16_t Data;
 *    // Initialises Apps configurations ...
 *    DAVE_Init();
 *    Status = UART001_Configure\
                   (&UART001_Handle0,19200,UART_PARITY_EVEN,UART_ONE_STOPBIT);
 *    if(Status == DAVEApp_SUCCESS)
 *    {
 *      // Uart channel reconfiguration successful
 *      //wait till standard receive buffer event is occurred
 *      while((UART001_GetFlagStatus\
 *              (&UART001_Handle0,UART001_FIFO_STD_RECV_BUF_FLAG))!=UART001_SET)
 *      {}
 *      //Read Receive FIFO buffer till the buffer is empty
 *      Data = UART001_ReadData(UART001_Handle0);
 *      UART001_ClearFlag(&UART001_Handle0,UART001_FIFO_STD_RECV_BUF_FLAG);
 *      if(Data == 0x43)
 *      {
 *     	 //Checking the data received
 *      }
 *    }
 *    // ... infinite loop ...
 *    while(1)
 *    {
 * 
 *    }
 *  }
 * 
 * @endcode<BR> </p>
 *
 */

void UART001_ClearFlag
(
  const UART001_HandleType* Handle,
  UART001_FlagStatusType Flag
);

/**
 *@}
 */
 
/* Include App extern declaration file */
#include "UART001_Extern.h"

#ifdef __cplusplus
}
#endif 

#endif /* UART001_H_ */
