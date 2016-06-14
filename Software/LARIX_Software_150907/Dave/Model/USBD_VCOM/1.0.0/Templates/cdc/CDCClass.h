/* CODE_BLOCK_BEGIN[CDCClass.h]*/
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

  The author disclaims all warranties with regard to this
  software, including all implied warranties of merchantability
  and fitness.  In no event shall the author be liable for any
  special, indirect or consequential damages or any damages
  whatsoever resulting from loss of use, data or profits, whether
  in an action of contract, negligence or other tortious action,
  arising out of or in connection with the use or performance of
  this software.
*/

/** \file
 *  \brief Master include file for the library USB CDC-ACM Class driver.
 *
 *  Master include file for the library USB CDC Class driver, for both host and
 *   device modes, where available.
 *
 */

/** \ingroup Group_USBClassDrivers
 *  \defgroup Group_USBClassCDC CDC-ACM (Virtual Serial) Class Driver
 *  \brief USB class driver for the USB-IF CDC-ACM (Virtual Serial) class
 *  standard.
 *
 *
 *  \section Sec_ModDescription Module Description
 *  CDC Class Driver module. This module contains an internal implementation of
 *  the USB CDC-ACM class Virtual Serial Ports, for both Device and Host USB
 *  modes. User applications can use this class driver instead of implementing
 *  the CDC class manually via the low-level APIs.
 *
 *  This module is designed to simplify the user code by exposing only the
 *  required interface needed to interface with Hosts or Devices using the USB
 *  CDC Class.
 *
 *  @{
 */

#ifndef _CDC_CLASS_H_
#define _CDC_CLASS_H_
/* Enable C linkage for C++ Compilers: */
#if defined(__cplusplus)
	extern "C" {
#endif
	/* Macros: */
		#define __INCLUDE_FROM_USB_DRIVER
		#define __INCLUDE_FROM_CDC_DRIVER

	/* Includes: */
	#include "../../USBD/usb/Core/USBMode.h" /*IFX*/

	#if defined(USB_CAN_BE_DEVICE)
		#include "Device/CDCClassDevice.h"
	#endif

/* Disable C linkage for C++ Compilers: */
#if defined(__cplusplus)
	}
#endif
#endif

/** @} */

