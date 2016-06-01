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
** MODIFICATION DATE : May 14, 2014     		                                  **
**                                                                            **
*******************************************************************************/

/**
 * @file xmc4_usb.c
 * @version $Id$
 *
 * @brief USB driver definition
 *
 * USB Device Driver.
 *
 * History
 *
 * Version 1.0.0
 *   Initial
 *
 */

#include "xmc4_usb.h"

/*
 *  Global Definitions
*/
uint32_t usb_rx_fifo_packet_size;
uint32_t usb_rx_fifo_size;
uint32_t usb_max_transfer_size;
uint8_t usb_max_num_eps;
bool use_dma=1;
bool use_fifo=0;

/*Priority and sub priority inputs*/
extern uint32_t usb_preemption_priority;
extern uint32_t usb_sub_priority;


/*
 * Transmit Fifo Size
 */
const uint16_t USB_TX_FIFO_SIZE[USB_NUM_TX_FIFOS] = {
	USB_EP0_TX_FIFO_SIZE/4,
	USB_EP1_TX_FIFO_SIZE/4,
	USB_EP2_TX_FIFO_SIZE/4,
	USB_EP3_TX_FIFO_SIZE/4,
	USB_EP4_TX_FIFO_SIZE/4,
	USB_EP5_TX_FIFO_SIZE/4,
	USB_EP6_TX_FIFO_SIZE/4
};

/*
 * Endpoint Out Fifo Size
 */
uint32_t* USBD_EP_OUT_BUFFERSIZE;
/*
 * Endpoint In Fifo Size
 */
uint32_t* USBD_EP_IN_BUFFERSIZE;

/**
 *  The device driver
 */
const USB_DRIVER_USBD_t Driver_USBD0 = {
  .GetCapabilities = USB_GetCapabilities,
  .Initialize = USB_Init,
  .Uninitialize = USB_Uninitialize,
  .DeviceConnect = USB_DeviceConnect,
  .DeviceDisconnect = USB_DeviceDisconnect,
  .DeviceGetState = USB_DeviceGetState,
  .DeviceSetAddress = USB_DeviceSetAddress,
  .EndpointReadStart = USB_EndpointReadStart,
  .EndpointRead = USB_EndpointRead,
  .EndpointWrite = USB_EndpointWrite,
  .EndpointStall = USB_EndpointStall,
  .EndpointAbort = USB_EndpointAbort,
  .EndpointConfigure = USB_EndpointConfigure,
  .EndpointUnconfigure = USB_EndpointUnconfigure,
  .GetFrameNumber = USB_GetFrameNumber,
  .IsEnumDone = USB_IsEnumDone
};

/*
 * Device definition
 */
USB_DEVICE_t xmc_device __attribute__((section("USB_RAM")));


/**
 * \brief Checks if device is active
 *
 * Therefore the endpoint inInUse flag are checked and if one endpoint is in use, 1 is returned, else 0 is returned.
 * \return 1 if an endpoint is active else 0
 */
uint8_t USB_DeviceActive() {
  uint8_t i;
  for (i = 0; i <usb_max_num_eps; i++)
  {
    if (xmc_device.ep[i].inInUse || xmc_device.ep[i].outInUse)
	  return 1;
  }
  return 0;
}

/**
 * \brief Read data from the rx fifo
 *
 * The data from the fifo is copied in to the buffer specified by \ref xfer_buffer and
 * the transfer values get updated. If the endpoint is disabled or the buffer not existent
 * the function exits.
 *
 * @arg ep_num the endpoint to read for
 * @arg byte_count the byte count to read
 */
void USB_ReadFifo(uint32_t ep_num,uint32_t byte_count) {
  xmc_usb_ep_t * ep = &xmc_device.ep[ep_num];
  uint32_t word_count,temp_data;
  volatile uint32_t *fifo = xmc_device.fifo[0];
  int i;
  depctl_data_t data = { xmc_device.endpoint_out_register[ep_num]->doepctl };
  word_count = (byte_count >> 2 );

  /* Check if ep is enabled and has buffer */
  if (!data.b.usbactep) return;
  if (ep->xferBuffer == NULL) return;
  /* store the data */
  for (i=0;i<word_count;i++)
    *(((uint32_t*)ep->xferBuffer)+i) = *fifo;

  /* space is not devidable by 4 */
  if (byte_count!=(word_count<<2))
  {
    temp_data = *fifo;
    for (i=0;byte_count > (word_count << 2)+i;i++)
      ep->xferBuffer[(word_count << 2)+i] = (temp_data & ((uint32_t)0xFF << i*8)) >> i*8;
  }

  /* save the amount of data */
  ep->xferCount += byte_count;
  ep->xferBuffer += byte_count;
}

/**
 * \brief Write data to an endpoint fifo
 *
 * The data from the \ref xfer_buffer gets copied in to the tx fifo of the endpoint until the buffer has been read
 * completely or the tx fifo is full. The transfer values are not updated.
 *
 * @arg[in] ep the endpoint to use
 * @return the number of bytes written to the fifo
 */
uint32_t USB_WriteFifo(xmc_usb_ep_t * ep) {
  dtxfsts_data_t freeSpace = { .d32 = xmc_device.endpoint_in_register[ep->number]->dtxfsts };
  volatile uint32_t *fifo = xmc_device.fifo[ep->number];
  uint32_t byte_count;
  uint32_t word_count;
  uint32_t i;

  /* calculate the length and the amount of dwords to copy based on the fifo status */
  byte_count = ep->xferLength - ep->xferCount;
  if (!byte_count)
    return 0;

  /* add the unaligned bytes to the word count to compare with the fifo space */
  word_count = (byte_count + 3) >> 2;
  if (word_count > freeSpace.b.txfspcavail )
  {
    word_count = freeSpace.b.txfspcavail;
    byte_count = word_count << 2;
  }

  /* copy data dword wise */
  for (i=0;i<word_count;i++,ep->xferBuffer+=4)
    *fifo = *(uint32_t*)ep->xferBuffer;

  return byte_count;
}

/**
 * \brief Flush a tx fifo
 *
 * \param[in] fifo_num Fifo number to flush
 *
 * \note Use 0x10 as parameter to flush all tx fifos.
 */
void USB_FlushTXFifo(uint8_t fifo_num) {
  volatile grstctl_t data = { .d32 = 0};
  uint32_t count;

  /*flush fifo */
  data.b.txfflsh = 1;
  data.b.txfnum = fifo_num;
  xmc_device.global_register->grstctl = data.d32;
  for (count=0;count<1000;count++);
    do
    {
    data.d32 = xmc_device.global_register->grstctl;
    } while (data.b.txfflsh);
    count = 0;
  while (count++ < 1000); /* wait 3 phy clocks */
}

/**
 * \brief Flush the rx fifo
 */
void USB_FlushRXFifo() {
  volatile grstctl_t data = { .d32 = 0};
  uint32_t count;
  data.b.rxfflsh = 1;

  /*flush fifo */
  xmc_device.global_register->grstctl = data.d32;
  do
  {
    for (count=0;count<1000;count++);
    data.d32 = xmc_device.global_register->grstctl;
  } while (data.b.rxfflsh);
  count = 0;
  while (count++ < 1000); /* wait 3 phy clocks */
}


