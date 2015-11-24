
/* CODE_BLOCK_BEGIN[usbvc001.h]*/
/* THIS FILE IS PROVIDED BY DAVE.
 * THIS FILE IS GENERATED.
 */
 
/*******************************************************************************
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
** MODIFICATION DATE : Nov 19, 2012                                            **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                       Author(s) Identity                                   **
********************************************************************************
**                                                                            **
** Initials    Name                                                           **
** ---------------------------------------------------------------------------**
** CM          App Developer                                                  **
*******************************************************************************/

/* ==========================================================================
 * Synopsys HS OTG Linux Software Driver and documentation (hereinafter,
 * "Software") is an Unsupported proprietary work of Synopsys, Inc. unless
 * otherwise expressly agreed to in writing between Synopsys and you.
 *
 * The Software IS NOT an item of Licensed Software or Licensed Product under
 * any End User Software License Agreement or Agreement for Licensed Product
 * with Synopsys or any supplement thereto. You are permitted to use and
 * redistribute this Software in source and binary forms, with or without
 * modification, provided that redistributions of source code must retain this
 * notice. You may not view, use, disclose, copy or distribute this file or
 * any information contained herein except pursuant to this license grant from
 * Synopsys. If you do not agree with this notice, including the disclaimer
 * below, then you are not authorized to use the Software.
 *
 * THIS SOFTWARE IS BEING DISTRIBUTED BY SYNOPSYS SOLELY ON AN "AS IS" BASIS
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE HEREBY DISCLAIMED. IN NO EVENT SHALL SYNOPSYS BE LIABLE FOR ANY DIRECT,
 * INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH
 * DAMAGE.
 * ========================================================================== */
 
/*
  Copyright 2011  Dean Camera (dean [at] fourwalledcubicle [dot] com)

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

#ifndef __USBVC001_H_
#define __USBVC001_H_

#ifdef __cplusplus
extern "C"{
#endif

/**
 * @file  USBVC001.h
 *
 * @brief This file contains all public data structures,enums and function
 *        prototypes for USB Core Layer App.
 *
 */

/******************************************************************************
 * INCLUDE FILES
 ******************************************************************************/
  /* Includes: */
  #include <DAVE3.h>
  #include "../../src/USBVC001/Descriptors.h"

/*******************************************************************************
 *                                ENUMERATIONS                                **
******************************************************************************/
/**
 * This enumerates USBVC001 App Errors.
 */

typedef enum USVC001_ErrorCodesType
{
  /**
   * USB VCOM device Module Error  (1)
   */
  USBVC001_ERROR =1,

  /**
   * Device is attached (2)
   */
  USBVC001_DEVICE_ATTACHED,
  /**
   * Device is enumerated by the Host (3)
   */
  USBVC001_DEVICE_ENUM_COMPLETE,
  /**
   * Device is un-attached (4)
   */
  USBVC001_DEVICE_UNATTACHED,
  /**
   * Sub-Error of an Error. (5)
   */
  USBVC001_USBCDC001_SUB_ERROR,
  /**
   * USB CDC Error. (6)
   */
  USBVC001_USBCDC001_ERROR

} USBVC001_ErrorCodesType;


/**
 * @ingroup USBVC001_apidoc
 * @{
 */
/*******************************************************************************
** FUNCTION PROTOTYPES                                                        **
*******************************************************************************/
/**
 * @brief The function initializes the USB core layer and register
 *        call backs.\n\n
 *       This function :\n
 *       1) Initializes the USB core driver.\n
 *       2) Registers the USB Device Event.\n
 *       3) Starts the USB device controller.\n\n
 *       In order to call USBVC001_Init()  following procedure should be
 *       followed:\n
 *       1) Call DAVE_Init().\n
 *       2) Call USBVC001_Init() initialize the USB core in device mode.\n
 * @return status_t
 * DAVEApp_SUCCESS:  If the initialization is successful\n
 * @code
 * #include <XMC4500.h>
 * #include <DAVE3.h>
 * #include "../../inc/USBVC001/USBVC001.h"
 * int8_t TxBuffer[100] = { 0 };
 * int main(void)
 * {
 *   uint16_t Bytes = 0;
 *   uint16_t nByte;
 *   DAVE_Init();      // Initialization of DAVE Apps
 *
 *  //Initialize the USB core in Device mode
 *  USBVC001_Init();
 *
 *  for (;;)
 *  {
 *    // Check number of bytes received
 *    Bytes = USBVC001_BytesReceived();
 *
 *    if(Bytes != 0)
 *    {
 *      for(nByte = 0; nByte < Bytes; nByte++)
 *      {
 *        // Receive Byte
 *        if(USBVC001_ReceiveByte(&TxBuffer[0]) != DAVEApp_SUCCESS)
 *        {
 *          //Error
 *        }
 *
 *        //Send Byte
 *        USBVC001_SendByte(TxBuffer[0]);
 *       }
 *    }
 *
 *    // Call continuous to handle class specific control request
 *    USB_USBTask();
 *  }
 * }
 *  @endcode
 */
  status_t USBVC001_Init(void);

