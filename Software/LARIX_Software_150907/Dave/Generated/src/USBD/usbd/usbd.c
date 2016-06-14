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
** AUTHOR : App Developer                                                     **
**                                                                            **
** MAY BE CHANGED BY USER [yes/no]: No                                        **
**                                                                            **
** MODIFICATION DATE : Feb 21, 2014     		                              **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                       Author(s) Identity                                   **
********************************************************************************
**                                                                            **
** Initials    Name                                                           **
** ---------------------------------------------------------------------------**
** NSND          App Developer                                                **
*******************************************************************************/
/**
 * @file   usbd.c
 *
 * @brief Source file for Device driver protocol layer
 *
 * It provides functions to handle Endpoint 0 control requests and setting up
 * the usb device.
 */

#include <stdlib.h>
#include "../usb/Core/Events.h"
#include "../usb/Core/USBTask.h"
#include "usbd_config.h"
#include "usbd.h"

USBD_Device_t device;
USB_INIT_t usb_init;

/*endpoint point 0 buffer allocation*/
uint8_t endpoint0_in_buffer[256];
uint8_t endpoint0_out_buffer[256];

/*Variables to hold the USB priority and sub priority*/
uint32_t usb_preemption_priority;
uint32_t usb_sub_priority;



/**
 * \brief Handle protocol stall on EP0
 *
 * Stalls EP0 and then restarts a new transfer including setting state to
 * 																\ref IDLE.
 */
void USBD_HandleEP0_Stall() {
	/* When we stall ep0 as protocol stall, we go back into idle state and
	 * start a new read */
	device.Driver->EndpointStall(ENDPOINT_DIR_IN | 0,1);
	device.EP0_State = IDLE;
	device.Driver->EndpointReadStart(0,0,24);
}

/**
 * \brief Handle device request on endpoint 0
 *
 * By default any USB device has to support a subset of device control request
 * defiened by the USB specification. All request required by the spec are
 * handle within this function.Before a handling of the request is done by this
 * function, it dispatches it to the \ref EVENT_USB_Device_ControlRequest
 * function. There the user has the chance to complete some custom request or
 * override the handling of this function. If the user has handled the
 * request, he has to call \ref Endpoint_ClearSETUP.
 *
 */