/*
 * Support Functions
 */

/**
 * \brief Assign a free tx fifo
 *
 * A free tx fifo will be searched and the number will be returned.
 *
 * \return Fifo number for a free fifo
 */
uint8_t USB_AssignTXFifo() {
  uint16_t mask = 1;
  uint8_t i;
  for (i=0; i< USB_NUM_TX_FIFOS; i++)
  {
    if ((xmc_device.txfifomsk & mask) == 0)
    {
      xmc_device.txfifomsk  |=mask;
    return i;
    }
		mask <<= 1;
	}
	return 0;
}

/**
 * \brief Free a tx fifo
 *
 * Mark an used tx fifo as free.
 * \param[in] fifo_nr Fifo number to free
 */
void USB_UnassignFifo(uint8_t fifo_nr) {
  xmc_device.txfifomsk &= ~((1<<fifo_nr));
}

/**
 * \brief Start a transfer for an out endpoint
 *
 * Based on the transfer values of the endpoint, the out endpoint registers will be programmed
 * to start a new out transfer.
 *
 * \note No checking of the transfer values are done in this function. Be sure,
 * that the transfer values are reasonable (e.g. buffer size is not exceeded).
 *
 * \param[in] ep Endpoint to start the transfer
 */
void USB_StartReadXfer(xmc_usb_ep_t * ep) {
  deptsiz_data_t data = {.d32 = 0};
  if ((ep->xferTotal - ep->xferLength) > ep->maxTransferSize)
    ep->xferLength += ep->maxTransferSize;
  else
	ep->xferLength = ep->xferTotal;
  if (ep->number==0)
  {
		/* Setup the endpoint to receive 3 setup packages and one normal package.
		 * Cast the data pointer to use only one variable */
    deptsiz0_data_t *ep0_data = (deptsiz0_data_t*)&data;
    ep0_data->b.pktcnt = 0x1;
    ep0_data->b.supcnt = 0x3;
    ep0_data->b.xfersize = ep->xferTotal;
	}else
	{
    /* If requested length is zero, just receive one zero length packet */
    if (ep->xferLength==0)
    {
      data.b.xfersize = 0;
      data.b.pktcnt = 1;
    } else
    {
    /* setup endpoint to recive a amount of packages by given size */
    data.b.pktcnt = ((ep->xferLength - ep->xferCount) + ep->maxPacketSize -1)/ep->maxPacketSize;
    data.b.xfersize = (ep->xferLength - ep->xferCount);
	}
  }
  if(use_dma)
  {
	/* Programm dma address if needed */
	xmc_device.endpoint_out_register[ep->number]->doepdma = (uint32_t)ep->xferBuffer;
  }
  /* setup endpoint size and enable endpoint */
  xmc_device.endpoint_out_register[ep->number]->doeptsiz = data.d32;
  depctl_data_t epctl = { .d32 = xmc_device.endpoint_out_register[ep->number]->doepctl };
  epctl.b.cnak = 1;
  epctl.b.epena = 1;
  xmc_device.endpoint_out_register[ep->number]->doepctl = epctl.d32;
}

/**
 * \brief Start a new in transfer
 *
 * Based on the transfer values of the endpoint the in endpoint registers will be programmed
 * to start a new in transfer
 *
 * \param[in] ep Endpoint to start the transfer
 */
void USB_StartWriteXfer(xmc_usb_ep_t * ep) {
  deptsiz_data_t size = { .d32 = 0 };
  depctl_data_t ctl = { .d32 = xmc_device.endpoint_in_register[ep->number]->diepctl };

  if (ep->xferTotal - ep->xferLength  < ep->maxTransferSize)
    ep->xferLength = ep->xferTotal;
  else
    ep->xferLength += ep->maxTransferSize;

  if (ep->xferLength==0)
  {
    size.b.xfersize = 0;
    size.b.pktcnt = 1;
  }
  else
  {
    if (ep->number==0)
    {
      size.b.pktcnt = 1;
      size.b.xfersize = ep->xferLength - ep->xferCount; /* ep->maxXferSize equals maxPacketSize */
    }
    else
    {
     size.b.xfersize = ep->xferLength - ep->xferCount;
     size.b.pktcnt = (ep->xferLength - ep->xferCount + ep->maxPacketSize -1)/ep->maxPacketSize;
    }
    if(use_dma)
    {
	  /* programm dma*/
	  xmc_device.endpoint_in_register[ep->number]->diepdma = (uint32_t)ep->xferBuffer;
    }
    if(use_fifo)
    {
	  /* enable fifo empty interrupt */
	  xmc_device.device_register->dtknqr4_fifoemptymsk |= (1 << ep->number);
    }
  }

  /* programm size of transfer and enable endpoint */
  xmc_device.endpoint_in_register[ep->number]->dieptsiz = size.d32;
  ctl.b.epena = 1;
  ctl.b.cnak = 1;
  xmc_device.endpoint_in_register[ep->number]->diepctl = ctl.d32;
}


/**
 * \brief Handles the USB reset interrupt
 *
 * When ever the host sets the bus into reset condition the usb otg_core generates
 * an interrupt, which is handled by this function. It resets the complete otg_core
 * into the default state.
 */
