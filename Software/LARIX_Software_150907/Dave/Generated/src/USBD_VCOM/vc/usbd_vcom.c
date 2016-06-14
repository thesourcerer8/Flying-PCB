/* CODE_BLOCK_BEGIN[usbd_vcom.c] */
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

  The author disclaims all warranties with regard to this
  software, including all implied warranties of merchantability
  and fitness.  In no event shall the author be liable for any
  special, indirect or consequential damages or any damages
  whatsoever resulting from loss of use, data or profits, whether
  in an action of contract, negligence or other tortious action,
  arising out of or in connection with the use or performance of
  this software.
*/

/*******************************************************************************
 Copyright (c) 2014, Infineon Technologies AG                                 **
 All rights reserved.                                                         **
                                                                              **
 Redistribution and use in source and binary forms, with or without           **
 modification,are permitted provided that the following conditions are met:   **
                                                                              **
 *Redistributions of source code must retain the above copyright notice,      **
 this list of conditions and the following disclaimer.                        **
 *Redistributions in binary form must reproduce the above copyright notice,   **
 this list of conditions and the following disclaimer in the documentation    **
 and/or other materials provided with the distribution.                       **
 *Neither the name of the copyright holders nor the names of its contributors **
 may be used to endorse or promote products derived from this software without**
 specific prior written permission.                                           **
                                                                              **
 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"  **
 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **
 IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **
 ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **
 LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **
 CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **
 SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **
 INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **
 CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **
 ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **
 POSSIBILITY OF SUCH DAMAGE.                                                  **
                                                                              **
 To improve the quality of the software, users are encouraged to share        **
 modifications, enhancements or bug fixes with Infineon Technologies AG       **
 dave@infineon.com).                                                          **
                                                                              **
********************************************************************************
**                                                                            **
**                                                                            **
** PLATFORM : Infineon XMC4000 Series                                         **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR   : App Developer                                                   **
**                                                                            **
** MAY BE CHANGED BY USER [yes/no]: Yes                                       **
**                                                                            **
** MODIFICATION DATE : Feb 17, 2014                                           **
**                                                                            **
*******************************************************************************/
/*******************************************************************************
**                      Author(s) Identity                                    **
********************************************************************************
**                                                                            **
** Initials     Name                                                          **
** ---------------------------------------------------------------------------**
** NSND       App Developer                                                   **
*******************************************************************************/
/**
 * @file   usbd_vcom.c
 *
 * @brief  USB virtual COM port driver wrapper APIs
 */


#include "../../../inc/USBD_VCOM/usbd_vcom.h"

/*USB event call backs for USBD_VCOM app*/
USBD_event_CB_t USBD_VCOM_evnt_CB = {
		EVENT_USB_Device_Connect,
		EVENT_USB_Device_Disconnect,
		EVENT_USB_Device_ConfigurationChanged,
		EVENT_USB_Device_ControlRequest,
		EVENT_USB_Device_SetAddress,
		CALLBACK_USB_GetDescriptor,
		EVENT_USB_Device_WakeUp,
		EVENT_USB_Device_Suspend,
		0/*No need for start of frame CB now*/
};


/** CDC Class driver interface configuration and state information. This
 *  structure is passed to all CDC Class driver functions, so that multiple
 *  instances of the same class within a device can be differentiated from 
 *  one another.
 */
USB_ClassInfo_CDC_Device_t USBD_VCOM_CDCInterface =
  {
    .Config = {
        .ControlInterfaceNumber = 0,

        .DataINEndpoint = { ENDPOINT_DIR_IN | CDC_TX_EPNUM,
        CDC_TXRX_EPSIZE,
        EP_TYPE_BULK,
        0},

        .DataOUTEndpoint = { CDC_RX_EPNUM,
        CDC_TXRX_EPSIZE,
        EP_TYPE_BULK,
        0},

        .NotificationEndpoint = {
        ENDPOINT_DIR_IN | CDC_NOTIFICATION_EPNUM,
        CDC_NOTIFICATION_EPSIZE,
        EP_TYPE_INTERRUPT,
        0
        }
      },
  };

