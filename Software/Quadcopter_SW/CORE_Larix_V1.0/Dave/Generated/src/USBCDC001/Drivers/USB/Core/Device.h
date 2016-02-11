/*
             LUFA Library
     Copyright (C) Dean Camera, 2011.

  dean [at] fourwalledcubicle [dot] com
           www.lufa-lib.org
*/

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


/** \file
 *  \brief Common USB Device definitions for all architectures.
 *  \copydetails Group_Device
 *
 *  \note This file should not be included directly. It is automatically included as needed by the USB driver
 *        dispatch header located in LUFA/Drivers/USB/USB.h.
 */

/** \ingroup Group_USB
 *  \defgroup Group_Device Device Management
 *  \brief USB Device management definitions for USB device mode.
 *
 *  USB Device mode related definitions common to all architectures. This module contains definitions which
 *  are used when the USB controller is initialized in device mode.
 *
 *  @{
 */

#ifndef __USBDEVICE_H__
#define __USBDEVICE_H__
#ifdef __cplusplus
extern "C"{
#endif

	/* Includes: */
  #include "USBMode.h"
  #include "StdDescriptors.h"
  #include "Endpoint.h"

	/* Preprocessor Checks: */
		#if !defined(__INCLUDE_FROM_USB_DRIVER)
			#error Do not include this file directly. Include LUFA/Drivers/USB/USB.h instead.
		#endif

	/* Public Interface - May be used in end-application: */
		/** Defines different states of USB Device */
			enum USB_Device_States_t
			{
				DEVICE_STATE_Unattached                   = 0, /**< Internally implemented by the library. This state indicates
				                                                *   that the device is not currently connected to a host.
				                                                */
				DEVICE_STATE_Powered                      = 1, /**< Internally implemented by the library. This state indicates
				                                                *   that the device is connected to a host, but enumeration has not
				                                                *   yet begun.
				                                                */
				DEVICE_STATE_Default                      = 2, /**< Internally implemented by the library. This state indicates
				                                                *   that the device's USB bus has been reset by the host and it is
				                                                *   now waiting for the host to begin the enumeration process.
				                                                */
				DEVICE_STATE_Addressed                    = 3, /**< Internally implemented by the library. This state indicates
				                                                *   that the device has been addressed by the USB Host, but is not
				                                                *   yet configured.
				                                                */
				DEVICE_STATE_Configured                   = 4, /**< May be implemented by the user project. This state indicates
				                                                *   that the device has been enumerated by the host and is ready
				                                                *   for USB communications to begin.
				                                                */
				DEVICE_STATE_Suspended                    = 5, /**< May be implemented by the user project. This state indicates
				                                                *   that the USB bus has been suspended by the host, and the device
				                                                *   should power down to a minimal power level until the bus is
				                                                *   resumed.
				                                                */
			};

#ifdef __cplusplus
}
#endif
#endif

/** @} */