void USB_HandleUSBReset() {
  int i;
  depctl_data_t epctl;
  dctl_data_t dctl;
  /* Clear the Remote Wakeup Signaling */
  dctl.d32 = xmc_device.device_register->dctl;
  dctl.b.rmtwkupsig = 1;
  xmc_device.device_register->dctl = dctl.d32;

  /* enable naks for all eps */
  for (i=0;i<USB_NUM_EPS;i++)
  {
    epctl.d32 = xmc_device.endpoint_out_register[i]->doepctl;
	epctl.b.snak = 1;
	epctl.b.stall = 0;
	xmc_device.endpoint_out_register[i]->doepctl = epctl.d32;
  }

  /* Configure fifos */
  /* Calculate the size of the rx fifo */
  xmc_device.global_register->grxfsiz =usb_rx_fifo_size ;
  /* Calculate the size of the tx fifo for ep 0 */
  fifosize_data_t gnptxfsiz = { .d32 = 0 };
  gnptxfsiz.b.depth = USB_TX_FIFO_SIZE[0];
  gnptxfsiz.b.startaddr = usb_rx_fifo_size;
  xmc_device.global_register->gnptxfsiz = gnptxfsiz.d32;

  /* calculate the size for the rest */
  fifosize_data_t dtxfsiz = { .b.depth = USB_TX_FIFO_SIZE[1], .b.startaddr = usb_rx_fifo_size + USB_TX_FIFO_SIZE[0]};
  for (i=1;i<USB_NUM_TX_FIFOS;i++)
  {
    xmc_device.global_register->dtxfsiz[i-1] = dtxfsiz.d32;
	/* leave loop for overrun protection */
	if (i==USB_NUM_TX_FIFOS-1)
	  break;
	dtxfsiz.b.depth = USB_TX_FIFO_SIZE[i+1];
	dtxfsiz.b.startaddr += USB_TX_FIFO_SIZE[i];
  }

  /* flush the fifos for proper operation */
  USB_FlushTXFifo(0x10); /* 0x10 == all fifos, see doc */
  USB_FlushTXFifo(0x0);
  USB_FlushRXFifo();
  /* Flush learning queue not needed due to fifo config */

  /* enable ep0 interrupts */
  daint_data_t daint = { .d32 = 0 };
  daint.b.inep0 = 1;
  daint.b.outep0 = 1;
  xmc_device.device_register->daintmsk = daint.d32;

  /* enable endpoint interrupts */
  /* out ep interrupts */
  doepint_data_t doepint = { .d32 = 0 };
  doepint.b.setup = 1;
  doepint.b.xfercompl = 1;
  doepint.b.ahberr = 1;
  doepint.b.epdisabled = 1;
  xmc_device.device_register->doepmsk = doepint.d32;

  /*in ep interrupts */
  diepint_data_t diepint = { .d32 = 0 };
  diepint.b.timeout = 1;
  diepint.b.xfercompl = 1;
  diepint.b.ahberr = 1;
  diepint.b.epdisabled = 1;
  xmc_device.device_register->diepmsk = diepint.d32;

  /* Clear device Address */
  dcfg_data_t dcfg;
  dcfg.d32 = xmc_device.device_register->dcfg;
  dcfg.b.devaddr = 0;
  xmc_device.device_register->dcfg = dcfg.d32;
  if(use_fifo)
  {
	/* Clear Empty interrupt */
	xmc_device.device_register->dtknqr4_fifoemptymsk = 0;
  }

  xmc_device.ep[0].outInUse = 0;
  xmc_device.ep[0].inInUse = 0;

  xmc_device.DeviceEvent_cb(USB_USBD_EVENT_RESET);

  /* clear reset intr */
  gintsts_data_t gintsts = { .d32 = 0 };
  gintsts.b.usbreset = 1;
  xmc_device.global_register->gintsts = gintsts.d32;
}

/**
 * \brief Interrupt handler for device enumeration done.
 *
 * Handles the enumeration done from dwc_otg, when the host has enumerated the device.
 */
void USB_HandleEnumDone() {
  /* Normaly we need to check dctl
   * We are always fullspeed, so max it up. */
  depctl_data_t epctl = { .d32 = xmc_device.endpoint_in_register[0]->diepctl };
  epctl.b.mps = 0x00; /* 64 Byte, this is also automatically set for out ep */
  xmc_device.endpoint_in_register[0]->diepctl = epctl.d32;

  /* update device connected flag */
  xmc_device.IsConnected = 1;
  xmc_device.IsPowered = 1;

  xmc_device.DeviceEvent_cb(USB_USBD_EVENT_CONNECT);

  /* Set Trim */
  gusbcfg_data_t gusbcfg = { .d32 = xmc_device.global_register->gusbcfg };
  gusbcfg.b.usbtrdtim = 9; /* default value for LS/FS */
  xmc_device.global_register->gusbcfg = gusbcfg.d32;

  /* clear interrupt */
  gintsts_data_t gintsts = { .d32 = 0  };
  gintsts.b.enumdone = 1;
  xmc_device.global_register->gintsts = gintsts.d32;
}


/**
 * \brief Handles all interrupts for all out endpoints
 *
 * The interrupt handler first checks, which endpoint has caused the interrupt and then
 * determines, which interrupt should be handled.
 */
void USB_HandleOEPInt() {
  daint_data_t daint = { .d32 = xmc_device.device_register->daint };
  daint_data_t daintmsk = { .d32 = xmc_device.device_register->daintmsk };
  doepmsk_data_t doepmsk = { .d32 = xmc_device.device_register->doepmsk };
  doepint_data_t doepint;
  doepint_data_t clear;
  deptsiz_data_t doeptsiz;
  xmc_usb_ep_t *ep;
  uint16_t mask = daint.ep.out & daintmsk.ep.out;
  uint8_t ep_num = 0;
  while (mask >> ep_num)
  {
    if ((mask >> ep_num) & 1)
    {
      /* load register data for endpoint */
      ep = &xmc_device.ep[ep_num];
      doepint.d32 = xmc_device.endpoint_out_register[ep_num]->doepint & doepmsk.d32;
      if(use_dma)
      {

	    doeptsiz.d32 = xmc_device.endpoint_out_register[ep_num]->doeptsiz;
      }
      /* Setup Phase Complete */
      if (doepint.b.setup)
      {
        /* ep0 not stalled any more */
        ep->isStalled = 0;
        /* calculate size for setup packet */
        if(use_dma)
        {
		  ep->outBytesAvailable = (USB_SETUP_COUNT - ((deptsiz0_data_t*)&doeptsiz)->b.supcnt)*USB_SETUP_SIZE;
        }
        if(use_fifo)
        {
		  ep->outBytesAvailable += ep->xferCount;
        }
        ep->outInUse = 0;
		xmc_device.EndpointEvent_cb(0,USB_USBD_EP_EVENT_SETUP); /* signal endpoint event */
        /* clear the interrupt */
        clear.d32 = 0;
        clear.b.setup = 1;
        xmc_device.endpoint_out_register[ep_num]->doepint = clear.d32;
      }
      if (doepint.b.xfercompl)
      {
        if(use_dma)
    	{
		  uint32_t bytes = ep->xferLength - ep->xferCount - doeptsiz.b.xfersize;
		  ep->xferCount += bytes;
		  ep->xferBuffer += bytes;
        }
        if (ep->xferTotal==ep->xferLength)
        {
          ep->outBytesAvailable = ep->xferCount;
          ep->outInUse = 0;
          xmc_device.EndpointEvent_cb(ep_num,USB_USBD_EP_EVENT_OUT);
        }
        else
        {
          USB_StartReadXfer(ep);
        }

        /* clear the interrupt */
        clear.d32 = 0;
        clear.b.xfercompl = 1;
        xmc_device.endpoint_out_register[ep_num]->doepint = clear.d32;
      }
      if (doepint.b.epdisabled == 1)
      {
        clear.d32 = 0;
        clear.b.epdisabled = 1;
        xmc_device.endpoint_out_register[ep_num]->doepint = clear.d32;
      }
    }
    ep_num++;

  }

  /* clear interrupt */
  gintsts_data_t gintsts = { .d32 = 0 };
  gintsts.b.outepintr = 1;
  xmc_device.global_register->gintsts = gintsts.d32;
}

/**
 * \brief Handles all interrupts for all in endpoints
 *
 * The interrupt handler first checks, which endpoint has caused the interrupt and then
 * determines, which interrupt should be handled.
 */
