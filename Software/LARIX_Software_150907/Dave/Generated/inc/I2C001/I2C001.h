/******************************************************************************
 *
 * Copyright (C) 2011 Infineon Technologies AG. All rights reserved.
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
*******************************************************************************
**                                                                           **
**                                                                           **
** PLATFORM : Infineon XMC4000/XMC1000 Series                                **
**                                                                           **
** COMPILER : Compiler Independent                                           **
**                                                                           **
** AUTHOR   : App Developer                                                  **
**                                                                           **
** MAY BE CHANGED BY USER [yes/no]: Yes                                      **
**                                                                           **
** MODIFICATION DATE : Jun 13, 2013                                          **
**                                                                           **
******************************************************************************/

/******************************************************************************
**                       Author(s) Identity                                  **
*******************************************************************************
**                                                                           **
** Initials     Name                                                         **
** --------------------------------------------------------------------------**
** RP         App Developer                                                  **
******************************************************************************/

/**
 * @file I2C001.h
 *
 * @brief  Header file for USIC_I2C_I2C001 App
 *
 */
 /*
 * Revision History
 * Mar 26, 2013 v1.0.22 Changes from 1.0.12 are
 *                      1. Modified as per coding guidelines and MISRA checks
 *                      2. Removed the union I2C001_DataType.
 *                      3. The input parameter of I2C001_WriteData() is
 *                      modified to I2C001_Type from I2C001_DataType in
 *                      function declaration.
 *                      4. The input parameters are modified to I2CHandle from
 *                      Handle in all function declaration comments.
 *                      5. Updated for alignments in revision history.
 *                      6. Updated for the example project for I2C001_Configure
 *                      API for pass parameter value(BaudRate).
 *                      7. Updated to support XMC1000 devices.
 *                      8. Corrected for spelling in revision history.
 * Jun 13, 2013 v1.0.24 1. Added I2C001_DataType to maintain backward compatibility
 *                      2. The input parameter of I2C001_WriteData() is
 *                      reverted to I2C001_DataType from I2C001_Type in
 *                      function declaration to maintain backward compatibility. 
 */
#ifndef I2C001_H_
#define I2C001_H_

