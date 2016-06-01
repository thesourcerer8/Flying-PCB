
/* CODE_BLOCK_BEGIN[usbd_vcom.h]*/
/* THIS FILE IS PROVIDED BY DAVE.
 * THIS FILE IS GENERATED.
 */
 
/*******************************************************************************
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
** PLATFORM : Infineon XMC4000 Series                                         **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR : App Developer                                                     **
**                                                                            **
** MAY BE CHANGED BY USER [yes/no]: Yes                                       **
**                                                                            **
** MODIFICATION DATE : Feb 14, 2014                                           **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                       Author(s) Identity                                   **
********************************************************************************
**                                                                            **
** Initials    Name                                                           **
** ---------------------------------------------------------------------------**
** NSND         App Developer                                                 **
*******************************************************************************/
 
/*
  Copyright 2013  Dean Camera (dean [at] fourwalledcubicle [dot] com)

  Permission to use, copy, modify, distribute, and sell this
  software and its documentation for any purpose is hereby granted
  without fee, provided that the above copyright notice appear in
  all copies and that both that the copyright notice and this
  permission notice and warranty disclaimer appear in supporting
  documentation, and that the name of the author not be used in
  advertising or publicity pertaining to distribution of the
  software without specific, written prior permission.

  The author disclaim all warranties with regard to this
  software, including all implied warranties of merchantability
  and fitness.  In no event shall the author be liable for any
  special, indirect or consequential damages or any damages
  whatsoever resulting from loss of use, data or profits, whether
  in an action of contract, negligence or other tortious action,
  arising out of or in connection with the use or performance of
  this software.
*/ 

#ifndef __USBD_VCOM_H_
#define __USBD_VCOM_H_