void USB_HandleIEPInt() {
  xmc_usb_ep_t *ep;
  daint_data_t daint = { .d32 = xmc_device.device_register->daint };
  diepmsk_data_t diepmsk = { .d32 = xmc_device.device_register->diepmsk };
  diepmsk_data_t clear;
  diepint_data_t diepint;
  deptsiz_data_t dieptsiz;
  uint16_t mask = daint.ep.in;
  uint8_t ep_num = 0;
  while (mask >> ep_num)
  {
    if ((mask >> ep_num) & 0x1)
    {
      ep = &xmc_device.ep[ep_num];
      diepint.d32 = xmc_device.endpoint_in_register[ep_num]->diepint &
      ((((xmc_device.device_register->dtknqr4_fifoemptymsk >> ep->number) & 0x1)<<7) | diepmsk.d32);
      if(use_dma)
  	  {

	    dieptsiz.d32 = xmc_device.endpoint_in_register[ep_num]->dieptsiz;
  	  }

      if(use_fifo)
      {
	    if (diepint.b.emptyintr) {
		  uint32_t bytes;
		  bytes = USB_WriteFifo(ep);
		  ep->xferCount+=bytes;
		  ep->xferBuffer+=bytes;
	    }
      }
      if (diepint.b.xfercompl)
      {
        if (ep_num==1)
          ep_num = 1;
        if(use_dma)
    	{
		   /* update xfer values */
		   if (dieptsiz.b.pktcnt == 0 && dieptsiz.b.xfersize == 0)
		   {
			 uint32_t Bytes = ep->xferLength - ep->xferCount;
			 ep->xferCount += Bytes;
			 ep->xferBuffer += Bytes;
		   }
         }
		 if (ep->xferTotal == ep->xferLength)
		 {
		   ep->inInUse = 0;
		   if(use_fifo)
		   {
		     xmc_device.device_register->dtknqr4_fifoemptymsk &= ~(1 << ep_num); /* mask fifo empty interrupt */
           }
           xmc_device.EndpointEvent_cb(0x80 | ep_num,USB_USBD_EP_EVENT_IN);
          }
          else
          {
            /* start next step of transfer */
            USB_StartWriteXfer(ep);
          }
          clear.d32 = 0;
          clear.b.xfercompl = 1;
          xmc_device.endpoint_in_register[ep_num]->diepint = clear.d32;
      }
      if (diepint.b.timeout == 1 )
      {
        clear.d32 = 0;
        clear.b.timeout = 1;
        xmc_device.endpoint_in_register[ep_num]->diepint = clear.d32;
      }
      if (diepint.b.epdisabled == 1)
      {
        clear.d32 = 0;
        clear.b.epdisabled = 1;
        xmc_device.endpoint_in_register[ep_num]->diepint = clear.d32;
      }
    }
    ep_num++;
  }
  gintsts_data_t gintsts = { .d32 = 0 };
  gintsts.b.inepint = 1;
  xmc_device.global_register->gintsts = gintsts.d32;
}

/**
 * \brief RX Fifo interrupt handler
 *
 * This function handles the interrupt, when the rx fifo is not empty anymore.
 */
void USB_HandleRxFLvl() {
    device_grxsts_data_t data = { .d32 = xmc_device.global_register->grxstsp };

	switch (data.b.pktsts) {
	case USB_GRXSTS_PktSts_GOutNAK:
		break;
	case USB_GRXSTS_PktSts_OutCmpl:
		break;
	case USB_GRXSTS_PktSts_OutData:
		USB_ReadFifo(data.b.epnum,data.b.bcnt);
		break;
	case USB_GRXSTS_PktSts_Setup:
		USB_ReadFifo(data.b.epnum,data.b.bcnt);
		break;
	case USB_GRXSTS_PktSts_SetupCmpl:
		break;
	}
	/* no need to clear */
}

/**
 * \brief Handle OTG Interrupt
 *
 * It detects especially connect and disconnect events.
 */
void USB_HandleOTGInt() {
  gotgint_data_t data = { .d32 = xmc_device.global_register->gotgint }, clear = { .d32 = 0};
  if (data.b.sesenddet)
  {
    xmc_device.IsPowered = 0;
	xmc_device.DeviceEvent_cb(USB_USBD_EVENT_POWER_OFF);
	clear.d32 = 0;
	clear.b.sesenddet = 1;
	xmc_device.global_register->gotgint = clear.d32;
  }
  if (data.b.sesreqsucstschng) {
	clear.d32 = 0;
	clear.b.sesreqsucstschng = 1;
	xmc_device.global_register->gotgint = clear.d32;
  }
  if (data.b.hstnegsucstschng) {
	clear.d32 = 0;
	clear.b.hstnegsucstschng = 1;
	xmc_device.global_register->gotgint = clear.d32;
  }
  if (data.b.hstnegdet) {
	clear.d32 = 0;
	clear.b.hstnegdet = 1;
	xmc_device.global_register->gotgint = clear.d32;
  }
  if (data.b.adevtoutchng) {
	clear.d32 = 0;
	clear.b.adevtoutchng = 1;
	xmc_device.global_register->gotgint = clear.d32;
  }
  if (data.b.debdone) {
	clear.d32 = 0;
	clear.b.debdone = 1;
	xmc_device.global_register->gotgint = clear.d32;
  }
}

/**
 * \brief Global interrupt handler
 *
 * The handler first checks, which global interrupt has caused the interrupt
 * and then dispatches interrupt to the corresponding sub-handler.
 */
void USB_HandleIrq() {
  gintmsk_data_t gintmsk = { .d32 = xmc_device.global_register->gintmsk };
  gintsts_data_t data = { .d32 = xmc_device.global_register->gintsts & gintmsk.d32  };
  gintsts_data_t clear;
  if (data.b.sofintr)
  {
#ifdef DAVE_CE
    xmc_device.DeviceEvent_cb(USB_USBD_EVENT_SOF);
#endif
    clear.d32 = 0;
	clear.b.sofintr = 1;
	xmc_device.global_register->gintsts = clear.d32;
  }
  if(use_fifo)
  {
	if (data.b.rxstsqlvl)
	{
		/* Masked that interrupt so its only done once */
		gintmsk.b.rxstsqlvl = 0;
		xmc_device.global_register->gintmsk = gintmsk.d32;
		USB_HandleRxFLvl(); /* handle the interrupt */
		gintmsk.b.rxstsqlvl = 1;
		xmc_device.global_register->gintmsk = gintmsk.d32;
	}
  }
  if (data.b.erlysuspend)
  {
    clear.d32 = 0;
	clear.b.erlysuspend = 1;
	xmc_device.global_register->gintsts = clear.d32;
  }
  if (data.b.usbsuspend)
  {
	xmc_device.DeviceEvent_cb(USB_USBD_EVENT_SUSPEND);
	clear.d32 = 0;
	clear.b.usbsuspend = 1;
	xmc_device.global_register->gintsts = clear.d32;
  }
  if (data.b.wkupintr)
  {
	xmc_device.DeviceEvent_cb(USB_USBD_EVENT_RESUME);
	clear.d32 = 0;
	clear.b.wkupintr = 1;
	xmc_device.global_register->gintsts = clear.d32;
  }
  if (data.b.sessreqintr)
  {
	xmc_device.IsPowered = 1;
	xmc_device.DeviceEvent_cb(USB_USBD_EVENT_POWER_ON);
	clear.d32 = 0;
	clear.b.sessreqintr = 1;
	xmc_device.global_register->gintsts = clear.d32;
  }
  if (data.b.usbreset)
    USB_HandleUSBReset();
  if (data.b.enumdone)
	USB_HandleEnumDone();
  if (data.b.inepint)
	USB_HandleIEPInt();
  if (data.b.outepintr)
	USB_HandleOEPInt();
  if (data.b.otgintr)
	USB_HandleOTGInt();
}

