/* CODE_BLOCK_BEGIN[USBCORE001_device.c] */
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
** MODIFICATION DATE : Aug 20, 2013                                           **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                       Author(s) Identity                                   **
********************************************************************************
**                                                                            **
** Initials    Name                                                           **
** ---------------------------------------------------------------------------**
** CM          App Developer                                                  **
** NSND                                                                       **
*******************************************************************************/

/* ==========================================================================
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
 * @file  usbcore001_device.c
 *
 * @brief This file contains implementations of all Public and Private functions
 *        of USB device glue logic.
 *
 */

/*******************************************************************************
**                      Include Files                                         **
*******************************************************************************/
#include <DAVE3.h>
#ifndef DWC_HOST_ONLY
#define __INCLUDE_FROM_USB_DRIVER
#include "../../src/USBLD001/driver/dwc_otg_os_dep.h"
#include "../../src/USBLD001/driver/dwc_otg_pcd_if.h"
#include "../../src/USBLD001/driver/dwc_otg_pcd.h"
#include "../../src/USBLD001/driver/dwc_otg_dbg.h"


/**
 * @cond INTERNAL_DOCS
 */
/*******************************************************************************
**                      Global Variable Definitions                           **
*******************************************************************************/
/**
 * @ingroup USBCORE001_device_privateparam
 * @{
 */

#define   DEVICE_STATE_Unattached     0
#define   DEVICE_STATE_Powered        1
#define   DEVICE_STATE_Default        2
#define   DEVICE_STATE_Addressed      3
#define   DEVICE_STATE_Configured     4
#define   DEVICE_STATE_Suspended      5

/*
 *@struct USBCORE001_DeivceEndpoint
 *@brief Defines a USB Device Endpoint
 */
typedef struct USBCORE001_DeivceEndpoint
{
  /*Ep Number*/
  uint8_t          EpNum;
  /*Ep Direction*/
  bool             InEp;
  /*Data buffer IN for the EP*/
  uint8_t          *InBuffer;
  /*In Buffer in use*/
  volatile bool             InBufferInUse;
  /*Data buffer OUT for the EP*/
  uint8_t          *OutBuffer;
  /*Out Buffer in use*/
  volatile bool             OutBufferInUse;
  /*Actual Bytes*/
  volatile uint16_t          BytesAvailableOut;
  /*Current Recv Buffer*/
  uint8_t           *CurrentBuffer;
  /*Current IN Index*/
  uint16_t          CurrentInIndex;
  /*Current OUT Index*/
  uint16_t          CurrentOutIndex;
  /*Bytes available for IN Transfer*/
  volatile uint16_t          BytesAvailableIn;
  /*In Flush In progress*/
  volatile bool              InFlush;
  /*Max Packet size*/
  uint16_t          MaxPktSz;
  /*EP Enabled flag*/
  bool              EpEnabled;
}USBCORE001_DeivceEndpoint;

/*
 * @struct USBCORE001_PeripheralControllerDriver
 * @brief Defines the USB PCD device
 */
typedef struct USBCORE001_PeripheralControllerDriver
{
  /*Represents Endpoint 0*/
  USBCORE001_DeivceEndpoint           EndPoint0;
  /*Represents IN Endpoints*/
  USBCORE001_DeivceEndpoint           OutEps[ENDPOINT_TOTAL_ENDPOINTS+1];
  /*Represents OUT Endpoints*/
  USBCORE001_DeivceEndpoint           InEps[ENDPOINT_TOTAL_ENDPOINTS+1];
  /*Holds the User callback pointers*/
  USBCORE001_DeviceCallBack    USB_DeviceEvents;
  /*Holds setup packet recieved status*/
  bool                   USB_SetupReceived;
  /*Points the pcd pointers*/
  dwc_otg_pcd_t          *GPCD;
  /*Current EP*/
  USBCORE001_DeivceEndpoint           *CurrentEp;
  /*Current EP Number*/
  uint8_t                CurEpNum;
  /*Current EP direction*/
  uint8_t                CurEpDir;
}USBCORE001_PeripheralControllerDriver;

uint16_t USBCORE001_Waitval = 0;

/* Device active configuration number */
uint8_t ConfigNumber = 0;

/*Flag to indicate the zlp to be sent or not*/
volatile uint8_t zlp_flag = 0;

/* Device active interface number */
uint8_t InterfaceNumber = 0;
/**
 * @}
 */


/**
 * @ingroup USBCORE001_privatefunc
 * @{
 */

/*******************************************************************************
**                 Private Function declarations                              **
*******************************************************************************/

/**
 * @brief This callback will notify device connected from synopsys driver and
 * will notify same to the LUFA.
 * @param [IN] pcd     Pointer to the PCD data structure
 * @param [IN] speed   Connect speed
 * @return int 0 on success
 */
static int USBCORE001_DevicePCDConnect(dwc_otg_pcd_t * PCDPtr, int Speed);


/**
 * @brief This call back will be called on completion of queued URB.
 * @param [IN] PCDPtr       Pointer to the PCD data structure
 * @param [IN] EpHandle   Handle to the corresponding EP
 * @param [IN] ReqHandle  Handle to the corresponding Request
 * @param [IN] Status       Completion status
 * @param [IN] Actual       Actual number of bytes
 * @return int 0 on success
 */
static int USBCORE001_DevicePCDComplete(dwc_otg_pcd_t * PCDPtr, void *EpHandle,
         void *ReqHandle, int32_t Status, uint32_t Actual);

/**
 * @brief DWC OTG PCD Setup packet Callback
 * @param [IN] PCDPtr        Pointer to the PCD data structure
 * @param [IN] Bytes      Setup data
 * @return int 0 on success
 */