/* Enable C linkage for C++ Compilers: */
#if defined(__cplusplus)
	extern "C" {
#endif

/**
 * @file  usbd_vcom.h
 *
 * @brief This file contains all public data structures,enums and function
 *        prototypes for USBD_VCOM App.
 *
 */

/******************************************************************************
 * INCLUDE FILES
 ******************************************************************************/
  /* Includes: */
#include "../../src/USBD_VCOM/cdc/CDCClass.h"
#include "../../src/USBD_VCOM/vc/Descriptors.h"
#include "../../src/USBD/usbd/usbd.h"

extern USB_ClassInfo_CDC_Device_t USBD_VCOM_CDCInterface ;

/*******************************************************************************
 *                                ENUMERATIONS                                **
******************************************************************************/
/**
 * @ingroup USBD_VCOM_enumerations
 * @{
 */
/**
 * This enumerates USBD_VCOM App Errors.
 */

typedef enum USBD_VCOM_ErrorCodesType
{
  /**
   * USB VCOM device Module Error  (1)
   */
  USBD_VCOM_ERROR =1,

  /**
   * Device is attached (2)
   */
  USBD_VCOM_DEVICE_ATTACHED,
  /**
   * Device is enumerated by the Host (3)
   */
  USBD_VCOM_DEVICE_ENUM_COMPLETE,
  /**
   * Device is un-attached (4)
   */
  USBD_VCOM_DEVICE_UNATTACHED,
  /**
   * Sub-Error of an Error. (5)
   */
  USBD_VCOM_USBCDC_SUB_ERROR,
  /**
   * USB CDC Error. (6)
   */
  USBD_VCOM_USBCDC_ERROR

} USBD_VCOM_ErrorCodesType;

/**
 * @}
 */

/**
 * @ingroup USBD_VCOM_apidoc
 * @{
 */
/*******************************************************************************
** FUNCTION PROTOTYPES                                                        **
*******************************************************************************/
/**
 * @brief The function initializes the USB core layer and register
 *        call backs.\n\n
 *       This function :\n
 *       1) Initialises the USB core driver.\n
 *       2) Registers the USB Device Event.\n
 *       3) Starts the USB device controller.\n\n
 *       In order to call USBD_VCOM_Init()  following procedure should be
 *       followed:\n
 *       1) Call DAVE_Init().\n
 *       2) Call USBD_VCOM_Init() initialize the USB core in device mode.\n
 * @return status_t
 * DAVEApp_SUCCESS:  If the initialisation is successful\n
 * <b>Reentrant: NO </b><BR>
 * <b>Sync/Async:  Synchronous</b>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <XMC4500.h>
 * #include <DAVE3.h>
 * #include "../../inc/USBD_VCOM/USBD_VCOM.h"
 *
 * int main(void)
 * {
 *   uint16_t Bytes = 0;
 *   uint16_t nByte;
 *   DAVE_Init();      // Initialisation of DAVE Apps
 *
 *  //Initialise the USB core in Device mode
 *  USBD_VCOM_Init();
 *
 *  for (;;)
 *  {
 *    // Check number of bytes received
 *    Bytes = USBD_VCOM_BytesReceived();
 *
 *    if(Bytes != 0)
 *    {
 *      for(nByte = 0; nByte < Bytes; nByte++)
 *      {
 *        // Receive Byte
 *        if(USBD_VCOM_ReceiveByte(&TxBuffer[0]) != DAVEApp_SUCCESS)
 *        {
 *          //Error
 *        }
 *
 *        //Send Byte
 *        USBD_VCOM_SendByte(TxBuffer[0]);
 *       }
 *    }
 *
 *  }
 * }
 *  @endcode
 */
  status_t USBD_VCOM_Init(void);

/**
 * @brief The function sends a byte of data to the USB host.\n
 *        In order to call USBD_VCOM_SendByte()  following procedure should be
 *        followed:\n
 *        1) Call DAVE_Init().\n
 *        2) Call USBD_VCOM_SendByte().\n
 * @param[in] DataByte Data to send to the USB host.
 * @return status_t
 * DAVEApp_SUCCESS:  If the initialization is successful\n
 * <b>Reentrant: NO </b><BR>
 * <b>Sync/Async:  Synchronous</b>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <XMC4500.h>
 * #include <DAVE3.h>
 * #include "../../inc/USBD_VCOM/USBD_VCOM.h"
 *
 * int main(void)
 * {
 *   uint16_t Bytes = 0;
 *   uint16_t nByte;
 *   DAVE_Init();      // Initialization of DAVE Apps
 *
 *  //Initialize the USB core in Device mode
 *  USBD_VCOM_Init();
 *
 *  for (;;)
 *  {
 *    // Check number of bytes received
 *    Bytes = USBD_VCOM_BytesReceived();
 *
 *    if(Bytes != 0)
 *    {
 *      for(nByte = 0; nByte < Bytes; nByte++)
 *      {
 *        // Receive Byte
 *        if(USBD_VCOM_ReceiveByte(&TxBuffer[0]) != DAVEApp_SUCCESS)
 *        {
 *          //Error
 *        }
 *
 *        //Send Byte
 *        USBD_VCOM_SendByte(TxBuffer[0]);
 *      }
 *    }
 *
 *
 *  }
 * }
 *  @endcode
 */
  status_t USBD_VCOM_SendByte(const uint8_t DataByte);

/**
 * @brief The function sends multiple bytes of data to the USB host.\n
 *        In order to call USBD_VCOM_SendData()  following procedure should be
 *        followed:\n
 *        1) Call DAVE_Init().\n
 *        2) USBD_VCOM_Init()
 *        3) Call USBD_VCOM_SendData().\n
 * @param[in] DataBuffer Contains the data to send.
 * @param[in] Length Number of bytes to send to the USB host.
 * @return status_t
 * DAVEApp_SUCCESS:  If the initialization is successful\n
 * <b>Reentrant: NO </b><BR>
 * <b>Sync/Async:  Synchronous</b>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <XMC4500.h>
 * #include <DAVE3.h>
 * #include "../../inc/USBD_VCOM/USBD_VCOM.h"
 *
 * int main(void)
 * {
 *   uint16_t Bytes = 0;
 *   uint16_t nByte;
 *   DAVE_Init();      // Initialization of DAVE Apps
 *
 *  //Initialize the USB core in Device mode
 *  USBD_VCOM_Init();
 *
 *  for (;;)
 *  {
 *    // Check number of bytes received
 *    Bytes = USBD_VCOM_BytesReceived();
 *
 *    if(Bytes != 0)
 *    {
 *      for(nByte = 0; nByte < Bytes; nByte++)
 *      {
 *        // Receive Byte
 *        if(USBD_VCOM_ReceiveByte(&TxBuffer[0]) != DAVEApp_SUCCESS)
 *        {
 *          //Error
 *        }
 *
 *      }
 *    }
 *
 *    //Send Data
 *    USBD_VCOM_SendData((const char *)TxBuffer, Bytes);
 *
 *
 *  }
 * }
 *  @endcode
 */
  status_t USBD_VCOM_SendData(const char* const DataBuffer,
                              const uint16_t Length);

/**
 * @brief The function sends string to the USB host.\n
 *        In order to call USBD_VCOM_SendString()  following procedure should be
 *        followed:\n
 *        1) Call DAVE_Init().\n
 *        2) USBD_VCOM_Init()
 *        3) Call USBD_VCOM_SendString().\n
 * @param[in] DataString String to send to the USB host.
 * @return status_t
 * DAVEApp_SUCCESS:  If the initialization is successful\n
 * <b>Reentrant: NO </b><BR>
 * <b>Sync/Async:  Synchronous</b>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <XMC4500.h>
 * #include <DAVE3.h>
 * #include "../../inc/USBD_VCOM/USBD_VCOM.h"
 *
 * int main(void)
 * {
 *   uint16_t Bytes = 0;
 *   uint16_t nByte;
 *   DAVE_Init();      // Initialization of DAVE Apps
 *
 *  //Initialize the USB core in Device mode
 *  USBD_VCOM_Init();
 *
 *  for (;;)
 *  {
 *    // Check number of bytes received
 *    Bytes = USBD_VCOM_BytesReceived();
 *
 *    if(Bytes != 0)
 *    {
 *      for(nByte = 0; nByte < Bytes; nByte++)
 *      {
 *        // Receive Byte
 *        if(USBD_VCOM_ReceiveByte(&TxBuffer[0]) != DAVEApp_SUCCESS)
 *        {
 *          //Error
 *        }
 *      }
 *    }
 *
 *    //Send Byte
 *      USBD_VCOM_SendString((const char *)"Hello World");
 *
 *
 *  }
 * }
 *  @endcode
 */
  status_t USBD_VCOM_SendString(const char* const DataString);

/**
 * @brief The function receives a byte from the USB host.\n
 * In order to call USBD_VCOM_ReceiveByte()  following procedure should be
 * followed:\n
 *   1) Call DAVE_Init().\n
 *   2) USBD_VCOM_Init()
 *   3) Call USBD_VCOM_BytesReceived() to check the number of bytes received.\n
 *   4) Call USBD_VCOM_ReceiveByte().\n
 * @param[in] DataByte Pointer to the buffer to store the received data.
 * @return status_t
 * DAVEApp_SUCCESS:  If the initialization is successful\n
 * <b>Reentrant: NO </b><BR>
 * <b>Sync/Async:  Synchronous</b>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <XMC4500.h>
 * #include <DAVE3.h>
 * #include "../../inc/USBD_VCOM/USBD_VCOM.h"
 *
 * int main(void)
 * {
 *   uint16_t Bytes = 0;
 *   uint16_t nByte;
 *   DAVE_Init();      // Initialization of DAVE Apps
 *
 *  //Initialize the USB core in Device mode
 *  USBD_VCOM_Init();
 *
 *  for (;;)
 *  {
 *    // Check number of bytes received
 *    Bytes = USBD_VCOM_BytesReceived();
 *
 *    if(Bytes != 0)
 *    {
 *      for(nByte = 0; nByte < Bytes; nByte++)
 *      {
 *        // Receive Byte
 *        if(USBD_VCOM_ReceiveByte(&TxBuffer[0]) != DAVEApp_SUCCESS)
 *        {
 *          //Error
 *        }
 *
 *        //Send Byte
 *        USBD_VCOM_SendByte(TxBuffer[0]);
 *      }
 *    }
 *
 *
 *  }
 * }
 *  @endcode
 */
  status_t USBD_VCOM_ReceiveByte(int8_t* DataByte);

/**
 * @brief The function receives number of bytes of data from the USB host.\n
 *        In order to call USBD_VCOM_ReceiveData()  following procedure should
 *        be followed:\n
 *        1) Call DAVE_Init().\n
 *        2) USBD_VCOM_Init()
 *        3) Call USBD_VCOM_BytesReceived().\n
 *        4) Call USBD_VCOM_ReceiveData().\n
 * @param[in] DataBuffer Pointer to the buffer to store the received data.
 * @param[in] DataByte Number of bytes to receive
 * @return status_t
 * DAVEApp_SUCCESS:  If the data is received successfully\n
 * <b>Reentrant: NO </b><BR>
 * <b>Sync/Async:  Synchronous</b>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <XMC4500.h>
 * #include <DAVE3.h>
 * #include "../../inc/USBD_VCOM/USBD_VCOM.h"
 *
 * int8_t RxBuffer[100] = { 0 };
 *
 * int main(void)
 * {
 *   uint16_t Bytes = 0;
 *   uint16_t nByte;
 *   DAVE_Init();      // Initialization of DAVE Apps
 *
 *  //Initialize the USB core in Device mode
 *  USBD_VCOM_Init();
 *
 *  for (;;)
 *  {
 *    // Check number of bytes received
 *    Bytes = USBD_VCOM_BytesReceived();
 *
 *    if(Bytes != 0)
 *    {
 *        // Receive Data
 *        if(USBD_VCOM_ReceiveData(RxBuffer, Bytes)) != DAVEApp_SUCCESS)
 *        {
 *          //Error
 *        }
 *    }
 *
 *  }
 * }
 *  @endcode
 */
  status_t USBD_VCOM_ReceiveData(int8_t* DataBuffer, int16_t DataByte);

/**
 * @brief The function checks the number of bytes received.\n
 *       In order to call USBD_VCOM_BytesReceived()  following procedure should
 *        be followed:\n
 *        1) Call DAVE_Init().\n
 *        2) USBD_VCOM_Init()
 *        3) Call USBD_VCOM_BytesReceived().\n
 * @return uint16_t Number of bytes received
 * <b>Reentrant: NO </b><BR>
 * <b>Sync/Async:  Synchronous</b>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * #include <XMC4500.h>
 * #include <DAVE3.h>
 * #include "../../inc/USBD_VCOM/USBD_VCOM.h"
 *
 * int main(void)
 * {
 *   uint16_t Bytes = 0;
 *   uint16_t nByte;
 *   DAVE_Init();      // Initialization of DAVE Apps
 *
 *  //Initialize the USB core in Device mode
 *  USBD_VCOM_Init();
 *
 *  for (;;)
 *  {
 *    // Check number of bytes received
 *    Bytes = USBD_VCOM_BytesReceived();
 *
 *    if(Bytes != 0)
 *    {
 *      for(nByte = 0; nByte < Bytes; nByte++)
 *      {
 *        // Receive Byte
 *        if(USBD_VCOM_ReceiveByte(&TxBuffer[0]) != DAVEApp_SUCCESS)
 *        {
 *          //Error
 *        }
 *
 *        //Send Byte
 *        USBD_VCOM_SendByte(TxBuffer[0]);
 *      }
 *    }
 *
 *  }
 * }
 *  @endcode
 */
  uint16_t USBD_VCOM_BytesReceived(void);
  
  /**
   * @brief The function gets the line encoding.\n
   *        In order to call USBD_VCOM_GetLineEncoding()  following procedure
   *        should be followed:\n
   *        1) Call DAVE_Init().\n
   *        2) USBD_VCOM_Init()
   *        3) Call USBD_VCOM_GetLineEncoding().\n
   * @param[in] LineEncodingPtr Pointer to get Line encoding data.
   * @return status_t
   * DAVEApp_SUCCESS:  If the initialization is successful\n
   * <b>Reentrant: NO </b><BR>
   * <b>Sync/Async:  Synchronous</b>
   * <BR><P ALIGN="LEFT"><B>Example:</B>
   * @code
   * #include <XMC4500.h>
   * #include <DAVE3.h>
   * #include "../../inc/USBD_VCOM/USBD_VCOM.h"
   *
   * CDC_LineEncoding_t LineEncodingPtr;
   *
   * int main(void)
   * {
   *   uint16_t Bytes = 0;
   *   uint16_t nByte;
   *   DAVE_Init();      // Initialization of DAVE Apps
   *
   *  //Initialize the USB core in Device mode
   *  USBD_VCOM_Init();
   *
   *  for (;;)
   *  {
   *    // Check number of bytes received
   *    Bytes = USBD_VCOM_BytesReceived();
   *
   *    if(Bytes != 0)
   *    {
   *      for(nByte = 0; nByte < Bytes; nByte++)
   *      {
   *        // Receive Byte
   *        if(USBD_VCOM_ReceiveByte(&TxBuffer[0]) != DAVEApp_SUCCESS)
   *        {
   *          //Error
   *        }
   *
   *        //Send Byte
   *        USBD_VCOM_SendByte(TxBuffer[0]);
   *      }
   *    }
   *
   *    USBD_VCOM_GetLineEncoding(&LineEncodingPtr);
   *
   *  }
   * }
   *  @endcode
   */
  status_t USBD_VCOM_GetLineEncoding(CDC_LineEncoding_t* LineEncodingPtr);

  /**
      * @brief This API is used to get the enumeration status of USB device
      * In order to call USBD_VCOM_GetLineEncoding()  following procedure
      *        should be followed:\n
      *        1) Call DAVE_Init().\n
      *        2) USBD_VCOM_Init()
      *        3) USBD_VCOM_IsEnumDone()
      * @return uint8_t
      * returns 1, if the enumeration is done. Returns 0 if the enumeration not
      *  yet complete.
      * @code
      * #include <XMC4500.h>
      * #include <DAVE3.h>
      * #include "../../inc/USBD_VCOM/USBD_VCOM.h"
      * uint8_t TxBuffer[20];
      * int main(void)
      * {
      *   uint16_t enumdone = 0;
      *   DAVE_Init();      // Initialization of DAVE Apps
      *
      *  //Initialize the USB core in Device mode
      *  USBD_VCOM_Init();
      *
      *  for (;;)
      *  {
      *    // Check number of bytes received
      *    enumdone = USBD_VCOM_IsEnumDone();
      *
      *    if(enumdone)
      *    {
      *       //Send Data
      *    	USBD_VCOM_SendData((const char *)TxBuffer, 10);
      *    }
      *
      *  }
      * }
      *  @endcode
      * */
  uint8_t USBD_VCOM_IsEnumDone(void);

/**
 * @}
 */

  /* Disable C linkage for C++ Compilers: */
	#if defined(__cplusplus)
		}
	#endif
#endif /*__USBVC_H_*/