/**
 * \brief Entry point for exception vector table
 *
 * This function gets called, if an usb exception (interrupt) was thrown and
 * dispatches it to \ref USB_HandleIrq.
 */
void USB0_0_IRQHandler() {
	USB_HandleIrq();
}

/**
 * \brief  Enables and sets the priority of USB Interrupt
 *
 * First the interrupt priority is set and then the interrupt is enabled in the NVIC.
 */
static void USB_EnableUSBInterrupt(void)
{
  NVIC_SetPriority(USB0_0_IRQn, NVIC_EncodePriority(NVIC_GetPriorityGrouping(),usb_preemption_priority,
		  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  	  usb_sub_priority));
  NVIC_ClearPendingIRQ(USB0_0_IRQn);
  NVIC_EnableIRQ(USB0_0_IRQn);
}

/**
 * \brief Disables the usb interrupt in the NVIC.
 *
 * Before the interrupt gets disabled, it will also be cleared.
 */
static void USB_DisableUSBInterrupt(void)
{
  NVIC_ClearPendingIRQ(USB0_0_IRQn);
  NVIC_DisableIRQ(USB0_0_IRQn);
}

/**
 * \brief Get the capabilities of the driver
 *
 * \return Driver capabilities
 */

USB_USBD_CAPABILITIES_t USB_GetCapabilities() {
  USB_USBD_CAPABILITIES_t cap;
  cap.event_connect = 1;
  cap.event_disconnect = 1;
#if UC_SERIES == 45
  cap.event_power_off = 1;
  cap.event_power_on = 1;
#else
  cap.event_power_off = 0;
  cap.event_power_on = 0;
#endif
  cap.event_high_speed = 0;
  cap.event_remote_wakeup = 1;
  cap.event_reset = 1;
  cap.event_resume = 1;
  cap.event_suspend = 1;
  cap.reserved = 0;
  return cap;
}
/**
 * \brief initialize the device to get ready to connect
 *
 * \param[in] cb_xmc_device_event Device event callback function pointer
 * \param[in] cb_endpoint_event Endpoint event callback function pointer
 *
 * \return Status of the function (See \ref USB_USBD_STATUS_t).
 */