void USBD_Handle_DeviceRequest() {
	uint32_t length = 0,ret;
	uint16_t status = 0;
	void *buffer;
	uint8_t Value;
	uint16_t Index;

	Value = USB_ControlRequest.wValue & 0x00FF;

	/* Handling of class/vendor requests */
	if(device.evnts->ControlRequest != NULL)
	{
		device.evnts->ControlRequest();
	}

	if (!device.IsSetupRecieved)
		return;

	/* default request handling */
	switch (USB_ControlRequest.bRequest) {
	case REQ_ClearFeature:
		if ((USB_ControlRequest.bmRequestType & REQ_RECIPIENT_MASK) ==
														REQREC_ENDPOINT)
		{
			Index = USB_ControlRequest.wIndex & ENDPOINT_EPNUM_MASK;
			if ((USB_DeviceState == DEVICE_STATE_Configured ||
							USB_ControlRequest.wIndex==0)  &&
							device.Endpoints[Index].IsConfigured==1)
			{
				device.Endpoints[Index].IsHalted = 0;
				device.Driver->EndpointStall(USB_ControlRequest.wIndex,0);
			} else {
				USBD_HandleEP0_Stall();
			}
			break;
		}
		if ((USB_ControlRequest.bmRequestType & REQ_RECIPIENT_MASK) ==
														REQREC_DEVICE)
		{
			 device.RemoteWakeUp = 0;
			 break;
		}
		USBD_HandleEP0_Stall();
		break;

	case REQ_GetConfiguration:
		device.Driver->EndpointWrite(0,&device.Configuration,1);
		break;

	case REQ_GetDescriptor:
		if(device.evnts->GetDescriptor != NULL)
		{
			length = device.evnts->GetDescriptor(USB_ControlRequest.wValue,
								USB_ControlRequest.wIndex,(void*)&buffer);
		}

		if (length==0)
			USBD_HandleEP0_Stall();
		else {
			if(length < USB_ControlRequest.wLength)
			{
				length = length;
			}
			else
			{
				length = USB_ControlRequest.wLength;
			}

			ret = device.Driver->EndpointWrite(0,buffer,length);
			device.Endpoints[0].InDataLeft = length - ret;
			device.Endpoints[0].InDataBuffer = (uint8_t *)buffer + ret;
		}
		break;

	case REQ_GetInterface:
		if (USB_DeviceState == DEVICE_STATE_Configured) {
			device.Driver->EndpointWrite(0,
					&device.InterfaceSettings[USB_ControlRequest.wIndex],1);
			break;
		}
		if (USB_DeviceState == DEVICE_STATE_Addressed) {
			USBD_HandleEP0_Stall();
			break;
		}
		break;

	case REQ_GetStatus:
		if ((USB_ControlRequest.bmRequestType & REQ_RECIPIENT_MASK) ==
														REQREC_DEVICE)
		{
			status = device.RemoteWakeUp << 1 | device.SelfPowered;
			device.Driver->EndpointWrite(0,(uint8_t*)&status,2);
			break;
		}
		if (((USB_ControlRequest.bmRequestType & REQ_RECIPIENT_MASK)
				== REQREC_INTERFACE) &&
				(USB_DeviceState == DEVICE_STATE_Configured))
		{
			status = 0;
			device.Driver->EndpointWrite(0,(uint8_t*)&status,2);
			break;
		}
		/* print endpoint status only when(or):
		 * - Device_Address_state and ep == 0
		 * - Device_configured_state and ep is configured
		 */
		if ((USB_ControlRequest.bmRequestType & REQ_RECIPIENT_MASK) ==
													REQREC_ENDPOINT)
		{
			Index = USB_ControlRequest.wIndex & 0xFF & ENDPOINT_EPNUM_MASK;
			if ((USB_DeviceState == DEVICE_STATE_Configured ||
					USB_ControlRequest.wIndex==0) &&
					device.Endpoints[Index].IsConfigured==1)
			{
				status = device.Endpoints[Index].IsHalted;
				device.Driver->EndpointWrite(0,(uint8_t*)&status,2);
				break;
			}
		}
		/* default stall */
		USBD_HandleEP0_Stall();
		break;

	case REQ_SetAddress:
		if (Value == 0)
			USB_DeviceState = DEVICE_STATE_Default;
		else
			USB_DeviceState = DEVICE_STATE_Addressed;
		device.Driver->DeviceSetAddress(Value,USB_USBD_SET_ADDRESS_SETUP);
		if(device.evnts->AddressSet != NULL)
		{
			device.evnts->AddressSet();
		}
		break;

	case REQ_SetConfiguration:
		/* Regardless the state update the configuration to unconfigure
		 * endpoints */
		device.Configuration = Value;
		if(device.evnts->ConfigChanged != NULL)
		{
			device.evnts->ConfigChanged();
		}

		/* when config 0 is choosen, we are back in address state */
		if (Value == 0) {
			USB_DeviceState = DEVICE_STATE_Addressed;
			break;
		}
		/* go ahead only with vailid config. (must be set in event) */
		if (device.IsConfigured == 1)
			USB_DeviceState = DEVICE_STATE_Configured;
		else
			USBD_HandleEP0_Stall();
		break;

	case REQ_SetDescriptor:
		/* Set Descriptor not supported, so stall */
		USBD_HandleEP0_Stall();
		break;

	case REQ_SetInterface:
		if (USB_DeviceState == DEVICE_STATE_Configured) {
			/* TODO: Check if interface and altsetting exists and configuration
			 * is allowed, else stall */
			device.InterfaceSettings[USB_ControlRequest.wIndex] =
											USB_ControlRequest.wValue;
			break;
		}
		if (USB_DeviceState == DEVICE_STATE_Addressed) {
			USBD_HandleEP0_Stall();
			break;
		}
		break;

	case REQ_SetFeature:
		/* we do not support test mode */
		if (Value == FEATURE_SEL_TestMode) {
			USBD_HandleEP0_Stall();
			break;
		}
		/* configured state */
		if (USB_DeviceState == DEVICE_STATE_Configured) {
			switch (Value) {
			case FEATURE_SEL_DeviceRemoteWakeup:
				device.RemoteWakeUp = 1;
				break;
			case FEATURE_SEL_EndpointHalt:
				Index = USB_ControlRequest.wIndex & 0xFF & USB_EP_NUM_MASK;
				if (device.Endpoints[Index].IsConfigured == 0)
					USBD_HandleEP0_Stall();
				else {
					device.Endpoints[Index].IsHalted = 1;
					device.Driver->EndpointStall(USB_ControlRequest.wIndex,1);
				}
				break;
			}
			break;
		}
		/* when addressed, only ep0 can be halted */
		if (USB_DeviceState == DEVICE_STATE_Addressed) {
			if (Value == FEATURE_SEL_EndpointHalt &&
					(USB_ControlRequest.bmRequestType & REQ_RECIPIENT_MASK) ==
											REQREC_ENDPOINT &&
					(USB_ControlRequest.wIndex & 0x00FF) == 0x0) {
				device.Endpoints[0].IsHalted = 1;
				USBD_HandleEP0_Stall();
				break;
			}
		}
		/* default behaviour is stall */
		USBD_HandleEP0_Stall();
		break;

	case REQ_SynchFrame:
		/* Not yet supported */
		USBD_HandleEP0_Stall();
		break;

	default:
		USBD_HandleEP0_Stall();
	}
	device.IsSetupRecieved = 0;
}

