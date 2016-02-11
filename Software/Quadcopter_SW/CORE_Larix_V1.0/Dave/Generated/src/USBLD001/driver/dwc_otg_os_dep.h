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
** MODIFICATION DATE : Apr 8, 2012                                            **
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

#ifndef _DWC_OS_DEP_H_
#define _DWC_OS_DEP_H_
#ifdef __cplusplus
extern "C"{
#endif
/**
 * @file
 *
 * This file contains OS dependent structures.
 *
 */
#ifndef USE_IFX_DEV 
#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/moduleparam.h>
#include <linux/init.h>
#include <linux/device.h>
#include <linux/errno.h>
#include <linux/types.h>
#include <linux/slab.h>
#include <linux/list.h>
#include <linux/interrupt.h>
#include <linux/ctype.h>
#include <linux/string.h>
#include <linux/dma-mapping.h>
#include <linux/jiffies.h>
#include <linux/delay.h>
#include <linux/timer.h>
#include <linux/workqueue.h>
#include <linux/stat.h>
#include <linux/pci.h>

#include <linux/version.h>

#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,6,20)
# include <linux/irq.h>
#endif

#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,6,21)
# include <linux/usb/ch9.h>
#else
# include <linux/usb_ch9.h>
#endif

#if LINUX_VERSION_CODE >= KERNEL_VERSION(2,6,24)
# include <linux/usb/gadget.h>
#else
# include <linux/usb_gadget.h>
#endif

#if LINUX_VERSION_CODE < KERNEL_VERSION(2,6,20)
# include <asm/irq.h>
#endif

#ifdef PCI_INTERFACE
# include <asm/io.h>
#endif

#ifdef LM_INTERFACE
# include <asm/unaligned.h>
# include <asm/sizes.h>
# include <asm/param.h>
# include <asm/io.h>
# include <asm/arch/lm.h>
# include <asm/arch/irqs.h>
# include <asm/arch/regs-irq.h>
#endif

/** The OS page size */
#define DWC_OS_PAGE_SIZE	PAGE_SIZE

#if LINUX_VERSION_CODE < KERNEL_VERSION(2,6,14)
typedef int gfp_t;
#endif

#if LINUX_VERSION_CODE < KERNEL_VERSION(2,6,18)
# define IRQF_SHARED SA_SHIRQ
#endif
#endif
typedef struct os_dependent {
	/** Base address returned from ioremap() */
	void *base;

	/** Register offset for Diagnostic API */
	uint32_t reg_offset;

#ifdef LM_INTERFACE
	struct lm_device *lmdev;
#elif  defined(PCI_INTERFACE)
	struct pci_dev *pcidev;

	/** Start address of a PCI region */
	resource_size_t rsrc_start;
	
	/** Length address of a PCI region */
	resource_size_t rsrc_len;
#elif defined USE_IFX_DEV 
	void* ifx_dev;
#endif
} os_dependent_t;

#ifdef __cplusplus
}
#endif

#endif /* _DWC_OS_DEP_H_ */