/**
 * @brief The function sends a byte of data to the USB host.\n
 *        In order to call USBVC001_SendByte()  following procedure should be
 *        followed:\n
 *        1) Call DAVE_Init().\n
 *        2) Call USBVC001_SendByte().\n
 * @param[in] DataByte Data to send to the USB host.
 * @return status_t
 * DAVEApp_SUCCESS:  If the initialization is successful\n
 * @code
 * #include <XMC4500.h>
 * #include <DAVE3.h>
 * #include "../../inc/USBVC001/USBVC001.h"
 * int8_t TxBuffer[100] = { 0 };
 * int main(void)
 * {
 *   uint16_t Bytes = 0;
 *   uint16_t nByte;
 *   DAVE_Init();      // Initialization of DAVE Apps
 *
 *  //Initialize the USB core in Device mode
 *  USBVC001_Init();
 *
 *  for (;;)
 *  {
 *    // Check number of bytes received
 *    Bytes = USBVC001_BytesReceived();
 *
 *    if(Bytes != 0)
 *    {
 *      for(nByte = 0; nByte < Bytes; nByte++)
 *      {
 *        // Receive Byte
 *        if(USBVC001_ReceiveByte(&TxBuffer[0]) != DAVEApp_SUCCESS)
 *        {
 *          //Error
 *        }
 *
 *        //Send Byte
 *        USBVC001_SendByte(TxBuffer[0]);
 *      }
 *    }
 *
 *    // Call continuous to handle class specific control request
 *    USB_USBTask();
 *  }
 * }
 *  @endcode
 */
  status_t USBVC001_SendByte(const uint8_t DataByte);

/**
 * @brief The function sends multiple bytes of data to the USB host.\n
 *        In order to call USBVC001_SendData()  following procedure should be
 *        followed:\n
 *        1) Call DAVE_Init().\n
 *        2) Call USBVC001_SendData().\n
 * @param[in] DataBuffer Contains the data to send.
 * @param[in] Length Number of bytes to send to the USB host.
 * @return status_t
 * DAVEApp_SUCCESS:  If the initialization is successful\n
 * @code
 * #include <XMC4500.h>
 * #include <DAVE3.h>
 * #include "../../inc/USBVC001/USBVC001.h"
 * int8_t TxBuffer[100] = { 0 };
 * int main(void)
 * {
 *   uint16_t Bytes = 0;
 *   uint16_t nByte;
 *   DAVE_Init();      // Initialization of DAVE Apps
 *
 *  //Initialize the USB core in Device mode
 *  USBVC001_Init();
 *
 *  for (;;)
 *  {
 *    // Check number of bytes received
 *    Bytes = USBVC001_BytesReceived();
 *
 *    if(Bytes != 0)
 *    {
 *      for(nByte = 0; nByte < Bytes; nByte++)
 *      {
 *        // Receive Byte
 *        if(USBVC001_ReceiveByte(&TxBuffer[0]) != DAVEApp_SUCCESS)
 *        {
 *          //Error
 *        }
 *
 *      }
 *    }
 *
 *    //Send Data
 *    USBVC001_SendData((const char *)TxBuffer, Bytes);
 *
 *    // Call continuous to handle class specific control request
 *    USB_USBTask();
 *  }
 * }
 *  @endcode
 */
  status_t USBVC001_SendData(const char* const DataBuffer,
                              const uint16_t Length);

