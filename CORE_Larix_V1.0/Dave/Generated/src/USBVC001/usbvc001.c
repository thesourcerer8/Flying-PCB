/* CODE_BLOCK_BEGIN[USBVC001.c] */

/*******************************************************************************
 Copyright (c) 2011, Infineon Technologies AG                                 **
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
** AUTHOR : App Developer                                                     **
**                                                                            **
** MAY BE CHANGED BY USER [yes/no]: Yes                                       **
**                                                                            **
** MODIFICATION DATE : Aug21, 2013                                           **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                       Author(s) Identity                                   **
********************************************************************************
**                                                                            **
** Initials    Name                                                           **
** ---------------------------------------------------------------------------**
** CM          App Developer                                                  **
** NSND        Modified the API call Endpoint_Read_Stream_LE()                **
*******************************************************************************/

/**
 *  @file  USBVC001.c
 *
 *  Main source file for the VirtualSerial demo. This file contains the main 
 *  tasks of the demo and is responsible for the initial application hardware
 *  configuration.
 */

#include <DAVE3.h>

/* Pointer to instance of USBCORE001_OtgDevice */
USBCORE001_OtgDevice *USBVC001_OtgDevPtr = NULL;

/* USB connect-disconnect call back */
USBCORE001_DeviceCallBack  USBVC001_DeviceCb =
{
  EVENT_USB_Device_Connect,
  EVENT_USB_Device_Disconnect,
  EVENT_USB_Device_ConfigurationChanged,
  EVENT_USB_Device_ControlRequest,
  EVENT_USB_Device_SetAddress,
  CALLBACK_USB_GetDescriptor
};


/** LUFA CDC Class driver interface configuration and state information. This 
 *  structure is passed to all CDC Class driver functions, so that multiple
 *  instances of the same class within a device can be differentiated from 
 *  one another.
 */
USB_ClassInfo_CDC_Device_t USBVC001_CDCInterface =
  {
    {
        0,

        CDC_TX_EPNUM,
        CDC_TXRX_EPSIZE,
        false,

        CDC_RX_EPNUM,
        CDC_TXRX_EPSIZE,
        false,

        CDC_NOTIFICATION_EPNUM,
        CDC_NOTIFICATION_EPSIZE,
        false,
      },
  };

/*******************************************************************************
**                     Public Function Definitions                            **
*******************************************************************************/

/*The function initializes the USB core layer and register call backs. */
status_t USBVC001_Init(void)
{
    status_t Status = (uint32_t)DAVEApp_SUCCESS;

    /* Initialize the USB core driver */
    USBCORE001_Initialize(&USBVC001_OtgDevPtr);

    if(NULL != USBVC001_OtgDevPtr)
    {
      /* Start the Device mode*/
      USBCore001_DeviceStart(USBVC001_OtgDevPtr, &USBVC001_DeviceCb);
    }
    else
    {
      Status = (uint32_t)USBVC001_ERROR;
    }

    return Status;
}

/* This function sends a byte to the USB host. */
status_t USBVC001_SendByte(const uint8_t DataByte)
{
  status_t Status = (uint32_t)DAVEApp_SUCCESS;

  /* Send a byte to the host. */
  if(CDC_Device_SendByte(&USBVC001_CDCInterface, DataByte)
      != ENDPOINT_RWSTREAM_NoError)
  {
    Status = USBVC001_USBCDC001_ERROR;
  }
  if(CDC_Device_Flush(&USBVC001_CDCInterface) != ENDPOINT_READYWAIT_NoError)
  {
    Status = USBVC001_USBCDC001_ERROR;
  }

  return Status;
}

/* This function sends multiple bytes to the USB host. */
status_t USBVC001_SendData(const char* const DataBuffer,
                            const uint16_t Length)
{
  status_t Status = (uint32_t)DAVEApp_SUCCESS;

  do{

    if(Length == 0)
    {
      Status = USBVC001_ERROR;
      break;
    }

    /* Send data to USB host.*/
    if(CDC_Device_SendData(&USBVC001_CDCInterface, (const char *)DataBuffer,
    				 Length) != ENDPOINT_RWSTREAM_NoError)
    {
      Status = USBVC001_USBCDC001_ERROR;
    }
    else if(CDC_Device_Flush(&USBVC001_CDCInterface) != ENDPOINT_READYWAIT_NoError)
    {
      Status = USBVC001_USBCDC001_ERROR;
    }
   
  }while(0);

  return Status;
}