static int USBCORE001_DevicePCDSetup(dwc_otg_pcd_t * PCDPtr, uint8_t * Bytes);

/**
 *@brief DW OTG PCD disconnect call back
 *@param [@ref IN] PCDPtr        Pointer to the PCD data structure
 *@return int 0 on success
 */

static int USBCORE001_DevicePCDDisconnect(dwc_otg_pcd_t * PCDPtr);

/**
 * @brief DW OTG PCD resume callback
 * @param [IN] PCDPtr        Pointer to the PCD data structure
 * @return int 0 on success
 */
static int USBCORE001_DevicePCDResume(dwc_otg_pcd_t * PCDPtr);

/**
 *@brief DW OTG PCD suspend call back
 *@param [IN] PCDPtr        Pointer to the PCD data structure
 *@return int 0 on success
 */
static int USBCORE001_DevicePCDSuspend(dwc_otg_pcd_t * PCDPtr);

/**
 * @brief DW OTG PCD HNP status changed call back
 * @param [IN] PCDPtr        Pointer to the PCD data structure
 * @return int 0 on success
 */
static int USBCORE001_DevicePCDHnpChangedcb(dwc_otg_pcd_t * PCDPtr);


/**
 * @brief DW OTG PCD reset call back
 * @param [IN] PCDPtr       Pointer to the PCD data structure
 * @return int 0 on success
 */
static int USBCORE001_DevicePCDReset(dwc_otg_pcd_t * PCDPtr);


/*Routine to put 1 ms delay*/
void USB_1msDelay(uint32_t delay_count);

/**
 * @}
 */

static const struct dwc_otg_pcd_function_ops USBCORE001_DevicePCDfops = {
  USBCORE001_DevicePCDConnect,        /* Connect handler */
  USBCORE001_DevicePCDDisconnect,     /* Disconnect handler */
  USBCORE001_DevicePCDSetup,          /* Complete handler */
  USBCORE001_DevicePCDComplete,       /* Complete handler */
  NULL,             /* ISO Complete handler, not currently supported */
  USBCORE001_DevicePCDSuspend,        /* Suspend handler */
  NULL,             /* Sleep, currently not supported*/
  USBCORE001_DevicePCDResume,         /* Resume handler */
  USBCORE001_DevicePCDReset,          /* Reset handler */
  USBCORE001_DevicePCDHnpChangedcb,   /* HNP Changed handler */
  NULL,             /* CFI Setup handler, not currently supported */
#ifdef DWC_UTE_PER_IO
  NULL, /* ISO Complete handler, not currently supported */
#endif
};

USBCORE001_PeripheralControllerDriver    USBCORE001_DevicePCD;

/*Holds the last received control request*/
USB_Setup_Packet_t   USBCORE001_DeviceCurrentControlRequest;
/*Holds the current device state*/
uint8_t                USBCORE001_DeviceCurrentState;


/*******************************************************************************
**                     Private Function Definitions                           **
*******************************************************************************/

static int USBCORE001_DevicePCDConnect(dwc_otg_pcd_t * PCDPtr, int Speed)
{
  if(NULL != USBCORE001_DevicePCD.USB_DeviceEvents.Connect)
  {
    USBCORE001_DevicePCD.USB_DeviceEvents.Connect();
  }
  USBCORE001_DeviceCurrentState = DEVICE_STATE_Default;
  return 0;
}


static int USBCORE001_DevicePCDComplete(dwc_otg_pcd_t * PCDPtr, void *EpHandle,
         void *ReqHandle, int32_t Status, uint32_t Actual)
{

  USBCORE001_DeivceEndpoint   *EpPtr = (USBCORE001_DeivceEndpoint *)EpHandle;

  if(ReqHandle == EpPtr->InBuffer)
  {
    EpPtr->BytesAvailableIn -= Actual;
    EpPtr->CurrentInIndex -= Actual;

    {
      EpPtr->InBufferInUse = false;
      EpPtr->InFlush = false;
    }
  }
  else if (ReqHandle == EpPtr->OutBuffer)
  {
    if(Actual)
    {
      EpPtr->BytesAvailableOut += Actual;
      EpPtr->OutBufferInUse = false;
    }
    else if(0 == Status)
    {
      /*Zero length packet, put the request back*/
      dwc_otg_pcd_ep_queue(USBCORE001_DevicePCD.GPCD,EpPtr,
        (uint8_t *)EpPtr->OutBuffer, (int)EpPtr->OutBuffer,
        EpPtr->MaxPktSz, 0, EpPtr->OutBuffer, 0);
    }

    
  }
  else
  {
    /*
     * Get Descriptor completion. Need to free the memory here
     */
    DWC_FREE(ReqHandle);

  }

  return 0;
}