/**
 * \brief Handle complete IN transfer on EP0
 *
 * In \ref IN_DATA state it starts a receive and switches to \ref OUT_STATUS
 * state.
 * In \ref IN_STATUS state its starts a new read of setup packets and switches
 * to \ref IDLE.
 */
void USBD_HandleEP0_IN() {
	if (device.EP0_State == IN_DATA) {
		/* Read zero length out data packet */
		device.Driver->EndpointReadStart(0,0,0);
		device.EP0_State = OUT_STATUS;
	}
	if (device.EP0_State == IN_STATUS) {
		/* Request new setup packet */
		device.Driver->EndpointReadStart(device.Endpoints[0].Address,
										device.Endpoints[0].OutBuffer,24);
		device.EP0_State = IDLE;
	}
}


/**
 * \brief Handle complete OUT transfer on EP0
 *
 * Handles the OUT packet based on the state of endpoint 0. Starts a new read
 * for new SETUP packets, when in \ref OUT_STATUS. When endpoint 0 is in
 * \ref OUT_DATA state, it handles the received data and starts a write
 * transaction for \ref IN_STATUS.
 */
void USBD_HandleEP0_OUT() {
	if (device.EP0_State == OUT_DATA) {
		/* Now we have the data for handling the request */
		USBD_Handle_DeviceRequest();
		/* Zero length packet for status stage */
		device.Driver->EndpointWrite(ENDPOINT_DIR_MASK & 0,0,0);
		device.EP0_State = IN_STATUS;
	}
	if (device.EP0_State == OUT_STATUS) {
		/* Request new setup packet */
		device.Driver->EndpointReadStart(device.Endpoints[0].Address,
											device.Endpoints[0].OutBuffer,24);
		device.EP0_State = IDLE;
	}
}

/**
 * \brief Handle SETUP packet on EP0
 *
 * Handles the setup package an switches to correct state. If data is send from
 * host to device it switches into \ref OUT_DATA state. When the hosts sends all
 *  data within the setup package and \ref wLength equals zero, starts
 *  processing the request and sends a in status reponse including the switch
 *  to \ref IN_STATUS. When the host expects data from the device, the function
 *  processes the control request and switches to \ref IN_DATA state.
 */