USB_USBD_STATUS_t USB_Init(USB_USBD_SignalDeviceEvent_t cb_xmc_device_event,
												USB_USBD_SignalEndpointEvent_t cb_endpoint_event, USB_INIT_t init)
{


  /* RX Fifo size for packets all byte values devided by 4, because the fifo values are dw (4Byte) based. */
  usb_rx_fifo_packet_size=( init.usb_max_num_packets_in_rx_fifo*((USB_MAX_PACKET_SIZE/4 )+ 1) );

  /* Overall rx fifo size */
  usb_rx_fifo_size=( (4*init.usb_max_num_control_eps+ 6) + usb_rx_fifo_packet_size + (2*init.usb_max_num_out_eps) +1 );

  /* Maximum number of Endpoints */
  usb_max_num_eps=init.usb_max_num_eps;

  /* Transfer mode */
  if(init.usb_transfer_mode==USB_USE_DMA)
  {
	use_dma=1;
	use_fifo=0;
  }
  if(init.usb_transfer_mode==USB_USE_FIFO)
  {
  	use_dma=0;
  	use_fifo=1;
  }

  XMC_ASSERT("USB_Init: init.usb_max_num_control_eps not of type USB_MAX_NUM_CONTROL_EPS_t",
		  USB_CHECK_INPUT_MAX_NUM_CONTROL_EPS(init.usb_max_num_control_eps));
  XMC_ASSERT("USB_Init: init.usb_max_num_out_eps not of type USB_MAX_NUM_OUT_EPS_t",
 		  USB_CHECK_INPUT_MAX_NUM_OUT_EPS(init.usb_max_num_out_eps));
  XMC_ASSERT("USB_Init: init.usb_max_num_in_eps not of type USB_MAX_NUM_IN_EPS_t",
 		  USB_CHECK_INPUT_MAX_NUM_IN_EPS(init.usb_max_num_in_eps));
  XMC_ASSERT("USB_Init: init.usb_max_num_eps not of type USB_MAX_NUM_EPS_t",
 		  USB_CHECK_INPUT_MAX_NUM_EPS(init.usb_max_num_eps));
  XMC_ASSERT("USB_Init: init.usb_max_num_eps not of type USB_MAX_NUM_EPS_t",
		  ((usb_rx_fifo_size+(USB_EP0_TX_FIFO_SIZE/4)+(USB_EP1_TX_FIFO_SIZE/4)+(USB_EP2_TX_FIFO_SIZE/4)+
		  (USB_EP3_TX_FIFO_SIZE/4)+(USB_EP4_TX_FIFO_SIZE/4)+(USB_EP5_TX_FIFO_SIZE/4)+(USB_EP6_TX_FIFO_SIZE/4))>
  	  	  (USB_MAX_FIFO_SIZE/4)) );

  int i;

  /* out buffer size */
  USBD_EP_OUT_BUFFERSIZE = (uint32_t*)malloc(sizeof(uint32_t)*(usb_max_num_eps));
  /* in buffer size */
  USBD_EP_IN_BUFFERSIZE = (uint32_t*)malloc(sizeof(uint32_t)*(usb_max_num_eps));

  memset(USBD_EP_OUT_BUFFERSIZE,0x0,sizeof(uint32_t)*(usb_max_num_eps));
  memset(USBD_EP_IN_BUFFERSIZE,0x0,sizeof(uint32_t)*(usb_max_num_eps));

  /* Filling out buffer size */
    USBD_EP_OUT_BUFFERSIZE[0]=USB_EP0_BUFFER_SIZE;
  if( usb_max_num_eps>1)
    USBD_EP_OUT_BUFFERSIZE[1]=USB_EP1_BUFFER_SIZE;
  if( usb_max_num_eps>2)
    USBD_EP_OUT_BUFFERSIZE[2]=USB_EP2_BUFFER_SIZE;
  if( usb_max_num_eps>3)
    USBD_EP_OUT_BUFFERSIZE[3]=USB_EP3_BUFFER_SIZE;
  if( usb_max_num_eps>4)
    USBD_EP_OUT_BUFFERSIZE[4]=USB_EP4_BUFFER_SIZE;
  if( usb_max_num_eps>5)
    USBD_EP_OUT_BUFFERSIZE[5]=USB_EP5_BUFFER_SIZE;
  if( usb_max_num_eps>6)
    USBD_EP_OUT_BUFFERSIZE[6]=USB_EP6_BUFFER_SIZE;

  /* Filling out buffer size */
  USBD_EP_IN_BUFFERSIZE[0]=USB_EP0_BUFFER_SIZE;
  if( usb_max_num_eps>1)
    USBD_EP_IN_BUFFERSIZE[1]=USB_EP1_BUFFER_SIZE;
  if( usb_max_num_eps>2)
    USBD_EP_IN_BUFFERSIZE[2]=USB_EP2_BUFFER_SIZE;
  if( usb_max_num_eps>3)
    USBD_EP_IN_BUFFERSIZE[3]=USB_EP3_BUFFER_SIZE;
  if( usb_max_num_eps>4)
    USBD_EP_IN_BUFFERSIZE[4]=USB_EP4_BUFFER_SIZE;
  if( usb_max_num_eps>5)
    USBD_EP_IN_BUFFERSIZE[5]=USB_EP5_BUFFER_SIZE;
  if( usb_max_num_eps>6)
    USBD_EP_IN_BUFFERSIZE[6]=USB_EP6_BUFFER_SIZE;

  /* clear device status */
  memset(&xmc_device,0x0,sizeof(USB_DEVICE_t));

  /* assign callbacks */
  xmc_device.DeviceEvent_cb = cb_xmc_device_event;
  xmc_device.EndpointEvent_cb = cb_endpoint_event;

  /* assign register address */
  xmc_device.global_register = (dwc_otg_core_global_regs_t*)(USB_BASE_ADDRESS);
  xmc_device.device_register = ((dwc_otg_device_global_regs_t*)(USB_BASE_ADDRESS + DWC_DEV_GLOBAL_REG_OFFSET));
  for (i=0;i< USB_NUM_EPS;i++)
  {
    xmc_device.endpoint_in_register[i] = (dwc_otg_dev_in_ep_regs_t*)(USB_BASE_ADDRESS + DWC_DEV_IN_EP_REG_OFFSET +
    (DWC_EP_REG_OFFSET*i));
  }
  for (i=0;i< USB_NUM_EPS;i++)
  {
    xmc_device.endpoint_out_register[i] = (dwc_otg_dev_out_ep_regs_t*)(USB_BASE_ADDRESS + DWC_DEV_OUT_EP_REG_OFFSET +
    (DWC_EP_REG_OFFSET*i));
  }
  for (i=0;i<USB_NUM_TX_FIFOS;i++)
    xmc_device.fifo[i] = (uint32_t*)(USB_BASE_ADDRESS + USB_TX_FIFO_REG_OFFSET +
    (i*USB_TX_FIFO_OFFSET));

  /* Init data structure for endpoint 0 */
  /* Done by driver core */
  /* configure ahb details */
  gahbcfg_data_t gahbcfg = { .d32 = xmc_device.global_register->gahbcfg };
  gahbcfg.b.glblintrmsk = 1; /* enable interrupts ( global mask ) */
  gahbcfg.b.nptxfemplvl_txfemplvl = 1;
  /* enable dma if needed */
  if(use_dma)
  {
    gahbcfg.b.dmaenable = 1; /* enable dma if needed */
  }
  else
  {
    gahbcfg.b.dmaenable = 0;
  }
  xmc_device.global_register->gahbcfg = gahbcfg.d32;
  /* configure usb details */
  gusbcfg_data_t gusbcfg =  { .d32 = xmc_device.global_register->gusbcfg };
  gusbcfg.b.force_dev_mode = 1; /* force us into device mode */
  gusbcfg.b.srpcap = 1; /* enable session request protocoll */
  xmc_device.global_register->gusbcfg = gusbcfg.d32;

  /* Device init */
  /* configure device speed */
  dcfg_data_t dcfg = { .d32 = xmc_device.device_register->dcfg };
  dcfg.b.devspd = USB_DCFG_DevSpd_FS;
  dcfg.b.descdma = 0;
  xmc_device.device_register->dcfg = dcfg.d32;
  /* configure device functions */
  dctl_data_t dctl = { .d32 = xmc_device.device_register->dctl };
  dctl.b.sftdiscon = 1; /* disconnect the device until its connected by the user */
  /* all other config is done by default register value */
  xmc_device.device_register->dctl = dctl.d32;

  /* Configure fifos */
  /* Calculate the size of the rx fifo */
  xmc_device.global_register->grxfsiz = usb_rx_fifo_size;
  /* Calculate the size of the tx fifo for ep 0 */
  fifosize_data_t gnptxfsiz = { .d32 = 0 };
  gnptxfsiz.b.depth = USB_TX_FIFO_SIZE[0];
  gnptxfsiz.b.startaddr = usb_rx_fifo_size;
  xmc_device.global_register->gnptxfsiz = gnptxfsiz.d32;
  /* calculate the size for the rest */
  fifosize_data_t dtxfsiz = { .b.depth = USB_TX_FIFO_SIZE[1], .b.startaddr = usb_rx_fifo_size + USB_TX_FIFO_SIZE[0]};
  for (i=1;i<USB_NUM_TX_FIFOS;i++)
  {
    xmc_device.global_register->dtxfsiz[i-1] = dtxfsiz.d32;
    /* leave loop for overrun protection */
    if (i==USB_NUM_TX_FIFOS-1)
      break;
    dtxfsiz.b.depth = USB_TX_FIFO_SIZE[i+1];
    dtxfsiz.b.startaddr += USB_TX_FIFO_SIZE[i];
  }
  /* flush the fifos for proper operation */
  USB_FlushTXFifo(0x10); /* 0x10 == all fifos, see doc */
  USB_FlushRXFifo();
  /* Enable Global Interrupts */
  /* clear interrupt status bits prior to unmasking */
  xmc_device.global_register->gintmsk = 0; /* diable all interrupts */
  xmc_device.global_register->gintsts = 0xFFFFFFFF; /* clear all interrupts */
  gintmsk_data_t gintmsk = { .d32 = 0 };
  /* enable common interrupts */
  gintmsk.b.modemismatch = 1;
  gintmsk.b.otgintr = 1;
  gintmsk.b.sessreqintr = 1;
  /* enable device interrupts */
  gintmsk.b.usbreset = 1;
  gintmsk.b.enumdone = 1;
  gintmsk.b.erlysuspend = 1;
  gintmsk.b.usbsuspend = 1;
  gintmsk.b.wkupintr = 1;
  gintmsk.b.sofintr = 1;
  if(use_fifo)
  {
	gintmsk.b.rxstsqlvl = 1;
  }
  gintmsk.b.outepintr = 1;
  gintmsk.b.inepintr = 1;
  xmc_device.global_register->gintmsk = gintmsk.d32;
  /* Enable Interrupts in NVIC */
  USB_EnableUSBInterrupt();
  return USB_USBD_OK;
}

USB_USBD_STATUS_t USB_Uninitialize() {
  USB_DisableUSBInterrupt();
  /* Disconnect the device */
  dctl_data_t dctl = { .d32 = xmc_device.device_register->dctl };
  dctl.b.sftdiscon = 1;
  xmc_device.device_register->dctl = dctl.d32;
  /* Release all memory, if malloc is used */
  uint8_t i;
  for (i=0; i< usb_max_num_eps; i++) {
    xmc_usb_ep_t *ep = &xmc_device.ep[i];
    if (ep->inBufferSize>0 && ep->inBuffer != 0)
    {
    	free(ep->inBuffer);
    }
    if (ep->outBufferSize>0 && ep->outBuffer != 0)
    {
    	free(ep->outBuffer);
    }
  }
  /* clean up */
  memset(&xmc_device,0,sizeof(xmc_device));
  return USB_USBD_OK;
}