static int USBCORE001_DevicePCDSetup(dwc_otg_pcd_t * PCDPtr, uint8_t * Bytes)
{
  USB_Setup_Packet_t *RequestHeaderPtr;
  void*   DescriptorAddress;
  uint16_t ActualSize = 0;
  uint16_t ReqSize = 0;
  uint8_t *TempBufferPtr = NULL;
  /*
   * The PCD driver calls back for the following cases
   * (a) All non standard control transfers (Class/Vendor etc)
   * (b) Set Config / Set Interface and Get Descriptor Synch Frame calls
   */
  RequestHeaderPtr = (USB_Setup_Packet_t*)Bytes;


  switch(RequestHeaderPtr->bRequest)
  {
  case REQ_TYPE_GetDescriptor:
  /*
   * Get the descriptor address by making use of the callback and queue the
   * the same on the control EP
   */
  if(NULL != USBCORE001_DevicePCD.USB_DeviceEvents.GetDescriptor)
  {
    ActualSize = USBCORE001_DevicePCD.USB_DeviceEvents.GetDescriptor(RequestHeaderPtr->wValue,
                      RequestHeaderPtr->wIndex, (void *)&DescriptorAddress);
    ReqSize = (ActualSize < RequestHeaderPtr->wLength) 
                                    ? ActualSize : RequestHeaderPtr->wLength;
    /*
     * To avoid alignment and buffer overruns, allocate a buffer that would 
     * contain as many DWORDS and copy the descriptor to that new buffer.
     */
    TempBufferPtr = DWC_ALLOC(ReqSize + 3);

    if(NULL == TempBufferPtr)
    {
      return -1;
    }

    memset(TempBufferPtr, 0, ReqSize);
    memcpy(TempBufferPtr, DescriptorAddress, ReqSize);

    /*Queue the data to EndPoint0*/
    dwc_otg_pcd_ep_queue(
    USBCORE001_DevicePCD.GPCD,
    &USBCORE001_DevicePCD.EndPoint0,
    TempBufferPtr,
    (int)TempBufferPtr,
    /*pRequestHeader->wLength,*/
    ReqSize,
    0,
    TempBufferPtr,
    0
    );
  }
  break;

  case REQ_TYPE_GetConfiguration:
  /*
  * Get the device active configuration and queue the
  * the same on the control EP
  */


    ReqSize = RequestHeaderPtr->wLength;
    /*
     * To avoid alignment and buffer overruns, allocate a buffer that would
     * contain as many DWORDS and copy the descriptor to that new buffer.
     */
    TempBufferPtr = DWC_ALLOC(ReqSize + 3);

    if(NULL == TempBufferPtr)
    {
      return -1;
    }

    memset(TempBufferPtr, 0, ReqSize);
    memcpy(TempBufferPtr, &ConfigNumber, 1);

    /*Queue the data to EndPoint0*/
    dwc_otg_pcd_ep_queue(
      USBCORE001_DevicePCD.GPCD,
      &USBCORE001_DevicePCD.EndPoint0,
      TempBufferPtr,
      (int)TempBufferPtr,
      /*pRequestHeader->wLength,*/
      ReqSize,
      0,
      TempBufferPtr,
      0
      );
 
  break;

  case REQ_TYPE_GetInterface:
  /*
   * Get the active interface number and queue the
   * the same on the control EP
   */
  
    ReqSize = RequestHeaderPtr->wLength;
    /*
     * To avoid alignment and buffer overruns, allocate a buffer that would
     * contain as many DWORDS and copy the descriptor to that new buffer.
     */
    TempBufferPtr = DWC_ALLOC(ReqSize + 3);

    if(NULL == TempBufferPtr)
    {
      return -1;
    }

    memset(TempBufferPtr, 0, ReqSize);
    memcpy(TempBufferPtr, &InterfaceNumber, 1);

    /*Queue the data to EndPoint0*/
    dwc_otg_pcd_ep_queue(
      USBCORE001_DevicePCD.GPCD,
      &USBCORE001_DevicePCD.EndPoint0,
      TempBufferPtr,
      (int)TempBufferPtr,
      /*pRequestHeader->wLength,*/
      ReqSize,
      0,
      TempBufferPtr,
      0
      );

  break;

  case REQ_TYPE_SetConfiguration:
  /* Set active configuration */
  if(NULL != USBCORE001_DevicePCD.USB_DeviceEvents.ConfigChanged)
  {
    USBCORE001_DevicePCD.USB_DeviceEvents.ConfigChanged();
  }
  ConfigNumber = (uint8_t)RequestHeaderPtr->wValue;
   break;

  case REQ_TYPE_SetInterface:
  /* Set active interface */
  if(NULL != USBCORE001_DevicePCD.USB_DeviceEvents.ConfigChanged)
  {
    USBCORE001_DevicePCD.USB_DeviceEvents.ConfigChanged();
  }
  InterfaceNumber = (uint8_t)RequestHeaderPtr->wValue;
  
  break;

  case REQ_TYPE_SetAddress:
  /* Set device address */
  if(NULL != USBCORE001_DevicePCD.USB_DeviceEvents.AddressSet)
  {
    USBCORE001_DevicePCD.USB_DeviceEvents.AddressSet();
  }
  USBCORE001_DeviceCurrentState = DEVICE_STATE_Addressed;
  break;

  default:
  if(NULL != USBCORE001_DevicePCD.USB_DeviceEvents.ControlRequest)
  {
    USBCORE001_DeivceEndpoint *EndpointPtr = &USBCORE001_DevicePCD.EndPoint0;

    /*
     * If an OUT transaction follows, keep Buffer2 ready
     */
    if (!(RequestHeaderPtr->bmRequestType & CONTROL_REQ_DIR_DEVICETOHOST))
    {
      if(RequestHeaderPtr->wLength)
      {
        if(EndpointPtr->MaxPktSz <= RequestHeaderPtr->wLength)
        {
          /*Re-adjust the size*/
          void *temp = EndpointPtr->OutBuffer;
          EndpointPtr->OutBuffer = DWC_ALLOC(RequestHeaderPtr->wLength+3);
  
          if(!EndpointPtr->OutBuffer)
          {
            EndpointPtr->OutBuffer = temp;
            return -DWC_E_NO_MEMORY;
          }
          else
          {
            EndpointPtr->MaxPktSz = RequestHeaderPtr->wLength;
          }
        }
        dwc_otg_pcd_ep_queue(USBCORE001_DevicePCD.GPCD, EndpointPtr,
        (uint8_t *)EndpointPtr->OutBuffer, (int)EndpointPtr->OutBuffer, 
        RequestHeaderPtr->wLength, 0, EndpointPtr->OutBuffer, 0);
      }
      else
      {
        /*Send a ZLP in response to the status phase*/
        dwc_otg_pcd_ep_queue(USBCORE001_DevicePCD.GPCD, EndpointPtr, 
                            NULL, 0, 0, 1, EndpointPtr->InBuffer, 0);
      }
      USBCORE001_DevicePCD.USB_SetupReceived = true;
      memcpy(&USBCORE001_DeviceCurrentControlRequest, RequestHeaderPtr, 
                                            sizeof(USB_Setup_Packet_t));
    }
    else
    {
      USBCORE001_DevicePCD.USB_SetupReceived = true;
      memcpy(&USBCORE001_DeviceCurrentControlRequest,
            RequestHeaderPtr, sizeof(USB_Setup_Packet_t));
    }
  } break;
  }

  return 0;
}