/* This function sends string data to the USB host. */
status_t USBVC001_SendString(const char* const DataString)
{
  status_t Status = (uint32_t)DAVEApp_SUCCESS;

  do{
    /* Send string to the host */
    if(CDC_Device_SendString(&USBVC001_CDCInterface, DataString)
        != ENDPOINT_RWSTREAM_NoError)
    {
      Status = USBVC001_USBCDC001_ERROR;
    }
    else if(CDC_Device_Flush(&USBVC001_CDCInterface) != ENDPOINT_READYWAIT_NoError)
    {
      Status = USBVC001_USBCDC001_ERROR;
    }

  }while(0);

  return Status;
}

/* This function receives a byte from the USB host.*/
status_t USBVC001_ReceiveByte(int8_t* DataByte)
{
  status_t Status = (uint32_t)DAVEApp_SUCCESS;
  int16_t RxByte;

  /* Receive one byte of data */
  RxByte = CDC_Device_ReceiveByte(&USBVC001_CDCInterface);

  if(RxByte != -1)
  {
    *DataByte = (int8_t)RxByte;
  }
  else
  {
    Status = USBVC001_USBCDC001_ERROR;
  }

  return Status;
}

/* This function receives number of bytes from the USB host.*/
status_t USBVC001_ReceiveData(int8_t* DataBuffer, int16_t DataByte)
{
  status_t Status = (uint32_t)DAVEApp_SUCCESS;
  uint16_t BytesProcessed = 0;
  uint8_t ret = 0;

  /* Fix for new read/write */
  Endpoint_SelectEndpoint(CDC_RX_EPNUM, ENDPOINT_DIR_OUT);
  while ((ret=Endpoint_Read_Stream_LE(DataBuffer, DataByte, &BytesProcessed))==ENDPOINT_RWSTREAM_IncompleteTransfer);
  if (ret!=ENDPOINT_RWSTREAM_NoError)
	return -1;

  return Status;
}

/* Gets the line encoding */
status_t USBVC001_GetLineEncoding(CDC_LineEncoding_t* LineEncodingPtr)
{
  status_t Status = (uint32_t)DAVEApp_SUCCESS;

  if ((USB_DeviceState != DEVICE_STATE_Configured) ||
      !(USBVC001_CDCInterface.State.LineEncoding.BaudRateBPS) ||
        (LineEncodingPtr == NULL))
  {
    Status = USBVC001_ERROR;
  }
  else
  {
    memcpy(LineEncodingPtr, &USBVC001_CDCInterface.State.LineEncoding,
                          sizeof(CDC_LineEncoding_t));
  }

  return Status;
}

/* This function checks number of bytes received from the USB host. */
uint16_t USBVC001_BytesReceived(void)
{
  uint16_t Bytes = 0;

  /* Check if bytes are received from host */
  NVIC_DisableIRQ(USB0_0_IRQn);
  Bytes = CDC_Device_BytesReceived(&USBVC001_CDCInterface);
  if(Bytes == 0)
  {
    Endpoint_ClearOUT();
  }
  NVIC_EnableIRQ(USB0_0_IRQn);
  
  return Bytes;
}

/* Event handler for the library USB Connection event. */
void EVENT_USB_Device_Connect(void)
{
  /*Update the state*/
  USB_DeviceState = DEVICE_STATE_Default;
}

/* Event handler for the library USB Disconnection event. */
void EVENT_USB_Device_Disconnect(void)
{
  /*Update the state*/
  USB_DeviceState = DEVICE_STATE_Unattached;
}

/* Event handler for the library USB Configuration Changed event. */
void EVENT_USB_Device_ConfigurationChanged(void)
{
  bool ConfigSuccess = true;

  ConfigSuccess &= CDC_Device_ConfigureEndpoints(&USBVC001_CDCInterface);
  USB_DeviceState = DEVICE_STATE_Configured;
}

/* Event handler for the library USB Control Request reception event. */
void EVENT_USB_Device_ControlRequest(void *CurrentRequest)
{
  memcpy(&USB_ControlRequest, (USB_Request_Header_t *)CurrentRequest,
                      sizeof(USB_ControlRequest));
  CDC_Device_ProcessControlRequest(&USBVC001_CDCInterface);
}

/* Event handler for the library USB Control Request reception event. */
void EVENT_USB_Device_SetAddress(void)
{
  USB_DeviceState = DEVICE_STATE_Addressed;
}

