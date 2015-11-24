/* CODE_BLOCK_BEGIN[USBCORE001_host.h]*/
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
 * @file usbcore001_host.h
 *
 * @brief  USB host header file.
 *
 */

#ifndef  USBCORE001_HOST_H_
#define  USBCORE001_HOST_H_
#ifdef __cplusplus
extern "C"{
#endif

/*******************************************************************************
**                      Include Files                                         **
*******************************************************************************/
#include "usbcore001.h"


/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/
/**
 * @ingroup USBCORE001_publicparam
 * @{
 */
 
/**
 * @brief     Specify the device address to set.
 */
#define USB_HOST_DEVICEADDRESS  1

/**
 * @brief     Specify total number of pipes.
 */
#define PIPE_TOTAL_PIPES  7

/**
 * @brief     Specify the in token.
 */
#define PIPE_TOKEN_IN  1

/**
 * @brief     Specify the out token.
 */
#define PIPE_TOKEN_OUT  2

/**
 * @brief  Mask for a CONTROL type endpoint or pipe.
 */
#define EP_TYPE_CONTROL                    0x00

/** 
 * @brief  Mask for an ISOCHRONOUS type endpoint or pipe.
 */
#define EP_TYPE_ISOCHRONOUS                0x01

/** 
 * @brief  Mask for a BULK type endpoint or pipe.  
 */
#define EP_TYPE_BULK                       0x02

/** 
 * @brief  Mask for an INTERRUPT type endpoint or pipe.
 */
#define EP_TYPE_INTERRUPT                  0x03


/** 
 * @brief  Mask for the bank mode selection for the \ref Pipe_ConfigurePipe() 
 *        macro. This indicates that the pipe should have one single bank,
 *        which requires less USB FIFO memory but results in slower transfers as
 *        only one USB device can access the pipe's bank at the one time.
 */
#define PIPE_BANK_SINGLE                (0 << 0)

/** 
 * @brief  Mask for the bank mode selection for the \ref Pipe_ConfigurePipe() 
 *        macro. This indicates that the pipe should have two banks, which 
 *        requires more USB FIFO memory but results in faster transfers as one
 *        USB device (the AVR or the attached device) can access one bank while
 *        the other accesses the second
 *        bank.
 */
#define PIPE_BANK_DOUBLE                (1 << 0)


/** 
 * @brief  Pipe address for the default control pipe, which always resides in 
 *        address 0. This is defined for convenience to give more readable code
 *        when used with the pipe macros.
 */
#define PIPE_CONTROLPIPE                0

/** 
 * @brief  Pipe number mask, for masking against pipe addresses to retrieve the
 *        pipe's numerical address in the device.
 */
#define PIPE_PIPENUM_MASK               0x07

/** 
 * @brief  Endpoint number mask, for masking against endpoint addresses to 
 *        retrieve the endpoint's numerical address in the attached device.
 */
#define PIPE_EPNUM_MASK                 0x0F

/** 
 * @brief  Endpoint direction mask, for masking against endpoint addresses to
 *        retrieve the endpoint's direction for comparing with 
 *        the \c ENDPOINT_DESCRIPTOR_DIR_* masks.
 */
#define PIPE_EPDIR_MASK                 0x80


/** 
 * @brief  Maximum pipes for communication
 *
 */
#define USBCORE001_HOST_MAX_PIPE 4

/**
 * @brief  Denotes one byte
 *
 */
#define USBCORE001_HOST_ONE_BYTE 4

/**
 * @brief  Denotes max transfer size of bulk endpoint
 *         in full speed.
 */
#define USBCORE001_HOST_BULK_XFER 64

/**
 * @brief  Host status macro compatible to LUFA stack
 *
 */
#define USBCORE001_HOST_STATE_Addressed                    11

/**
 * @brief  Host status macro compatible to LUFA stack
 *
 */
#define  USBCORE001_HOST_STATE_WaitForDevice 1


/** 
 * @brief  Dummy macro needed by LUFA
 */
#define le16_to_cpu(x)           x

/** 
 * @brief  Dummy macro needed by LUFA
 */
#define le32_to_cpu(x)           x



/*******************************************************************************
**                       ENUMERATIONS                                         **
*******************************************************************************/

/**
 * @brief  Enum that indicates status of pipe transaction 
 */
enum USB_Host_WaitMSErrorCodes_t
{
  HOST_WAITERROR_Successful       = 0,
  HOST_WAITERROR_DeviceDisconnect = 1,
  HOST_WAITERROR_PipeError        = 2,
  HOST_WAITERROR_SetupStalled     = 3,
};

/**
 * @brief  Enum for the possible error return codes of the 
 *        \ref Pipe_WaitUntilReady() function.
 */
enum Pipe_WaitUntilReady_ErrorCodes_t
{
  /**< Pipe ready for next packet, no error. */
  PIPE_READYWAIT_NoError                 = 0, 
  /**< The device stalled the pipe while waiting. */
  PIPE_READYWAIT_PipeStalled             = 1,  
  /**< Device was disconnected from the host while waiting. */
  PIPE_READYWAIT_DeviceDisconnected      = 2,  
  /**< The device failed to accept or send the next packet
   *   within the software timeout period set by the
   *   USB_STREAM_TIMEOUT_MS macro.
   */  
  PIPE_READYWAIT_Timeout                 = 3, 
};

/**
 * @brief  Enum for the possible error return codes of 
 *         the Pipe_*_Stream_* functions.
 */
enum Pipe_Stream_RW_ErrorCodes_t
{
  /**< Command completed successfully, no error. */
  PIPE_RWSTREAM_NoError            = 0, 
  /**< The device stalled the pipe during the transfer. */
  PIPE_RWSTREAM_PipeStalled        = 1, 
  /**< Device was disconnected from the host during
   *   the transfer.
   */    
  PIPE_RWSTREAM_DeviceDisconnected = 2, 
  /**< The device failed to accept or send the next packet
   *   within the software timeout period set by the
   *   USB_STREAM_TIMEOUT_MS macro.
   */
  PIPE_RWSTREAM_Timeout            = 3,
  /**< Indicates that the pipe bank became full/empty before the
   *   complete contents of the stream could be transferred.
   */
  PIPE_RWSTREAM_IncompleteTransfer = 4, 
};


/** 
 * @brief Enum for the USB_Host_SendControlRequest() return code,
 *        indicating the reason for the error
 *        if the transfer of the request is unsuccessful.
 */
enum USB_Host_SendControlErrorCodes_t
{
  /**< No error occurred in the request transfer. */
  HOST_SENDCONTROL_Successful         = 0,
  /**< The attached device was disconnected during the
   *   request transfer.
   */
  HOST_SENDCONTROL_DeviceDisconnected = 1,
  /**< An error occurred in the pipe while sending the request. */
  HOST_SENDCONTROL_PipeError          = 2,
  /**< The attached device stalled the request, usually
   *   indicating that the request is unsupported on the device.
   */
  HOST_SENDCONTROL_SetupStalled       = 3, 
  /**< The request or data transfer timed out. */
  HOST_SENDCONTROL_SoftwareTimeOut    = 4, 
};

/*******************************************************************************
**                       FUNCTION POINTERS                                    **
*******************************************************************************/
/**
 * @brief Pointer function for USB device connect event.
 */
typedef  void (*USBCORE001_HostConnectPtr)(void);    /**Connect Event*/

/**
 * @brief Pointer function for USB device disconnect event.
 */
typedef  void (*USBCORE001_HostDisconnectPtr)(void);    /**Disconnect Event*/

/**
 * @brief Pointer function to set the control request.
 */
typedef void (*USBCORE001_HostCtrlRequestSetCbPtr) (void *);

/**
 * @brief Pointer function to get the control request.
 */
typedef void (*USBCORE001_HostCtrlRequestGetCbPtr) (void *);

/**
 * @brief Pointer function to set the USB host status.
 */
typedef void (*USBCORE001_HostStatSetCbPtr) (uint8_t *);

/**
 * @brief Pointer function to get the USB host status.
 */
typedef void (*USBCORE001_HostStatGetCbPtr) (uint8_t *);


/*******************************************************************************
**                      STRUCTURES                                            **
*******************************************************************************/
/**
 *@brief USB Host callback functions
 */
typedef struct USBCORE001_HostEvents
{
  /** USB Host control request set call back*/
  USBCORE001_HostCtrlRequestSetCbPtr USBCORE001_HostCtrlRequestSet;
  /** USB Host control request get call back*/
  USBCORE001_HostCtrlRequestGetCbPtr USBCORE001_HostCtrlRequestGet;
  /** USB Host host status set call back*/
  USBCORE001_HostStatSetCbPtr USBCORE001_HostStatSet;
  /** USB Host host status get call back*/
  USBCORE001_HostStatGetCbPtr USBCORE001_HostStatGet;
}USBCORE001_HostEvents;


/**
 *@brief USB Connect-Disconnect callback functions
 */
typedef struct USBCORE001_HostConnectEventsCallBack
{
  /** USB device connect call back*/
  USBCORE001_HostConnectPtr USBCORE001_HostConnect;
  /** USB device disconnect call back*/
  USBCORE001_HostDisconnectPtr USBCORE001_HostDisconnect; 
}USBCORE001_HostConnectEventsCallBack;


/**
 *@brief USB conrol request header
 */
typedef struct
{
  /** Type of the request. */
  uint8_t  bmRequestType;
  /** Request command code. */ 
  uint8_t  bRequest
  /** wValue parameter of the request. */; 
  uint16_t wValue; 
  /** wIndex parameter of the request. */
  uint16_t wIndex; 
  /** Length of the data to transfer in bytes. */
  uint16_t wLength; 
} USBCORE001_HostRequestHeader;

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
 * @brief This function initializes the synopsys host controller driver.
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
int USBCORE001_HostStart(USBCORE001_OtgDevice *OtgDevPtr);

/**
 * @brief This function registers the call back for Host events
 * @param[in]   USBH_Events Pointer to USBCORE001_HostEvents structure.
 * @return void
 */
void USBCORE001_HostCallBackRegister(USBCORE001_HostEvents *USBH_Events);

/**
 * @brief This function registers the call back for connect-disconnect events.
 * @param[in]   USB_ConEvent Pointer to USBCORE001_HostConnectEventsCallBack
 *              structure.
 * @return void
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
void USBCORE001_ConnectEventRegister
                          (USBCORE001_HostConnectEventsCallBack *USB_ConEvent);


/**
 * @brief This function resets the USB host port.
 * @return void
 */
void Reset_Host(void);

/**
 * @brief This function gets the status of USB host port.
 * @return uint8_t<BR>
 * HostStat: Status of USB host port.<BR>
 */
uint8_t Get_HostStat(void);


/**
 * @brief This function selects through which communication will happen.
 *        This is the LUFA compatible API.
 * @param[in]  PipeNumber Numer of pipe through which communication will happen.
 * @return 
 */
void Pipe_SelectPipe(const uint8_t PipeNumber);


/**
 * @brief This function sends control request to the selected pipe.
 *        This is the LUFA compatible API.
 * @param[in]   BufferPtr Pointer to data buffer.
 * @return Status of the transfer.
 */
uint8_t USB_Host_SendControlRequest(void* const BufferPtr);


/**
 * @brief This function configures pipes as needed by LUFA.
 *        This is the LUFA compatible API.
 * @param[in]   Number Numer of pipe to be configured.
 * @param[in]   Type      Type of the request for which pipe is being 
 *                        configured.
 * @param[in]   Token      Dummy field
 * @param[in]   EndpointNumber  Device endpoint numer to which connection
 *              is established.
 * @param[in]   Size      Size of the data that pipe will carry.
 * @param[in]   Banks      Dummy field.
 * @return 
 */
bool Pipe_ConfigurePipe(const uint8_t Number,
                        const uint8_t Type,
                        const uint8_t Token,
                        const uint8_t EndpointNumber,
                        const uint16_t Size,
                        const uint8_t Banks);

/**
 * @brief This function will prepare the USB request and will queue it
 *        to the synopsys driver.
 *        This is the LUFA compatible API.
 * @param[in]   Buffer      Pointer to data buffer     
 * @param[in]   Length      Length of data to be transmitted.
 * @param[in]   BytesProcessed  Dummy filed
 * @return 
 */
uint8_t Pipe_Write_Stream_LE(const void* Buffer,
                             uint16_t Length,
                             uint16_t* const BytesProcessed);

/**
 * @brief This function will prepare the USB request and will queue it 
 *        to the synopsys driver.
 *        This is the LUFA compatible API.
 * @param[in]   Buffer      Pointer to data buffer     
 * @param[in]   Length      Length of data to be received.
 * @param[in]   BytesProcessed  Dummy filed
 * @return 
 */
uint8_t Pipe_Read_Stream_LE(void* Buffer,
                            uint16_t Length,
                            uint16_t* const BytesProcessed);

/**
 * @brief This function will prepare the USB request and will queue it 
 *        to the synopsys driver.
 *        This is the LUFA compatible API.
 * @return int16_t
 *   DataBuffer : Byte received
 */
int16_t Pipe_Read_8(void);

/**
 * @brief This function will prepare the USB request and will queue it 
 *        to the synopsys driver.
 *        This is the LUFA compatible API.
 * @param[in] Data Data to send to pipe.
 * @return void 
 */
void Pipe_Write_8(uint8_t Data);


/**
 * @brief Dummy function to make it compatible with LUFA stack.
 * @return void
 */
void Pipe_Unfreeze(void);

/**
 * @brief Dummy function to make it compatible with LUFA stack.
 * @return void
 */
void Pipe_Freeze(void);


/**
 * @brief Dummy function to make it compatible with LUFA stack.
 * @return void
 */
void Pipe_ClearIN(void);


/**
 * @brief Dummy function to make it compatible with LUFA stack.
 * @return void
 */
void Pipe_ClearOUT(void);


/**
 * @brief This function sets the periodicity of interrupt transfer.
 * @param[in]   Milliseconds periodicity of interrupt request.
 * @return void
 */
void Pipe_SetInterruptPeriod(const uint8_t Milliseconds);


/**
 * @brief Dummy function to make it compatible with LUFA stack.
 * @param[in]   EndpointAddress Address of Endpoint
 * @return bool
 */
bool Pipe_IsEndpointBound(const uint8_t EndpointAddress);


/**
 * @brief Dummy function to make it compatible with LUFA stack.
 * @return uint16_t<BR>
 *       0: Dummy Implementation<BR>
 */
uint16_t Pipe_BytesInPipe(void);


/**
 * @brief Dummy function to make it compatible with LUFA stack.
 * @return bool
 */
bool Pipe_IsINReceived(void);


/**
 * @brief Dummy function to make it compatible with LUFA stack.
 * @return uint8_t
 *      0 : Dummy Implementation
 */
uint8_t Pipe_WaitUntilReady(void);


/**
 * @brief Dummy function to make it compatible with LUFA stack.
 * @return uint16_t
 *      0 : Dummy Implementation
 */
uint16_t USB_Host_GetFrameNumber(void);


/**
 * @brief Dummy function to make it compatible with LUFA stack.
 * @return bool
 *      0 : Dummy Implementation
 */
bool Pipe_IsStalled(void);


/**
 * @brief Dummy function to make it compatible with LUFA stack.
 * @return bool
 *      0 : Dummy Implementation
 */
bool Pipe_IsOUTReady(void);


/**
 * @brief Dummy function to make it compatible with LUFA stack.
 * @return int
 *      0 : Dummy Implementation
 */
bool Pipe_IsReadWriteAllowed(void);

/**
 * @brief This function swaps data endianness.
 * @param[in]   Data Pointer to data
 * @param[in]  Length length of data
 * @return void
 */
void SwapEndian_n(void* const Data, uint8_t Length);

/**
 * @}
 */
#ifdef __cplusplus
}
#endif
#endif /*USBCORE001_HOST_H_*/
/*CODE_BLOCK_END*/