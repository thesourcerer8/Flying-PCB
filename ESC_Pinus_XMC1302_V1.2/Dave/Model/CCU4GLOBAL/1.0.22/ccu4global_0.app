<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="CCU4GLOBAL" description="This is the global app &#xA; with which CCU4 &#xA; slices of the same module &#xA; are configured. " descriptionURL="/doc/html/group___c_c_u4_g_l_o_b_a_l_app.html" mode="SHARABLE" URI="http://www.infineon.com/1.0.22/app/ccu4global/0">
  <provided xsi:type="ResourceModel:VirtualSignal" name="Clock" evalFunction="" URI="http://www.infineon.com/1.0.22/app/ccu4global/0/ccu4global_clk_vs" requiredSignalResource="global/clk">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Global" evalFunction="" URI="http://www.infineon.com/1.0.22/app/ccu4global/0/ccu4global_globalsignal_vs" requiredSignalResource="global/global_signal">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Clock Frequency" evalFunction="&#xD;&#xA;        function ForwardMapping(){&#xD;&#xA; &#x9;&#x9;&#x9; var XMC1xxx=SCM.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);  &#xD;&#xA;   &#x9;&#x9;&#x9; if(XMC1xxx==0)&#xD;&#xA;&#x9;&#x9;&#x9; var Res2 = SCM.getResource(&quot;clkapp2/clk002_irPCLK&quot;);&#xD;&#xA;&#x9;&#x9;&#x9; else&#xD;&#xA;&#x9;&#x9;&#x9;  {                  &#xD;&#xA;             var Res2 = SCM.getResource(&quot;clkapp/clk001_iroActualFreqCCU&quot;);          &#xD;&#xA;             var Res1 = SCM.getResource(&quot;clkapp/clk001_erwCCUClkEnable&quot;); &#xD;&#xA;             SCM.setIntValue(Res1,1);&#xD;&#xA;&#x9;&#x9;&#x9;  }&#xD;&#xA;&#x9;&#x9;&#x9;var Clock = SCM.getDoubleValue(Res2);&#xD;&#xA;         }&#xD;&#xA;        &#xD;&#xA;        function BackwardMapping(){&#xD;&#xA;&#x9;&#x9;&#x9;var XMC1xxx=SCM.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);  &#xD;&#xA;   &#x9;&#x9;&#x9; if(XMC1xxx==0)&#xD;&#xA;&#x9;&#x9;&#x9; var Res2 = SCM.getResource(&quot;clkapp2/clk002_irPCLK&quot;);&#xD;&#xA;&#x9;&#x9;&#x9; else&#xD;&#xA;             var Res2 = SCM.getResource(&quot;clkapp/clk001_iroActualFreqCCU&quot;);&#xD;&#xA;&#xD;&#xA;             var Clock = SCM.getDoubleValue(Res2);&#xD;&#xA;            SCM.setDoubleValue(currentResource,Clock);    &#xD;&#xA;        }&#xD;&#xA;" URI="http://www.infineon.com/1.0.22/app/ccu4global/0/ccu4global_irclock" maxValue="78" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="40"/>
    <localValue xsi:type="ResourceModel:StringValue" value="40"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="20"/>
    <toolTipHelpDescription>This displays the Clock frequency for the CCU and POSIF modules.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function is used to initialize the APP" URI="http://www.infineon.com/1.0.22/app/ccu4global/0/ccu4global_init" APIName="ccu4global_Init">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.22/app/ccu4global/0/global">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../CCU40/CCU40_0.dd#//@provided.0"/>
    <requiredResource uriString="peripheral/ccu4/*/global" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = Solver.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if((value1  == 0 )) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  return false;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;return true;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.22/app/ccu4global/0/clkapp">
    <requiredResource uriString="app/clk001/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = Solver.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if((value1  == 0 )) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  return true;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;return false;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.22/app/ccu4global/0/clkapp2">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../CLK002/1.0.8/clk002_0.app#/"/>
    <requiredResource uriString="app/clk002/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = Solver.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if(value1  == 0 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  return false;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;return true;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.22/app/ccu4global/0/resetapp">
    <requiredResource uriString="app/reset001/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.22/app/ccu4global/0/global/global_signal" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU40/CCU40_0.dd#//@provided.1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.22/app/ccu4global/0/global/clk" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU40/CCU40_0.dd#//@provided.2"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.22/app/ccu4global/0/clkapp/clk001_iroactualfreqccu" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.22/app/ccu4global/0/clkapp/clk001_erwccuclkenable" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.22/app/ccu4global/0/clkapp2/clk002_irpclk" upWardMappingList="//@provided.2" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:StringValue" value="20"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../CLK002/1.0.8/clk002_0.app#//@provided.4"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="20"/>
  </consumed>
  <propertyConstants name="uridevice" value="device">
    <propertyConstants name="uriCCUGlobal" value="app/ccuglobal/"/>
  </propertyConstants>
  <categoryDescription description="Peripheral related Apps" name="Peripheral Specific Apps">
    <subCategory description="Timer-Capture-Compare" name="Timer-Capture-Compare">
      <subCategory description="CAPCOM4" name="Capture/Compare Unit 4 (CAPCOM4)"/>
    </subCategory>
  </categoryDescription>
  <manifestInfo version="1.0.22">
    <keywords>CCU4 global</keywords>
    <keywords>CCU4GLOBAL</keywords>
    <keywords>Global</keywords>
    <keywords>SHARABLE</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" initProvider="true"/>
  </manifestInfo>
  <datagenerate fileName="CCU4GLOBAL_Conf.c" templateFileName="CCU4Global_Confc.jet"/>
  <datagenerate fileName="CCU4GLOBAL.c" templateFileName="CCU4Globalc.cdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="CCU4GLOBAL.h" fileType="HFILE" templateFileName="CCU4Global.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="CCU4GLOBAL_Conf.h" fileType="HFILE" templateFileName="CCU4Global_Confh.jet"/>
  <datagenerate fileName="CCU4GLOBAL_Extern.h" fileType="HFILE" templateFileName="CCU4Global_Externh.jet"/>
  <connections sourceSignal="clkapp/clk001_ccu_fccu_vs" targetSignal="app/ccu4global/0/ccu4global_clk_vs" constraintFunction="function resourceCondition() {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = Solver.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if((value1  == 0 )) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  return false;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;return true;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}"/>
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
  <softwareIdList>11.0100.7</softwareIdList>
  <softwareIdList>11.0100.9</softwareIdList>
  <softwareIdList>12.0100.7</softwareIdList>
  <softwareIdList>12.0101.7</softwareIdList>
  <softwareIdList>12.0102.9</softwareIdList>
  <softwareIdList>12.0102.8</softwareIdList>
  <softwareIdList>13.0102.7</softwareIdList>
  <softwareIdList>13.0101.9</softwareIdList>
  <softwareIdList>13.0101.7</softwareIdList>
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
  <softwareIdList>11.0100.10</softwareIdList>
  <softwareIdList>11.0100.11</softwareIdList>
  <softwareIdList>12.0101.11</softwareIdList>
  <softwareIdList>12.0102.10</softwareIdList>
  <softwareIdList>12.0102.11</softwareIdList>
  <softwareIdList>13.0101.10</softwareIdList>
  <softwareIdList>13.0101.11</softwareIdList>
  <softwareIdList>13.0102.10</softwareIdList>
  <softwareIdList>13.0102.11</softwareIdList>
  <softwareIdList>13.0102.9</softwareIdList>
</ResourceModel:App>
