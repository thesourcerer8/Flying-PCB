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
 *
 *  Header file for Descriptors.c.
 */

#ifndef _DESCRIPTORS_H_
#define _DESCRIPTORS_H_

#ifdef __cplusplus
extern "C"{
#endif

	/* Includes: */
		#include "../../src/USBCDC001/Drivers/USB/USB.h"

	/* Macros: */
		/** Endpoint number of the CDC device-to-host notification IN endpoint. */
		#define CDC_NOTIFICATION_EPNUM         2

		/** Endpoint number of the CDC device-to-host data IN endpoint. */
		#define CDC_TX_EPNUM                   3

		/** Endpoint number of the CDC host-to-device data OUT endpoint. */
		#define CDC_RX_EPNUM                   4

		/** Size in bytes of the CDC device-to-host notification IN endpoint. */
		#define CDC_NOTIFICATION_EPSIZE        8

		/** Size in bytes of the CDC data IN and OUT endpoints. */
		#define CDC_TXRX_EPSIZE                16

	/* Type Defines: */
		/** Type define for the device configuration descriptor structure. This must be defined in the
		 *  application code, as the configuration descriptor contains several sub-descriptors which
		 *  vary between devices, and which describe the device's usage to the host.
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

	/* Function Prototypes: */
	     /** Function to retrieve a given descriptor's size and memory location from the given descriptor type value,
       *  index and language ID. This function MUST be overridden in the user application (added with full, identical
       *  prototype and name so that the library can call it to retrieve descriptor data.
       *
       *  \param[in] wValue               The type of the descriptor to retrieve in the upper byte, and the index in the
       *                                  lower byte (when more than one descriptor of the given type exists, such as the
       *                                  case of string descriptors). The type may be one of the standard types defined
       *                                  in the DescriptorTypes_t enum, or may be a class-specific descriptor type value.
       *  \param[in] wIndex               The language ID of the string to return if the \c wValue type indicates
       *                                  DTYPE_String, otherwise zero for standard descriptors, or as defined in a
       *                                  class-specific standards.
       *  \param[out] DescriptorAddress   Pointer to the descriptor in memory. This should be set by the routine to
       *                                  the address of the descriptor.
       *
       *  \note By default, the library expects all descriptors to be located in flash memory via the \c PROGMEM attribute.
       *        If descriptors should be located in RAM or EEPROM instead (to speed up access in the case of RAM, or to
       *        allow the descriptors to be changed dynamically at runtime) either the \c USE_RAM_DESCRIPTORS or the
       *        \c USE_EEPROM_DESCRIPTORS tokens may be defined in the project makefile and passed to the compiler by the -D
       *        switch.
       *
       *  \return Size in bytes of the descriptor if it exists, zero or NO_DESCRIPTOR otherwise.
       */
  		 int16_t CALLBACK_USB_GetDescriptor(const uint16_t wValue,
		                                    const uint8_t wIndex,
		                                    const void** const DescriptorAddress)
		                                    ATTR_WARN_UNUSED_RESULT ATTR_NON_NULL_PTR_ARG(3);
#ifdef __cplusplus
}
#endif
#endif

