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
 * @file  usbd.h
 *
 * @brief This file contains all public data structures,enums and function
 *        prototypes for USBD App.
 *
 */

#ifndef USBD_H_
#define USBD_H_
#include <uc_id.h>

#if (__TARGET_DEVICE__ == XMC45)
#include <XMC4500.h>
#elif (__TARGET_DEVICE__ == XMC44)
#include <XMC4400.h>
#elif ((__TARGET_DEVICE__ == XMC42) ||(__TARGET_DEVICE__ == XMC41) )
#include <XMC4200.h>
#else
#error "Unsupported XMC family"
#endif
#include "../../src/USBD/usbd/usbd_config.h"
#include "../../src/USBD_LLD/driver/xmc4_usb.h"

/* Enable C linkage for C++ Compilers: */
#if defined(__cplusplus)
	extern "C" {
#endif
/**
 * @ingroup USBD_enumerations
 * @{
 */
/**
 * \brief State machine of Endpoint 0
 */
typedef enum EP0_State {
	DISCONNECT, /**< Device is disconnected */
	IDLE, /**< Endpoint 0 is in IDLE state */
	IN_DATA, /**< Endpoint 0 is sending data */
	IN_STATUS, /**< Endpoint 0 sends a acknowledge to the host */
	OUT_DATA, /**< Endpoint 0 is reading data from the host */
	OUT_STATUS /**< Endpoint 0 waits for an acknowledge from the host */
}EP0_State_t;
/**
 * @}
 */

/**
 * @ingroup USBD_datastructures
 * @{
 */
/**
 * \brief USBD Endpoint
 *
 * Type define for a USBD Enpoint. This structure represents an endpoint.
 * It contains all necessary data to:
 * - control the state of the endpoint
 * - manage the data buffer
 *
 */
typedef struct USBD_Endpoint {
	/**
	 * \name Endpoint Parameters
	 */
	/*@{*/
	union {
		uint32_t Address:8; /**< Full device address (including direction)  */
		struct {
			uint32_t Number:4; /**< Endpoint number */
			uint32_t :3;
			uint32_t Direction:1; /**< Endpoint direction */
		};

	};

	/* Endpoint flags */
	uint32_t IsConfigured:1; /**< Flag showing that the endpoint is configured */
	uint32_t IsEnabled:1; /**< Flag showing that the endpoint is enabled */
	uint32_t IsHalted:1; /**< Flag showing that the endpoint is halted */
	volatile uint32_t OutInUse:1; /**< Flag showing that the endpoint is in use as out */
	volatile uint32_t InInUse:1; /**< Flag showing that the endpoint is in use as in */
	volatile uint32_t IsOutRecieved:1; /**< Flag showing that an out packet has been received for that endpoint */
	uint32_t MaxPacketSize:7; /**< Maximum packet size for the endpoint */
	/*@}*/

	/**
	 * \name Out endpoint buffer management
	 */
	/*@{*/
	uint32_t OutBytesAvailable; /**< Amount of data in the out buffer */
	uint32_t OutOffset; /**< Amount of data that have been read from the buffer */
	uint8_t *OutBuffer; /**< Address of the out buffer */
	uint32_t OutBufferLength; /**< Length of the out buffer */
	/*@}*/

	/**
	 * \name In endpoint buffer management
	 */
	/*@{*/
	uint32_t InBytesAvailable; /**< Amount of data written into the buffer */
	uint8_t *InBuffer; /**< Address of in Buffer */
	uint32_t InBufferLength; /**< Length of the in buffer */
	uint32_t InDataLeft; /**< Data left in the in buffer to send */
	uint8_t* InDataBuffer; /**< Current start address of the in buffer */
	/*@}*/
} USBD_Endpoint_t;

/**
 * USBD_event_call back-For top level apps
 *
 */
typedef struct USBD_event_CB
{
	void (*Connect)(void);      /**< Connect Event*/
	void (*Disconnect)(void);   /**< Disconnect Event*/
	void (*ConfigChanged)(void);    /**< Configuration changed Event*/
	void (*ControlRequest)(void);    /**< Control Request Event*/
	void (*AddressSet)(void);       /**< Set Address Event*/
	uint16_t (*GetDescriptor)(const uint16_t wValue, const uint16_t wIndex,
			const void** const DescriptorAddress);/**< GetDescriptor Event*/
	void (*WakeUp)(void);		/**< USB wakeup event*/
	void (*Suspend)(void);		/**< USB suspend event*/
	void (*sof)(void);			/**< USB start of frame event.*/
}USBD_event_CB_t;


/** \brief USBD Device
 *
 * Type define for an USB Device. This structure contains the all data of the
 * device for the USB Device Core Driver. Especially the data of the endpoints
 * are stored inside.
 */
typedef struct USBD_Device {
	USB_DRIVER_USBD_t *Driver; /**< USB device controller driver structure */
	USBD_Endpoint_t Endpoints[7]; /**< Endpoint structures describing each endpoint of the device */

	uint8_t InterfaceSettings[NUM_INTERFACES]; /**< Array of the currently selected AlternativeSetting of an interface */
	uint8_t Configuration; /**< Current USB device configuration */
	uint8_t PreSuspendDeviceState; /**< Device State bevor suspend is recieved to restore the old state, when resume is received */
	EP0_State_t EP0_State; /**< Endpoint 0 state */
	uint8_t CurrentEndpoint; /**< Endpoint selected for the LUFA stack */
	uint8_t CurrentDirection; /**< Direction selected for the LUFA stack */
	uint8_t IsConfigured:1; /**< Flag showing if the device was successfully configured */
	volatile uint8_t IsSetupRecieved:1; /**< Flag showing if a setup packet is received */
	uint8_t RemoteWakeUp:1; /**< Flag for feature Remote WakeUP signaling */
	uint8_t SelfPowered:1; /**< Flag for feature Self Powered */
	USBD_event_CB_t *evnts;/**Pointer to USB event call back structure*/
} USBD_Device_t;
/**
 * @}
 */


/**
 * \brief Gloabal \ref USBD_Device_t structure describing the device.
 */
extern USBD_Device_t device;

/**
 * @ingroup USBD_apidoc
 * @{
 */
/**
 * \brief Device Event Handler for the device controller driver
 *
 * Handles device events send by the device controller driver. See
 * \ref USBD_SignalDeviceEvent
 */
void USBD_SignalDeviceEventHandler(USB_USBD_EVENT_t event);

/**
 * \brief Endpoint Event Handler for the device controller driver
 *
 * Handles endpoint events send by the device controller driver. See
 * \ref USBD_SignalEndpointEvent_Handler
 */
void USBD_SignalEndpointEvent_Handler (uint8_t ep_addr,
										USB_USBD_EP_EVENT_t ep_event);
/**
 * @}
 */


/**
 * @ingroup USBD_apidoc
 * @{
 */
/**
 * \brief Initialize the USB device core driver
 *
 * In preparation for using the USB device this function initialises the device
 * core driver and the device controller driver.It executes all necessary tasks
 * to start working as USB device and handle request from the host.
 *
 * \note To start working you need to call \ref USBD_Connect to connect to the
 * host.
 */
int USBD_Initialize(USBD_event_CB_t *evnt_CB);

/**
 * \brief Connect the device
 *
 * Connects the device to the bus.
 */
int USBD_Connect(void);

/**
 * \brief Disconnect the device
 *
 * Disconnects the device from the bus.
 */
void USBD_Disconnect(void);

/**
 * \brief Is the enumeration done?
 *
 * Returns 1 if the enumeration is done.
 */
int USBD_IsEnumDone(void);

/** \brief Configure an USBD Endpoint
 *
 * Convenience function to configure an endpoint. It sets the address, the
 * transfer buffer and its size
 * and the maximum packet size.
 * \param[in] addr Endpoint address
 * \param[in] buf Endpoint buffer
 * \param[in] len Buffer size
 */
void USBD_SetEndpointBuffer(uint8_t addr,uint8_t *buf,uint16_t len);
/**
 * @}
 */

/* Disable C linkage for C++ Compilers: */
#if defined(__cplusplus)
	}
#endif
#endif /* USBD_H_ */


