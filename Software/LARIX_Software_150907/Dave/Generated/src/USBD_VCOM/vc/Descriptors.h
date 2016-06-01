/* CODE_BLOCK_BEGIN[Descriptors.h]*/
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
             LUFA Library
     Copyright (C) Dean Camera, 2013.

  dean [at] fourwalledcubicle [dot] com
           www.lufa-lib.org
*/

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

/** \file
 *
 *  Header file for Descriptors.c.
 */

#ifndef _DESCRIPTORS_H_
#define _DESCRIPTORS_H_
/* Enable C linkage for C++ Compilers: */
#if defined(__cplusplus)
	extern "C" {
#endif
	/* Includes: */

		#include "../../USBD/usb/Core/StdDescriptors.h"
        #include "../cdc/CDCClass.h"
	/**
	 * @ingroup USBD_VCOM_constants
	 * @{
	 */
	/* Macros: */
		/** Endpoint number of the CDC device-to-host notification IN
		 * endpoint. */
		#define CDC_NOTIFICATION_EPNUM         1

		/** Endpoint number of the CDC device-to-host data IN endpoint. */
		#define CDC_TX_EPNUM                   2

		/** Endpoint number of the CDC host-to-device data OUT endpoint. */
		#define CDC_RX_EPNUM                   3

		/** Size in bytes of the CDC device-to-host notification IN endpoint. */
		#define CDC_NOTIFICATION_EPSIZE        8

		/** Size in bytes of the CDC data IN and OUT endpoints. */
		#define CDC_TXRX_EPSIZE                64

		/*IN endpoint mask to get the direction of EP*/
		#define CDC_IN_EP_MASK (1 << 7)

		/*OUT endpoint mask to get the direction of EP*/
		#define CDC_OUT_EP_MASK (0 << 7)
	/**
	 * @}
	 */

	/**
	 * @ingroup USBD_VCOM_datastructures
	 * @{
	 */
	/* Type Defines: */
		/** Type define for the device configuration descriptor structure. This
		 * must be defined in the application code, as the configuration
		 * descriptor contains several sub-descriptors which vary between
		 * devices, and which describe the device's usage to the host.
		 */
		typedef struct
		{
			USB_Descriptor_Configuration_Header_t    Config;
			USB_Descriptor_Interface_t               CDC_CCI_Interface;
			USB_CDC_Descriptor_FunctionalHeader_t    CDC_Functional_Header;
			USB_CDC_Descriptor_FunctionalACM_t       CDC_Functional_ACM;
			USB_CDC_Descriptor_FunctionalUnion_t     CDC_Functional_Union;
			USB_Descriptor_Endpoint_t                CDC_NotificationEndpoint;
			USB_Descriptor_Interface_t               CDC_DCI_Interface;
			USB_Descriptor_Endpoint_t                CDC_DataOutEndpoint;
			USB_Descriptor_Endpoint_t                CDC_DataInEndpoint;
		} USB_Descriptor_Configuration_t;
		/**
		 * @}
		 */

/* Disable C linkage for C++ Compilers: */
	#if defined(__cplusplus)
		}
	#endif
#endif