#ifdef __cplusplus
extern "C" {
#endif

/******************************************************************************
**                      Include Files                                        **
******************************************************************************/


#include <DAVE3.h>
#include "Usic.h"

/******************************************************************************
**                      Global Macro Definitions                             **
******************************************************************************/

/******************************************************************************
**                      Global Type Definitions                              **
******************************************************************************/

/**
 * @ingroup I2C001_publicparam
 * @{
 */

/** @brief  TDF code used when Master transmits data. The master sends TDF byte
 * along with data byte (TBUF[7:0]), receives and checks the
 * acknowledge bit sent by the slave */
#define I2C_TDF_MTxData 			(0x0U)
/** @brief  TDF code used when Slave transmits data. The slave only has to send
 *  data if it has been asked by the master. The slave sends its data
 *  byte (TBUF[7:0]) plus the acknowledge bit as a 1 */
#define I2C_TDF_STxData 			(0x1U)
/** @brief  TDF code used when Master acknowledges with 0. The master 
 * acknowledges the transfer with a 0-level to continue the transfer. 
 * The TBUF[7:0]content is ignored */
#define I2C_TDF_MRxAck0 			(0x2U)
/** @brief  TDF code used when Master acknowledges with 1. The master 
 *  acknowledges the transfer with a 1-level to finish the transfer. 
 *  The TBUF[7:0] content is ignored */
#define I2C_TDF_MRxAck1 			(0x3U)
/** @brief  TDF code used when Master transmits Start condition. The start 
 * condition will be generated if the bus is idle, the content of TBUF[7:0] is 
 * taken as first address byte for the transmission. (TBUF[7:1] - address and
 * TBUF[0] - read/write control) */
#define I2C_TDF_MStart 				(0x4U)
/** @brief  TDF code used when Master transmits Repeated start condition. 
 * The repeated start condition will be generated if SCL is low and byte
 * transfer is not in progress. The content of TBUF[7:0] is taken as first 
 * address byte for the transmission. (TBUF[7:1] - address and 
 * TBUF[0] - read/write control).*/
#define I2C_TDF_MRStart 			(0x5U)
/** @brief  TDF code used when Master transmits Stop condition. The Stop 
 *  condition will be generated if the master has finished its last byte 
 *  transfer, the content of TBUF[7:0] is taken as first address byte for the 
 * transmission. */
#define I2C_TDF_MStop 				(0x6U)
/** @brief  Master initiated write to slave device */
#define I2C_WRITE 	0U
/** @brief  Master initiated read from slave device */
#define I2C_READ 	1U
/** @brief  Dummy data sent along with TDF code - 16 bits */
#define uwFFFF 	 0xFFFF
/** @brief  Dummy data sent along with TDF code - 8 bits */
#define ubyteFF	 0xFF


/**
 * @}
 */

/******************************************************************************
**                      Global Type Definitions                              **
******************************************************************************/

/**
 * @ingroup I2C001_publicparam
 * @{
 */


/**
 * @brief  This data type is to describe the FlagStatus types used in I2C001 
 * App. Most of the flags are common for USIC module except some protocol 
 * specific flags which depends on the specific protocol
 */

typedef enum I2C001_FlagStatusType
{
  /** 
   *  Flag depicts the Receiver start event to indicate that a data word 
   *  reception has started 
   */
  I2C001_FLAG_RSIF,
  /** 
   *  Flag depicts the Data lost event to indicate a loss of the oldest 
   *  received data word 
   */
  I2C001_FLAG_DLIF,
  /** 
   *  Flag indicates that the Transmit Shift event occurred with the last
   *  shift clock edge 
   */
  I2C001_FLAG_TSIF,
  /** 
   *  Flag indicates that the Transmit Buffer event for data word 
   * transmission has started 
   */
  I2C001_FLAG_TBIF,
  /** 
   *  Flag depicts the Receive event to indicate that a data word has 
   *  been received 
   */
  I2C001_FLAG_RIF,
  /** Flag indicates that a Wrong transmit code (error in frame sequence) 
   *  has been passed, This can be <BR>
   *  			: TDF slave code in master mode <BR>
   *  			: TDF master code in slave mode <BR>
   *  			: When Reserved TDF code is found <BR>
   *  			: Start condition code during a running frame in master mode <BR>
   *  			: Data byte transmission code after transfer direction <BR>
   *  			  has been changed to reception(master read) in master mode <BR> */
  I2C001_FLAG_WRONG_TDF,
  /** Flag indicates that a Non-Acknowledge has been received */
  I2C001_FLAG_NACK_RECEIVED,
  /**
   *  Flag indicates that the receive buffer fill level exceeds or falls below
   *  the programmed limit 
   */
  I2C001_FLAG_SRBI,
  /** Flag indicates that a Receive Buffer Error Event has been detected */
  I2C001_FLAG_RBERI,
  /** 
   *  Flag indicates that the transmit buffer fill level exceeds or falls below
   *  the programmed limit 
   */
  I2C001_FLAG_STBI,
  /** Flag indicates that a transmit buffer error event has been detected */
  I2C001_FLAG_TBERI,
}I2C001_FlagStatusType;

/**
 * @brief  This data type describes the available I2C Status flags
 * which can be used to check different status conditions.
 */

typedef enum I2C001_StatusType
{
  /**
   * Status indicates that the current operation is not allowed
   */
  /**
   * @cond INTERNAL_DOCS
   * @param MODULENAME I2C001
   * @endcond
  */
  /**
   * @cond INTERNAL_DOCS
   * @param ERRCODESTRING1 I2C001_OPER_NOT_ALLOWED
   * @param STRCODESTRING1 Operation is not allowed
   * @endcond
  */
  I2C001_OPER_NOT_ALLOWED = 1,
  /**
   * Status indicates that the corresponding flag has not been set
   */
  /**
   * @cond INTERNAL_DOCS
   * @param ERRCODESTRING2 I2C001_RESET
   * @param STRCODESTRING2 Flag is Reset
   * @endcond
  */
  I2C001_RESET,
  /**
   * Status indicates that the corresponding flag has been set
   */
  /**
   * @cond INTERNAL_DOCS
   * @param ERRCODESTRING3 I2C001_SET
   * @param STRCODESTRING3 Flag is set
   * @endcond
  */
  I2C001_SET,
  /**
   * Status indicates the protocol failure
   */
  /**
   * @cond INTERNAL_DOCS
   * @param ERRCODESTRING4 I2C001_FAIL
   * @param STRCODESTRING4 Fail condition
   * @endcond
  */
  I2C001_FAIL,
  /**
   * Status indicates the Function Entry
   */
  /**
   * @cond INTERNAL_DOCS
   * @param ERRCODESTRING5 I2C001_FUN_ENTRY
   * @param STRCODESTRING5 Entered function \%s
   * @endcond
   *
  */
  I2C001_FUN_ENTRY,
  /**
   * Status indicates the Function Exit
   */
   /**
    * @cond INTERNAL_DOCS
    * @param ERRCODESTRING6 I2C001_FUN_EXIT
    * @param STRCODESTRING6 Exited function %s
    * @endcond
    *
    */
  I2C001_FUN_EXIT
}I2C001_StatusType;

/**
 * @brief  This data type is to describe the I2C type. The structure contains 
 * two elements of 8 bit each- one for the TDF command and the other for the
 *  payload.
 */

typedef struct I2C001_Type
{
  /** Data */
  uint8_t Data;
  /** TDF type */
  uint8_t TDF_Type;
}I2C001_Type;

/**
 * @brief  This data type is union which allows the user to configure the data directly or
 * allows user to set the TDF and data separately.
 */

typedef union I2C001_DataType
{
  /** Raw Data */
	uint16_t RawData;
  /** Data */
	I2C001_Type Data1;
}I2C001_DataType;

/**
 * @brief  This data type describes the I2C handle.
 * The handler allows user to configure the I2C parameters selected by the user 
 * through ui options.
 * It also allows to configure the interrupts related to I2C.
 */

typedef struct I2C001Handle_type
{
  /** User selected USIC Channel */
  USIC_ChannelType USICChannel;
  /** CMSIS defined structure for USIC module */
  USIC_CH_TypeDef* I2CRegs;
  /** Bit rate for I2C configuration */
  uint32_t BitRate;
  /** TX FIFO Trigger limit value */
  uint8_t TxLimit;
  /** RX FIFO Trigger limit value */
  uint8_t RxLimit;
  /** TX FIFO Size */
  uint8_t TxFifoSize;
  /** RX FIFO Size */
  uint8_t RxFifoSize;
  /** Enable start condition received interrupt */
  bool StartCondRecvIntEn;
  /** Enable repeated start condition received interrupt */
  bool RepStartCondRecvIntEn;
  /** Enable stop condition transferred interrupt */
  bool StopCondRecvIntEn;
  /** Enable non-acknowledge received interrupt */
  bool NackDetectIntEn;
  /** Enable master arbitration lost interrupt */
  bool ArbLostIntEn;
  /** Enable IIC Error Interrupt */
  bool ErrorIntEn;
  /** Enable acknowledge received interrupt */
  bool AckIntEn;
}I2C001Handle_type;

/**
 * @}
 */
/******************************************************************************
**                      Global Constant Declarations                         **
******************************************************************************/


/******************************************************************************
**                      Extern Variables                                     **
******************************************************************************/

/**
 * @ingroup I2C001_apidoc
 * @{
 */

/******************************************************************************
** FUNCTION PROTOTYPES                                                       **
******************************************************************************/




/**
 * The function initializes the I2C001 App based on User provided configuration.
 * USIC configurations like channel selection,baud rate setting,
 * FIFO configuration etc are done in this Api.
 * Protocol specific interrupts can also be enabled using the I2C001_Init 
 * function.
 *
 * @return     None
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I><b>I2C001_Handle0</b></I> is a global structure of type
 * I2C001_HandleType which will be configured in I2C001_Conf.c file using
 * UI parameters as the user configures.I2C001_Init initializes the I2C 
 * register settings.
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   // Initializing the modules and the multiplexer
 *   DAVE_Init(); // I2C001_Init will be called from DAVE_Init()
 *   while(1)
 *   {}
 *   return 0;
 * }
 * @endcode<BR> </p>
 *
 */

void I2C001_Init(void);
/**
 * The function deinitializes the I2C module. The register values are
 * set back to the default state.
 *
 * @param[in]  None
 *
 * @return     None
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>

 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   // Initializing the modules and the multiplexer
 *   DAVE_Init();
 *   // Deinitializing the module
 *   I2C001_DeInit();
 *   while(1)
 *   {}
 *   return 0;
 * }
 * @endcode<BR> </p>
 *
 */

void I2C001_DeInit(void);




/**
 * This function allows the user to configure the baud rate at run time.
 * The user has to pass the baud rate value in terms of KHz (Eg: 400)
 *
 * @param[in]  I2CHandle USIC device handle
 * @param[in]  BaudRate Desired Baud Rate
 *
 * @return     status <br>
 *             DAVEApp_SUCCESS	: success <br>
 *             I2C001_FAIL  	: failure <br>
 *
 * <b>Reentrant: NO </b><BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I><b>I2C001_Handle0</b></I> is a global structure of type
 * I2C001_HandleType which will be configured in I2C001_Conf.c file using
 * UI parameters.
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   // Initializing the modules and the multiplexer
 *   DAVE_Init();
 *   // Configuring a different baud rate, pass the baud value in terms of KHz
 *   I2C001_Configure(&I2C001_Handle0,400);
 *   while(1)
 *   {}
 *   return 0;
 * }
 * @endcode<BR> </p>
 *
 */

status_t I2C001_Configure
(
	const I2C001Handle_type* I2CHandle,
	uint32_t BaudRate
);


/**
 * This function reads out the content of the USIC receive
 * FIFO Buffer. Returns true in case FIFO is not empty.else
 * otherwise.
 *
 * @param[in]  I2CHandle USIC device handle
 * @param[out] buffer Data passed
 *
 * @return     bool<BR>
 *             TRUE   : if FIFO is not empty.<BR>
 *             FALSE  : if FIFO is empty.<BR>
 *
 * <b>Reentrant: NO </b><BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I><b>I2C001_Handle0</b></I> is a global structure of type
 * I2C001_HandleType which will be configured in I2C001_Conf.c file using
 * UI parameters.
 * @code
 * #include <DAVE3.h>
 *
 *  void receive_data_handler(void);
 *
 * int main(void)
 * {
 *
 *   DAVE_Init();
 *
 *   // Configure message data length
 *   I2C001_DataType data1,data2,data3,data4,data5;
 *
 *   // Read access IO expander device PCA9502
 *   // Transmission by the master with start condition,
 *   // I2C write condition and slave address
 *   data1.Data1.TDF_Type = I2C_TDF_MStart;
 *   data1.Data1.Data = (0x98 | I2C_WRITE);
 *   I2C001_WriteData(&I2C001_Handle0,&data1);
 *
 *   // Write data to the device
 *   data2.Data1.TDF_Type = I2C_TDF_MTxData;
 *   data2.Data1.Data = 0x58;
 *   I2C001_WriteData(&I2C001_Handle0,&data2);
 *
 *   //	Transmit repeated start condition and slave address
 *   data3.Data1.TDF_Type = I2C_TDF_MRStart;
 *   data3.Data1.Data = 0x98 | I2C_READ;
 *   I2C001_WriteData(&I2C001_Handle0,&data3);
 *
 *   // Read one data from slave
 *   data4.Data1.TDF_Type = I2C_TDF_MRxAck1;
 *   data4.Data1.Data = ubyteFF;
 *   I2C001_WriteData(&I2C001_Handle0,&data4);
 *
 *   // Stop condition by the master
 *   data5.Data1.TDF_Type = I2C_TDF_MStop;
 *   data5.Data1.Data = ubyteFF;
 *   I2C001_WriteData(&I2C001_Handle0,&data5);
 *
 *   while(1)
 *   {}
 *   return 0;
 * }
 *
 * // Event Handler( FIFO receive interrupt event) registered with NVIC002 App
 * void receive_data_handler(void)
 * {
 *   uint16_t DataReceive1 = 0x0000;
 *   // Read receive buffer, put the data in DataReceive1
 *   I2C001_ReadData(&I2C001_Handle0,&DataReceive1);
 * }
 * @endcode<BR> </p>
 *
 */

bool I2C001_ReadData(const I2C001Handle_type* I2CHandle, uint16_t* buffer);

/**
 * This function writes out a word to the USIC FIFO transmit
 *			 buffer register.Returns true if the FIFO is not
 *			 full else otherwise.
 *
 * @param[in]  I2CHandle  USIC device handle
 * @param[in]  Data Pointer to data
 *
 * @return     bool <BR>
 *             TRUE   : if FIFO is not full.<BR>
 *             FALSE  : if FIFO is full.<BR>
 *
 * <b>Reentrant: NO </b><BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I><b>I2C001_Handle0</b></I> is a global structure of type
 * I2C001_HandleType which will be configured in I2C001_Conf.c file using
 * UI parameters.
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *
 *   DAVE_Init();
 *
 *   // Configure message data length
 *   I2C001_DataType data1,data2,data3,data4;
 *
 *   // Write access IO expander device PCA9502
 *   // Transmission by the master with start condition,
 *   // I2C write condition and slave address
 *   data1.Data1.TDF_Type = I2C_TDF_MStart;
 *   data1.Data1.Data = (0x98 | I2C_WRITE);
 *   I2C001_WriteData(&I2C001_Handle0,&data1);
 *
 *   // Write to the direction register
 *   data2.Data1.TDF_Type = I2C_TDF_MTxData;
 *   data2.Data1.Data = 0x50;
 *   I2C001_WriteData(&I2C001_Handle0,&data2);
 *
 *   //	Write data to configure one bit as output
 *   data3.Data1.TDF_Type = I2C_TDF_MTxData;
 *   data3.Data1.Data = 0x01;
 *   I2C001_WriteData(&I2C001_Handle0,&data3);
 *
 *   // Stop condition by the master
 *   data4.Data1.TDF_Type = I2C_TDF_MStop;
 *   data4.Data1.Data = ubyteFF;
 *   I2C001_WriteData(&I2C001_Handle0,&data4);
 *
 *   while(1)
 *   {}
 *   return 0;
 * }
 * @endcode<BR> </p>
 *
 */

bool I2C001_WriteData\
                (const I2C001Handle_type* I2CHandle, const I2C001_DataType* Data);

/**
 * The function is used to get the flag status. It returns I2C001_SET
 * if the corresponding flag is set else it returns I2C001_RESET.
 * The user has to pass the Flag to be checked as a parameter in this Api.
 *
 * @param[in]  I2CHandle USIC device handle
 * @param[in]  Flag   I2C001 Flag which needs to be checked
 *
 * @return     status_t <BR>
 *             I2C001_SET    : indicates Flag is set.<BR>
 *             I2C001_RESET  : indicates Flag is reset.<BR>
 *
 * <b>Reentrant: NO </b><BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I><b>I2C001_Handle0</b></I> is a global structure of type
 * I2C001_HandleType which will be configured in I2C001_Conf.c file using
 * UI parameters.
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   // Declaration of return variable for DAVE3 APIs
 *   status_t status;
 *   // Initializing the modules and the multiplexer
 *   DAVE_Init();
 *
 *   // Reading flag status
 *   status = I2C001_GetFlagStatus(&I2C001_Handle0,I2C001_FLAG_TSIF);
 *   while(1)
 *   {}
 *   return 0;
 * }
 * @endcode<BR> </p>
 *
 */

status_t I2C001_GetFlagStatus\
               (const I2C001Handle_type* I2CHandle,I2C001_FlagStatusType Flag);

/**
 * The function is used to clear the flag status. The user can pass the
 * flag to be cleared as a parameter of this function. The function does not 
 * return any value and the user entered flag is cleared.
 *
 * @param[in]  I2CHandle USIC device handle
 * @param[in]  Flag   I2C001 Flag which needs to be checked
 *
 * @return    None
 *
 * <b>Reentrant: NO </b><BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * <BR><I><b>I2C001_Handle0</b></I> is a global structure of type
 * I2C001_HandleType which will be configured in I2C001_Conf.c file using
 * UI parameters.
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   // Initializing the modules and the multiplexer
 *   DAVE_Init();
 *
 *   // Clearing flag status
 *   I2C001_ClearFlag(&I2C001_Handle0,I2C001_FLAG_TSIF);
 *   while(1)
 *   {}
 *   return 0;
 * }
 * @endcode<BR> </p>
 *
 */

void I2C001_ClearFlag\
             (const I2C001Handle_type* I2CHandle,I2C001_FlagStatusType Flag);

/**
 *@}
 */
 
/** Include App config file */
#include "I2C001_Conf.h"

#ifdef __cplusplus
}
#endif  

#endif /* I2C001_H_ */

