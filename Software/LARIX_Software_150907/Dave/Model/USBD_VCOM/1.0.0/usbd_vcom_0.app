<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="USBD_VCOM" description="This is CDC Class Driver module.&#xA; This module contains an &#xA;internal implementation of&#xA; the USB CDC-ACM class&#xA; Virtual Serial Ports, &#xA;for USB Device mode." descriptionURL="/doc/html/group___u_s_b___c_d_c_device___u_s_b_d___v_c_o_m.html" mode="SHARABLE" URI="http://www.infineon.com/1.0.0/app/usbd_vcom/0" userLabel="Debug_Interface">
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/usbd_vcom/0/usbd">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../USBD/1.0.0/usbd_0.app#/"/>
    <requiredResource uriString="app/usbd/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/usbd_vcom/0/" isSystemDefined="true"/>
  <categoryDescription description="Middleware Apps" name="Middleware Apps">
    <subCategory description="Communication Stack" name="Communication Stack">
      <subCategory description="Universal Serial Bus(USB)" name="Universal Serial Bus(USB)"/>
    </subCategory>
  </categoryDescription>
  <manifestInfo version="1.0.0">
    <keywords>CDC for Device</keywords>
    <keywords>UART for USB</keywords>
    <keywords>USBD_VCOM</keywords>
    <keywords>SHARABLE</keywords>
    <keywords>USB</keywords>
    <keywords>Communication</keywords>
    <keywords>Composite Device Class&#xD;
</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" singleton="true"/>
  </manifestInfo>
  <datagenerate fileName="cdc" fileType="CDIR" templateFileName="cdc" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="vc" fileType="CDIR" templateFileName="vc" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="usbd_vcom.h" fileType="HFILE" templateFileName="vc/usbd_vcom.h" templateEngine="NONE" fileAction="COPY"/>
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