USB_USBD_STATUS_t USB_DeviceConnect() {
  /* Just disable softdisconnect */
  dctl_data_t dctl = { .d32 = xmc_device.device_register->dctl };
  dctl.b.sftdiscon = 0;
  xmc_device.device_register->dctl = dctl.d32;
  return USB_USBD_OK;
}

USB_USBD_STATUS_t USB_DeviceDisconnect() {
  dctl_data_t dctl = { .d32 = xmc_device.device_register->dctl };
  dctl.b.sftdiscon = 1;
  xmc_device.device_register->dctl = dctl.d32;
  return USB_USBD_OK;
}

USB_USBD_STATE_t USB_DeviceGetState() {
  USB_USBD_STATE_t state;
  state.speed = USB_SPEED_FULL;
  state.connected = xmc_device.IsConnected;
  state.active = USB_DeviceActive();
  state.powered = xmc_device.IsPowered;
  return state;
}


USB_USBD_STATUS_t USB_EndpointReadStart(uint8_t ep_addr,uint8_t * buffer,uint32_t size) {
  xmc_usb_ep_t *ep = &xmc_device.ep[ep_addr & USB_EP_NUM_MASK];
  if (ep->outInUse || !ep->isConfigured)
    return USB_USBD_ERROR;
  /* short the length to buffer size if needed */
  if (size > ep->outBufferSize)
    size = ep->outBufferSize;
  /* set ep values */
  ep->xferTotal = size;
  ep->xferCount = 0;
  ep->xferLength = 0;
  ep->xferBuffer = ep->outBuffer;
  ep->outBytesAvailable = 0;
  USB_StartReadXfer(ep);
  return USB_USBD_OK;
}

int32_t USB_EndpointRead(uint8_t ep_num,uint8_t * buffer,uint32_t length) {
  xmc_usb_ep_t *ep = &xmc_device.ep[ep_num];
  if (length > ep->outBytesAvailable)
	length = ep->outBytesAvailable;
  memcpy(buffer,&ep->outBuffer[ep->outOffset],length);
  ep->outBytesAvailable -= length;
  if (ep->outBytesAvailable)
	ep->outOffset += length;
  else
	ep->outOffset = 0;
  return length;
}

int32_t USB_EndpointWrite(uint8_t ep_num,const uint8_t * buffer,uint32_t length) {
  xmc_usb_ep_t * ep = &xmc_device.ep[ep_num & USB_EP_NUM_MASK];
  if (!ep->isConfigured)
    return USB_USBD_ERROR;
  if (ep->inInUse == 1)
    return 0;
    if (length > ep->inBufferSize)
	  length = ep->inBufferSize;
	/* copy data into input buffer for dma and fifo mode */
	memcpy(ep->inBuffer,buffer,length);
	ep->xferBuffer = ep->inBuffer;
  ep->xferTotal = length;
  /* set transfer values */
  ep->xferLength = 0;
  ep->xferCount = 0;
  ep->inInUse = 1;
  /* start the transfer */
  USB_StartWriteXfer(ep);
  return (int32_t)ep->xferTotal;
}

USB_USBD_STATUS_t USB_DeviceSetAddress(uint8_t address,USB_USBD_SET_ADDRESS_STAGE_t stage) {
  dcfg_data_t data = { .d32 = xmc_device.device_register->dcfg };
  if (stage == USB_USBD_SET_ADDRESS_SETUP)
  {
    data.b.devaddr = address;
    xmc_device.device_register->dcfg = data.d32;
  }
	return USB_USBD_OK;
}

USB_USBD_STATUS_t USB_EndpointStall(uint8_t ep_addr, bool stall) {
  xmc_usb_ep_t *ep = &xmc_device.ep[ep_addr & USB_EP_NUM_MASK];
  if (stall)
  {
    ep->isStalled = 1;
	if (ep_addr & USB_USB_ENDPOINT_DIRECTION_MASK)
	{
	  /* if ep is enabled, disable ep and set stall bit */
	  depctl_data_t data = { .d32 = xmc_device.endpoint_in_register[ep->number]->diepctl };
	  if (data.b.epena)
	  {
	    data.b.epdis = 1;
	  }
	data.b.stall = 1;
	xmc_device.endpoint_in_register[ep->number]->diepctl = data.d32;
	}
	else
	{
	  /* just set stall bit */
	  depctl_data_t data = { .d32 = xmc_device.endpoint_out_register[ep->number]->doepctl };
	  data.b.stall = 1;
	  xmc_device.endpoint_out_register[ep->number]->doepctl = data.d32;
	}
  }
  else
  {
    /* just clear stall bit */
	ep->isStalled = 0;
	if (ep_addr & USB_USB_ENDPOINT_DIRECTION_MASK)
	{
	  depctl_data_t data = { .d32 = xmc_device.endpoint_in_register[ep->number]->diepctl };
	  data.b.stall = 0;
	  data.b.setd0pid = 1; /* reset pid to 0 */
	  xmc_device.endpoint_in_register[ep->number]->diepctl = data.d32;
	}
	else
	{
	  depctl_data_t data = { .d32 = xmc_device.endpoint_out_register[ep->number]->doepctl };
	  data.b.stall = 0;
	  data.b.setd0pid = 1; /* reset pid to 0 */
	  xmc_device.endpoint_out_register[ep->number]->doepctl = data.d32;
	}
  }
return USB_USBD_OK;
}

USB_USBD_STATUS_t USB_EndpointAbort(uint8_t ep_addr) {
  xmc_usb_ep_t *ep = &xmc_device.ep[ep_addr & USB_USB_ENDPOINT_NUMBER_MASK];
  uint32_t i;
  if (ep->direction || ep->type == USB_EP_TYPE_Control)
  {
    ep->inInUse = 0;
	depctl_data_t data = { .d32 = xmc_device.endpoint_in_register[ep->number]->diepctl};
	data.b.stall = 0;
	data.b.setd0pid = 0;
	if (ep->number != 0)
	  data.b.epdis = 1;
	data.b.snak = 1;
	xmc_device.endpoint_in_register[ep->number]->diepctl = data.d32;
  }
  if (!ep->direction || ep->type == USB_EP_TYPE_Control)
  {
    ep->outInUse = 0;
	depctl_data_t data = { .d32 = xmc_device.endpoint_out_register[ep->number]->doepctl};
	data.b.stall = 0;
	data.b.setd0pid = 0;
	if (ep->number != 0)
	  data.b.epdis = 1;
	data.b.snak = 1;
	xmc_device.endpoint_out_register[ep->number]->doepctl = data.d32;
  }
  USB_FlushTXFifo(ep->txFifoNum);
  if(use_fifo)
  {
	device_grxsts_data_t grx = { .d32 = xmc_device.global_register->grxstsr};
	while (grx.b.epnum==ep->number && grx.b.bcnt > 0)
	{
		grx.d32 = xmc_device.global_register->grxstsp;
		for (i=0;i< ((grx.b.bcnt+3) >> 2 );i++)
		{
			*xmc_device.fifo[0];
		}
		grx.d32 = xmc_device.global_register->grxstsr;
	}
   }
  ep->isStalled = 0;
  ep->outBytesAvailable = 0;
  ep->outOffset = 0;
  ep->xferLength = 0;
  ep->xferCount = 0;
  ep->xferTotal = 0;
  return USB_USBD_OK;
}

