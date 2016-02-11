<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="NVIC_SCU001" description="App provides SCU module specific handling&#xA; of Interrupt events.This App is included by &#xA;top level apps to register callback functions&#xA; to handle SCU Interrupt Events." descriptionURL="/doc/html/group___n_v_i_c___s_c_u001_app.html" mode="SHARABLE" URI="http://www.infineon.com/1.0.18/app/nvic_scu001/0">
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../RTC001/1.0.32/rtc001_0.app#//@consumed.6"/>
  <provided xsi:type="ResourceModel:VirtualSignal" name="SCU 0 Interrupt Node" URI="http://www.infineon.com/1.0.18/app/nvic_scu001/0/scunode_vs" requiredSignalResource="scunode/signal_in">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Priority" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;scunode/ipr_pri&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var BitShift = 2; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var BitMask = 0x03; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue1 = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;Intvalue = (Intvalue &amp; BitMask) | (Intvalue1 &lt;&lt; BitShift);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,Intvalue);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;scunode/ipr_pri&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var BitShift = 2; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var BitMask = 0xFC; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,(Intvalue &amp; BitMask)>>BitShift);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.18/app/nvic_scu001/0/nvic_scu001_irwinterruptpriority" downWardmappedList="//@consumed.2" maxValue="3F" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="3F"/>
    <localValue xsi:type="ResourceModel:StringValue" value="3F"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3f"/>
    <toolTipHelpDescription>Interrupt priority</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Subpriority" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;scunode/ipr_pri&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var BitShift = 0; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var BitMask = 0xFC; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue1 = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;Intvalue = (Intvalue &amp; BitMask) | (Intvalue1 );&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,Intvalue);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;scunode/ipr_pri&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var BitShift = 0; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var BitMask = 0x03; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,(Intvalue &amp; BitMask));&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.18/app/nvic_scu001/0/nvic_scu001_irwinterruptsubpriority" downWardmappedList="//@consumed.2" maxValue="0" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This configuration is for future use</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:API" description="Function to configure DMA Interrupt priority and reset&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;             all interrupt related registers to reset values" URI="http://www.infineon.com/1.0.18/app/nvic_scu001/0/nvic_scu001_init" APIName="NVIC_SCU001_Init">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/nvic_scu001/0/scunode">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../CPU/CPU_0.dd#//@provided.12"/>
    <requiredResource uriString="peripheral/cpu/0/nvic/interrupt/0" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/nvic_scu001/0/scunode/signal_in" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CPU/CPU_0.dd#//@provided.13"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/nvic_scu001/0/scunode/ipr_pri" upWardMappingList="//@provided.1 //@provided.2" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="fc"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CPU/CPU_0.dd#//@provided.14"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="fc"/>
  </consumed>
  <propertyConstants name="uriDevice" value="device">
    <propertyConstants name="uriPeri_nvic" value="peripheral/cpu/0/nvic/"/>
  </propertyConstants>
  <categoryDescription description="Peripheral Specific Apps" name="Peripheral Specific Apps">
    <subCategory description="CPU-System" name="CPU-System">
      <subCategory description="NVIC (Nested Vector Interrupt Controller)" name="NVIC (Nested Vector Interrupt Controller)"/>
    </subCategory>
  </categoryDescription>
  <categoryDescription description="Service Apps" name="Service Apps">
    <subCategory description="Interrupt" name="Interrupt"/>
  </categoryDescription>
  <manifestInfo version="1.0.18">
    <keywords>SCU</keywords>
    <keywords>SCU Interrupt</keywords>
    <keywords>NVIC</keywords>
    <keywords>NVIC_SCU001</keywords>
    <keywords>interrupt</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" initProvider="true" singleton="true"/>
  </manifestInfo>
  <datagenerate fileName="NVIC_SCU001.h" fileType="HFILE" templateFileName="NVIC_SCU001.h" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="NVIC_SCU001.c" templateFileName="NVIC_SCU001c.jet"/>
  <softwareIdList>45.0.1</softwareIdList>
  <softwareIdList>45.0.2</softwareIdList>
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
  <softwareIdList>42.0208.6</softwareIdList>
  <softwareIdList>44.0200.5</softwareIdList>
  <softwareIdList>44.0202.3</softwareIdList>
  <softwareIdList>44.0202.5</softwareIdList>
  <softwareIdList>44.0200.3</softwareIdList>
  <softwareIdList>45.0300.1</softwareIdList>
  <softwareIdList>45.0300.3</softwareIdList>
  <softwareIdList>45.0302.3</softwareIdList>
  <softwareIdList>45.0304.2</softwareIdList>
  <softwareIdList>45.0300.2</softwareIdList>
  <softwareIdList>45.0304.3</softwareIdList>
</ResourceModel:App>