static int USBCORE001_DevicePCDDisconnect(dwc_otg_pcd_t * PCDPtr)
{
  USBCORE001_DeviceCurrentState = DEVICE_STATE_Unattached;

  if(NULL != USBCORE001_DevicePCD.USB_DeviceEvents.Disconnect)
  {
    USBCORE001_DevicePCD.USB_DeviceEvents.Disconnect();
  }
  return 0;
}


static int USBCORE001_DevicePCDResume(dwc_otg_pcd_t * PCDPtr)
{
  return 0;
}


static int USBCORE001_DevicePCDSuspend(dwc_otg_pcd_t * PCDPtr)
{
  return 0;
}


static int USBCORE001_DevicePCDHnpChangedcb(dwc_otg_pcd_t * PCDPtr)
{
  return 0;
}


static int USBCORE001_DevicePCDReset(dwc_otg_pcd_t * PCDPtr)
{
  return 0;
}

/**
 * @endcond
 */


/*******************************************************************************
**                     Public Function Definitions                            **
*******************************************************************************/

/* This function initializes the synopsys device controller driver. */
int USBCore001_DeviceStart(USBCORE001_OtgDevice *OtgDevPtr, 
                                       USBCORE001_DeviceCallBack *USBDEventsPtr)
{
  int Retval = 0;
  int EpCnt;

  if(!OtgDevPtr)
  {
    Retval = -DWC_E_NO_MEMORY;
    goto end;
  }

  dwc_otg_disable_global_interrupts(OtgDevPtr->CoreIfPtr);

  OtgDevPtr->PcdData.PCDPtr = dwc_otg_pcd_init(OtgDevPtr->CoreIfPtr);

  if(!OtgDevPtr->PcdData.PCDPtr)
  {
    DWC_PRINTF("ifx_usb_device_init: dwc_otg_pcd_init failed\r\n");
    Retval = -DWC_E_NO_MEMORY;
    goto end;
  }
  USBCORE001_DevicePCD.GPCD = OtgDevPtr->PcdData.PCDPtr;
  dctl_data_t data = { .d32 = 0 };
  data.d32 = DWC_READ_REG32(&OtgDevPtr->CoreIfPtr->dev_if->dev_global_regs->dctl);
  data.b.sftdiscon = 0; /* Connect Device */
  DWC_WRITE_REG32(&OtgDevPtr->CoreIfPtr->dev_if->dev_global_regs->dctl,data.d32);
  dwc_otg_pcd_start(OtgDevPtr->PcdData.PCDPtr,&USBCORE001_DevicePCDfops);

  USBCORE001_DevicePCD.USB_DeviceEvents = *USBDEventsPtr;

  /*Initialize Endpoint 0*/
  USBCORE001_DevicePCD.EndPoint0.InBuffer= DWC_ALLOC(MAX_EP0_SIZE*10);
  USBCORE001_DevicePCD.EndPoint0.OutBuffer= DWC_ALLOC(MAX_EP0_SIZE*10);
  USBCORE001_DevicePCD.EndPoint0.MaxPktSz = MAX_EP0_SIZE;
  dwc_otg_pcd_ep_enable(USBCORE001_DevicePCD.GPCD, NULL, 
                                            &USBCORE001_DevicePCD.EndPoint0);

  /*Initialize In Endpoints*/
  for ( EpCnt = 0; EpCnt <= ENDPOINT_TOTAL_ENDPOINTS; EpCnt++)
  {
    USBCORE001_DevicePCD.InEps[EpCnt].EpNum = (EpCnt) | ENDPOINT_DIR_IN;
    USBCORE001_DevicePCD.InEps[EpCnt].InEp = true;
    USBCORE001_DevicePCD.InEps[EpCnt].InBuffer = NULL;
    USBCORE001_DevicePCD.InEps[EpCnt].OutBuffer = NULL;
  }

  /*Initialize Out Endpoints*/
  for ( EpCnt = 0; EpCnt <= ENDPOINT_TOTAL_ENDPOINTS; EpCnt++)
  {
    USBCORE001_DevicePCD.OutEps[EpCnt].EpNum = (EpCnt);
    USBCORE001_DevicePCD.OutEps[EpCnt].InEp = false;
    USBCORE001_DevicePCD.OutEps[EpCnt].InBuffer = NULL;
    USBCORE001_DevicePCD.OutEps[EpCnt].OutBuffer = NULL;
  }

end:
  dwc_otg_enable_global_interrupts(OtgDevPtr->CoreIfPtr);
  return Retval;
}


/* Checks whether a SETUP packet was received or not */
uint8_t Endpoint_IsSETUPReceived(void)
{
  return USBCORE001_DevicePCD.USB_SetupReceived;
}

/* Clears the SETUP packet */
void Endpoint_ClearSETUP(void)
{
  USBCORE001_DevicePCD.USB_SetupReceived = false;
  return;
}

