<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="USBD" description="This is USB device protocol layer. &#xA;This layer is basic &#xA;interface between LUFA class layer&#xA; and USB low level driver." descriptionURL="/doc/html/group___u_s_b_device___u_s_b_d.html" mode="SHARABLE" URI="http://www.infineon.com/1.0.0/app/usbd/0">
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../USBD_VCOM/1.0.0/usbd_vcom_0.app#//@consumed.0"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/usbd/0/usblld">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../USBD_LLD/1.0.0/usbd_lld_0.app#/"/>
    <requiredResource uriString="app/usbd_lld/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/usbd/0/topindex" isSystemDefined="true">
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/usbd/0/" isSystemDefined="true"/>
  <categoryDescription description="Middleware Apps" name="Middleware Apps">
    <subCategory description="Communication Stack" name="Communication Stack">
      <subCategory description="Universal Serial Bus(USB)" name="Universal Serial Bus(USB)"/>
    </subCategory>
  </categoryDescription>
  <manifestInfo version="1.0.0">
    <keywords>USB Core Driver</keywords>
    <keywords>usbd</keywords>
    <keywords>Non-Rtos</keywords>
    <keywords>SHARABLE</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" singleton="true"/>
  </manifestInfo>
  <datagenerate fileName="usb" fileType="CDIR" templateFileName="usb" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="usbd" fileType="CDIR" templateFileName="usbd" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="usbd.h" fileType="HFILE" templateFileName="usbd/usbd.h" templateEngine="NONE" fileAction="COPY"/>
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
