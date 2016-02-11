/* CODE_BLOCK_BEGIN[USBCORE001_device.h]*/
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
** MODIFICATION DATE : Dec 4, 2012                                            **
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
 * $File: //dwh/usb_iip/dev/software/otg/linux/drivers/dwc_otg_hcd.h $
 * $Revision: #57 $
 * $Date: 2010/11/29 $
 * $Change: 1636033 $
 *
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

/**
 * @file usbcore001_device.h
 *
 * @brief  USB device header file.
 *
 */
#ifndef __USB_CORE001_DEVICE_H_
#define __USB_CORE001_DEVICE_H_
#ifdef __cplusplus
extern "C"{
#endif


/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/
/**
 * @ingroup USBCORE001_publicparam
 * @{
 */

/**
 * @brief Defines the total number of endpoints
 */
#define ENDPOINT_TOTAL_ENDPOINTS                           8

/**
 * @brief Defines Endpoint direction IN (Device to Host)
 */
#define ENDPOINT_DIR_IN                                    0x80

/**
 * @brief Defines Endpoint direction OUT (Host to Device)
 */
#define ENDPOINT_DIR_OUT                                    0x00


/**
 * @brief Defines Endpoint type Bulk
 */
#define EP_TYPE_BULK                                        0x02

/**
 * @brief Defines Endpoint type Bulk
 */
#define EP_TYPE_ISOCHRONOUS                                 0x01

/**
 * @brief Defines Endpoint type Interrupt
 */
#define EP_TYPE_INTERRUPT                                   0x03

/**
 * @brief Defines Endpoint type Control
 */
#define EP_TYPE_CONTROL                                     0x00

/**
 * @brief Defines Endpoint Banking double
 */
#define ENDPOINT_BANK_DOUBLE                                0x01

/**
 * @brief Defines Endpoint Banking single
 */
#define ENDPOINT_BANK_SINGLE                                0x00

/**
 * @brief Request data direction mask, indicating that the request data will flow from device to host
 */
#define CONTROL_REQ_DIR_DEVICETOHOST        (1 << 7)


/*******************************************************************************
**                       ENUMERATIONS                                         **
*******************************************************************************/

/**
 *@brief Enum that indicates different USB device conrol request
 */
enum USB_Control_Req_t
{
  REQ_TYPE_GetStatus           = 0, /**< Implemented in the library for device, endpoint and interface
                                *   recipients. Passed to the user application for other recipients
                                *   via the \ref EVENT_USB_Device_ControlRequest() event when received in
                                *   device mode. */
  REQ_TYPE_ClearFeature        = 1, /**< Implemented in the library for device, endpoint and interface
                                *   recipients. Passed to the user application for other recipients
                                *   via the \ref EVENT_USB_Device_ControlRequest() event when received in
                                *   device mode. */
  REQ_TYPE_SetFeature          = 3, /**< Implemented in the library for device, endpoint and interface
                                *   recipients. Passed to the user application for other recipients
                                *   via the \ref EVENT_USB_Device_ControlRequest() event when received in
                                *   device mode. */
  REQ_TYPE_SetAddress          = 5, /**< Implemented in the library for the device recipient. Passed
                                *   to the user application for other recipients via the
                                *   \ref EVENT_USB_Device_ControlRequest() event when received in
                                *   device mode. */
  REQ_TYPE_GetDescriptor       = 6, /**< Implemented in the library for device and interface recipients. Passed to the
                                *   user application for other recipients via the
                                *   \ref EVENT_USB_Device_ControlRequest() event when received in
                                *   device mode. */
  REQ_TYPE_SetDescriptor       = 7, /**< Not implemented in the library, passed to the user application
                                *   via the \ref EVENT_USB_Device_ControlRequest() event when received in
                                *   device mode. */
  REQ_TYPE_GetConfiguration    = 8, /**< Implemented in the library for the device recipient. Passed
                                *   to the user application for other recipients via the
                                *   \ref EVENT_USB_Device_ControlRequest() event when received in
                                *   device mode. */
  REQ_TYPE_SetConfiguration    = 9, /**< Implemented in the library for the device recipient. Passed
                                *   to the user application for other recipients via the
                                *   \ref EVENT_USB_Device_ControlRequest() event when received in
                                *   device mode. */
  REQ_TYPE_GetInterface        = 10, /**< Not implemented in the library, passed to the user application
                                *   via the \ref EVENT_USB_Device_ControlRequest() event when received in
                                *   device mode. */
  REQ_TYPE_SetInterface        = 11, /**< Not implemented in the library, passed to the user application
                                *   via the \ref EVENT_USB_Device_ControlRequest() event when received in
                                *   device mode. */
  REQ_TYPE_SynchFrame          = 12, /**< Not implemented in the library, passed to the user application
                                *   via the \ref EVENT_USB_Device_ControlRequest() event when received in
                                *   device mode. */
};


/**
 * @brief Defines RW stream error codes
 */
enum Endpoint_Stream_RW_ErrorCodes_t
{
  ENDPOINT_RWSTREAM_NoError            = 0, /**< Command completed successfully, no error. */
  ENDPOINT_RWSTREAM_EndpointStalled    = 1, /**< The endpoint was stalled during the stream
                                             *   transfer by the host or device.
                                             */
  ENDPOINT_RWSTREAM_DeviceDisconnected = 2, /**< Device was disconnected from the host during
                                             *   the transfer.
                                             */
  ENDPOINT_RWSTREAM_BusSuspended       = 3, /**< The USB bus has been suspended by the host and
                                             *   no USB endpoint traffic can occur until the bus
                                             *   has resumed.
                                             */
  ENDPOINT_RWSTREAM_Timeout            = 4, /**< The host failed to accept or send the next packet
                                             *   within the software timeout period set by the
                                             *   \ref USB_STREAM_TIMEOUT_MS macro.
                                             */
  ENDPOINT_RWSTREAM_IncompleteTransfer = 5, /**< Indicates that the endpoint bank became full or empty before
                                             *   the complete contents of the current stream could be
                                             *   transferred. The endpoint stream function should be called
                                             *   again to process the next chunk of data in the transfer.
                                             */
};

/**
 * @brief Defines control stream error codes
 */
enum Endpoint_ControlStream_RW_ErrorCodes_t
{
  ENDPOINT_RWCSTREAM_NoError            = 0, /**< Command completed successfully, no error. */
  ENDPOINT_RWCSTREAM_HostAborted        = 1, /**< The aborted the transfer prematurely. */
  ENDPOINT_RWCSTREAM_DeviceDisconnected = 2, /**< Device was disconnected from the host during
                                              *   the transfer.
                                              */
  ENDPOINT_RWCSTREAM_BusSuspended       = 3, /**< The USB bus has been suspended by the host and
                                              *   no USB endpoint traffic can occur until the bus
                                              *   has resumed.
                                              */
};

/**
 * @brief Enum for the possible error return codes of the \ref Endpoint_WaitUntilReady() function
 */
enum Endpoint_WaitUntilReady_ErrorCodes_t
{
  ENDPOINT_READYWAIT_NoError                 = 0, /**< Endpoint is ready for next packet, no error. */
  ENDPOINT_READYWAIT_EndpointStalled         = 1, /**< The endpoint was stalled during the stream
                                                   *   transfer by the host or device.
                                                   */
  ENDPOINT_READYWAIT_DeviceDisconnected      = 2, /**< Device was disconnected from the host while
                                                   *   waiting for the endpoint to become ready.
                                                   */
  ENDPOINT_READYWAIT_BusSuspended            = 3, /**< The USB bus has been suspended by the host and
                                                   *   no USB endpoint traffic can occur until the bus
                                                   *   has resumed.
                                                   */
  ENDPOINT_READYWAIT_Timeout                 = 4, /**< The host failed to accept or send the next packet
                                                   *   within the software timeout period set by the
                                                   *   \ref USB_STREAM_TIMEOUT_MS macro.
                                                   */
};


/*******************************************************************************
**                      STRUCTURES                                            **
*******************************************************************************/
/**
 *@brief USB Setup packet
 */
typedef struct USB_Setup_Packet
{
  uint8_t  bmRequestType; /**< Type of the request. */
  uint8_t  bRequest; /**< Request command code. */
  uint16_t wValue; /**< wValue parameter of the request. */
  uint16_t wIndex; /**< wIndex parameter of the request. */
  uint16_t wLength; /**< Length of the data to transfer in bytes. */
}ATTR_PACKED USB_Setup_Packet_t;


/**
 * @brief USB Device call back functions
 */
typedef struct USBCORE001_DeviceCallBack
{
  void (*Connect)(void);      /**Connect Event*/
  void (*Disconnect)(void);   /**Disconnect Event*/
  void (*ConfigChanged)();    /**Configuration changed Event*/
  void (*ControlRequest)(void*);    /**Control Request Event*/
  void (*AddressSet)();       /**Set Address Event*/
  int16_t (*GetDescriptor)       /**GetDescriptor Event*/
    (const uint16_t wValue, const uint8_t wIndex, const void** const DescriptorAddress);
}USBCORE001_DeviceCallBack;

/**
 * @}
 */

/**
 * @ingroup USBCORE001_apidoc
 * @{
 */
/*******************************************************************************
**                     FUNCTION PROTOTYPES                                    **
*******************************************************************************/
/**
 * @brief This function initializes the synopsys device controller driver.
 * @param[in] OtgDevPtr Pointer to USBCORE001_OtgDevice structure.
 * @return int 0: if Success
 * @code
 * #include "DAVE3.h"
 * #include "../../src/USBLD001/type_CM.h"
 * #ifdef USE_IFX_DEV
 * #include "MouseHost.h"
 * #include "../../inc/USBCORE001/usbcore001.h"
 * #include "../../inc/USBCORE001/usbcore001_host.h"
 * #include "GUI.h"
 * #endif
 *
 *
 * USBCORE001_OtgDevice *GUIMS001_OtgDevPtr;
 *
 * USBCORE001_HostConnectEventsCallBack  GUIMS001_ConnectCb;
 *
 *
 * int main (void)
 * {
 *
 *  USBCORE001_Initialize(&GUIMS001_OtgDevPtr);
 *
 *  if(NULL != GUIMS001_OtgDevPtr)
 *  {
 *    USB_Host_EventRegister();
 *    USBCORE001_ConnectEventRegister(&GUIMS001_ConnectCb);
 *    USBCORE001_HostStart(GUIMS001_OtgDevPtr);
 *  }
 *
 * }
 * @endcode
 *
 */
int USBCore001_DeviceStart(USBCORE001_OtgDevice *OtgDevPtr, USBCORE001_DeviceCallBack *USBDEventsPtr);

/**
 * @brief This function Checks whether a SETUP packet was received or not
 * @return true if setup packet available.
 */
uint8_t Endpoint_IsSETUPReceived(void);

/**
 * @brief This function Clears the SETUP packet.
 */
void Endpoint_ClearSETUP(void);

/**
 * @brief This function Clears the OUT endpoint.
 */
void Endpoint_ClearOUT(void);

/**
 * @brief This function Clears the IN endpoint.
 */
void Endpoint_ClearIN(void);

/**
 * @brief This function sends zlp on selected endpoint
 */
void Endpoint_SendZLP(void);

/**
 * @brief This function Writes the given number of bytes to the control endpoint from the given buffer
 * in little endian sending full packets to the host as needed. The host OUT acknowledgment
 * is not automatically cleared in both failure and success states; The user is responsible
 * manually clearing the setup OUT to finalize the transfer via the Endpoint_ClearOUT macro.
 * @param[in] Buffer        Data bytes to send
 * @param[in] Length        Length of data

 * @return uint8_t A value from the Endpoint_ControlStream_RW_ErrorCodes_t enum
 */
uint8_t Endpoint_Write_Control_Stream_LE(const void* const Buffer,uint16_t Length);

/**
 * @brief This function Writes the given number of bytes to the control endpoint from the given buffer
 * in big endian sending full packets to the host as needed. The host OUT acknowledgment
 * is not automatically cleared in both failure and success states; The user is responsible
 * manually clearing the setup OUT to finalize the transfer via the Endpoint_ClearOUT macro.
 * @param[in] Buffer        Data bytes to send
 * @param[in] Length        Length of data
 * @return uint8_t
 */
uint8_t Endpoint_Write_Control_Stream_BE(const void* const Buffer,uint16_t Length);

/**
 * @brief This function Reads the given number of bytes from the control endpoint to the given buffer
 * in big endian sending full packets to the host as needed. The host OUT acknowledgment
 * is not automatically cleared in both failure and success states; The user is responsible
 * manually clearing the setup OUT to finalize the transfer via the Endpoint_ClearOUT macro
 * @param[in] Buffer        Data bytes to send
 * @param[in] Length        Length of data
 * @return uint8_t
 */
uint8_t Endpoint_Read_Control_Stream_BE(void* const Buffer,uint16_t Length);

/**
 * @brief Reads the given number of bytes from the control endpoint to the given buffer
 * in little endian sending full packets to the host as needed. The host OUT acknowledgment
 * is not automatically cleared in both failure and success states; The user is responsible
 * manually clearing the setup OUT to finalize the transfer via the Endpoint_ClearOUT macro
 * @param[in] Buffer        Data bytes to send
 * @param[in] Length        Length of data
 * @return uint8_t
 */
uint8_t Endpoint_Read_Control_Stream_LE(void* const Buffer,uint16_t Length);

/**
 * @brief This function Completes the status of a control transfer on a CONTROL type endpoint automatically
 * with respect to the data direction. This is a convenience function which can be used to
 * simplify user control request handling.
 */
void Endpoint_ClearStatusStage(void);

/**
 * @brief This function Selects the current endpoint.
 * @param [IN] EndpointNumber  Endpoint to be selected
 * @param [IN] Direction     Direction of endpoint.
 */
void Endpoint_SelectEndpoint(const uint8_t EndpointNumber, const uint8_t Direction);

/**
 * @brief This function Returns the number of bytes available in the selected endpoint.
 */
uint16_t Endpoint_BytesInEndpoint(void);

/**
 * @brief This function Returns the current endpoint selected.
 */
void Endpoint_GetCurrentEndpoint(uint8_t *EndpointNumber, uint8_t *Direction);

/**
 * @brief This function Determines if the selected OUT endpoint has received new packet.
 * @return returns true if an OUT was received
 */
uint8_t Endpoint_IsOUTReceived(void);


/**
 * @brief This function Configures the specified endpoint
 * @param [IN]    Number     Endpoint number
 * @param [IN]    Type       Endpoint Type
 * @param [IN]    Direction  Endpoint Direction
 * @param [IN]    Size       Size of the endpoints bank
 * @return uint8_t true if successful
 */
uint8_t Endpoint_ConfigureEndpoint(const uint8_t Number,
  const uint8_t Type,
  const uint8_t Direction,
  const uint16_t Size,
  const uint8_t Banks);

/*
 * @brief This function Writes the given number of bytes to the current endpoint.
 * @param [@ref IN]    Buffer    Data Buffer
 * @param [@ref IN]    Length    Length of the data buffer
 * @param [@ref OUT]   BytesProcessed   Number of actual processed bytes
 * @return uint8_t
 */
uint8_t Endpoint_Write_Stream_LE(const void* Buffer, uint16_t Length, uint16_t*const BytesProcessed);

/*
 * @brief This function Writes the given number of bytes to the current endpoint.
 * @param [@ref IN]    Buffer    Data Buffer
 * @param [@ref IN]    Length    Length of the data buffer
 * @param [@ref OUT]   BytesProcessed   Number of actual processed bytes
 * @return uint8_t
 */
uint8_t Endpoint_Write_Stream_BE(const void* Buffer, uint16_t Length, uint16_t*const BytesProcessed);

/**
 * @brief This function Reads the given number of bytes from the endpoint from the given buffer in big endian,
 * discarding fully read packets from the host as needed. The last packet is not automatically
 * discarded once the remaining bytes has been read; the user is responsible for manually
 * discarding the last packet from the host via the \ref Endpoint_ClearOUT() macro.
 * @param     [@ref in] Buffer         Data bytes to send
 * @param     [@ref in] Length         Length of data
 * @param     [@ref in] BytesProcessed Pointer to a location where the total number of bytes processed in the current
       *                              transaction should be updated, \c NULL if the entire stream should be read at once
 * @return uint8_t
 */
uint8_t Endpoint_Read_Stream_BE(void* const Buffer, uint16_t Length, uint16_t*const BytesProcessed);

/**
 * @brief This function Reads the given number of bytes from the endpoint from the given buffer in big endian,
 * discarding fully read packets from the host as needed. The last packet is not automatically
 * discarded once the remaining bytes has been read; the user is responsible for manually
 * discarding the last packet from the host via the \ref Endpoint_ClearOUT() macro.
 * @param     [@ref in] Buffer         Data bytes to send
 * @param     [@ref in] Length         Length of data
 * @param     [@ref in] BytesProcessed Pointer to a location where the total number of bytes processed in the current
 *                              transaction should be updated, \c NULL if the entire stream should be read at once
 * @return uint8_t
 *   DataBuffer : Byte received
 */
uint8_t Endpoint_Read_Stream_LE(void* const Buffer, uint16_t Length, uint16_t*const BytesProcessed);

/**
 * @brief This function Determines if the currently selected endpoint may be read from or written to.
 *
 * @return uint8_t
 */
uint8_t Endpoint_IsReadWriteAllowed(void);

/**
 * @brief This function Spin-loops until the currently selected non control endpoint is ready
 * for the next packet of data
 */
uint8_t Endpoint_WaitUntilReady(void);

/**
 * @brief This function Writes the specified byte to the current endpoint.
 * @param[in]   Data Data to send to host.
 *
 */
void Endpoint_Write_8(const uint8_t Data);

/**
 * @brief This function Reads one byte from the current endpoint.
 * @return uint8_t
 *   Byte : Next byte in the current endpoint
 */
uint8_t Endpoint_Read_8(void);


/**
 * @brief This function is Device task routine. To avoid deadlocks caused by ISR going directly to
 * the application, this routine makes the function asynchronous. ISRs (except for
 * GET_DESCRIPTOR and SET_CONFIGURATION, SET_INTERFACE control requests, just cache
 * the information, and this routine sends it to the application. Any application
 * thats using the device stack should be also making use of this call frequently
 * to ensure that no notifications are missed.
 */
void USB_Device_ProcessControlRequest(void);

/**
 * @}
 */

/**
 * @brief This function is used to set or clear stall on a selected end point.
 */
int32_t USBCORE001_EPHalt(uint8_t set_stall);

#ifdef __cplusplus
}
#endif
#endif /*__USB_CORE001_DEVICE_H_*/
/*CODE_BLOCK_END*/