/* Clears the OUT endpoint. */
void Endpoint_ClearOUT(void)
{
  USBCORE001_DeivceEndpoint *EndPoint;

  if(USBCORE001_DevicePCD.CurEpNum)
  {
    EndPoint = &USBCORE001_DevicePCD.OutEps[USBCORE001_DevicePCD.CurEpNum];

    if(!EndPoint->OutBufferInUse)
    {
      EndPoint->BytesAvailableOut = 0;
      EndPoint->CurrentOutIndex = 0;
      EndPoint->OutBufferInUse = true;

      /*Queue the buffer again*/
      dwc_otg_pcd_ep_queue(USBCORE001_DevicePCD.GPCD, EndPoint,
      (uint8_t *)EndPoint->OutBuffer, (int)EndPoint->OutBuffer, 
      EndPoint->MaxPktSz, 0, EndPoint->OutBuffer, 0);

      if(EndPoint->MaxPktSz > 16)
      {
        USB_1msDelay(2500);/*1.25 ms (count 2500) before next packet*/
      }

    }
  }
  else
  {
    EndPoint = &USBCORE001_DevicePCD.EndPoint0;
  }

  return;
}

void USB_1msDelay(uint32_t delay_count)
{
    volatile uint32_t i;
    for (i = (uint32_t)delay_count; i > (uint32_t)0; i--)
    {
    	__NOP();
    	__NOP();
    	__NOP();
    	__NOP();

    }
}

/* This function is Device task routine. To avoid deadlocks caused by ISR going 
 * directly to the application, this routine makes the function asynchronous. 
 * ISRs (except for GET_DESCRIPTOR and SET_CONFIGURATION, SET_INTERFACE control
 * requests, just cache the information, and this routine sends it to the 
 * application. Any application thats using the device stack should be also 
 * making use of this call frequently to ensure that no notifications are 
 * missed.
 */
void USB_Device_ProcessControlRequest(void)
{
  
  if(USBCORE001_DevicePCD.USB_SetupReceived)
  {
    if (USBCORE001_DevicePCD.USB_DeviceEvents.ControlRequest)
    {
      uint8_t PrevEp = USBCORE001_DevicePCD.CurEpNum;
      USBCORE001_DevicePCD.CurEpNum = 0;
      USBCORE001_DevicePCD.USB_DeviceEvents.ControlRequest(&USBCORE001_DeviceCurrentControlRequest);
      USBCORE001_DevicePCD.CurEpNum = PrevEp;
    }
  }
  return;
}


/* Clears the IN endpoint */
void Endpoint_ClearIN(void)
{
  USBCORE001_DeivceEndpoint *EndPoint;
  uint8_t       Bytes;
  if(USBCORE001_DevicePCD.CurEpNum)
  {
    EndPoint = &USBCORE001_DevicePCD.InEps[USBCORE001_DevicePCD.CurEpNum];
  }
  else
  {
    EndPoint = &USBCORE001_DevicePCD.EndPoint0;
  }

  while(EndPoint->InFlush)
  {
    USBCORE001_Waitval++;
  }

  USBCORE001_Waitval = 0;
  
  if(EndPoint->BytesAvailableIn)
  {
    EndPoint->InFlush = true;
    Bytes = EndPoint->BytesAvailableIn;
    dwc_otg_pcd_ep_queue(USBCORE001_DevicePCD.GPCD, EndPoint, 
    (uint8_t *)EndPoint->InBuffer, (int)EndPoint->InBuffer, Bytes, 0,
    EndPoint->InBuffer, 0);

    if((zlp_flag == true) && (EndPoint->EpNum != 0))
    {
    	/*Send a ZLP from here*/
	  while(EndPoint->InFlush)
	  {
		USBCORE001_Waitval++;
	  }
	  EndPoint->InFlush = true;
	  dwc_otg_pcd_ep_queue(USBCORE001_DevicePCD.GPCD, EndPoint, NULL, 0, 0, 1,
														EndPoint->InBuffer, 0);
	  zlp_flag = false;
    }
    else if((Bytes == EndPoint->MaxPktSz) && (EndPoint->EpNum == 0))
    {
      /*Send a ZLP from here*/
      while(EndPoint->InFlush)
      {
        USBCORE001_Waitval++;
      }
      EndPoint->InFlush = true;
      dwc_otg_pcd_ep_queue(USBCORE001_DevicePCD.GPCD, EndPoint, NULL, 0, 0, 1, 
                                                        EndPoint->InBuffer, 0);

    }
    else
    {

    }

  }
  return;
}


/*
 * This function Writes the given number of bytes to the control endpoint from 
 * the given buffer in little endian sending full packets to the host as needed.
 * The host OUT acknowledgment is not automatically cleared in both failure and
 * success states; The user is responsible manually clearing the setup OUT to 
 * finalize the transfer via the Endpoint_ClearOUT macro.
 */
uint8_t Endpoint_Write_Control_Stream_LE(const void* const Buffer,
                                                                uint16_t Length)
{
  return Endpoint_Write_Control_Stream_BE(Buffer,Length);
}

/*
 * This function Writes the given number of bytes to the control endpoint from 
 * the given buffer in big endian sending full packets to the host as needed. 
 * The host OUT acknowledgment is not automatically cleared in both failure and 
 * success states; The user is responsible manually clearing the setup OUT to
 * finalize the transfer via the Endpoint_ClearOUT macro.
 */
uint8_t Endpoint_Write_Control_Stream_BE(const void* const Buffer,
                                                                uint16_t Length)
{
  USBCORE001_DeivceEndpoint *EndPoint = &USBCORE001_DevicePCD.EndPoint0;
  uint8_t      PrevEp = USBCORE001_DevicePCD.CurEpNum;
  USBCORE001_DevicePCD.CurEpNum = 0;

  while(EndPoint->BytesAvailableIn)
  {
    Endpoint_ClearIN();
  }

  memcpy(EndPoint->InBuffer,Buffer,Length);
  EndPoint->BytesAvailableIn += Length;
  EndPoint->CurrentInIndex += Length;

  USBCORE001_DevicePCD.CurEpNum = PrevEp;

  return ENDPOINT_RWCSTREAM_NoError;
}

