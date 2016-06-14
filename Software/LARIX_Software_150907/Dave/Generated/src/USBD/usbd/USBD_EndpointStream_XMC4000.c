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
 * @file   USBD_EndpointStream_XMC4000.c
 *
 * @brief Source file for USB device end point streaming functions.
 *
 * It provides functions to handle End point data streaming.
 */

#include "usbd.h"
#include "USBD_EndpointStream_XMC4000.h"
#include "../usb/Core/EndpointStream.h"
#include "../usb/Core/Endpoint.h"

/*Flag to indicate the zlp to be sent or not*/
volatile uint8_t zlp_flag = 0;

uint8_t Endpoint_Write_Stream_LE (const void *const Buffer, uint16_t Length,
											uint16_t *const BytesProcessed)
{
	USBD_Endpoint_t* ep = &device.Endpoints[device.CurrentEndpoint];
	uint16_t Bytes = 0;
	uint16_t BytesTransfered = 0;
	uint8_t ErrorCode;
	uint16_t prev_length = 0;

	if (BytesProcessed!=NULL) {
		Length -= *BytesProcessed;
		BytesTransfered = *BytesProcessed;
	}

	while (Length) {
		if (ep->InInUse)
			continue;
		if (Endpoint_IsReadWriteAllowed()) {
			if((ep->InBufferLength - ep->InBytesAvailable)  > Length)
			{
				Bytes = Length;
			}
			else
			{
				Bytes = (ep->InBufferLength - ep->InBytesAvailable);
			}
			memcpy(ep->InBuffer + ep->InBytesAvailable,
								(uint8_t*)Buffer + BytesTransfered,Bytes);
			ep->InBytesAvailable += Bytes;
			BytesTransfered += Bytes;
			prev_length = Length;
			Length -= Bytes;
		}
		else {
			Endpoint_ClearIN();
			 if(Length < ep->MaxPacketSize)
			 {
				if (BytesProcessed!=NULL) {
					*BytesProcessed = BytesTransfered;
					return ENDPOINT_RWSTREAM_IncompleteTransfer;
				}
			 }

			ErrorCode = Endpoint_WaitUntilReady();
			if (ErrorCode) {
				return ErrorCode;
			}


		}
	}

	if((Length == 0) && (prev_length == ep->MaxPacketSize))
	{
#if (SEND_ZLP_FROM_APP == 1)
	zlp_flag = false;
#else
	zlp_flag = true;
#endif
	}
	return ENDPOINT_RWSTREAM_NoError;
}

void SwapCopy(void *const Dest, const void *const Src,uint32_t Length) {
	uint32_t i = 0;
	while(i<Length) {
		*(uint8_t*)((uint8_t*)Dest + (Length - 1 - i)) =
											*(uint8_t*)((uint8_t*)Src + i);
		i++;
	}
}
uint8_t	Endpoint_Write_Stream_BE (const void *const Buffer, uint16_t Length,
											uint16_t *const BytesProcessed)
{
	USBD_Endpoint_t* ep = &device.Endpoints[device.CurrentEndpoint];
	uint16_t Bytes = 0;
	uint16_t BytesTransfered = 0;
	uint8_t ErrorCode;

	if (BytesProcessed!=NULL) {
		Length -= *BytesProcessed;
		BytesTransfered = *BytesProcessed;
	}

	while (Length) {
		if (ep->InInUse)
			continue;
		if (Endpoint_IsReadWriteAllowed()) {
			if((ep->InBufferLength - ep->InBytesAvailable)  > Length)
			{
				Bytes = Length;
			}
			else
			{
				Bytes = (ep->InBufferLength - ep->InBytesAvailable);
			}

			SwapCopy(ep->InBuffer + ep->InBytesAvailable,
								(uint8_t*)Buffer + BytesTransfered,Bytes);
			ep->InBytesAvailable += Bytes;
			BytesTransfered += Bytes;
			Length -= Bytes;
		}
		else {
			Endpoint_ClearIN();
			if (BytesProcessed!=NULL) {
				*BytesProcessed = BytesTransfered;
				return ENDPOINT_RWSTREAM_IncompleteTransfer;
			}

			ErrorCode = Endpoint_WaitUntilReady();
			if (ErrorCode) {
				return ErrorCode;
			}


		}
	}
	return ENDPOINT_RWSTREAM_NoError;
}

uint8_t	Endpoint_Read_Stream_LE (void *const Buffer, uint16_t Length,
									uint16_t *const BytesProcessed)
{
	USBD_Endpoint_t* ep = &device.Endpoints[device.CurrentEndpoint];
	uint16_t Bytes = 0;
	uint16_t BytesTransfered = 0;
	uint8_t ErrorCode;

	if (BytesProcessed!=NULL) {
		Length -= *BytesProcessed;
		BytesTransfered = *BytesProcessed;
	}

	while (Length) {
		if (ep->OutInUse)
			continue;
		if (Endpoint_IsReadWriteAllowed()) {
			if(ep->OutBytesAvailable  > Length)
			{
				Bytes = Length;
			}
			else
			{
				Bytes =  ep->OutBytesAvailable;
			}

			memcpy((uint8_t*)Buffer + BytesTransfered,
									ep->OutBuffer + ep->OutOffset,Bytes);
			ep->OutBytesAvailable -= Bytes;
			ep->OutOffset += Bytes;
			BytesTransfered += Bytes;
			Length -= Bytes;
		}
		else {
			Endpoint_ClearOUT();
			if (BytesProcessed!=NULL) {
				*BytesProcessed = BytesTransfered;
				return ENDPOINT_RWSTREAM_IncompleteTransfer;
			}

			ErrorCode = Endpoint_WaitUntilReady();
			if (ErrorCode) {
				return ErrorCode;
			}


		}
	}
	return ENDPOINT_RWSTREAM_NoError;
}

