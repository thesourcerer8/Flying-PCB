<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="USBCDC001" description="This is CDC Class Driver module.&#xA; This module contains an &#xA;internal implementation of&#xA; the USB CDC-ACM class&#xA; Virtual Serial Ports, &#xA;for USB Device mode." descriptionURL="/doc/html/group___u_s_b___c_d_c_device___u_s_b_c_d_c001.html" mode="SHARABLE" URI="http://www.infineon.com/1.0.14/app/usbcdc001/0">
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../USBVC001/1.0.18/usbvc001_0.app#//@consumed.0"/>
  <provided xsi:type="ResourceModel:API" description="This function continuously checks the status of host port" URI="http://www.infineon.com/1.0.14/app/usbcdc001/0/usb_usbtask" APIName="USB_USBTask">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function configures the CDC device." URI="http://www.infineon.com/1.0.14/app/usbcdc001/0/cdc_device_configureendpoints" APIName="CDC_Device_ConfigureEndpoints">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function processes the control request" URI="http://www.infineon.com/1.0.14/app/usbcdc001/0/cdc_device_processcontrolrequest" APIName="CDC_Device_ProcessControlRequest">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This is general USB device management task." URI="http://www.infineon.com/1.0.14/app/usbcdc001/0/cdc_device_usbtask" APIName="CDC_Device_USBTask">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Dummy Variable" description="Dummy variable" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {       &#xD;&#xA;          var Res3 = SCM.getResource(&quot;USBCore/usbcore001_irwusbop&quot;);&#xD;&#xA;          SCM.setIntValue(Res3,2);&#xD;&#xA;          var Res4 = SCM.getResource(&quot;USBCore/usbcore001_irwusbdevicedma_disable&quot;);&#xD;&#xA;          SCM.setIntValue(Res4,1);&#xD;&#xA;        }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.14/app/usbcdc001/0/usbcdc001_irwdummy" downWardmappedList="//@consumed.1 //@consumed.2" maxValue="0" minValue="1">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription></toolTipHelpDescription>
  </provided>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.14/app/usbcdc001/0/usbcore">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../USBCORE001/1.0.18/usbcore001_0.app#/"/>
    <requiredResource uriString="app/usbcore001/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.14/app/usbcdc001/0/usbcore/usbcore001_irwusbop" upWardMappingList="//@provided.4" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../USBCORE001/1.0.18/usbcore001_0.app#//@provided.44"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="2"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.14/app/usbcdc001/0/usbcore/usbcore001_irwusbdevicedma_disable" upWardMappingList="//@provided.4" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../USBCORE001/1.0.18/usbcore001_0.app#//@provided.49"/>
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
  <manifestInfo version="1.0.14">
    <keywords>CDC for Device</keywords>
    <keywords>UART for USB</keywords>
    <keywords>USBCDC001</keywords>
    <keywords>SHARABLE</keywords>
    <keywords>USB</keywords>
    <keywords>Communication</keywords>
    <keywords>Composite Device Class&#xD;
</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" singleton="true"/>
  </manifestInfo>
  <datagenerate fileName="usbcdc001.h" fileType="HFILE" templateFileName="usbcdc001.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="Drivers" fileType="CDIR" templateFileName="Drivers" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="Drivers/Common" fileType="CDIR" templateFileName="Drivers/Common" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="Drivers/USB" fileType="CDIR" templateFileName="Drivers/USB" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="Drivers/USB/Class" fileType="CDIR" templateFileName="Drivers/USB/Class" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="Drivers/USB/Core" fileType="CDIR" templateFileName="Drivers/USB/Core" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="Drivers/USB/Class/Common" fileType="CDIR" templateFileName="Drivers/USB/Class/Common" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="Drivers/USB/Class/Device" fileType="CDIR" templateFileName="Drivers/USB/Class/Device" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="Dave/Generated/src/USBCDC001/Drivers/USB/Core" fileType="HFILE" templateFileName="Dave/Generated/src/USBCDC001/Drivers/USB/Core" templateEngine="NONE" fileAction="INCLUDE"/>
  <datagenerate fileName="Dave/Generated/src/USBCDC001/Drivers/USB/Class" fileType="HFILE" templateFileName="Dave/Generated/src/USBCDC001/Drivers/USB/Class" templateEngine="NONE" fileAction="INCLUDE"/>
  <datagenerate fileName="Dave/Generated/src/USBCDC001/Drivers/USB" fileType="HFILE" templateFileName="Dave/Generated/src/USBCDC001/Drivers/USB" templateEngine="NONE" fileAction="INCLUDE"/>
  <datagenerate fileName="Dave/Generated/src/USBCDC001/Drivers/USB/Class" fileType="HFILE" templateFileName="Dave/Generated/src/USBCDC001/Drivers/USB/Class" templateEngine="NONE" fileAction="INCLUDE"/>
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
  <softwareIdList>42.04.5</softwareIdList>
  <softwareIdList>42.04.6</softwareIdList>
  <softwareIdList>42.0200.5</softwareIdList>
  <softwareIdList>42.0204.5</softwareIdList>
  <softwareIdList>42.0204.6</softwareIdList>
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
