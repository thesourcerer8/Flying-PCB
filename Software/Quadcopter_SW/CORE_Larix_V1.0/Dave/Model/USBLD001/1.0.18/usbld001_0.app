<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="USBLD001" description="This is USB low level &#xA;driver app. This layer is a direct&#xA; interface to the USB Otg controller" descriptionURL="/doc/html/group___u_s_b___low___level___driver___u_s_b_l_d001.html" URI="http://www.infineon.com/1.0.18/app/usbld001/0">
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../USBCORE001/1.0.18/usbcore001_0.app#//@consumed.0"/>
  <provided xsi:type="ResourceModel:VirtualSignal" name="USB interrupt" URI="http://www.infineon.com/1.0.18/app/usbld001/0/interrupt_vs" requiredSignalResource="usb/interrupt" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Nvic interrupt node" URI="http://www.infineon.com/1.0.18/app/usbld001/0/nvic_node_vs" requiredSignalResource="nvic_node/signal_in" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="VBus Power Pad" URI="http://www.infineon.com/1.0.18/app/usbld001/0/usb_bus_power_pin_vs" requiredSignalResource="drive_vbus_pin/pad" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="VBus drive" URI="http://www.infineon.com/1.0.18/app/usbld001/0/usb_drive_vbus_vs" requiredSignalResource="usb/usb_drivevbus" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function initializes the DWC_otg CSR data structures." URI="http://www.infineon.com/1.0.18/app/usbld001/0/dwc_otg_cil_init" APIName="dwc_otg_cil_init">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function initializes the DWC_otg controller registers." URI="http://www.infineon.com/1.0.18/app/usbld001/0/dwc_otg_core_init" APIName="dwc_otg_core_init">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function configures the HCD portion of the driver." URI="http://www.infineon.com/1.0.18/app/usbld001/0/dwc_otg_hcd_init" APIName="dwc_otg_hcd_init">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function starts the USB host controller driver." URI="http://www.infineon.com/1.0.18/app/usbld001/0/dwc_otg_hcd_start" APIName="dwc_otg_hcd_start">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function queues the urb request to HCD" URI="http://www.infineon.com/1.0.18/app/usbld001/0/dwc_otg_hcd_urb_enqueue" APIName="dwc_otg_hcd_urb_enqueue">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function sets the different elements of USB requests." URI="http://www.infineon.com/1.0.18/app/usbld001/0/dwc_otg_hcd_urb_set_params" APIName="dwc_otg_hcd_urb_set_params">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function resets the usb host port" URI="http://www.infineon.com/1.0.18/app/usbld001/0/reset_tasklet_func" APIName="reset_tasklet_func">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function handles interrupts for the HCD." URI="http://www.infineon.com/1.0.18/app/usbld001/0/dwc_otg_hcd_handle_intr" APIName="dwc_otg_hcd_handle_intr">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function handles interrupts for the PCD." URI="http://www.infineon.com/1.0.18/app/usbld001/0/dwc_otg_pcd_handle_intr" APIName="dwc_otg_pcd_handle_intr">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function queues the urb request to PCD" URI="http://www.infineon.com/1.0.18/app/usbld001/0/dwc_otg_pcd_ep_queue" APIName="dwc_otg_pcd_ep_queue">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function configures the PCD portion of the driver." URI="http://www.infineon.com/1.0.18/app/usbld001/0/dwc_otg_pcd_init" APIName="dwc_otg_pcd_init">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function starts the USB device controller driver." URI="http://www.infineon.com/1.0.18/app/usbld001/0/dwc_otg_pcd_start" APIName="dwc_otg_pcd_start">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function enables the PCD endpoint." URI="http://www.infineon.com/1.0.18/app/usbld001/0/dwc_otg_pcd_ep_enable" APIName="dwc_otg_pcd_ep_enable">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="USB clock enable" description="Dummy clock enable bit" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;clkapp/clk001_erwUSBClkEnable&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res1,1);&#xD;&#xA;&#xD;&#xA;                    var Res2 = SCM.getResource(&quot;systimerapp/systm001_systickinterval&quot;);    &#xD;&#xA;                    SCM.setIntValue(Res2,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;currentResource&quot;);&#x9;&#x9;&#x9;&#x9; &#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.18/app/usbld001/0/usbld001_irwclken" downWardmappedList="//@consumed.16 //@consumed.19" maxValue="0" minValue="1">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="78"/>
    <localValue xsi:type="ResourceModel:StringValue" value="78"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="78"/>
    <toolTipHelpDescription></toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="USB clock enable" description="Dummy rtos enable bit" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var res = SCM.getResource(&quot;index1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(res,value);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;index1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,value);&#x9;&#x9;&#x9;&#x9; &#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.18/app/usbld001/0/usbld001_irwrtos_mode" downWardmappedList="//@consumed.7" maxValue="2" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../USBCORE001/1.0.18/usbcore001_0.app#//@consumed.5"/>
    <localValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <toolTipHelpDescription>Dummy RTOS Item</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Use RTOS mode" URI="http://www.infineon.com/1.0.18/app/usbld001/0/usbld001_erwrtos_mode" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
    <toolTipHelpDescription>This shows that RTOS environment is selected.</toolTipHelpDescription>
    <item name="Use RTOS" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping(){&#xD;&#xA;              var residx2 = SCM.getResource(&quot;index2&quot;);&#xD;&#xA;              var value2 = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(residx2, value2);&#xD;&#xA;              var residx = SCM.getResource(&quot;index1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var dep = &quot;DependentApp&quot;;&#xD;&#xA;&#x9;&#x9;            &#x9;&#x9;var usbapp = SCM.getResource(&quot;usbldlayer_rtos&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;            SCM.setStringValue(usbapp,dep);&#xD;&#xA;&#x9;&#x9;            &#x9;&#x9;var sysapp = SCM.getResource(&quot;systimerapp&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;            SCM.setStringValue(sysapp,dep);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping(){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var residx2 = SCM.getResource(&quot;index2&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var valueidx2 = SCM.getIntValue(residx2);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var residx = SCM.getResource(&quot;index1&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var valueidx = SCM.getIntValue(residx);&#xD;&#xA;                 &#x9;&#x9;&#x9;if ((valueidx2 == 1) || (valueidx == 1))&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;     &#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;     &#x9;  SCM.setIntValue(currentResource, 1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    else&#xD;&#xA;          &#x9;&#x9;&#x9;&#x9;    {&#xD;&#xA;            &#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,0);&#xD;&#xA;          &#x9;&#x9;&#x9;&#x9;    } &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.18/app/usbld001/0/usbld001_erwrtos_mode/0" downWardmappedList="//@consumed.8 //@consumed.13 //@consumed.12" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Selcet RTOS mode</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Dummy Variable" description="Dummy variable to decide usb host or device mode" evalFunction="&#xD;&#xA;&#x9;  &#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;{&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var res = SCM.getResource(&quot;index3&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(res,value);&#xD;&#xA;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;index3&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,value);&#x9;&#x9;&#x9;&#x9; &#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.18/app/usbld001/0/usbld001_irwusbmode" downWardmappedList="//@consumed.9" maxValue="2" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../USBCORE001/1.0.18/usbcore001_0.app#//@consumed.4"/>
    <localValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <toolTipHelpDescription></toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="USB Mode" URI="http://www.infineon.com/1.0.18/app/usbld001/0/usbld001_erwusbopmode">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <toolTipHelpDescription>Select USB Mode</toolTipHelpDescription>
    <item name="Host Mode" evalFunction="&#xD;&#xA;    &#x9;        function ForwardMapping(){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var residx = SCM.getResource(&quot;index4&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(residx, value);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var residx = SCM.getResource(&quot;index3&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping(){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var residx = SCM.getResource(&quot;index4&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var valueidx = SCM.getIntValue(residx);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var residx1 = SCM.getResource(&quot;index3&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var valueidx1 = SCM.getIntValue(residx1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    var XMC42 =SCM.getSoftwareId().substring(0,2).compareTo(&quot;42&quot;);&#xD;&#xA;                            if(XMC42 == 0)&#xD;&#xA;                            { &#xD;&#xA;                             SCM.setIntValue(currentResource,0);&#xD;&#xA;                            }&#xD;&#xA;                            else&#xD;&#xA;                            {&#xD;&#xA;                             if ((valueidx == 1) || (valueidx1 == 1))&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   SCM.setIntValue(currentResource, 1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; }&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; else&#xD;&#xA;              &#x9;&#x9;&#x9;&#x9; {&#xD;&#xA;                 &#x9;&#x9;&#x9;   SCM.setIntValue(currentResource,0);               &#x9;&#x9;&#x9;&#x9;&#xD;&#xA;              &#x9;&#x9;&#x9;&#x9; }&#xD;&#xA;                            } &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.18/app/usbld001/0/usbld001_erwusbopmode/0" downWardmappedList="//@consumed.10" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>USB Host Mode</toolTipHelpDescription>
    </item>
    <item name="Device Mode" evalFunction="&#xD;&#xA;    &#x9;        function ForwardMapping(){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var residx = SCM.getResource(&quot;index5&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(residx, value);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var residx = SCM.getResource(&quot;index3&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping(){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var residx = SCM.getResource(&quot;index5&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var valueidx = SCM.getIntValue(residx);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var residx1 = SCM.getResource(&quot;index3&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var valueidx1 = SCM.getIntValue(residx1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    var XMC42 =SCM.getSoftwareId().substring(0,2).compareTo(&quot;42&quot;);&#xD;&#xA;                            if(XMC42 == 0)&#xD;&#xA;                            { &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;                              SCM.setIntValue(currentResource, 1);&#xD;&#xA;                            } &#xD;&#xA;                            else&#xD;&#xA;                            {&#xD;&#xA;                                if ((valueidx == 1) || (valueidx1 == 2))&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;       SCM.setIntValue(currentResource, 1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    }&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    else&#xD;&#xA;              &#x9;&#x9;&#x9;&#x9;    {&#xD;&#xA;                &#x9;&#x9;&#x9;&#x9;   SCM.setIntValue(currentResource,0);&#xD;&#xA;              &#x9;&#x9;&#x9;&#x9;    }&#xD;&#xA;                            }   &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.18/app/usbld001/0/usbld001_erwusbopmode/1" downWardmappedList="//@consumed.11" maxValue="2" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>USB Device Mode</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Bulk Nak Support" description="Dummy variable to decide bulk nak support" evalFunction="" URI="http://www.infineon.com/1.0.18/app/usbld001/0/usbld001_irwblknaksupport" maxValue="1" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../USBCORE001/1.0.18/usbcore001_0.app#//@consumed.8"/>
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription></toolTipHelpDescription>
  </provided>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/usbld001/0/usb">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../USB/USB_0.dd#//@provided.0"/>
    <requiredResource uriString="peripheral/usb/0/usb" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/usbld001/0/sltha">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../SLTHA003/1.0.14/sltha003_0.app#/"/>
    <requiredResource uriString="app/sltha003/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/usbld001/0/nvic_node">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../CPU/CPU_0.dd#//@provided.23"/>
    <requiredResource uriString="peripheral/cpu/0/nvic/interrupt/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/usbld001/0/clkapp">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../CLK001/1.0.44/clk001_0.app#/"/>
    <requiredResource uriString="app/clk001/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" name="Vbus drive pin" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var idx1 = Solver.getResource(&quot;index3&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var valueidx1 = Solver.getIntValue(idx1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if( valueidx1 == 1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;return true;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;else{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;return false;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.18/app/usbld001/0/drive_vbus_pin">
    <requiredResource uriString="port/p/*/pad/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/usbld001/0/usbld001_tempmode" isSystemDefined="true">
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/usbld001/0/usbld001_tempusb" isSystemDefined="true">
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/usbld001/0/index1" upWardMappingList="//@provided.18 //@provided.19/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/usbld001/0/index2" upWardMappingList="//@provided.19/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/usbld001/0/index3" upWardMappingList="//@provided.20 //@provided.21/@item.0 //@provided.21/@item.1" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/usbld001/0/index4" upWardMappingList="//@provided.21/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/usbld001/0/index5" upWardMappingList="//@provided.21/@item.1" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;&#x9;&#x9;      var Res0 = Solver.getResource(&quot;usbld001_erwrtos_mode/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;      var rtosval = Solver.getIntValue(Res0);&#xD;&#xA;&#x9;&#x9;&#x9;      if (rtosval == 0 ) {&#xD;&#xA;&#x9;&#x9;&#x9;        return true; &#xD;&#xA;&#x9;&#x9;&#x9;      } &#xD;&#xA;&#x9;&#x9;&#x9;      return false;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.18/app/usbld001/0/systimerapp" upWardMappingList="//@provided.19/@item.0">
    <localValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <downWardmappedList xsi:type="ResourceModel:App" href="../../SYSTM001/1.0.18/systm001_0.app#/"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <requiredResource uriString="app/systm001/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;&#x9;&#x9;      var Res0 = Solver.getResource(&quot;usbld001_erwrtos_mode/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;      var rtosval = Solver.getIntValue(Res0);&#xD;&#xA;&#x9;&#x9;&#x9;      if (rtosval == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;        return true; &#xD;&#xA;&#x9;&#x9;&#x9;      } &#xD;&#xA;&#x9;&#x9;&#x9;      return false;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.18/app/usbld001/0/usbldlayer_rtos" upWardMappingList="//@provided.19/@item.0">
    <localValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <requiredResource uriString="app/rtos001/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/usbld001/0/usb/interrupt" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USB/USB_0.dd#//@provided.1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/usbld001/0/drive_vbus_pin/pad" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/usbld001/0/clkapp/clk001_erwusbclkenable" upWardMappingList="//@provided.17" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:EnumerationParameter" href="../../CLK001/1.0.44/clk001_0.app#//@provided.22"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/usbld001/0/nvic_node/signal_in" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CPU/CPU_0.dd#//@provided.24"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/usbld001/0/usb/usb_drivevbus" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USB/USB_0.dd#//@provided.2"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/usbld001/0/systimerapp/systm001_systickinterval" upWardMappingList="//@provided.17" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../SYSTM001/1.0.18/systm001_0.app#//@provided.0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <propertyConstants name="uridevice" value="device/xmc4500/">
    <propertyConstants name="uriperi_app" value="peripheral/usb/0/"/>
  </propertyConstants>
  <categoryDescription description="Middleware Apps" name="Middleware Apps">
    <subCategory description="Communication Stack" name="Communication Stack">
      <subCategory description="Universal Serial Bus(USB)" name="Universal Serial Bus(USB)"/>
    </subCategory>
  </categoryDescription>
  <manifestInfo version="1.0.18">
    <keywords>USB Low Level Driver</keywords>
    <keywords>USBLD001</keywords>
    <keywords>Rtos</keywords>
    <keywords>NOTSHARABLE</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" singleton="true"/>
  </manifestInfo>
  <datagenerate fileName="driver" fileType="CDIR" templateFileName="driver" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="dwc_common_port" fileType="CDIR" templateFileName="dwc_common_port" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="Type_CM.h" templateFileName="Type_CMh.jet"/>
  <datagenerate fileName="usbld001_delay.c" templateFileName="usbld001_delayc.jet"/>
  <datagenerate fileName="usbld001_delay.h" fileType="HFILE" templateFileName="usbld001_delay.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="USBLD001.h" fileType="HFILE" templateFileName="USBLD001.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="USBLD001_HW_Private.h" fileType="HFILE" templateFileName="USBLD001_HW_Privateh.jet"/>
  <datagenerate fileName="usbld001_Conf.c" templateFileName="usbld001_Confc.jet"/>
  <connections sourceSignal="app/usbld001/0/interrupt_vs" targetSignal="app/usbld001/0/nvic_node_vs" constraintFunction=""/>
  <connections sourceSignal="app/usbld001/0/usb_drive_vbus_vs" targetSignal="app/usbld001/0/usb_bus_power_pin_vs" constraintFunction=""/>
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