void USBD_HandleEP0_SETUP() {
	/* read setup package from ep0 */
	int32_t ret_val = device.Driver->EndpointRead(0,
			(void*)&USB_ControlRequest,8);
#if NO_COPY_DRIVER
	memcpy(&USB_ControlRequest,device.Endpoints[0].OutBuffer,
												sizeof(USB_ControlRequest));
#endif
	device.IsSetupRecieved = true;
	if (ret_val != 8 )
		return;

	/* preprocess */
	/* if length is zero we have only a in_status phase */
	if (USB_ControlRequest.wLength==0) {
		device.EP0_State = IN_STATUS;
		USBD_Handle_DeviceRequest();
		device.Driver->EndpointWrite(0,0,0);
	} else {
		if (USB_ControlRequest.bmRequestType & CONTROL_REQTYPE_DIRECTION) {
			device.EP0_State = IN_DATA;
			USBD_Handle_DeviceRequest();
		}
		else {
			device.EP0_State = OUT_DATA;
			/* Do not process request here, first read data */
			device.Driver->EndpointReadStart(0,device.Endpoints[0].OutBuffer,
													USB_ControlRequest.wLength);
		}
	}
}



/**
 * \brief Device event handler for XMC Driver
 *
 * The device can have several events, where it notifies the application about.
 *
 * \note Not all events are available on all chip series. (Power Events are
 * only supported on XMC4500)
 * \see USB_USBD_EVENT
 */
void USBD_SignalDeviceEventHandler(USB_USBD_EVENT_t event) {
	int i;
	switch (event) {
	case USB_USBD_EVENT_RESET:
		USB_DeviceState = DEVICE_STATE_Default;
		device.EP0_State = IDLE;
		device.RemoteWakeUp = 0;
		/* Reset endpoints and configuration */
		for (i=0;i<USB_NUM_EPS; i++) {
			device.Endpoints[i].InInUse = 0;
			device.Endpoints[i].OutInUse = 0;
			device.Endpoints[i].IsHalted = 0;
			if (i!=0 && device.Endpoints[i].IsConfigured) {
				device.Driver->EndpointUnconfigure(device.Endpoints[i].Address);
				device.Endpoints[i].IsConfigured = 0;
				device.Endpoints[i].IsEnabled = 0;
			}
		}
		device.Configuration = 0;
		for (i=0;i<NUM_INTERFACES;i++) {
			device.InterfaceSettings[i] = 0;
		}
		device.Driver->EndpointReadStart(device.Endpoints[0].Address,
										device.Endpoints[0].OutBuffer,24);
		break;
	case USB_USBD_EVENT_SOF:
		if(device.evnts->sof != NULL)
		{
			device.evnts->sof();
		}
		break;
	case USB_USBD_EVENT_CONNECT:
		if(device.evnts->Connect != NULL)
		{
			device.evnts->Connect();
		}
		break;
	case USB_USBD_EVENT_DISCONNECT:
		USB_DeviceState = DEVICE_STATE_Powered;
		if(device.evnts->Disconnect != NULL)
		{
			device.evnts->Disconnect();
		}
		break;
	case USB_USBD_EVENT_POWER_OFF:
		USB_DeviceState = DEVICE_STATE_Unattached;
		if(device.evnts->Disconnect != NULL)
		{
			device.evnts->Disconnect();
		}
		break;
	case USB_USBD_EVENT_POWER_ON:
		USB_DeviceState = DEVICE_STATE_Powered;
		break;
	case USB_USBD_EVENT_REMOTE_WAKEUP:
		break;
	case USB_USBD_EVENT_RESUME:
		USB_DeviceState = device.PreSuspendDeviceState;
		if(device.evnts->WakeUp != NULL)
		{
			device.evnts->WakeUp();
		}
		break;
	case USB_USBD_EVENT_SUSPEND:
		device.PreSuspendDeviceState = USB_DeviceState;
		USB_DeviceState = DEVICE_STATE_Suspended;
		if(device.evnts->Suspend != NULL)
		{
			device.evnts->Suspend();
		}
		break;
	default:
		return;
	}
}