/*
 * This function Reads the given number of bytes from the control endpoint to 
 * the given buffer in big endian sending full packets to the host as needed.
 * The host OUT acknowledgment is not automatically cleared in both failure and
 * success states; The user is responsible manually clearing the setup OUT to 
 * finalize the transfer via the Endpoint_ClearOUT macro.
 */
uint8_t Endpoint_Read_Control_Stream_BE(void* const Buffer,uint16_t Length)
{
  volatile USBCORE001_DeivceEndpoint *EndPoint = 
                                              &USBCORE001_DevicePCD.EndPoint0;
  bool Success = false;

  if(DEVICE_STATE_Addressed == DEVICE_STATE_Unattached)
  {
    return ENDPOINT_RWCSTREAM_DeviceDisconnected;
  }
  else if (DEVICE_STATE_Addressed == DEVICE_STATE_Suspended)
  {
    return ENDPOINT_RWCSTREAM_BusSuspended;
  }

  do
  {
    if(Length <= EndPoint->BytesAvailableOut)
    {
      memcpy(Buffer,(void *)(EndPoint->OutBuffer + EndPoint->CurrentOutIndex),
                                                                        Length);
      EndPoint->BytesAvailableOut -= Length;

      if(EndPoint->BytesAvailableOut)
      {
        EndPoint->CurrentOutIndex += Length;
      }
      else
      {
        EndPoint->CurrentOutIndex = 0;
        Success = true;
      }
    }
  }while(!Success);

  return ENDPOINT_RWCSTREAM_NoError;
}

/*
 * This function Reads the given number of bytes from the control endpoint to 
 * the given buffer in little endian sending full packets to the host as needed.
 * The host OUT acknowledgment is not automatically cleared in both failure and 
 * success states; The user is responsible manually clearing the setup OUT to 
 * finalize the transfer via the Endpoint_ClearOUT macro.
 */
uint8_t Endpoint_Read_Control_Stream_LE(void* const Buffer,uint16_t Length)
{
  return Endpoint_Read_Control_Stream_BE(Buffer,Length);
}

/*
 * This function Completes the status of a control transfer on a CONTROL type
 * endpoint automatically with respect to the data direction. This is a 
 * convenience function which can be used to simplify user control request 
 * handling.
 */
void Endpoint_ClearStatusStage(void)
{
  return;
}


/* This function Selects the current endpoint */
void Endpoint_SelectEndpoint(const uint8_t EndpointNumber, 
                                                        const uint8_t Direction)
{
  USBCORE001_DevicePCD.CurEpNum = EndpointNumber;
  USBCORE001_DevicePCD.CurEpDir = Direction;
  return;
}

/* This function Returns the current endpoint */
void Endpoint_GetCurrentEndpoint(uint8_t *EndpointNumber, uint8_t *Direction)
{
	*EndpointNumber = USBCORE001_DevicePCD.CurEpNum;
	*Direction = USBCORE001_DevicePCD.CurEpDir;
}

/* 
 * This function Returns the number of bytes available in 
 * the selected endpoint.
 */
uint16_t Endpoint_BytesInEndpoint(void)
{
  USBCORE001_DeivceEndpoint *EndPoint;
  uint16_t Bytes = 0;

  if(!USBCORE001_DevicePCD.CurEpNum)
  {
    EndPoint = &USBCORE001_DevicePCD.EndPoint0;
  }
  else if(USBCORE001_DevicePCD.CurEpDir)
  {
    EndPoint = &USBCORE001_DevicePCD.InEps[USBCORE001_DevicePCD.CurEpNum];
    Bytes = EndPoint->BytesAvailableIn;
  }
  else
  {
    EndPoint = &USBCORE001_DevicePCD.OutEps[USBCORE001_DevicePCD.CurEpNum];
    Bytes = EndPoint->BytesAvailableOut;
  }

  return Bytes;
}

/* 
 * This function Determines if the selected OUT endpoint 
 * has received new packet.
 */
uint8_t Endpoint_IsOUTReceived(void)
{
  bool Status = false;

  USBCORE001_DeivceEndpoint *EndPoint;

  if(USBCORE001_DevicePCD.CurEpNum)
  {
    EndPoint = &USBCORE001_DevicePCD.OutEps[USBCORE001_DevicePCD.CurEpNum];
  }
  else
  {
    EndPoint = &USBCORE001_DevicePCD.EndPoint0;
  }

  if (!EndPoint->InEp)
  {
    Status = EndPoint->BytesAvailableOut ? true : false;
  }

  return Status;
}

/*This function Reads one byte from the current endpoint.*/
uint8_t Endpoint_Read_8(void)
{
  USBCORE001_DeivceEndpoint *EndPoint;
  uint8_t  Byte;
  bool Success = false;

  if(USBCORE001_DevicePCD.CurEpNum)
  {
    EndPoint = &USBCORE001_DevicePCD.OutEps[USBCORE001_DevicePCD.CurEpNum];
  }
  else
  {
    EndPoint = &USBCORE001_DevicePCD.EndPoint0;
  }

  do
  {
    if(EndPoint->BytesAvailableOut)
    {
      Byte = EndPoint->OutBuffer[EndPoint->CurrentOutIndex];
      EndPoint->CurrentOutIndex++;
      EndPoint->BytesAvailableOut--;
    
      if(!EndPoint->BytesAvailableOut)
      {
        EndPoint->CurrentOutIndex = 0;
      }
      Success = true;
    }
  }while(!Success);

  return Byte;
}