/**
 * @brief The function sends string to the USB host.\n
 *        In order to call USBVC001_SendString()  following procedure should be
 *        followed:\n
 *        1) Call DAVE_Init().\n
 *        2) Call USBVC001_SendString().\n
 * @param[in] DataString String to send to the USB host.
 * @return status_t
 * DAVEApp_SUCCESS:  If the initialization is successful\n
 * @code
 * #include <XMC4500.h>
 * #include <DAVE3.h>
 * #include "../../inc/USBVC001/USBVC001.h"
 * int8_t TxBuffer[100] = { 0 };
 * int main(void)
 * {
 *   uint16_t Bytes = 0;
 *   uint16_t nByte;
 *   DAVE_Init();      // Initialization of DAVE Apps
 *
 *  //Initialize the USB core in Device mode
 *  USBVC001_Init();
 *
 *  for (;;)
 *  {
 *    // Check number of bytes received
 *    Bytes = USBVC001_BytesReceived();
 *
 *    if(Bytes != 0)
 *    {
 *      for(nByte = 0; nByte < Bytes; nByte++)
 *      {
 *        // Receive Byte
 *        if(USBVC001_ReceiveByte(&TxBuffer[0]) != DAVEApp_SUCCESS)
 *        {
 *          //Error
 *        }
 *      }
 *    }
 *
 *    //Send Byte
 *      USBVC001_SendString((const char *)"Hello World");
 *
 *    // Call continuous to handle class specific control request
 *    USB_USBTask();
 *  }
 * }
 *  @endcode
 */
  status_t USBVC001_SendString(const char* const DataString);

/**
 * @brief The function receives a byte from the USB host.\n
 *        In order to call USBVC001_ReceiveByte()  following procedure should be
 *        followed:\n
 *        1) Call DAVE_Init().\n
 *        2) Call USBVC001_BytesReceived() to check the number of bytes received.\n
 *        3) Call USBVC001_ReceiveByte().\n
 * @param[in] DataByte Pointer to the buffer to store the received data.
 * @return status_t
 * DAVEApp_SUCCESS:  If the initialization is successful\n
 * @code
 * #include <XMC4500.h>
 * #include <DAVE3.h>
 * #include "../../inc/USBVC001/USBVC001.h"
 * int8_t TxBuffer[100] = { 0 };
 * int main(void)
 * {
 *   uint16_t Bytes = 0;
 *   uint16_t nByte;
 *   DAVE_Init();      // Initialization of DAVE Apps
 *
 *  //Initialize the USB core in Device mode
 *  USBVC001_Init();
 *
 *  for (;;)
 *  {
 *    // Check number of bytes received
 *    Bytes = USBVC001_BytesReceived();
 *
 *    if(Bytes != 0)
 *    {
 *      for(nByte = 0; nByte < Bytes; nByte++)
 *      {
 *        // Receive Byte
 *        if(USBVC001_ReceiveByte(&TxBuffer[0]) != DAVEApp_SUCCESS)
 *        {
 *          //Error
 *        }
 *
 *        //Send Byte
 *        USBVC001_SendByte(TxBuffer[0]);
 *      }
 *    }
 *
 *    // Call continuous to handle class specific control request
 *    USB_USBTask();
 *  }
 * }
 *  @endcode
 */
  status_t USBVC001_ReceiveByte(int8_t* DataByte);

/**
 * @brief The function receives number of bytes of data from the USB host.\n
 *        In order to call USBVC001_ReceiveData()  following procedure should 
 *        be followed:\n
 *        1) Call DAVE_Init().\n
 *        2) Call USBVC001_BytesReceived().\n
 *        3) Call USBVC001_ReceiveData().\n
 * @param[in] DataBuffer Pointer to the buffer to store the received data.
 * @param[in] DataByte Number of bytes to receive
 * @return status_t
 * DAVEApp_SUCCESS:  If the data is received successfully\n
 * @code
 * #include <XMC4500.h>
 * #include <DAVE3.h>
 * #include "../../inc/USBVC001/USBVC001.h"
 *
 * int8_t RxBuffer[100] = { 0 };
 *
 * int main(void)
 * {
 *   uint16_t Bytes = 0;
 *   DAVE_Init();      // Initialization of DAVE Apps
 *
 *  //Initialize the USB core in Device mode
 *  USBVC001_Init();
 *
 *  for (;;)
 *  {
 *    // Check number of bytes received
 *    Bytes = USBVC001_BytesReceived();
 *
 *    if(Bytes != 0)
 *    {
 *        // Receive Data
 *        if(USBVC001_ReceiveData(RxBuffer, Bytes) != DAVEApp_SUCCESS)
 *        {
 *          //Error
 *        }
 *    }
 *
 *    // Call continuous to handle class specific control request
 *    USB_USBTask();
 *  }
 * }
 *  @endcode
 */
  status_t USBVC001_ReceiveData(int8_t* DataBuffer, int16_t DataByte);

