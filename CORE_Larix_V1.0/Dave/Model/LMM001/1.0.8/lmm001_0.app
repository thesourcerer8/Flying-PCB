<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="LMM001" description="Local Memory Manager provides&#xA; interface for managing memory locally&#xA; by a task/application." descriptionURL="/doc/html/group___l_m_m001_app.html" URI="http://www.infineon.com/1.0.8/app/lmm001/0">
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../GMM001/1.0.16/gmm001_0.app#//@consumed.0"/>
  <provided xsi:type="ResourceModel:API" description="This API allocates the memory." URI="http://www.infineon.com/1.0.8/app/lmm001/0/lmm001_malloc" APIName="lmm001_malloc">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This API reallocates the previously allocated memory with new size" URI="http://www.infineon.com/1.0.8/app/lmm001/0/lmm001_realloc" APIName="lmm001_realloc">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This API frees the previously allocated memory" URI="http://www.infineon.com/1.0.8/app/lmm001/0/lmm001_free" APIName="lmm001_free">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <propertyConstants name="uridevice" value="device/xmc4500/">
    <propertyConstants name="urisimplecanapp0" value="app/lmm001/0/"/>
  </propertyConstants>
  <categoryDescription description="Service Apps" name="Service Apps">
    <subCategory description="Memory Mgmt" name="Memory Mgmt"/>
  </categoryDescription>
  <manifestInfo version="1.0.8">
    <keywords>LMM001</keywords>
    <keywords>CPU</keywords>
    <keywords>Local Memoy Manager</keywords>
    <keywords>Memory</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" singleton="true"/>
  </manifestInfo>
  <datagenerate fileName="LMM001.c" templateFileName="lmm001.cdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="LMM001.h" fileType="HFILE" templateFileName="lmm001.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="lmm001_debuglog.h" fileType="HFILE" templateFileName="lmm001_debuglog.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="LICENSE" fileType="CDIR" templateFileName="LICENSE" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="LMM001_Conf.c" templateFileName="LMM001_Confc.jet"/>
  <softwareIdList>45.0.2</softwareIdList>
  <softwareIdList>45.0.1</softwareIdList>
  <softwareIdList>45.0.3</softwareIdList>
  <softwareIdList>45.2.3</softwareIdList>
  <softwareIdList>45.4.2</softwareIdList>
  <softwareIdList>45.4.3</softwareIdList>
  <softwareIdList>45.0200.1</softwareIdList>
  <softwareIdList>45.0200.2</softwareIdList>
  <softwareIdList>45.0200.3</softwareIdList>
  <softwareIdList>45.0202.3</softwareIdList>
  <softwareIdList>45.0204.3</softwareIdList>
  <softwareIdList>45.0204.2</softwareIdList>
  <softwareIdList>45.0300.1</softwareIdList>
  <softwareIdList>45.0300.3</softwareIdList>
  <softwareIdList>45.0302.3</softwareIdList>
  <softwareIdList>45.0304.2</softwareIdList>
  <softwareIdList>45.0300.2</softwareIdList>
  <softwareIdList>45.0304.3</softwareIdList>
</ResourceModel:App>