/*This function Configures the specified endpoint*/
uint8_t Endpoint_ConfigureEndpoint(const uint8_t Number,
  const uint8_t Type,
  const uint8_t Direction,
  const uint16_t Size,
  const uint8_t Banks)
{
  USBCORE001_DeivceEndpoint *EndPoint;
  usb_endpoint_descriptor_t Desc;

  if(!Number)
  {
    return false;
  }

  if(Direction)
  {
    EndPoint = &USBCORE001_DevicePCD.InEps[Number];
    if(!EndPoint->InBuffer)
    {
      EndPoint->InBuffer = (uint8_t *)DWC_ALLOC(Size);
    }
  }
  else
  {
    EndPoint = &USBCORE001_DevicePCD.OutEps[Number];
    if(!EndPoint->OutBuffer)
    {
      EndPoint->OutBuffer = (uint8_t *)DWC_ALLOC(Size);
    }
  }

  /*In case the EP was previously enabled, disable it*/
  if(EndPoint->EpEnabled)
  {
    dwc_otg_pcd_ep_disable(USBCORE001_DevicePCD.GPCD, EndPoint);
  }

  /*Enable the EP*/
  Desc.bLength = sizeof(Desc);
  Desc.bDescriptorType = UDESC_ENDPOINT;
  Desc.bEndpointAddress = Number | Direction;
  Desc.bmAttributes = Type;
  USETW(Desc.wMaxPacketSize, Size);
  dwc_otg_pcd_ep_enable(USBCORE001_DevicePCD.GPCD,(uint8_t*)&Desc, EndPoint);

  EndPoint->EpEnabled = true;
  /*
  *@note If OUT Endpoint, queue the buffer so that we can 
  *recieve data
  */
  EndPoint->MaxPktSz = Size;
  EndPoint->InEp = true;
  if(!Direction)
  {
    if(EndPoint->OutBufferInUse)
    {
      dwc_otg_pcd_ep_dequeue(USBCORE001_DevicePCD.GPCD, EndPoint,
                      (uint8_t *)EndPoint->OutBuffer);
    }

    dwc_otg_pcd_ep_queue(USBCORE001_DevicePCD.GPCD, EndPoint, 
                      (uint8_t *)EndPoint->OutBuffer,
                     (int)EndPoint->OutBuffer, Size, 0, EndPoint->OutBuffer, 0);
    EndPoint->OutBufferInUse = true;
    EndPoint->InEp = false;
  }

  return true;
}

/* This function Writes the given number of bytes to the current endpoint. */
uint8_t Endpoint_Write_Stream_LE(const void* Buffer, uint16_t Length, 
                                                  uint16_t*const BytesProcessed)
{
  USBCORE001_DeivceEndpoint *EndPoint;
  uint32_t Bytes;
  uint16_t BytesTransfered = 0;
  uint16_t prev_length = 0;
  
  if(USBCORE001_DevicePCD.CurEpNum)
  {
    EndPoint = &USBCORE001_DevicePCD.InEps[USBCORE001_DevicePCD.CurEpNum];
  }
  else
  {
    EndPoint = &USBCORE001_DevicePCD.EndPoint0;
  }

  if (BytesProcessed!=NULL) {
  	Length -= *BytesProcessed;
  	BytesTransfered = *BytesProcessed;
  }

   while (Length)
   {
    if (Endpoint_IsReadWriteAllowed())
    {
      Bytes = EndPoint->MaxPktSz - EndPoint->BytesAvailableIn  > Length ? Length : EndPoint->MaxPktSz - EndPoint->BytesAvailableIn;
      memcpy(EndPoint->InBuffer + EndPoint->CurrentInIndex,Buffer+BytesTransfered,Bytes);
      EndPoint->BytesAvailableIn += Bytes;
      EndPoint->CurrentInIndex += Bytes;
      BytesTransfered += Bytes;
      prev_length = Length;
      Length -= Bytes;

    }
    else
    {
      Endpoint_ClearIN();

      if(Length < EndPoint->MaxPktSz)
      {
		  if (BytesProcessed!=NULL)
		  {
			*BytesProcessed += BytesTransfered;
			return ENDPOINT_RWSTREAM_IncompleteTransfer;
		  }
      }

      
    }

   }

  if((Length == 0) && (prev_length == EndPoint->MaxPktSz))
  {
#if (SEND_ZLP_FROM_APP == 1)
	zlp_flag = false;
#else
	zlp_flag = true;
#endif
  }

  return ENDPOINT_RWSTREAM_NoError;
}

/*This function sends zlp to USB host on the selected end point*/
void Endpoint_SendZLP(void)
{
	USBCORE001_DeivceEndpoint *EndPoint;

	if(USBCORE001_DevicePCD.CurEpNum)
	{
		EndPoint = &USBCORE001_DevicePCD.InEps[USBCORE001_DevicePCD.CurEpNum];
	}
	else
	{
		EndPoint = &USBCORE001_DevicePCD.EndPoint0;
	}

	/*Send a ZLP from here*/
	while(EndPoint->InFlush)
	{
	USBCORE001_Waitval++;
	}
	EndPoint->InFlush = true;
	dwc_otg_pcd_ep_queue(USBCORE001_DevicePCD.GPCD, EndPoint, NULL, 0, 0, 1,
													EndPoint->InBuffer, 0);
}

/*This function Writes the given number of bytes to the current endpoint.*/
uint8_t Endpoint_Write_Stream_BE(const void* Buffer, uint16_t Length, 
                                                  uint16_t*const BytesProcessed)
{
  return Endpoint_Write_Stream_LE(Buffer, Length, BytesProcessed);
}

/*
 * This function Determines if the currently selected endpoint may be read 
 * from or written to.
 */