/**
 * \brief Endpoint event handler for the XMC driver
 *
 * If the driver detects an event (See \ref USB_USBD_EP_EVENT) for a specified
 * endpoint it calls this function. Based on the event some further action is
 * taken, e.g. process control request or update transfer information and read
 * data from the driver into the core buffer.
 *
 * \param[in] ep_addr Endpoint address
 * \param[in] ep_event Endpoint event type
 *
 */
void USBD_SignalEndpointEvent_Handler (uint8_t ep_addr,
										USB_USBD_EP_EVENT_t ep_event)
{
	USBD_Endpoint_t *ep =  &device.Endpoints[ep_addr & ENDPOINT_EPNUM_MASK];
	uint8_t temp_num,temp_dir;
	int32_t data_count;
	/* store CurrentEndpoint and direction for restore after handling */
	temp_num = device.CurrentEndpoint;
	temp_dir = device.CurrentDirection;
	/* select the given endpoint */
	device.CurrentEndpoint = ep_addr & ENDPOINT_EPNUM_MASK;
	device.CurrentDirection = ep_addr & ENDPOINT_DIR_MASK;
	/* choose what to do based on the event */
	switch (ep_event) {
	case USB_USBD_EP_EVENT_SETUP:
		ep->OutInUse = 0;
		switch(device.CurrentEndpoint) {
		case 0:
			USBD_HandleEP0_SETUP();
			break;
		default:
			break;
		}
		break;
	case USB_USBD_EP_EVENT_OUT:
		ep->IsOutRecieved = 1;
		if (ep->OutBytesAvailable == 0) {
			ep->OutOffset = 0; /* clear offset, new data is there */
			ep->OutBytesAvailable = device.Driver->EndpointRead(ep->Address,
										ep->OutBuffer,ep->OutBufferLength);
		}
		ep->OutInUse = 0;
		switch(device.CurrentEndpoint) {
		case 0:
			USBD_HandleEP0_OUT();
			break;
		default:
			break;
		}
		break;
	case USB_USBD_EP_EVENT_IN:
		/* loop write transfers */
		if (ep->InDataLeft> 0) {
			data_count = device.Driver->EndpointWrite(ep->Address,
									ep->InDataBuffer,ep->InDataLeft);
			ep->InDataLeft -= data_count;
			ep->InDataBuffer+= data_count;
			return;
		} else if (ep->Number == 0 && ep->InBytesAvailable > 0 &&
						ep->InBytesAvailable!=USB_ControlRequest.wLength &&
						ep->InBytesAvailable % ep->MaxPacketSize == 0)
		{
			/* if the amount of data for endpoint 0 is exact the requested
			 * amount, then no zlp has to be send */
			device.Driver->EndpointWrite(ep->Address,0,0);
		}
		ep->InBytesAvailable = 0;
		ep->InInUse = 0;
		switch(device.CurrentEndpoint) {
		case 0:
			USBD_HandleEP0_IN();
			break;
		default:
			break;
		}
		break;
	}
	device.CurrentEndpoint = temp_num;
	device.CurrentDirection = temp_dir;
}

/**
 * \brief Initialize driver core and driver
 *
 * Intializes the USB driver core data structures and sets it into default
 * state. Afterwards it initializes the USB device controller driver and prepare
 *  it for connection via \ref USBD_Connect.
 */