/*Static allocation of end point buffers*/
uint8_t notification_ep_buf[USB_FS_MAXPKT_SIZE];
uint8_t tx_ep_buf[USB_FS_MAXPKT_SIZE];
uint8_t rx_ep_buf[USB_FS_MAXPKT_SIZE];

/*******************************************************************************
**                     Public Function Definitions                            **
*******************************************************************************/

/*The function initializes the USB core layer and register call backs. */
status_t USBD_VCOM_Init()
{
	status_t status = DAVEApp_SUCCESS;
	if(USBD_Initialize(&USBD_VCOM_evnt_CB) == DAVEApp_SUCCESS)
	{
		USBD_Connect();
	}
	else
	{
		status = USBD_VCOM_ERROR;
	}
	return status;
}

/*The function check if the enumeration has been done already. */
uint8_t USBD_VCOM_IsEnumDone(void)
{
	return USBD_IsEnumDone();
}

/* This function sends a byte to the USB host. */
status_t USBD_VCOM_SendByte(const uint8_t DataByte)
{
  status_t Status = (uint32_t)DAVEApp_SUCCESS;

  /* Send a byte to the host. */
  if(CDC_Device_SendByte(&USBD_VCOM_CDCInterface, DataByte)
      != ENDPOINT_RWSTREAM_NoError)
  {
    Status = USBD_VCOM_USBCDC_ERROR;
  }
  if(CDC_Device_Flush(&USBD_VCOM_CDCInterface) != ENDPOINT_READYWAIT_NoError)
  {
    Status = USBD_VCOM_USBCDC_ERROR;
  }

  return Status;
}

/* This function sends multiple bytes to the USB host. */
status_t USBD_VCOM_SendData(const char* const DataBuffer,
                            const uint16_t Length)
{
  status_t Status = (uint32_t)DAVEApp_SUCCESS;

  do{

    if(Length == 0)
    {
      Status = USBD_VCOM_USBCDC_ERROR;
      break;
    }

    /* Send data to USB host.*/
    if(CDC_Device_SendData(&USBD_VCOM_CDCInterface, (const char *)DataBuffer,
    				 Length) != ENDPOINT_RWSTREAM_NoError)
    {
      Status = USBD_VCOM_USBCDC_ERROR;
    }
    else if(CDC_Device_Flush(&USBD_VCOM_CDCInterface) !=
    											ENDPOINT_READYWAIT_NoError)
    {
      Status = USBD_VCOM_USBCDC_ERROR;
    }
  }while(0);

  return Status;
}

/* This function sends string data to the USB host. */
status_t USBD_VCOM_SendString(const char* const DataString)
{
  status_t Status = (uint32_t)DAVEApp_SUCCESS;

  do{
    /* Send string to the host */
    if(CDC_Device_SendString(&USBD_VCOM_CDCInterface, DataString)
        != ENDPOINT_RWSTREAM_NoError)
    {
      Status = USBD_VCOM_USBCDC_ERROR;
    }
    if(CDC_Device_Flush(&USBD_VCOM_CDCInterface) != ENDPOINT_READYWAIT_NoError)
    {
      Status = USBD_VCOM_USBCDC_ERROR;
    }
  }while(0);

  return Status;
}

/* This function receives a byte from the USB host.*/
status_t USBD_VCOM_ReceiveByte(int8_t* DataByte)
{
  status_t Status = (uint32_t)DAVEApp_SUCCESS;
  int16_t RxByte;

  /* Receive one byte of data */
  RxByte = CDC_Device_ReceiveByte(&USBD_VCOM_CDCInterface);

  if(RxByte != -1)
  {
    *DataByte = (int8_t)RxByte;
  }
  else
  {
    Status = USBD_VCOM_USBCDC_ERROR;
  }

  return Status;
}

