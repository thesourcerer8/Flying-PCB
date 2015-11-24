<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="USBCORE001" description="This is USB core layer. &#xA;This layer is basic &#xA;interface between LUFA class layer&#xA; and USB low level driver." descriptionURL="/doc/html/group___u_s_b___core_layer___u_s_b_c_o_r_e001.html" mode="SHARABLE" URI="http://www.infineon.com/1.0.18/app/usbcore001/0">
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../USBCDC001/1.0.14/usbcdc001_0.app#//@consumed.0"/>
  <provided xsi:type="ResourceModel:API" description="This function initialises the low level usb driver." URI="http://www.infineon.com/1.0.18/app/usbcore001/0/usbcore001_initialize" APIName="USBCORE001_Initialize">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This is Module init function. Brings the USB out of reset." URI="http://www.infineon.com/1.0.18/app/usbcore001/0/usbcore001_init" APIName="USBCORE001_Init">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This is the interrupt handler function" URI="http://www.infineon.com/1.0.18/app/usbcore001/0/usbcore001_intr" APIName="USBCORE001_Intr">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description=" This function registers the call back for USB host status events." URI="http://www.infineon.com/1.0.18/app/usbcore001/0/usbcore001_hostcallbackregister" APIName="USBCORE001_HostCallBackRegister">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function registers call back for USB connect and disconnect events" URI="http://www.infineon.com/1.0.18/app/usbcore001/0/usbcore001_connecteventregister" APIName="USBCORE001_ConnectEventRegister">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function initialises the USB host controller driver" URI="http://www.infineon.com/1.0.18/app/usbcore001/0/usbcore001_hoststart" APIName="USBCORE001_HostStart">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function resets the usb host port" URI="http://www.infineon.com/1.0.18/app/usbcore001/0/reset_host" APIName="Reset_Host">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function gets the status of USB host port" URI="http://www.infineon.com/1.0.18/app/usbcore001/0/get_hoststat" APIName="Get_HostStat">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function selects PIPE through which communication will happen" URI="http://www.infineon.com/1.0.18/app/usbcore001/0/pipe_selectpipe" APIName="Pipe_SelectPipe">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function sends control request to the selected pipe" URI="http://www.infineon.com/1.0.18/app/usbcore001/0/usb_host_sendcontrolrequest" APIName="USB_Host_SendControlRequest">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function configures pipes for USB communication" URI="http://www.infineon.com/1.0.18/app/usbcore001/0/pipe_configurepipe" APIName="Pipe_ConfigurePipe">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function will prepare the USB request and will queue it to USB low level drvier" URI="http://www.infineon.com/1.0.18/app/usbcore001/0/pipe_write_stream_le" APIName="Pipe_Write_Stream_LE">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function will prepare the USB request and will queue it to USB low level drvier" URI="http://www.infineon.com/1.0.18/app/usbcore001/0/pipe_read_stream_le" APIName="Pipe_Read_Stream_LE">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function reads a byte pf data." URI="http://www.infineon.com/1.0.18/app/usbcore001/0/pipe_read_8" APIName="Pipe_Read_8">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function writes a byte of data." URI="http://www.infineon.com/1.0.18/app/usbcore001/0/pipe_write_8" APIName="Pipe_Write_8">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function sets the periodicity of interrupt transfer" URI="http://www.infineon.com/1.0.18/app/usbcore001/0/pipe_setinterruptperiod" APIName="Pipe_SetInterruptPeriod">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function swaps data endianness." URI="http://www.infineon.com/1.0.18/app/usbcore001/0/swapendian_n" APIName="SwapEndian_n">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function initializes the synopsys device controller driver." URI="http://www.infineon.com/1.0.18/app/usbcore001/0/usbcore001_devicestart" APIName="USBCore001_DeviceStart">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Checks whether a SETUP packet was received or not." URI="http://www.infineon.com/1.0.18/app/usbcore001/0/endpoint_issetupreceived" APIName="Endpoint_IsSETUPReceived">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function  Clears the SETUP packet." URI="http://www.infineon.com/1.0.18/app/usbcore001/0/endpoint_clearsetup" APIName="Endpoint_ClearSETUP">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Clears the OUT endpoint." URI="http://www.infineon.com/1.0.18/app/usbcore001/0/endpoint_clearout" APIName="Endpoint_ClearOUT">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function is Device task routine." URI="http://www.infineon.com/1.0.18/app/usbcore001/0/usb_device_processcontrolrequest" APIName="USB_Device_ProcessControlRequest">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Clears the IN endpoint." URI="http://www.infineon.com/1.0.18/app/usbcore001/0/endpoint_clearin" APIName="Endpoint_ClearIN">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function  Writes the given number of bytes to the control endpoint." URI="http://www.infineon.com/1.0.18/app/usbcore001/0/endpoint_write_control_stream_le" APIName="Endpoint_Write_Control_Stream_LE">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function  Writes the given number of bytes to the control endpoint." URI="http://www.infineon.com/1.0.18/app/usbcore001/0/endpoint_write_control_stream_be" APIName="Endpoint_Write_Control_Stream_BE">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Reads the given number of bytes from the control endpoint." URI="http://www.infineon.com/1.0.18/app/usbcore001/0/endpoint_read_control_stream_be" APIName="Endpoint_Read_Control_Stream_BE">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Reads the given number of bytes from the control endpoint." URI="http://www.infineon.com/1.0.18/app/usbcore001/0/endpoint_read_control_stream_le" APIName="Endpoint_Read_Control_Stream_LE">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Completes the status of a control transfer on a CONTROL type endpoint." URI="http://www.infineon.com/1.0.18/app/usbcore001/0/endpoint_clearstatusstage" APIName="Endpoint_ClearStatusStage">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Selects the current endpoint." URI="http://www.infineon.com/1.0.18/app/usbcore001/0/endpoint_selectendpoint" APIName="Endpoint_SelectEndpoint">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Returns the current endpoint." URI="http://www.infineon.com/1.0.18/app/usbcore001/0/endpoint_getcurrentendpoint" APIName="Endpoint_GetCurrentEndpoint">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Returns the number of bytes available in the selected endpoint." URI="http://www.infineon.com/1.0.18/app/usbcore001/0/endpoint_bytesinendpoint" APIName="Endpoint_BytesInEndpoint">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description=" This function Determines if the selected OUT endpoint has received new packet." URI="http://www.infineon.com/1.0.18/app/usbcore001/0/endpoint_isoutreceived" APIName="Endpoint_IsOUTReceived">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Reads one byte from the current endpoint." URI="http://www.infineon.com/1.0.18/app/usbcore001/0/endpoint_read_8" APIName="Endpoint_Read_8">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Configures the specified endpoint." URI="http://www.infineon.com/1.0.18/app/usbcore001/0/endpoint_configureendpoint" APIName="Endpoint_ConfigureEndpoint">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Writes the given number of bytes to the current endpoint." URI="http://www.infineon.com/1.0.18/app/usbcore001/0/endpoint_write_stream_le" APIName="Endpoint_Write_Stream_LE">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Writes the given number of bytes to the current endpoint." URI="http://www.infineon.com/1.0.18/app/usbcore001/0/endpoint_write_stream_be" APIName="Endpoint_Write_Stream_BE">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Determines if the currently selected endpoint may be read from or written to." URI="http://www.infineon.com/1.0.18/app/usbcore001/0/endpoint_isreadwriteallowed" APIName="Endpoint_IsReadWriteAllowed">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Spin-loops until the currently selected non control endpoint is ready for the next packet of data" URI="http://www.infineon.com/1.0.18/app/usbcore001/0/endpoint_waituntilready" APIName="Endpoint_WaitUntilReady">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Writes the specified byte to the current endpoint." URI="http://www.infineon.com/1.0.18/app/usbcore001/0/endpoint_write_8" APIName="Endpoint_Write_8">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Reads the given number of bytes from the endpoint." URI="http://www.infineon.com/1.0.18/app/usbcore001/0/endpoint_read_stream_le" APIName="Endpoint_Read_Stream_LE">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Reads the given number of bytes from the endpoint." URI="http://www.infineon.com/1.0.18/app/usbcore001/0/endpoint_read_stream_be" APIName="Endpoint_Read_Stream_BE">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="USB Mode Select" URI="http://www.infineon.com/1.0.18/app/usbcore001/0/usbore001_erwusbmode">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <toolTipHelpDescription>Select USB Normal or DMA Mode</toolTipHelpDescription>
    <item name="Slave Mode" evalFunction=" " URI="http://www.infineon.com/1.0.18/app/usbcore001/0/usbore001_erwusbmode/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
      <toolTipHelpDescription>Slave Mode</toolTipHelpDescription>
    </item>
    <item name="DMA Buffer Mode" evalFunction="" URI="http://www.infineon.com/1.0.18/app/usbcore001/0/usbore001_erwusbmode/1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>DMA Buffer Mode</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="USB Host Channel Size" description="Dummy channel size variable" evalFunction=" " URI="http://www.infineon.com/1.0.18/app/usbcore001/0/usbcore001_irwhost_channel_sz" maxValue="64" minValue="-1">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="8"/>
    <localValue xsi:type="ResourceModel:StringValue" value="8"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="8"/>
    <toolTipHelpDescription></toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="USB Host Rx FIFO Size" description="Dummy channel size variable" evalFunction=" " URI="http://www.infineon.com/1.0.18/app/usbcore001/0/usbcore001_irwhost_rxfifo_sz" maxValue="34" minValue="-1">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="8"/>
    <localValue xsi:type="ResourceModel:StringValue" value="8"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="8"/>
    <toolTipHelpDescription></toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="USB host or device mode select" description="Dummy usb operation select bit" evalFunction=" &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue1 = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res2 = SCM.getResource(&quot;USBLLD/usbld001_irwusbmode&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res2,Intvalue1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue1 = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.18/app/usbcore001/0/usbcore001_irwusbop" downWardmappedList="//@consumed.4" maxValue="2" minValue="1">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../USBCDC001/1.0.14/usbcdc001_0.app#//@consumed.1"/>
    <localValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription></toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="USB rtos or non rtos mode select" description="Dummy rtos select bit" evalFunction=" &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue1 = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res2 = SCM.getResource(&quot;USBLLD/usbld001_irwrtos_mode&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res2,Intvalue1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue1 = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.18/app/usbcore001/0/usbcore001_irwdummyrtos_mode" downWardmappedList="//@consumed.5" maxValue="2" minValue="1">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <localValue xsi:type="ResourceModel:StringValue" value="2"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <toolTipHelpDescription></toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="USB Bulk Nak Support" description="Dummy usb bulk nak support bit" evalFunction=" &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue1 = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res2 = SCM.getResource(&quot;USBLLD/usbld001_irwblknaksupport&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res2,Intvalue1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue1 = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.18/app/usbcore001/0/usbcore001_irwblknakop" downWardmappedList="//@consumed.8" maxValue="1" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription></toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Premption Priority" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;nvic_node/ipr_pri&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var BitShift = 2; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var BitMask = 0x03; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue1 = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;Intvalue = (Intvalue &amp; BitMask) | (Intvalue1 &lt;&lt; BitShift);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,Intvalue);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;nvic_node/ipr_pri&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var BitShift = 2; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var BitMask = 0xFC; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,(Intvalue &amp; BitMask)>>BitShift);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.18/app/usbcore001/0/usbcore001_irwinterruptpriority" downWardmappedList="//@consumed.7" maxValue="3F" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="3F"/>
    <localValue xsi:type="ResourceModel:StringValue" value="3F"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3f"/>
    <toolTipHelpDescription>Configure Interrupt Priority</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Sub Priority" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;nvic_node/ipr_pri&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var BitShift = 0; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var BitMask = 0xFC; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue1 = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;Intvalue = (Intvalue &amp; BitMask) | (Intvalue1 );&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,Intvalue);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;nvic_node/ipr_pri&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var BitShift = 0; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var BitMask = 0x03; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,(Intvalue &amp; BitMask));&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.18/app/usbcore001/0/usbcore001_irwinterruptsubpriority" downWardmappedList="//@consumed.7" maxValue="3" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Configure Interrupt Sub Priority</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="USB device dma mode disable" description="Dummy usb device dma mode disable" evalFunction=" " URI="http://www.infineon.com/1.0.18/app/usbcore001/0/usbcore001_irwusbdevicedma_disable" maxValue="1" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../USBCDC001/1.0.14/usbcdc001_0.app#//@consumed.2"/>
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription></toolTipHelpDescription>
  </provided>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/usbcore001/0/usblld">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../USBLD001/1.0.18/usbld001_0.app#/"/>
    <requiredResource uriString="app/usbld001/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/usbcore001/0/nvic_node">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../CPU/CPU_0.dd#//@provided.20"/>
    <requiredResource uriString="peripheral/cpu/0/nvic/interrupt/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/usbcore001/0/resetapp">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../RESET001/1.0.14/reset001_0.app#/"/>
    <requiredResource uriString="app/reset001/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/usbcore001/0/scuapp">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.61"/>
    <requiredResource uriString="peripheral/scu/0/pwrctrl/0/usb" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/usbcore001/0/usblld/usbld001_irwusbmode" upWardMappingList="//@provided.44" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../USBLD001/1.0.18/usbld001_0.app#//@provided.20"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="2"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/usbcore001/0/usblld/usbld001_irwrtos_mode" upWardMappingList="//@provided.45" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../USBLD001/1.0.18/usbld001_0.app#//@provided.18"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="2"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/usbcore001/0/nvic_node/signal_in" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CPU/CPU_0.dd#//@provided.21"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/usbcore001/0/nvic_node/ipr_pri" upWardMappingList="//@provided.47 //@provided.48" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="fc"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CPU/CPU_0.dd#//@provided.22"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="fc"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/usbcore001/0/usblld/usbld001_irwblknaksupport" upWardMappingList="//@provided.46" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../USBLD001/1.0.18/usbld001_0.app#//@provided.22"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <propertyConstants name="uridevice" value="device/xmc4500/">
    <propertyConstants name="uriperi_app" value="peripheral/usb/0"/>
  </propertyConstants>
  <categoryDescription description="Middleware Apps" name="Middleware Apps">
    <subCategory description="Communication Stack" name="Communication Stack">
      <subCategory description="Universal Serial Bus(USB)" name="Universal Serial Bus(USB)"/>
    </subCategory>
  </categoryDescription>
  <manifestInfo version="1.0.18">
    <keywords>USB Core Driver</keywords>
    <keywords>USBCORE001</keywords>
    <keywords>Non-Rtos</keywords>
    <keywords>SHARABLE</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" initProvider="true" singleton="true"/>
  </manifestInfo>
  <datagenerate fileName="usbcore001.c" templateFileName="usbcore001c.jet"/>
  <datagenerate fileName="usbcore001_host.c" templateFileName="usbcore001_hostc.jet"/>
  <datagenerate fileName="usbcore001_device.c" templateFileName="usbcore001_device.cdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="usbcore001.h" fileType="HFILE" templateFileName="usbcore001.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="usbcore001_host.h" fileType="HFILE" templateFileName="usbcore001_host.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="usbcore001_device.h" fileType="HFILE" templateFileName="usbcore001_device.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="usbcore001_Conf.c" templateFileName="usbcore001_Confc.jet"/>
  <softwareIdList>45.0.1</softwareIdList>
  <softwareIdList>45.0.2</softwareIdList>
  <softwareIdList>45.0.3</softwareIdList>
  <softwareIdList>45.2.3</softwareIdList>
  <softwareIdList>45.0200.1</softwareIdList>
  <softwareIdList>45.0200.2</softwareIdList>
  <softwareIdList>45.0200.3</softwareIdList>
  <softwareIdList>45.0202.3</softwareIdList>
  <softwareIdList>44.0.3</softwareIdList>
  <softwareIdList>44.00.5</softwareIdList>
  <softwareIdList>44.02.3</softwareIdList>
  <softwareIdList>44.02.5</softwareIdList>
  <softwareIdList>42.00.5</softwareIdList>
  <softwareIdList>42.0.6</softwareIdList>
  <softwareIdList>42.0200.5</softwareIdList>
  <softwareIdList>42.0200.6</softwareIdList>
  <softwareIdList>44.0200.5</softwareIdList>
  <softwareIdList>44.0202.3</softwareIdList>
  <softwareIdList>44.0202.5</softwareIdList>
  <softwareIdList>44.0200.3</softwareIdList>
  <softwareIdList>45.0300.1</softwareIdList>
  <softwareIdList>45.0300.3</softwareIdList>
  <softwareIdList>45.0302.3</softwareIdList>
  <softwareIdList>45.0300.2</softwareIdList>
</ResourceModel:App>