USB_USBD_STATUS_t USB_EndpointConfigure(uint8_t ep_addr,USB_ENDPOINT_TYPE_t ep_type,
		uint16_t ep_max_packet_size,USB_INIT_t init) {

  XMC_ASSERT("USB_Init: init.usb_max_num_control_eps not of type USB_MAX_NUM_CONTROL_EPS_t",
			 USB_CHECK_INPUT_MAX_NUM_CONTROL_EPS(init.usb_max_num_control_eps));
  XMC_ASSERT("USB_Init: init.usb_max_num_out_eps not of type USB_MAX_NUM_OUT_EPS_t",
	 		 USB_CHECK_INPUT_MAX_NUM_OUT_EPS(init.usb_max_num_out_eps));
  XMC_ASSERT("USB_Init: init.usb_max_num_in_eps not of type USB_MAX_NUM_IN_EPS_t",
	 		 USB_CHECK_INPUT_MAX_NUM_IN_EPS(init.usb_max_num_in_eps));
  XMC_ASSERT("USB_Init: init.usb_max_num_eps not of type USB_MAX_NUM_EPS_t",
	 		 USB_CHECK_INPUT_MAX_NUM_EPS(init.usb_max_num_eps));

  daint_data_t daintmsk = { .d32 = xmc_device.device_register->daintmsk };
  xmc_usb_ep_t *ep = &xmc_device.ep[ep_addr & USB_USB_ENDPOINT_NUMBER_MASK];
  memset(ep,0x0,sizeof(xmc_usb_ep_t)); /* clear endpoint structure */
  /* do ep configuration */
  ep->address = ep_addr;
  ep->isConfigured = 1;
  ep->maxPacketSize = ep_max_packet_size;
  if (ep->address != 0)
    ep->maxTransferSize = USB_MAX_TRANSFER_SIZE;
  else
    ep->maxTransferSize = USB_MAX_TRANSFER_SIZE_EP0;
  /* transfer buffer */
  ep->inBuffer =  (uint8_t*)malloc(USBD_EP_IN_BUFFERSIZE[ep->number]);
  ep->outBuffer = (uint8_t*)malloc(USBD_EP_OUT_BUFFERSIZE[ep->number]);

  ep->inBufferSize = USBD_EP_IN_BUFFERSIZE[ep->number];
  ep->outBufferSize = USBD_EP_OUT_BUFFERSIZE[ep->number];
  /* is in */
  if (ep->direction == 1 || ep_type == USB_ENDPOINT_CONTROL)
  {
    depctl_data_t data = { .d32 = xmc_device.endpoint_in_register[ep->number]->diepctl };
	/*enable endpoint */
	data.b.usbactep = 1;
	/* set ep type */
	data.b.eptype = ep_type;
	/* set mps */
	data.b.mps = ep_max_packet_size;
	/* set first data0 pid */
	data.b.setd0pid = 1;
	/* clear stall */
	data.b.stall = 0;
	/* set tx fifo */
	ep->txFifoNum = USB_AssignTXFifo(); /* get tx fifo */
	data.b.txfnum = ep->txFifoNum;
	xmc_device.endpoint_in_register[ep->number]->diepctl = data.d32; /* configure endpoint */
	daintmsk.ep.in |= (1<<ep->number); /* enable interrupts for endpoint */
  }
  if (ep->direction == 0 || ep_type == USB_ENDPOINT_CONTROL)
  {
    /* is out */
	depctl_data_t data = { .d32 = xmc_device.endpoint_out_register[ep->number]->doepctl };
	/*enable endpoint */
	data.b.usbactep = 1;
	/* set ep type */
	data.b.eptype = ep_type;
	/* set mps */
	data.b.mps = ep_max_packet_size;
	/* set first data0 pid */
	data.b.setd0pid = 1;
	/* clear stall */
	data.b.stall = 0;
	xmc_device.endpoint_out_register[ep->number]->doepctl = data.d32; /* configure endpoint */
	daintmsk.ep.out |= (1<<ep->number); /* enable interrupts */
  }
  xmc_device.device_register->daintmsk = daintmsk.d32;
  return USB_USBD_OK;
}

USB_USBD_STATUS_t USB_EndpointUnconfigure(uint8_t ep_addr) {
  xmc_usb_ep_t *ep = &xmc_device.ep[ep_addr & USB_USB_ENDPOINT_NUMBER_MASK];
  depctl_data_t data = { .d32 = 0 };
  daint_data_t daintmsk = { .d32 = xmc_device.device_register->daintmsk };

  /* if not configured return an error */
  if (!ep->isConfigured)
    return USB_USBD_ERROR;

  /* disable the endpoint, deactivate it and only send naks */
  data.b.usbactep = 0;
  data.b.epdis = 1;
  data.b.snak = 1;
  data.b.stall = 0;
  /* free memory */
  if (ep->inBufferSize>0 && ep->inBuffer != 0)
  {
	  free(ep->inBuffer);
  }
  if (ep->outBufferSize>0 && ep->outBuffer != 0)
  {
    free(ep->outBuffer);
  }
  ep->isConfigured = 0;
  ep->isStalled = 0;
  ep->outInUse = 0;
  ep->inInUse = 0;

  /* chose register based on the direction. Control Endpoint need both */
  if (ep->direction == 1 || ep->type == USB_ENDPOINT_CONTROL)
  {
    xmc_device.endpoint_in_register[ep->number]->diepctl = data.d32; /* disable endpoint configuration */
    daintmsk.ep.in &= ~(1 << ep->number); /* disable interrupts */
  }
  if (ep->direction == 0 || ep->type == USB_ENDPOINT_CONTROL)
  {
    xmc_device.endpoint_out_register[ep->number]->doepctl = data.d32;
    daintmsk.ep.out &= ~(1 << ep->number);
    if(use_fifo)
    {
      xmc_device.device_register->dtknqr4_fifoemptymsk &= ~(1<<ep->number);
    }
  }
  xmc_device.device_register->daintmsk = daintmsk.d32;
  USB_UnassignFifo(ep->txFifoNum); /* free fifo */
  return USB_USBD_OK;
}

uint16_t USB_GetFrameNumber(void) {
  dsts_data_t dsts = { .d32 = xmc_device.device_register->dsts };
  return dsts.b.soffn;
}

USB_USBD_ENUM_t USB_IsEnumDone(void){
 gintmsk_data_t data = { .d32 = xmc_device.global_register->gintmsk };
 if (data.b.enumdone)
 {
  return USB_USBD_EVENT_ENUM_DONE;
 }
 else
 {
  return USB_USBD_EVENT_ENUM_NOT_DONE;
 }
}


