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

/** \file
 *  \brief Special function/variable attribute macros.
 *
 *  \copydetails Group_FuncVarAttributes
 *
 *  \note Do not include this file directly, rather include the Common.h header
 *  file instead to gain this file's  functionality.
 */

/** \ingroup Group_Common
 *  \defgroup Group_FuncVarAttributes Function/Variable Attributes
 *  \brief Special function/variable attribute macros.
 *
 *  This module contains macros for applying specific attributes to functions
 *  and variables to control various optimizer and code generation features of
 *  the compiler. Attributes may be placed in the function prototype or variable
 *   declaration in any order, and multiple attributes can be specified for a
 *   single item via a space separated list.
 *
 *  On incompatible versions of GCC or on other compilers, these macros evaluate
 *   to nothing unless they are critical to the code's function and thus must
 *   throw a compile error when used.
 *
 *  @{
 */

#ifndef __ATTR_H__
#define __ATTR_H__

#ifdef __cplusplus
extern "C"{
#endif


	/* Public Interface - May be used in end-application: */
		/* Macros: */


			/** Marks a variable or struct element for packing into the smallest
			 *  space available, omitting any  alignment bytes usually added
			 *  between fields to optimise field accesses.
			 */

			#ifdef __ICCARM__/*IAR*/
			#define IAR_ATTR_PACKED __packed
			#define ATTR_PACKED
			#define TASKING_ATTR_PACKED
			#elif defined __TASKING__/*tasking*/
			#define TASKING_ATTR_PACKED __packed__
			#define ATTR_PACKED
			#define IAR_ATTR_PACKED
			#else
			#define ATTR_PACKED __attribute__((packed))/*For GCC,Keil*/
			#define IAR_ATTR_PACKED
			#define TASKING_ATTR_PACKED
			#endif

#ifdef __cplusplus
}
#endif
#endif/*__ATTR_H__*/

/** @} */

