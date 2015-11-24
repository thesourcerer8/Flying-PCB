<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="GMM001" description="The Global Memory Manager app&#xA; is designed to provide memory&#xA; management functionalities.&#xA;It can supports heap spanning&#xA; over 2 non-contiguous RAM areas." descriptionURL="/doc/html/group___g_m_m001_app.html" mode="SHARABLE" URI="http://www.infineon.com/1.0.16/app/gmm001/0">
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../SLTHA003/1.0.14/sltha003_0.app#//@consumed.1"/>
  <provided xsi:type="ResourceModel:API" description="This function configures LMM001 handles using different RAM sections available." URI="http://www.infineon.com/1.0.16/app/gmm001/0/gmm001_init" APIName="GMM001_Init">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="The function allocates memory of 'size' number of bytes." URI="http://www.infineon.com/1.0.16/app/gmm001/0/gmm001_malloc" APIName="GMM001_malloc">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function changes the size of a block of memory that was previously allocated with malloc()." URI="http://www.infineon.com/1.0.16/app/gmm001/0/gmm001_realloc" APIName="GMM001_realloc">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="The function deallocates the memory pointed by Memptr." URI="http://www.infineon.com/1.0.16/app/gmm001/0/gmm001_free" APIName="GMM001_free">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.16/app/gmm001/0/lmmapp">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../LMM001/1.0.8/lmm001_0.app#/"/>
    <requiredResource uriString="app/lmm001/*" uriType="LOCALTYPE"/>
  </consumed>
  <propertyConstants name="uridevice" value="device/xmc4500/"/>
  <categoryDescription description="Service Apps" name="Service Apps">
    <subCategory description="Memory Mgmt" name="Memory Mgmt"/>
  </categoryDescription>
  <manifestInfo version="1.0.16">
    <keywords>GMM001</keywords>
    <keywords>Memory</keywords>
    <keywords>Heap</keywords>
    <keywords>Global memory manager</keywords>
    <keywords>Local memory manager</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" initProvider="true" singleton="true"/>
  </manifestInfo>
  <datagenerate fileName="GMM001.h" fileType="HFILE" templateFileName="gmm001.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="GMM001.c" templateFileName="gmm001c.jet"/>
  <datagenerate fileName="GMM001_Conf.c" templateFileName="GMM001_Confc.jet"/>
  <datagenerate fileName="KEIL" fileType="CDIR" templateFileName="KEIL" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="IAR" fileType="CDIR" templateFileName="IAR" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="TASKING" fileType="CDIR" templateFileName="TASKING" templateEngine="NONE" fileAction="COPY"/>
  <softwareIdList>45.0.2</softwareIdList>
  <softwareIdList>45.0.1</softwareIdList>
  <softwareIdList>45.0.3</softwareIdList>
  <softwareIdList>45.2.3</softwareIdList>
  <softwareIdList>45.4.3</softwareIdList>
  <softwareIdList>45.4.2</softwareIdList>
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
