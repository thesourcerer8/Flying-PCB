<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="USBVC001" description="USBVC001 App is deprecated and &#xA;new App USBD_VCOM(1.0.0) can be &#xA;used for the same functionality." descriptionURL="/doc/html/group___u_s_b___virtual_c_o_m_device___u_s_b_v_c001.html" URI="http://www.infineon.com/1.0.18/app/usbvc001/0">
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/usbvc001/0/usbcdc">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../USBCDC001/1.0.14/usbcdc001_0.app#/"/>
    <requiredResource uriString="app/usbcdc001/*" uriType="LOCALTYPE"/>
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
    <keywords>VCOM</keywords>
    <keywords>USB</keywords>
    <keywords>Virtual COM</keywords>
    <keywords>synopsys</keywords>
    <keywords>USBVC001</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" deprecated="true" singleton="true"/>
  </manifestInfo>
  <datagenerate fileName="INF" fileType="CDIR" templateFileName="INF" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="usbvc001.c" templateFileName="usbvc001.cdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="Descriptors.c" templateFileName="Descriptors.cdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="Descriptors.h" templateFileName="Descriptors.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="USBVC001.h" fileType="HFILE" templateFileName="USBVC001.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="USBVC001_Conf.c" templateFileName="USBVC001_Confc.jet"/>
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
