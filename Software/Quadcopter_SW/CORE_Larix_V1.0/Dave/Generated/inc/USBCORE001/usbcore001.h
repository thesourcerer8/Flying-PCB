
/* CODE_BLOCK_BEGIN[USBCORE001.h]*/
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

/* ==========================================================================
 * $File: //dwh/usb_iip/dev/software/otg/linux/drivers/dwc_otg_hcd.h $
 * $Revision: #57 $
 * $Date: 2010/11/29 $
 * $Change: 1636033 $
 *
 * Synopsys HS OTG Linux Software Driver and documentation (hereinafter,
 * "Software") is an Unsupported proprietary work of Synopsys, Inc. unless
 * otherwise expressly agreed to in writing between Synopsys and you.
 *
 * The Software IS NOT an item of Licensed Software or Licensed Product under
 * any End User Software License Agreement or Agreement for Licensed Product
 * with Synopsys or any supplement thereto. You are permitted to use and
 * redistribute this Software in source and binary forms, with or without
 * modification, provided that redistributions of source code must retain this
 * notice. You may not view, use, disclose, copy or distribute this file or
 * any information contained herein except pursuant to this license grant from
 * Synopsys. If you do not agree with this notice, including the disclaimer
 * below, then you are not authorized to use the Software.
 *
 * THIS SOFTWARE IS BEING DISTRIBUTED BY SYNOPSYS SOLELY ON AN "AS IS" BASIS
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE HEREBY DISCLAIMED. IN NO EVENT SHALL SYNOPSYS BE LIABLE FOR ANY DIRECT,
 * INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH
 * DAMAGE.
 * ========================================================================== */
 
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

#ifndef __USBCORE001_H_
#define __USBCORE001_H_
#ifdef __cplusplus
extern "C"{
#endif


/**
 * @file  USBCORE001.h
 *
 * @brief This file contains all public data structures,enums and function
 *        prototypes for USB Core Layer App.
 *
 */

/*******************************************************************************
**                      INCLUDE FILES                                         **
*******************************************************************************/
#include "../../src/USBLD001/Type_CM.h"
#include "../../src/USBLD001/driver/dwc_otg_os_dep.h"
#include "../../src/USBLD001/driver/dwc_otg_core_if.h"


/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/

/**
 * @ingroup USBCORE001_publicparam
 * @{
 */


/** Defines the base address of the OTG controller */
#define USBCORE001_USB_OTG_BASE_ADDRESS                   0x50040000


/*******************************************************************************
**                      STRUCTURES                                            **
*******************************************************************************/

/* Type declarations */
struct dwc_otg_pcd;
struct dwc_otg_hcd;

/**
 * This structure is a wrapper that encapsulates the driver components used to
 * manage a single DWC_otg controller.
 */
typedef struct USBCORE001_OtgDevice {
  /** Pointer to the core interface structure. */
  dwc_otg_core_if_t *CoreIfPtr;

  /**PCD Specific members*/
  struct{
    /** Pointer to the PCD structure. */
    struct dwc_otg_pcd *PCDPtr;
  }PcdData;
  /** Pointer to the HCD structure. */
  struct dwc_otg_hcd *HCDPtr;

  /** Flag to indicate whether the common IRQ handler is installed. */
  uint8_t CommonIrqInstalled;

  /** Pointer to the register space base */
  void *RegBasePtr;

  /** OTG Device Initialized flag*/
  uint8_t DeviceInitialized;
}USBCORE001_OtgDevice;


/**
 * This structure contains different driver configuration parameters of the
 * Synopsys DWC_otg controller.
 */
typedef struct USBCORE001_OTGDriverParam {
  int32_t opt;
  int32_t otg_cap;
  int32_t dma_enable;
  int32_t dma_desc_enable;
  int32_t dma_burst_size;
  int32_t speed;
  int32_t host_support_fs_ls_low_power;
  int32_t host_ls_low_power_phy_clk;
  int32_t enable_dynamic_fifo;
  int32_t data_fifo_size;
  int32_t dev_rx_fifo_size;
  int32_t dev_nperio_tx_fifo_size;
  int32_t dev_perio_tx_fifo_size[MAX_PERIO_FIFOS];
  int32_t host_rx_fifo_size;
  int32_t host_nperio_tx_fifo_size;
  int32_t host_perio_tx_fifo_size;
  int32_t max_transfer_size;
  int32_t max_packet_count;
  int32_t host_channels;
  int32_t dev_endpoints;
  int32_t phy_type;
  int32_t phy_utmi_width;
  int32_t phy_ulpi_ddr;
  int32_t phy_ulpi_ext_vbus;
  int32_t i2c_enable;
  int32_t ulpi_fs_ls;
  int32_t ts_dline;
  int32_t en_multiple_tx_fifo;
  int32_t dev_tx_fifo_size[MAX_TX_FIFOS];
  uint32_t thr_ctl;
  uint32_t tx_thr_length;
  uint32_t rx_thr_length;
  int32_t pti_enable;
  int32_t mpi_enable;
  int32_t lpm_enable;
  int32_t ic_usb_cap;
  int32_t ahb_thr_ratio;
  int32_t power_down;
  int32_t reload_ctl;
  int32_t otg_ver;
  int32_t adp_enable;
}USBCORE001_OTGDriverParam;


/**
 * @}
 */
 
 
 /**
 * @ingroup USBCORE001_apidoc
 * @{
 */

/*******************************************************************************
 **                           FUNCTION PROTOTYPES                             **
*******************************************************************************/

/**
 * @brief This function is the module initialization function.
 *      It takes out the USB module from reset. 
 * @return void \n
 * @code
 * #include "../../inc/DAVESupport/DAVE3.h"
 *
 *
 * void DAVE_Init(void)
 * {
 *
 *  USBCORE001_Init();
 * }
 * @endcode
 *
 */ 
void USBCORE001_Init(void);

/**
 * @brief This function initializes the attached USB device.
 * @param[in] OtgDevPtr Pointer to the USBCORE001_OtgDevice 
 * @return int \n
 * 0: If  USB core is properly initialized.
 * @code
 * #include "DAVE3.h"
 * #include "../../src/USBLD001/type_CM.h"
 * #ifdef USE_IFX_DEV
 * #include "MouseHost.h"
 * #include "../../inc/USBCORE001/usbcore001.h"
 * #include "../../inc/USBCORE001/usbcore001_host.h"
 * #include "GUI.h"
 * #endif
 *
 *
 * USBCORE001_OtgDevice *GUIMS001_OtgDevPtr;
 *
 * USBCORE001_HostConnectEventsCallBack  GUIMS001_ConnectCb;
 *
 *
 * int main (void)
 * {
 *
 *  USBCORE001_Initialize(&GUIMS001_OtgDevPtr);
 *
 *  if(NULL != GUIMS001_OtgDevPtr)
 *  {
 *    USB_Host_EventRegister();
 *    USBCORE001_ConnectEventRegister(&GUIMS001_ConnectCb);
 *    USBCORE001_HostStart(GUIMS001_OtgDevPtr);
 *  }
 *
 * }
 * @endcode
 *
 */
  
int USBCORE001_Initialize(USBCORE001_OtgDevice **OtgDevPtr);

/**
 * @brief This function is global USB interrupt routine.
 *      As per the USB operating mode it will call Host or Device interrupt 
 *        routine.
 * @return void \n
 */ 
void USBCORE001_intr(void);

/**
 * @}
 */
#ifdef DWC_DEVICE_ONLY
#include "usbcore001_device.h"
#endif
#ifdef __cplusplus
}
#endif
#endif /*__USBCORE001_H_*/