int USBD_Initialize(USBD_event_CB_t *evnt_CB) {
	int32_t status = 0;
	memset(&device,0x0,sizeof(USBD_Device_t));
	USB_DeviceState = DEVICE_STATE_Unattached;
	device.Driver = &Driver_USBD0;
	device.EP0_State = IDLE;
	device.Endpoints[0].InBuffer = endpoint0_in_buffer;
	device.Endpoints[0].InBufferLength = 256;
	device.Endpoints[0].OutBuffer = endpoint0_out_buffer;
	device.Endpoints[0].OutBufferLength = 256;
	device.Endpoints[0].Direction = 0;
	device.Endpoints[0].IsConfigured = 1;
	device.Endpoints[0].IsEnabled = 1;
	device.Endpoints[0].MaxPacketSize = 64;

	device.evnts = evnt_CB;

	usb_init.usb_max_num_packets_in_rx_fifo = MAX_PKTS_RXFIFO;
	usb_init.usb_max_num_control_eps =
						(USB_MAX_NUM_CONTROL_EPS_t)NUM_CONTROL_EPS;
	usb_init.usb_max_num_in_eps = (USB_MAX_NUM_IN_EPS_t)NUM_IN_EPS;
	usb_init.usb_max_num_out_eps = (USB_MAX_NUM_OUT_EPS_t)NUM_OUT_EPS;
	usb_init.usb_max_num_eps = (USB_MAX_NUM_EPS_t)(usb_init.usb_max_num_in_eps+
								usb_init.usb_max_num_out_eps+
								usb_init.usb_max_num_control_eps+1);

	/*The following values for priority, USB transfer mode should be
	 * replaced with the values from UI*/
	usb_preemption_priority = USB_PRE_PRIORITY;
	usb_sub_priority = USB_SUB_PRIORITY;
	usb_init.usb_transfer_mode = (USB_TRANSFER_MODE_t)USB_XFER_FIFO_MODE;

	/*Enable clock gating*/
	#if(UC_SERIES == XMC44||UC_SERIES == XMC42)
	SCU_CLK->CGATCLR2 |=SCU_CLK_CGATCLR2_USB_Msk;
	#endif
	/* Disable Reset and power up */
	SCU_RESET->PRCLR2 = SCU_RESET_PRCLR2_USBRS_Msk;
#if (UC_SERIES == XMC42) || (UC_SERIES == XMC41)
	SCU_POWER->PWRSET |= SCU_POWER_PWRSET_USBPHYPDQ_Msk;
#else
	SCU_POWER->PWRSET |= SCU_POWER_PWRSET_USBOTGEN_Msk
			| SCU_POWER_PWRSET_USBPHYPDQ_Msk;
#endif

	/* First initalize the device */
	status = device.Driver->Initialize(&USBD_SignalDeviceEventHandler,
							&USBD_SignalEndpointEvent_Handler,usb_init);
	if (status != USB_USBD_OK)
		return -1;

	/* then configure endpoint 0 */
	device.Driver->EndpointConfigure(0,USB_ENDPOINT_CONTROL,
			USB_MAX_PACKET_SIZE,usb_init);
	if (status != USB_USBD_OK) {
		device.Driver->Uninitialize();
		return -1;
	}

	return 0;
}

/**
 * \brief Connect the device to the bus
 *
 * Tell the USB device controller driver to conect to the bus. Successful
 * connection will be shown through update of the device status
 * (\ref USB_DeviceState) and a firing of the \ref EVENT_USB_Device_Connect.
 */
int USBD_Connect() {
	return device.Driver->DeviceConnect();
}

/**
 * \brief Is the enumeration finished?
 *
 * Tell the USB device controller driver if the enumeration interrupt have been
 * reached
 */
int USBD_IsEnumDone(){
	if (device.Driver->IsEnumDone())
		return 1;
	else
		return 0;
 }


/**
 * \brief Set the buffer for an endpoint
 *
 * The user has to ensure the an endpoint has a valid buffer set
 * in order to ensure proper work.
 *
 * \param[in] addr Endpoint address
 * \param[in] buf Buffer pointer
 * \param[in] len Buffer length
 */
void USBD_SetEndpointBuffer(uint8_t addr,uint8_t *buf,uint16_t len)
{
	uint8_t number  = addr & ENDPOINT_EPNUM_MASK;
	if (addr & ENDPOINT_DIR_MASK) {
		device.Endpoints[number].InBuffer = buf;
		device.Endpoints[number].InBufferLength = len;
	} else {
		device.Endpoints[number].OutBuffer = buf;
		device.Endpoints[number].OutBufferLength = len;
	}


}