/* This function receives number of bytes from the USB host.*/
status_t USBD_VCOM_ReceiveData(int8_t* DataBuffer, int16_t DataByte)
{
  status_t Status = (uint32_t)DAVEApp_SUCCESS;
  uint16_t BytesProcessed = 0;
	uint8_t ret = 0;
	
	if(DataByte > 0)
	{

		/* Fix for new read/write */
		Endpoint_SelectEndpoint(ENDPOINT_DIR_OUT | CDC_RX_EPNUM);
		while ((ret=Endpoint_Read_Stream_LE(DataBuffer, DataByte, &BytesProcessed))
						==ENDPOINT_RWSTREAM_IncompleteTransfer);
		if (ret!=ENDPOINT_RWSTREAM_NoError)
		Status = USBD_VCOM_USBCDC_ERROR;
	}
	else
	{
		Status = USBD_VCOM_USBCDC_ERROR;
	}

  return Status;
}

/* Gets the line encoding */
status_t USBD_VCOM_GetLineEncoding(CDC_LineEncoding_t* LineEncodingPtr)
{
  status_t Status = (uint32_t)DAVEApp_SUCCESS;

  if ((USB_DeviceState != DEVICE_STATE_Configured) ||
      !(USBD_VCOM_CDCInterface.State.LineEncoding.BaudRateBPS) ||
        (LineEncodingPtr == NULL))
  {
    Status = USBD_VCOM_USBCDC_ERROR;
  }
  else
  {
    memcpy(LineEncodingPtr, &USBD_VCOM_CDCInterface.State.LineEncoding,
                          sizeof(CDC_LineEncoding_t));
  }

  return Status;
}

/* This function checks number of bytes received from the USB host. */
uint16_t USBD_VCOM_BytesReceived(void)
{
  uint16_t Bytes = 0;

  /* Check if bytes are received from host */
  NVIC_DisableIRQ(USB0_0_IRQn);
  Bytes = CDC_Device_BytesReceived(&USBD_VCOM_CDCInterface);

  NVIC_EnableIRQ(USB0_0_IRQn);
  
  return Bytes;
}

/* Event handler for the USB Connection event. */
void EVENT_USB_Device_Connect(void)
{
  /*Update the state*/
  USB_DeviceState = DEVICE_STATE_Default;
}

/* Event handler for the USB Disconnection event. */
void EVENT_USB_Device_Disconnect(void)
{
  /*Update the state*/
  USB_DeviceState = DEVICE_STATE_Unattached;
}

/* Event handler for the USB Configuration Changed event. */
void EVENT_USB_Device_ConfigurationChanged(void)
{
	USBD_SetEndpointBuffer((CDC_IN_EP_MASK|CDC_NOTIFICATION_EPNUM),
							notification_ep_buf,USB_FS_MAXPKT_SIZE);
	USBD_SetEndpointBuffer((CDC_IN_EP_MASK|CDC_TX_EPNUM),
										tx_ep_buf,USB_FS_MAXPKT_SIZE);
	USBD_SetEndpointBuffer((CDC_OUT_EP_MASK|CDC_RX_EPNUM),
										rx_ep_buf,USB_FS_MAXPKT_SIZE);
	CDC_Device_ConfigureEndpoints(&USBD_VCOM_CDCInterface);

	device.IsConfigured = 1;
	USB_DeviceState = DEVICE_STATE_Configured;
}

/* Event handler for the USB Control Request reception event. */
void EVENT_USB_Device_ControlRequest()
{
  CDC_Device_ProcessControlRequest(&USBD_VCOM_CDCInterface);
}

/* Event handler for the USB Control Request reception event. */
void EVENT_USB_Device_SetAddress(void)
{
  USB_DeviceState = DEVICE_STATE_Addressed;
}

/*Dummy call back for wake up event*/
void EVENT_USB_Device_WakeUp(void)
{

}

/*Dummy call back for suspend event*/
void EVENT_USB_Device_Suspend(void)
{

}