uint8_t	Endpoint_Read_Stream_BE (void *const Buffer, uint16_t Length,
									uint16_t *const BytesProcessed)
{
	USBD_Endpoint_t* ep = &device.Endpoints[device.CurrentEndpoint];
	uint16_t Bytes = 0;
	uint16_t BytesTransfered = 0;
	uint8_t ErrorCode;

	if (BytesProcessed!=NULL) {
		Length -= *BytesProcessed;
		BytesTransfered = *BytesProcessed;
	}

	while (Length) {
		if (ep->InInUse)
			continue;
		if (Endpoint_IsReadWriteAllowed()) {
			if(ep->OutBytesAvailable  > Length)
			{
				Bytes = Length;
			}
			else
			{
				Bytes = ep->OutBytesAvailable;
			}

			SwapCopy((uint8_t*)Buffer + BytesTransfered,
									ep->OutBuffer + ep->OutOffset,Bytes);
			ep->OutBytesAvailable -= Bytes;
			ep->OutOffset += Bytes;
			BytesTransfered += Bytes;
			Length -= Bytes;
		}
		else {
			Endpoint_ClearOUT();
			if (BytesProcessed!=NULL) {
				*BytesProcessed = BytesTransfered;
				return ENDPOINT_RWSTREAM_IncompleteTransfer;
			}

			ErrorCode = Endpoint_WaitUntilReady();
			if (ErrorCode) {
				return ErrorCode;
			}


		}
	}
	return ENDPOINT_RWSTREAM_NoError;
}

uint8_t	Endpoint_Write_Control_Stream_LE (const void *const Buffer,
													uint16_t Length)
{
	USBD_Endpoint_t *EndPoint = &device.Endpoints[0];
	uint16_t Bytes;

	while (Length) {
		if (!EndPoint->InInUse) {
			if (EndPoint->InBufferLength > Length) {
				Bytes = Length;
			} else {
				Bytes = EndPoint->InBufferLength;
			}
			memcpy(EndPoint->InBuffer,Buffer,Bytes);
			EndPoint->InBytesAvailable += Bytes;
			Length -= Bytes;

			Endpoint_ClearIN();
		}
	}
	return ENDPOINT_RWCSTREAM_NoError;
}

uint8_t	Endpoint_Write_Control_Stream_BE (const void *const Buffer,
													uint16_t Length)
{
	return Endpoint_Write_Control_Stream_LE(Buffer,Length);
}

uint8_t	Endpoint_Read_Control_Stream_LE (void *const Buffer, uint16_t Length) {
	USBD_Endpoint_t *EndPoint = &device.Endpoints[0];
	uint16_t Bytes;

	while (Length) {
		if (EndPoint->IsOutRecieved) {
			if(EndPoint->OutBytesAvailable > Length)
			{
				Bytes = Length;
			}
			else
			{
				Bytes = EndPoint->OutBytesAvailable;
			}

			memcpy(Buffer,EndPoint->OutBuffer,Bytes);
			EndPoint->OutBytesAvailable -= Bytes;
			Length -= Bytes;

			Endpoint_ClearOUT();
		}
	}
	return ENDPOINT_RWCSTREAM_NoError;
}

uint8_t	Endpoint_Read_Control_Stream_BE (void *const Buffer, uint16_t Length) {
	return Endpoint_Read_Control_Stream_LE(Buffer,Length);
}

uint8_t Endpoint_Null_Stream(uint16_t Length,
								 uint16_t* const BytesProcessed) {
	USBD_Endpoint_t* ep = &device.Endpoints[device.CurrentEndpoint];
		uint16_t Bytes = 0;
		uint16_t BytesTransfered = 0;
		uint8_t ErrorCode;

		if (BytesProcessed!=NULL) {
			Length -= *BytesProcessed;
			BytesTransfered = *BytesProcessed;
		}

		while (Length) {
			if (ep->InInUse)
				continue;
			if (Endpoint_IsReadWriteAllowed()) {
				if((ep->InBufferLength - ep->InBytesAvailable)  > Length)
				{
					Bytes = Length;
				}
				else
				{
					Bytes = (ep->InBufferLength - ep->InBytesAvailable);
				}

				memset(ep->InBuffer + ep->InBytesAvailable,0x0,Bytes);
				ep->InBytesAvailable += Bytes;
				BytesTransfered += Bytes;
				Length -= Bytes;
			}
			else {
				Endpoint_ClearIN();
				if (BytesProcessed!=NULL) {
					*BytesProcessed = BytesTransfered;
					return ENDPOINT_RWSTREAM_IncompleteTransfer;
				}

			ErrorCode = Endpoint_WaitUntilReady();
			if (ErrorCode) {
				return ErrorCode;
			}


			}
		}
		return ENDPOINT_RWSTREAM_NoError;
}