/**
 * @brief The function checks the number of bytes received.\n
 *        In order to call USBVC001_BytesReceived()  following procedure should 
 *        be followed:\n
 *        1) Call DAVE_Init().\n
 *        2) Call USBVC001_BytesReceived().\n
 * @return uint16_t Number of bytes received
 * @code
 * #include <XMC4500.h>
 * #include <DAVE3.h>
 * #include "../../inc/USBVC001/USBVC001.h"
 * int8_t TxBuffer[100] = { 0 };
 * int main(void)
 * {
 *   uint16_t Bytes = 0;
 *   uint16_t nByte;
 *   DAVE_Init();      // Initialization of DAVE Apps
 *
 *  //Initialize the USB core in Device mode
 *  USBVC001_Init();
 *
 *  for (;;)
 *  {
 *    // Check number of bytes received
 *    Bytes = USBVC001_BytesReceived();
 *
 *    if(Bytes != 0)
 *    {
 *      for(nByte = 0; nByte < Bytes; nByte++)
 *      {
 *        // Receive Byte
 *        if(USBVC001_ReceiveByte(&TxBuffer[0]) != DAVEApp_SUCCESS)
 *        {
 *          //Error
 *        }
 *
 *        //Send Byte
 *        USBVC001_SendByte(TxBuffer[0]);
 *      }
 *    }
 *
 *    // Call continuous to handle class specific control request
 *    USB_USBTask();
 *  }
 * }
 *  @endcode
 */
  uint16_t USBVC001_BytesReceived(void);
  
  /**
   * @brief The function gets the line encoding.\n
   *        In order to call USBVC001_GetLineEncoding()  following procedure 
   *        should be followed:\n
   *        1) Call DAVE_Init().\n
   *        2) Call USBVC001_GetLineEncoding().\n
   * @param[in] LineEncodingPtr Pointer to get Line encoding data.
   * @return status_t
   * DAVEApp_SUCCESS:  If the initialization is successful\n
   * @code
   * #include <XMC4500.h>
   * #include <DAVE3.h>
   * #include "../../inc/USBVC001/USBVC001.h"
   *
   * CDC_LineEncoding_t LineEncodingPtr;
   * int8_t TxBuffer[100] = { 0 };
   * int main(void)
   * {
   *   uint16_t Bytes = 0;
   *   uint16_t nByte;
   *   DAVE_Init();      // Initialization of DAVE Apps
   *
   *  //Initialize the USB core in Device mode
   *  USBVC001_Init();
   *
   *  for (;;)
   *  {
   *    // Check number of bytes received
   *    Bytes = USBVC001_BytesReceived();
   *
   *    if(Bytes != 0)
   *    {
   *      for(nByte = 0; nByte < Bytes; nByte++)
   *      {
   *        // Receive Byte
   *        if(USBVC001_ReceiveByte(&TxBuffer[0]) != DAVEApp_SUCCESS)
   *        {
   *          //Error
   *        }
   *
   *        //Send Byte
   *        USBVC001_SendByte(TxBuffer[0]);
   *      }
   *    }
   *
   *    USBVC001_GetLineEncoding(&LineEncodingPtr);
   *
   *    // Call continuous to handle class specific control request
   *    USB_USBTask();
   *  }
   * }
   *  @endcode
   */
  status_t USBVC001_GetLineEncoding(CDC_LineEncoding_t* LineEncodingPtr);  

  /**
     * @brief Event for USB device connection. This event fires when the 
     *        microcontroller is in USB Device mode and the device is connected
     *        to a USB host, beginning the enumeration process measured by a
     *        rising level on the microcontroller's VBUS sense pin.
     */
    void EVENT_USB_Device_Connect(void);

    /**
     * @brief Event for USB device disconnection. This event fires when the
     *        microcontroller is in USB Device mode and the device is 
     *        disconnected from a host, measured by a falling level on the 
     *        microcontroller's VBUS sense pin.
     */
    void EVENT_USB_Device_Disconnect(void);

    /**
     * @brief Event for USB configuration number changed. This event fires when
     *        a the USB host changes the selected configuration number while in
     *        device mode. This event should be hooked in device applications 
     *        to create the endpoints and configure the device for the selected 
     *        configuration.
     */
    void EVENT_USB_Device_ConfigurationChanged(void);

    /**
     * @brief Event for control requests. This event fires when a the USB host
     *        issues a control request to the mandatory device control endpoint
     *        (of address 0). This may either be a standard request that the 
     *        library may have a handler code for internally, or a class 
     *        specific request issued to the device which must be handled 
     *        appropriately. If a request is not processed in the user 
     *        application via this event, it will be passed to the library for
     *        processing internally if a suitable handler exists.
     */
    void EVENT_USB_Device_ControlRequest(void *CurrentRequest);

  /**
    * @brief Event for USB set address request. This event fires when a the 
    *        USB host sets the device in the addressed mode.
    */
    void EVENT_USB_Device_SetAddress(void);

/**
 * @}
 */
#ifdef __cplusplus
}
#endif
#endif /*__USBVC001_H_*/