uint8_t Endpoint_IsReadWriteAllowed(void)
{
  USBCORE001_DeivceEndpoint *EndPoint;
  bool Retval = false;

  if(!USBCORE001_DevicePCD.CurEpNum)
  {
    Retval = false;
  }
  else if(USBCORE001_DevicePCD.CurEpDir)
  {
    EndPoint = &USBCORE001_DevicePCD.InEps[USBCORE001_DevicePCD.CurEpNum];
    Retval = (EndPoint->BytesAvailableIn < EndPoint->MaxPktSz) ? true : false;
  }
  else
  {
    EndPoint = &USBCORE001_DevicePCD.OutEps[USBCORE001_DevicePCD.CurEpNum];
    Retval = (EndPoint->BytesAvailableOut > 0) ? true : false;
  }

  return Retval;
}

/* 
 * This function Spin-loops until the currently selected non control endpoint 
 * is ready for the next packet of data.
 */
uint8_t Endpoint_WaitUntilReady(void)
{
  return ENDPOINT_READYWAIT_NoError;
}

/*This function Writes the specified byte to the current endpoint.*/
void Endpoint_Write_8(const uint8_t Data)
{
  USBCORE001_DeivceEndpoint *EndPoint;
  bool Success = false;

  if(!USBCORE001_DevicePCD.CurEpNum)
  {
    EndPoint = &USBCORE001_DevicePCD.EndPoint0;
  }
  else if(USBCORE001_DevicePCD.CurEpDir)
  {
    EndPoint = &USBCORE001_DevicePCD.InEps[USBCORE001_DevicePCD.CurEpNum];
  }
  else
  {
    EndPoint = &USBCORE001_DevicePCD.OutEps[USBCORE001_DevicePCD.CurEpNum];
  }

  do
  {
    if(EndPoint->BytesAvailableIn < (EndPoint->MaxPktSz - 1) )
    {
      EndPoint->InBuffer[EndPoint->CurrentInIndex] = Data;
      EndPoint->CurrentInIndex++;
      EndPoint->BytesAvailableIn++;
    
      Success = true;
    }
  }while(!Success);

  return ;
}

/* 
 * This function Reads the given number of bytes from the endpoint from the 
 * given buffer in big endian, discarding fully read packets from the host as 
 * needed. The last packet is not automatically discarded once the remaining 
 * bytes has been read; the user is responsible for manually discarding the 
 * last packet from the host via the Endpoint_ClearOUT() macro.
 */
uint8_t Endpoint_Read_Stream_LE(void* const Buffer, uint16_t Length, 
                                                uint16_t * const BytesProcessed)
{
  return Endpoint_Read_Stream_BE(Buffer, Length,BytesProcessed);
}

/*
 * This function Reads the given number of bytes from the endpoint from the
 * given buffer in big endian, discarding fully read packets from the host as 
 * needed. The last packet is not automatically discarded once the remaining 
 * bytes has been read; the user is responsible for manually discarding the 
 * last packet from the host via the Endpoint_ClearOUT() macro.
 */
uint8_t Endpoint_Read_Stream_BE(void* const Buffer, uint16_t Length, 
                                              uint16_t * const BytesProcessed)
{
  USBCORE001_DeivceEndpoint *EndPoint;
  uint32_t Bytes;
  uint16_t BytesTransfered = 0;
  
  if(!USBCORE001_DevicePCD.CurEpNum)
  {
    EndPoint = &USBCORE001_DevicePCD.EndPoint0;
  }
  else if(USBCORE001_DevicePCD.CurEpDir)
  {
    EndPoint = &USBCORE001_DevicePCD.InEps[USBCORE001_DevicePCD.CurEpNum];
  }
  else
  {
    EndPoint = &USBCORE001_DevicePCD.OutEps[USBCORE001_DevicePCD.CurEpNum];
  }

    if (BytesProcessed!=NULL) {
  		Length -= *BytesProcessed;
  		BytesTransfered = *BytesProcessed;
  	}

  	while (Length) {
  		if (Endpoint_IsReadWriteAllowed()) {
  			Bytes = EndPoint->BytesAvailableOut  > Length ? Length : EndPoint->BytesAvailableOut;
  			memcpy(Buffer + BytesTransfered,EndPoint->OutBuffer + EndPoint->CurrentOutIndex,Bytes);
  			EndPoint->BytesAvailableOut -= Bytes;
  			EndPoint->CurrentOutIndex += Bytes;
  			BytesTransfered += Bytes;
  			Length -= Bytes;
  			*BytesProcessed = BytesTransfered;
  		}
  		else {
  			Endpoint_ClearOUT();
  			if (BytesProcessed!=NULL) {
  				*BytesProcessed = BytesTransfered;
  				return ENDPOINT_RWSTREAM_IncompleteTransfer;
  			}

  		


  		}
  	}
  	return ENDPOINT_RWSTREAM_NoError;
}

/*
 * brief The API to set or clear stall on selected End point
 *
 * return 0 on success*/
int32_t USBCORE001_EPHalt(uint8_t set_stall)
{
	USBCORE001_DeivceEndpoint *EndPoint;
    int32_t status = (int32_t)0;

	if(USBCORE001_DevicePCD.CurEpNum)
	{
		EndPoint = &USBCORE001_DevicePCD.InEps[USBCORE001_DevicePCD.CurEpNum];
	}
	else
	{
		EndPoint = &USBCORE001_DevicePCD.EndPoint0;
	}

	status = (int32_t)dwc_otg_pcd_ep_halt(
	        								USBCORE001_DevicePCD.GPCD,
	                                        EndPoint,(int32_t)set_stall);

    return status;
}


#endif
/*CODE_BLOCK_END*/
