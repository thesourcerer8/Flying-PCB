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
/**
 * @file xmc4_usb.h
 * @version $Id$
 *
 * @brief USB driver
 *
 * USB Device Driver Header-File.
 *
 * History
 *
 * Version 1.0.0
 *   Initial
 *
 */

#ifndef XMC4_USB_H
#define XMC4_USB_H

#ifdef __cplusplus
extern "C" {
#endif

#include <stdlib.h>
#include <string.h>
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
#include "xmc4_common.h"

/** Register Definitions */
/** Maximum endpoint channel */
#define MAX_EPS_CHANNELS  ( 7U )
/** Maximum periodic fifos in usb core */
#define MAX_PERIO_FIFOS   ( 1U )
/** Maximum tx fifos */
#define MAX_TX_FIFOS      ( 14U )

/* dwc_dma_t type definition and register header file inclusion */
typedef void* dwc_dma_t;
#include "dwc_otg_regs.h"

/** Maximum packet size for endpoint0 */
#define USB_MAX_PACKET_SIZE_EP0 ( 64U )
/** Register Address */
#define USB_BASE_ADDRESS 		( (uint8_t*)USB0_BASE )

/** Number of hardware tx endpoint fifos */
#define USB_NUM_TX_FIFOS    ( 7U )
/** Overall FIFO size in bytes */
#define USB_MAX_FIFO_SIZE   ( 2048U )
/** Number of hardware endpoints */
#define USB_NUM_EPS         ( 7U )
/** Maximum packet size for all endpoints (including ep0) */
#define	USB_MAX_PACKET_SIZE ( 64U )

/**
 * \brief Maximum transfer size for endpoints.
 *
 * It's based on the maximum payload, due to the fact,
 * that we only can transfer 2^10 - 1 packets and this is less than the
 * transfer size field can hold.
 */
#define USB_MAX_TRANSFER_SIZE  (((1<<10)-1)*USB_MAX_PACKET_SIZE)

/**
 * \brief Maximum transfer size for endpoint 0
 *
 * Due to the hardware the endpoint transfer size is limited to 64 byte.
 */
#define USB_MAX_TRANSFER_SIZE_EP0 ( 64U )

/* ep0 definitions */
/** Amount of setup packets */
#define USB_SETUP_COUNT  ( 3U )
/** Size of setup data */
#define USB_SETUP_SIZE   ( 8U )

/* ep definitions */
/** Endpoint number mask */
#define USB_EP_NUM_MASK  ( 0x0FU )
/** Endpoint direction mask */
#define USB_EP_DIR_MASK  ( 0x80U )

/* Register Flags */
/** FS device speed flag in DCFG register */
#define USB_DCFG_DevSpd_FS	 ( 0x3U )

/* Fifo definitions */
/** First fifo register offset from base address */
#define USB_TX_FIFO_REG_OFFSET  ( 0x1000U )
/** Offset for each fifo register */
#define USB_TX_FIFO_OFFSET		( 0x1000U )

/* USB Endpoint Address (bEndpointAddress) */
#define USB_USB_ENDPOINT_NUMBER_MASK    ( 0x0FU )
#define USB_USB_ENDPOINT_DIRECTION_MASK ( 0x80U )

/*  Endpoint Maximum Packet Size (wMaxPacketSize) */
#define USB_ENDPOINT_MAX_PACKET_SIZE_MASK          ( 0x07FFU )
#define USB_ENDPOINT_MICROFRAME_TRANSACTIONS_MASK  ( 0x1800U )
#define USB_ENDPOINT_MICROFRAME_TRANSACTIONS_1     ( 0x0000U )
#define USB_ENDPOINT_MICROFRAME_TRANSACTIONS_2     ( 0x0800U )
#define USB_ENDPOINT_MICROFRAME_TRANSACTIONS_3     ( 0x1000U )

/* Speed Mode. Full Speed */
#define USB_SPEED_FULL (1U)

/** FIFO size for Endpoint 0 in bytes */
#define USB_EP0_TX_FIFO_SIZE 64
/** FIFO size for Endpoint 1 in bytes */
#define USB_EP1_TX_FIFO_SIZE 64
/** FIFO size for Endpoint 2 in bytes */
#define USB_EP2_TX_FIFO_SIZE 64
/** FIFO size for Endpoint 3 in bytes */
#define USB_EP3_TX_FIFO_SIZE 64
/** FIFO size for Endpoint 4 in bytes */
#define USB_EP4_TX_FIFO_SIZE 64
/** FIFO size for Endpoint 5 in bytes */
#define USB_EP5_TX_FIFO_SIZE 64
/** FIFO size for Endpoint 6 in bytes */
#define USB_EP6_TX_FIFO_SIZE 64

/**
 * \name Buffer size
 */
/** Endpoint 0 buffer size */
#define USB_EP0_BUFFER_SIZE 64
/** Endpoint 1 buffer size */
#define USB_EP1_BUFFER_SIZE 64
/** Endpoint 2 buffer size */
#define USB_EP2_BUFFER_SIZE 64
/** Endpoint 3 buffer size */
#define USB_EP3_BUFFER_SIZE 64
/** Endpoint 4 buffer size */
#define USB_EP4_BUFFER_SIZE 256
/** Endpoint 5 buffer size */
#define USB_EP5_BUFFER_SIZE 256
/** Endpoint 6 buffer size */
#define USB_EP6_BUFFER_SIZE 256

#define USB_CHECK_INPUT_MAX_NUM_CONTROL_EPS(usb_max_num_control_eps) \
  ((usb_max_num_control_eps ==  USB_MAX_NUM_CONTROL_EPS_1 ) || \
   (usb_max_num_control_eps ==  USB_MAX_NUM_CONTROL_EPS_2 ) || \
   (usb_max_num_control_eps ==  USB_MAX_NUM_CONTROL_EPS_3 ) || \
   (usb_max_num_control_eps ==  USB_MAX_NUM_CONTROL_EPS_4 ) || \
   (usb_max_num_control_eps ==  USB_MAX_NUM_CONTROL_EPS_5 ) || \
   (usb_max_num_control_eps ==  USB_MAX_NUM_CONTROL_EPS_6 ) || \
   (usb_max_num_control_eps == USB_MAX_NUM_CONTROL_EPS_7 ))

#define USB_CHECK_INPUT_MAX_NUM_OUT_EPS_EPS(usb_max_num_out_eps) \
  ((usb_max_num_out_eps ==  USB_MAX_NUM_OUT_EPS_1  ) || \
   (usb_max_num_out_eps ==  USB_MAX_NUM_OUT_EPS_2 ) || \
   (usb_max_num_out_eps ==  USB_MAX_NUM_OUT_EPS_3 ) || \
   (usb_max_num_out_eps ==  USB_MAX_NUM_OUT_EPS_4 ) || \
   (usb_max_num_out_eps ==  USB_MAX_NUM_OUT_EPS_5 ) || \
   (usb_max_num_out_eps ==  USB_MAX_NUM_OUT_EPS_6 ) || \
   (usb_max_num_out_eps == USB_MAX_NUM_OUT_EPS_7 ))


#define USB_CHECK_INPUT_MAX_NUM_IN_EPS_EPS(usb_max_num_in_eps) \
  ((usb_max_num_in_eps ==  USB_MAX_NUM_IN_EPS_1 ) || \
   (usb_max_num_in_eps ==  USB_MAX_NUM_IN_EPS_2 ) || \
   (usb_max_num_in_eps ==  USB_MAX_NUM_IN_EPS_3 ) || \
   (usb_max_num_in_eps ==  USB_MAX_NUM_IN_EPS_4 ) || \
   (usb_max_num_in_eps ==  USB_MAX_NUM_IN_EPS_5 ) || \
   (usb_max_num_in_eps ==  USB_MAX_NUM_IN_EPS_6 ) || \
   (usb_max_num_in_eps == USB_MAX_NUM_IN_EPS_7 ))

#define USB_CHECK_INPUT_MAX_NUM_EPS_EPS(usb_max_num_eps) \
  ((usb_max_num_eps ==  USB_MAX_NUM_EPS_1 ) || \
   (usb_max_num_eps ==  USB_MAX_NUM_EPS_2 ) || \
   (usb_max_num_eps ==  USB_MAX_NUM_EPS_3 ) || \
   (usb_max_num_eps ==  USB_MAX_NUM_EPS_4 ) || \
   (usb_max_num_eps ==  USB_MAX_NUM_EPS_5 ) || \
   (usb_max_num_eps ==  USB_MAX_NUM_EPS_6 ) || \
   (usb_max_num_eps == USB_MAX_NUM_EPS_7 ))
/**
 * @ingroup USBD_LLD_enumerations
 * @{
 */
/** GRXSTSP Register PktSts options */
typedef enum USB_GRXSTS_PktSts {
  USB_GRXSTS_PktSts_GOutNAK   = 0x1U, /**< Global out nak send ( triggers an interrupt ) */
  USB_GRXSTS_PktSts_OutData   = 0x2U, /**< OUT data packet received */
  USB_GRXSTS_PktSts_OutCmpl   = 0x3U, /**< OUT transfer completed (triggers an interrupt) */
  USB_GRXSTS_PktSts_SetupCmpl = 0x4U, /**< SETUP transaction completed (triggers an interrupt) */
  USB_GRXSTS_PktSts_Setup     = 0x6U /**< SETUP data packet received */
}USB_GRXSTS_PktSts_t;

/**
\brief Enumeration status
*/
typedef enum USB_USBD_ENUM {
USB_USBD_EVENT_ENUM_NOT_DONE, /**< USB Enumeration not Done*/
USB_USBD_EVENT_ENUM_DONE /**< USB Enumeration Done*/
} USB_USBD_ENUM_t;


/** Endpoint type options */
typedef enum USB_EP_TYPE {
  USB_EP_TYPE_Control = 0x0U, /**< Control endpoint */
  USB_EP_TYPE_Iso     = 0x1U, /**< Isochronous endpoint */
  USB_EP_TYPE_Intr    = 0x2U, /**< Interrupt endpint */
  USB_EP_TYPE_Bulk    = 0x3U /**< Bulk endpoint */
}USB_EP_TYPE_t;

/**
\brief  USB Endpoint Type
*/
typedef enum USB_ENDPOINT_TYPE {
  USB_ENDPOINT_CONTROL,
  USB_ENDPOINT_ISOCHRONOUS,
  USB_ENDPOINT_BULK,
  USB_ENDPOINT_INTERRUPT,
} USB_ENDPOINT_TYPE_t;

/**
 * @}
 */


/**
 * @ingroup USBD_LLD_enumerations
 * @{
 */
/**
\brief  USB Device SET_ADDRESS Stage
*/
typedef enum USB_USBD_SET_ADDRESS_STAGE {
  USB_USBD_SET_ADDRESS_SETUP,
  USB_USBD_SET_ADDRESS_STATUS
} USB_USBD_SET_ADDRESS_STAGE_t;


/**
\brief  USB Device Status of executed operation
*/
typedef enum USB_USBD_STATUS {
  USB_USBD_OK       =  0U,               /**< USBD Status: Operation succeeded*/
  USB_USBD_ERROR    =  1U                /**< USBD Status: Unspecified error*/
} USB_USBD_STATUS_t;


/**
\brief  USB Device Event
*/
typedef enum USB_USBD_EVENT {
  USB_USBD_EVENT_POWER_ON,              /**< USB Device Power On*/
  USB_USBD_EVENT_POWER_OFF,             /**< USB Device Power Off*/
  USB_USBD_EVENT_CONNECT,               /**< USB Device connected*/
  USB_USBD_EVENT_DISCONNECT,            /**< USB Device disconnected*/
  USB_USBD_EVENT_RESET,                 /**< USB Reset occurred*/
  USB_USBD_EVENT_HIGH_SPEED,            /**< USB switch to High Speed occurred*/
  USB_USBD_EVENT_SUSPEND,               /**< USB Suspend occurred*/
  USB_USBD_EVENT_RESUME,                /**< USB Resume occurred*/
  USB_USBD_EVENT_REMOTE_WAKEUP,       	/**< USB Remote wakeup*/
  USB_USBD_EVENT_SOF 					/**< USB Start of frame event */ /*IFX*/
} USB_USBD_EVENT_t;

/**
\brief  USB Endpoint Event
*/
typedef enum USB_USBD_EP_EVENT {
  USB_USBD_EP_EVENT_SETUP,              /**< SETUP Packet*/
  USB_USBD_EP_EVENT_OUT,                /**< OUT Packet*/
  USB_USBD_EP_EVENT_IN                  /**< IN Packet*/
} USB_USBD_EP_EVENT_t;

/**
\brief  Transfer Mode
*/
typedef enum USB_TRANSFER_MODE {
  USB_USE_DMA,  /**< transfer by DMA*/
  USB_USE_FIFO,  /**< transfer by FIFO*/
} USB_TRANSFER_MODE_t;

/**
 * @}
 */

/**
\brief Number of Endpoints used
*/
typedef enum USB_MAX_NUM_EPS {
  USB_MAX_NUM_EPS_1 = 1U,
  USB_MAX_NUM_EPS_2 = 2U,
  USB_MAX_NUM_EPS_3 = 3U,
  USB_MAX_NUM_EPS_4 = 4U,
  USB_MAX_NUM_EPS_5 = 5U,
  USB_MAX_NUM_EPS_6 = 6U,
  USB_MAX_NUM_EPS_7 = 7U,
} USB_MAX_NUM_EPS_t;

/**
\brief Number of Control Endpoints
*/
typedef enum USB_MAX_NUM_CONTROL_EPS {
  USB_MAX_NUM_CONTROL_EPS_1 = 1U,
  USB_MAX_NUM_CONTROL_EPS_2 = 2U,
  USB_MAX_NUM_CONTROL_EPS_3 = 3U,
  USB_MAX_NUM_CONTROL_EPS_4 = 4U,
  USB_MAX_NUM_CONTROL_EPS_5 = 5U,
  USB_MAX_NUM_CONTROL_EPS_6 = 6U,
  USB_MAX_NUM_CONTROL_EPS_7 = 7U,
} USB_MAX_NUM_CONTROL_EPS_t;

/**
\brief Number of Output Endpoints
*/
typedef enum USB_MAX_NUM_OUT_EPS {
  USB_MAX_NUM_OUT_EPS_1 = 1U,
  USB_MAX_NUM_OUT_EPS_2 = 2U,
  USB_MAX_NUM_OUT_EPS_3 = 3U,
  USB_MAX_NUM_OUT_EPS_4 = 4U,
  USB_MAX_NUM_OUT_EPS_5 = 5U,
  USB_MAX_NUM_OUT_EPS_6 = 6U,
  USB_MAX_NUM_OUT_EPS_7 = 7U,
} USB_MAX_NUM_OUT_EPS_t;

/**
\brief Number of Input Endpoints
*/
typedef enum USB_MAX_NUM_IN_EPS {
  USB_MAX_NUM_IN_EPS_1 = 1U,
  USB_MAX_NUM_IN_EPS_2 = 2U,
  USB_MAX_NUM_IN_EPS_3 = 3U,
  USB_MAX_NUM_IN_EPS_4 = 4U,
  USB_MAX_NUM_IN_EPS_5 = 5U,
  USB_MAX_NUM_IN_EPS_6 = 6U,
  USB_MAX_NUM_IN_EPS_7 = 7U,
} USB_MAX_NUM_IN_EPS_t;



/**
 * @ingroup USBD_LLD_datastructures
 * @{
 */

/**
\brief  USB Device State
*/
typedef struct USB_USBD_STATE {
  uint8_t powered     : 1;              /**< USB Device powered flag*/
  uint8_t connected   : 1;              /**< USB Device connected flag*/
  uint8_t active      : 1;              /**< USB Device active lag*/
  uint8_t speed       : 2;              /**< USB Device speed setting*/
} USB_USBD_STATE_t;

/**
\brief  USB Device Driver Capabilities.
*/
typedef struct USB_USBD_CAPABILITIES {
  uint32_t event_power_on      :  1;    /**< Signal Power On event*/
  uint32_t event_power_off     :  1;    /**< Signal Power Off event*/
  uint32_t event_connect       :  1;    /**< Signal Connect event*/
  uint32_t event_disconnect    :  1;    /**< Signal Disconnect event*/
  uint32_t event_reset         :  1;    /**< Signal Reset event*/
  uint32_t event_high_speed    :  1;    /**< Signal switch to High-speed event*/
  uint32_t event_suspend       :  1;    /**< Signal Suspend event*/
  uint32_t event_resume        :  1;    /**< Signal Resume event*/
  uint32_t event_remote_wakeup :  1;    /**< Signal Remote Wakeup event*/
  uint32_t reserved            : 23;    /**< reserved for future use*/
} USB_USBD_CAPABILITIES_t;

/**
 * @}
 */




/**
\brief Device Events pointer
*/
/**< Pointer to \ref USB_USBD_SignalDeviceEvent_t : Signal USB Device Event.*/
typedef void (*USB_USBD_SignalDeviceEvent_t)   (USB_USBD_EVENT_t event);

/**
\brief End point Events pointer
*/
/**< Pointer to \ref USB_USBD_SignalEndpointEvent_T : Signal USB Endpoint Event.*/
typedef void (*USB_USBD_SignalEndpointEvent_t) (uint8_t ep_addr, USB_USBD_EP_EVENT_t ep_event);

/**
 * @ingroup USBD_LLD_datastructures
 * @{
 */

/**
 * \brief A struct describing an endpoint
 *
 * All information to control an endpoint is stored in this struct.
 * It contains informatio about the endpoints and the status of the device.
 */
 #ifdef __CC_ARM
 #pragma anon_unions
 #endif
typedef struct xmc_usb_ep{
  /** \name Configuration */
  union {
    uint32_t address:8; /**< the endpoint address including the direction */
      struct {
        uint32_t number:4; /**< the endpoint number */
        uint32_t :3; /**< Pading between number and direction */
        uint32_t direction:1; /**< the endpoint direction */
	  };
    };
  uint32_t type:2; /**< the endpoint type */
  uint32_t isConfigured:1; /**< a flag showing, if the endpoint is configured */
  volatile uint32_t inInUse:1; /**< a flag showing, if the endpoint in in direction is currently in use */
  volatile uint32_t outInUse:1; /**< a flag showing, if the endpoint in out direction is currently in use */
  uint32_t isStalled:1; /**< a flag showing, if the endpoint is stalled. */
  uint32_t txFifoNum:4; /**< TX Fifo Number */
  uint32_t sendZeroLengthPacket:1; /**< a flag showing, if a zero length packet has to be send at the end of the
  	  	  	  	  	  	  	  	  	  transfer */
  uint32_t maxPacketSize:7; /**< the maximum size of packages for this endpoint ( due to FS Speed device only
  	  	  	  	  	  	  	  64 Byte )*/
  uint32_t maxTransferSize:19; /**< the maximum amount of data the core can send at once. (Depends on the field width
  	  	  	  	  	  	  	  	  in the register) */
  /** \name Endpoint buffers */
  uint8_t *outBuffer; /**< the buffer for operation as out endpoint */
  uint32_t outBytesAvailable; /**< bytes available in the out buffer */
  uint32_t outBufferSize; /**< the size of the out buffer */
  uint32_t outOffset; /**< the read offset of the out buffer */
  uint8_t *inBuffer; /**< the buffer for operation as in endpoint */
  uint32_t inBufferSize; /**< the size of the in buffer */
  /* \name Transfer controls */
  uint8_t *xferBuffer; /**< the buffer of the current transfer */
  uint32_t xferLength; /**< the length of the current transfer */
  uint32_t xferCount; /**< bytes transfered of the current transfer */
  uint32_t xferTotal; /**< the length of all data in buffer */
} xmc_usb_ep_t;

/**
 * struct describing a XMC usb device
 *
 * All information to control an xmc usb device is stored in
 * this struct. It contains register, callbacks and information
 * about the endpoints and the status of the device.
 */
typedef struct USB_DEVICE {
  /** \name Endpoints */
  xmc_usb_ep_t ep[8]; /**< Array of endpoints of the device \ref xmc_usb_ep_t */
  /** \name Registers */
  dwc_otg_core_global_regs_t *global_register; /**< Global register interface */
  dwc_otg_device_global_regs_t *device_register; /**< Device register interface */
  dwc_otg_dev_in_ep_regs_t *endpoint_in_register[USB_NUM_EPS]; /**< IN Endpoint register interface */
  dwc_otg_dev_out_ep_regs_t *endpoint_out_register[USB_NUM_EPS]; /**< OUT Endpoint register interface */
  volatile uint32_t *fifo[USB_NUM_TX_FIFOS]; /**< TX Fifo interface */
  /** \name Configuration */
  uint16_t txfifomsk; /**< Mask of used tx fifos */
  /** \name Device Status */
  uint8_t IsConnected:1; /**< Flag if device is connected */
  uint8_t IsActive:1; /**< Flag if device is currently active ( in transfer ) */
  uint8_t IsPowered; /**< Flag if device is powered by Vbus */
  /** \name Callbacks */
  USB_USBD_SignalDeviceEvent_t DeviceEvent_cb; /**< The device event callback */
  USB_USBD_SignalEndpointEvent_t EndpointEvent_cb; /**< The endpoint event callback */
} USB_DEVICE_t;



/**
\brief Initialization structure
*/
typedef struct USB_INIT{
  USB_MAX_NUM_CONTROL_EPS_t usb_max_num_control_eps; /**< Maximum number of Control Endpoints */
  USB_MAX_NUM_OUT_EPS_t usb_max_num_out_eps; /**< Maximum number of OutPut Endpoints  */
  USB_MAX_NUM_IN_EPS_t usb_max_num_in_eps; /**< Maximum number of InPut Endpoints  */
  USB_MAX_NUM_EPS_t usb_max_num_eps;  /**<  Maximum number of max packet size packets to store in rx fifo */
  uint16_t usb_max_num_packets_in_rx_fifo;/**< Number of Packets in RxFifo */
  USB_TRANSFER_MODE_t usb_transfer_mode;/**< USB transfer mode */
} USB_INIT_t;

/**
\brief  Access structure of the USB Device Driver.
*/
/**< Pointer to \ref USB_USBD_GetVersion : Get driver version.*/
typedef struct USB_DRIVER_USBD {
  /**< Pointer to \ref USB_USBD_GetCapabilities : Get driver capabilities.*/
  USB_USBD_CAPABILITIES_t (*GetCapabilities)    (void);

  /**< Pointer to \ref USB_USBD_Initialize : Initialize USB Device Interface.*/
  USB_USBD_STATUS_t       (*Initialize)         (USB_USBD_SignalDeviceEvent_t   cb_device_event,
                                               USB_USBD_SignalEndpointEvent_t cb_endpoint_event,USB_INIT_t usb_init);

  /**< Pointer to \ref USB_USBD_Uninitialize : De-initialize USB Device Interface.*/
  USB_USBD_STATUS_t       (*Uninitialize)       (void);

  /**< Pointer to \ref USB_USBD_DeviceConnect : Connect USB Device.*/
  USB_USBD_STATUS_t       (*DeviceConnect)      (void);

  /**< Pointer to \ref USB_USBD_DeviceDisconnect : Disconnect USB Device.*/
  USB_USBD_STATUS_t       (*DeviceDisconnect)   (void);

  /**< Pointer to \ref USB_USBD_DeviceGetState : Get current USB Device State.*/
  USB_USBD_STATE_t        (*DeviceGetState)     (void);

  /**< Pointer to \ref USB_USBD_DeviceSetAddress : Set USB Device Address.*/
  USB_USBD_STATUS_t       (*DeviceSetAddress)   (uint8_t dev_addr, USB_USBD_SET_ADDRESS_STAGE_t stage);

  /**< Pointer to \ref USB_USBD_EndpointConfigure : Configure USB Endpoint.*/
  USB_USBD_STATUS_t       (*EndpointConfigure)  (uint8_t ep_addr, USB_ENDPOINT_TYPE_t ep_type,
                                               uint16_t ep_max_packet_size, USB_INIT_t init);

  /**< Pointer to \ref USB_USBD_EndpointUnconfigure : Unconfigure USB Endpoint.*/
  USB_USBD_STATUS_t       (*EndpointUnconfigure)(uint8_t ep_addr);

  /**< Pointer to \ref USB_USBD_EndpointStall : Set/Clear Stall for USB Endpoint.*/
  USB_USBD_STATUS_t       (*EndpointStall)      (uint8_t ep_addr, bool stall);

  /**< Pointer to \ref USB_USBD_EndpointReadStart : Start USB Endpoint Read operation.*/
  USB_USBD_STATUS_t       (*EndpointReadStart)  (uint8_t ep_addr,       uint8_t *buf, uint32_t len);

  /**< Pointer to \ref USB_USBD_EndpointRead : Read data from USB Endpoint.*/
  int32_t                 (*EndpointRead)       (uint8_t ep_addr,       uint8_t *buf, uint32_t len);

  /**< Pointer to \ref USB_USBD_EndpointWrite : Write data to USB Endpoint.*/
  int32_t                 (*EndpointWrite)      (uint8_t ep_addr, const uint8_t *buf, uint32_t len);

  /**< Pointer to \ref USB_USBD_EndpointAbort : Abort current USB Endpoint transfer.*/
  USB_USBD_STATUS_t       (*EndpointAbort)      (uint8_t ep_addr);

  /**< Pointer to \ref USB_USBD_GetFrameNumber : Get current USB Frame Number.*/
  uint16_t                (*GetFrameNumber)     (void);

  /**< Pointer to \ref USB_IsEnumDone : Is enumeration done in Host?.*/
  USB_USBD_ENUM_t    	  (*IsEnumDone)         (void);

} const USB_DRIVER_USBD_t;

/**
 * @}
 */


/**
 * \brief Driver interface function table
 *
 * To access the XMC device controller driver interface use this table of functions.
*/
extern const USB_DRIVER_USBD_t Driver_USBD0;

/** \brief XMC device data
 *
 * The instance of structure describing the xmc device.
 *
 * \see xmc_usb_device_t
*/
extern USB_DEVICE_t xmc_device;


/** \brief TX fifo size
 *
 * The size of the TX FIFO
 *
 * \see xmc_usb_device_t
*/
extern const uint16_t USB_TX_FIFO_SIZE[USB_NUM_TX_FIFOS];

/** \brief XMC device data
 *
 *  Out Buffer size for each endpoint.
 *
 */
extern  uint32_t USB_USBD_EP_OUT_BUFFERSIZE[USB_NUM_EPS];


/** \brief XMC device data
 *
 *  In Buffer size for each endpoint.
 *
 */
extern uint32_t USB_USBD_EP_IN_BUFFERSIZE[USB_NUM_EPS];


/*
 * Public Functions
 */

/**
 * @ingroup USBD_LLD_apidoc
 * @{
 */

/**
 *
 * \brief Interface to communicate with the device controller (USB MAC)
 *
 * The complete functionality of the  driver is abstracted to set of functions in this module. The functions do no
 * protocol handling. This has to be done in upper layers.
 *
 */

/**
 * \brief Get the capabilities of the driver
 *
 * \return Driver capabilities
 * \see USBD_CAPABILITIES
 */
USB_USBD_CAPABILITIES_t USB_GetCapabilities(void);

/**
 * \brief initialize the device to get ready to connect
 *
 * \param[in] cb_xmc_device_event Device event callback function pointer
 * \param[in] cb_endpoint_event Endpoint event callback function pointer
 *
 * \return Status of the function (See \ref USB_USBD_STATUS_t).
 */
USB_USBD_STATUS_t USB_Init(USB_USBD_SignalDeviceEvent_t cb_xmc_device_event,
		USB_USBD_SignalEndpointEvent_t cb_endpoint_event, USB_INIT_t usb_init);

/**
 * \brief unitialize the device
 *
 * This function frees all used memory, assert the usb reset again and activates the clock-gating again.
 *
 * \return Status of the function (See \ref USB_USBD_STATUS_t)
 */
USB_USBD_STATUS_t USB_Uninitialize(void);


/**
 * \brief Connect device to bus
 *
 * The function just clears the soft disconnect bit, which activates the speed pull up at d+ line.
 *
 * \return Status of the function (See \ref USB_USBD_STATUS_t)
 */
USB_USBD_STATUS_t USB_DeviceConnect(void);


/**
 * \brief Disconnect device from bus
 *
 * The function just sets the soft disconnect bit, which deactivates the speed pull up at d+ line.
 *
 * \return Status of the function (See \ref USB_USBD_STATUS_t)
 */
USB_USBD_STATUS_t USB_DeviceDisconnect(void);

/**
 * \brief Get the state of the device
 *
 * Power, activity and device state data will be collected and return.
 *
 * \return Device state (See \ref USBD_STATE)
 */
USB_USBD_STATE_t USB_DeviceGetState(void);

/**
 * \brief Set the device Address
 *
 * After a successful device request the device address have to be set. The second parameter has no impact.
 *
 * \param[in] address Device address
 * \param[in] stage Device request stage
 * \return Status of the function (See \ref USB_USBD_STATUS_t)
 */
USB_USBD_STATUS_t USB_DeviceSetAddress(uint8_t address,USB_USBD_SET_ADDRESS_STAGE_t stage);

/**
 * \brief Configure an endpoint for use
 *
 * To configure an endpoint two parameters have to be set, based on the configuration presented to the host.
 * At first the endpoint type hast to be set and then the maximum packet size of that endpoint. This function
 * also initialize the internal buffer handling for the specified endpoint, but does not start any transfers.
 *
 * \param[in] ep_addr Endpoint address
 * \param[in] ep_type Endpoint type
 * \param[in] ep_max_packet_size Endpoint maximum packet size
 *
 * \return Status of the function (See \ref USB_USBD_STATUS_t)
 */
USB_USBD_STATUS_t USB_EndpointConfigure(uint8_t ep_addr,USB_ENDPOINT_TYPE_t ep_type, uint16_t ep_max_packet_size,
																							USB_INIT_t usb_init);

/**
 * \brief Unconfigure endpoint
 *
 * This functions waits until the endpoint has finished operation and disables it. All (eventuallly)
 * allocated buffers will be freed.
 *
 * \return Status of the function (See \ref USB_USBD_STATUS_t)
 */
USB_USBD_STATUS_t USB_EndpointUnconfigure(uint8_t ep_addr);

/**
 * \brief Set the endpoint stall condition
 *
 * Depending on the stall flag the endpoint will respond with stall pids or based on the fifo status.
 *
 * \param[in] ep_addr Endpoint
 * \param[in] stall Stall flag
 *
 * \return Status of the function (See \ref USB_USBD_STATUS_t)
 */
USB_USBD_STATUS_t USB_EndpointStall(uint8_t ep_addr, bool stall);

/**
 * \brief Prepare an endpoint to receive out tokens
 *
 * The selected endpoint gets configured, so that it receives the specified amount of data from the host.
 *
 * \param[in] ep_addr Endpoint address
 * \param[in] buffer Buffer address to store data at
 * \param[in] size Size of the buffer
 * \return Status of the function (See \ref USB_USBD_STATUS_t)
 */
USB_USBD_STATUS_t USB_EndpointReadStart(uint8_t ep_addr,uint8_t * buffer,uint32_t size);

/**
 * \brief Read data from an endpoint
 *
 * If data has been received for this endpoint, it gets copied into the user buffer until its full
 * or no data is left in the driver buffer.
 *
 * \param[in] ep_addr Endpoint address
 * \param[in] buffer User buffer
 * \param[in] length Length of data to read
 * \return Amount of data read from the endpoint buffer (>=0) or a negative value if an error happened
 */
int32_t USB_EndpointRead(uint8_t ep_addr,uint8_t * buffer,uint32_t length);

/**
 * \brief Write data to an endpoint
 *
 * The User data gets copied into the driver buffer or will be send directly based on the buffer concept
 * choosen in the configuration. After that the endpoint will be set up to transfer the data to the host.
 *
 * \param[in] ep_addr Endpoint address
 * \param[in] buffer Data buffer to write to the endpoint
 * \param[in] length Length of the data buffer
 *
 * \return Amount of data written to the endpoint buffer (>=0) or a negative value if an error happened
 */
int32_t USB_EndpointWrite(uint8_t ep_addr,const uint8_t * buffer,uint32_t length);

/**
 * \brief Abort the current endpoint operation
 *
 * On any failure with the USB transmission you can reset the endpoint into default state and clear all
 * assigned buffers, to start from a clean point. The endpoint will not be unconfigured or disabled.
 * ( Therefore see \ref USB_UnconfigureEndpoint ) This function forces the endpoint to stop immediately,
 * any pending transfers are killed. ( Can cause device reset. )
 *
 * \param[in] Endpoint address
 * \return Status of the function (See \ref USB_USBD_STATUS_t)
 */
USB_USBD_STATUS_t USB_EndpointAbort(uint8_t ep_addr);

/**
 * \brief Get the current USB frame number
 *
 * \return Frame number
 */
uint16_t USB_GetFrameNumber(void);

/**
 * \brief Is Enumeration Done?
 *
 * \return USB_USBD_ENUM
 */
USB_USBD_ENUM_t USB_IsEnumDone(void);


/**
 * @}
 */


#ifdef __cplusplus
}
#endif

#endif /* XMC4_USB_H */

