<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="USBD_LLD" description="This is USB low level driver app. This layer is a direct&#xA; interface to the USB Otg device controller" descriptionURL="/doc/html/group___u_s_b_d___l_l_d.html" URI="http://www.infineon.com/1.0.0/app/usbd_lld/0">
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../USBD/1.0.0/usbd_0.app#//@consumed.0"/>
  <provided xsi:type="ResourceModel:IntegerParameter" name="USB clock enable" description="Dummy clock enable bit" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;clkapp/clk001_erwUSBClkEnable&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res1,1);&#xD;&#xA;                    &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;currentResource&quot;);&#x9;&#x9;&#x9;&#x9; &#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.0/app/usbd_lld/0/usbd_lld_irwclken" downWardmappedList="//@consumed.1" maxValue="0" minValue="1">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="78"/>
    <localValue xsi:type="ResourceModel:StringValue" value="78"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="78"/>
    <toolTipHelpDescription></toolTipHelpDescription>
  </provided>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/usbd_lld/0/clkapp">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../CLK001/1.0.44/clk001_0.app#/"/>
    <requiredResource uriString="app/clk001/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/usbd_lld/0/clkapp/clk001_erwusbclkenable" upWardMappingList="//@provided.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:EnumerationParameter" href="../../CLK001/1.0.44/clk001_0.app#//@provided.22"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <categoryDescription description="Middleware Apps" name="Middleware Apps">
    <subCategory description="Communication Stack" name="Communication Stack">
      <subCategory description="Universal Serial Bus(USB)" name="Universal Serial Bus(USB)"/>
    </subCategory>
  </categoryDescription>
  <manifestInfo version="1.0.0">
    <keywords>USB Low Level Driver</keywords>
    <keywords>USBD_LLD</keywords>
    <keywords>Rtos</keywords>
    <keywords>NOTSHARABLE</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" singleton="true"/>
  </manifestInfo>
  <datagenerate fileName="driver" fileType="CDIR" templateFileName="driver" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="USBD_LLD.h" fileType="HFILE" templateFileName="USBD_LLD.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="USBD_LLD_HW_Private.h" fileType="HFILE" templateFileName="USBD_LLD_HW_Privateh.jet"/>
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
