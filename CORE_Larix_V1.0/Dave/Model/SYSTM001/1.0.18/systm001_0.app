<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="SYSTM001" description="App which provides software timer&#xA;interface for all non rtos&#xA; applications." descriptionURL="/doc/html/group___s_c_u___system_timer___s_y_s_t_m001_app.html" mode="SHARABLE" URI="http://www.infineon.com/1.0.18/app/systm001/0">
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../USBLD001/1.0.18/usbld001_0.app#//@consumed.12"/>
  <provided xsi:type="ResourceModel:IntegerParameter" name="SysTick Interval in millisec" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#xD;&#xA;  &#x9;  &#x9;&#x9;&#x9;  var XMC1xxx=SCM.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);  &#xD;&#xA;&#x9;   &#x9;&#x9;&#x9;  if(XMC1xxx==0)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9; var Res1 = SCM.getResource(&quot;clkapp/clk002_irMCLK&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  else&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;   {                  &#xD;&#xA;&#x9;                 var Res1 = SCM.getResource(&quot;clockapp/clk001_iroActualFreqSystem&quot;);          &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;   }&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  var clock = SCM.getDoubleValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  var Res = SCM.getResource(&quot;syst/rvr&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  var Value = SCM.getIntValue(Res); &#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  var sysinterval = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  var value = ((clock * sysinterval * 1000) - 1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(Res,value);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  var tempRes = SCM.getResource(&quot;systm001_Dummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(tempRes,sysinterval);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  var tempRes = SCM.getResource(&quot;systm001_Dummy&quot;);&#xD;&#xA;                  var value = SCM.getIntValue(tempRes);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,value);&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.18/app/systm001/0/systm001_systickinterval" downWardmappedList="//@consumed.5 //@consumed.0" maxValue="64" minValue="1">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../USBLD001/1.0.18/usbld001_0.app#//@consumed.19"/>
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>This defines the resolution of the SysTick timer in ticks per millisecs.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Number of Software timers" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  var Intvalue = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,Intvalue);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  var Intvalue = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,Intvalue);&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.18/app/systm001/0/systm001_swtimers" maxValue="20" minValue="1">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="20"/>
    <localValue xsi:type="ResourceModel:IntegerValue" value="20"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="20"/>
    <toolTipHelpDescription>This gives the Number of Software timers.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Preemption Priority" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;  &#x9;  &#x9;&#x9;&#x9;  var XMC1xxx=SCM.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);  &#xD;&#xA;&#x9;   &#x9;&#x9;&#x9;&#x9;&#x9;  if(XMC1xxx!=0)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;syst/shpr3_pri_15&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var BitShift = 2; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var BitMask = 0x03; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue1 = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;Intvalue = (Intvalue &amp; BitMask) | (Intvalue1 &lt;&lt; BitShift);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,Intvalue);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;syst/shpr3_pri_15&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var BitShift = 2; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var BitMask = 0xFC; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,(Intvalue &amp; BitMask)>>BitShift);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.18/app/systm001/0/systm001_irwinterruptpriority" downWardmappedList="//@consumed.8" maxValue="3F" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="A"/>
    <localValue xsi:type="ResourceModel:StringValue" value="A"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="a"/>
    <toolTipHelpDescription>This configures Interrupt preemption priority for SysTick Exception </toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Preemption Priority for Timm" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;  &#x9;  &#x9;&#x9;&#x9;  var XMC1xxx=SCM.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);  &#xD;&#xA;&#x9;   &#x9;&#x9;&#x9;&#x9;&#x9;  if(XMC1xxx==0)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;syst/shpr3_pri_15&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var BitShift = 2; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var BitMask = 0x03; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue1 = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;Intvalue = (Intvalue &amp; BitMask) | (Intvalue1 &lt;&lt; BitShift);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,Intvalue);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;syst/shpr3_pri_15&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var BitShift = 2; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var BitMask = 0xFC; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,(Intvalue &amp; BitMask)>>BitShift);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.18/app/systm001/0/systm001_irwinterruptprio_timm" maxValue="3" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
    <toolTipHelpDescription>Programmable priority level of 0-3 in steps of 64 for each interrupt node.
0-0 is equivalent to 0-63,
0-1 is equivalent to 64-127,
0-2 is equivalent to 128-191,
0-3 is least priority equivalent to 192 </toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Sub Priority" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;syst/shpr3_pri_15&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var BitShift = 0; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var BitMask = 0xFC; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue1 = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;Intvalue = (Intvalue &amp; BitMask) | (Intvalue1 );&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,Intvalue);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;syst/shpr3_pri_15&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Intvalue = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var BitShift = 0; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var BitMask = 0x03; &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,(Intvalue &amp; BitMask));&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.18/app/systm001/0/systm001_irwinterruptsubpriority" downWardmappedList="//@consumed.8" maxValue="3" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This configures Interrupt Sub Priority for SysTick Exception</toolTipHelpDescription>
  </provided>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/systm001/0/systm001_dummy" upWardMappingList="//@provided.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/systm001/0/syst">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../CPU/CPU_0.dd#//@provided.15"/>
    <requiredResource uriString="peripheral/cpu/0/systick" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = Solver.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if((value1  == 0 )) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  return false;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;return true;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.18/app/systm001/0/clockapp">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../CLK001/1.0.44/clk001_0.app#/"/>
    <requiredResource uriString="app/clk001/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = Solver.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if((value1  == 0 )) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  return true;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;return false;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.18/app/systm001/0/clockapp">
    <requiredResource uriString="app/clk002/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/systm001/0/syst/csr" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="4"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CPU/CPU_0.dd#//@provided.16"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="4"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/systm001/0/syst/rvr" upWardMappingList="//@provided.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="fffffffffffffc17"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CPU/CPU_0.dd#//@provided.17"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="fffffffffffffc17"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/systm001/0/syst/cvr" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CPU/CPU_0.dd#//@provided.18"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/systm001/0/syst/calib" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CPU/CPU_0.dd#//@provided.19"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/systm001/0/syst/shpr3_pri_15" upWardMappingList="//@provided.2 //@provided.4" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="28"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="28"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/systm001/0/clockapp/clk001_iroactualfreqsystem" upWardMappingList="//@provided.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="78"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../CLK001/1.0.44/clk001_0.app#//@provided.21"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="78"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.18/app/systm001/0/clockapp/clk002_irmclk" isSystemDefined="true"/>
  <propertyConstants name="uriDevice" value="Device/">
    <propertyConstants name="uriPeri_systick" value="peripheral/cpu/0/"/>
  </propertyConstants>
  <categoryDescription description="Basic Applications" name="Basic Applications">
    <subCategory description="Time Processing" name="Time Processing">
      <subCategory description="Timer" name="Timer"/>
    </subCategory>
  </categoryDescription>
  <manifestInfo version="1.0.18">
    <keywords>SimpleSystemTimer</keywords>
    <keywords>Timer</keywords>
    <keywords>SYSTM001</keywords>
    <keywords>SW Timer</keywords>
    <keywords>System Timer</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" initProvider="true" singleton="true"/>
  </manifestInfo>
  <datagenerate fileName="SYSTM001.c" templateFileName="SYSTM001c.jet"/>
  <datagenerate fileName="SYSTM001.h" fileType="HFILE" templateFileName="SYSTM001_h.jet"/>
  <softwareIdList>45.0.1</softwareIdList>
  <softwareIdList>45.0.2</softwareIdList>
  <softwareIdList>45.0.3</softwareIdList>
  <softwareIdList>45.2.3</softwareIdList>
  <softwareIdList>45.4.2</softwareIdList>
  <softwareIdList>45.4.3</softwareIdList>
  <softwareIdList>44.0.3</softwareIdList>
  <softwareIdList>44.00.5</softwareIdList>
  <softwareIdList>44.02.3</softwareIdList>
  <softwareIdList>44.02.5</softwareIdList>
  <softwareIdList>42.00.5</softwareIdList>
  <softwareIdList>42.0.6</softwareIdList>
  <softwareIdList>42.04.5</softwareIdList>
  <softwareIdList>42.04.6</softwareIdList>
  <softwareIdList>45.0200.1</softwareIdList>
  <softwareIdList>45.0200.2</softwareIdList>
  <softwareIdList>45.0200.3</softwareIdList>
  <softwareIdList>45.0202.3</softwareIdList>
  <softwareIdList>45.0204.3</softwareIdList>
  <softwareIdList>45.0204.2</softwareIdList>
  <softwareIdList>12.01.7</softwareIdList>
  <softwareIdList>12.02.9</softwareIdList>
  <softwareIdList>12.02.8</softwareIdList>
  <softwareIdList>12.0101.7</softwareIdList>
  <softwareIdList>12.0102.9</softwareIdList>
  <softwareIdList>12.0102.8</softwareIdList>
  <softwareIdList>13.01.9</softwareIdList>
  <softwareIdList>13.03.7</softwareIdList>
  <softwareIdList>13.04.7</softwareIdList>
  <softwareIdList>13.0101.9</softwareIdList>
  <softwareIdList>13.0101.7</softwareIdList>
  <softwareIdList>11.0100.7</softwareIdList>
  <softwareIdList>11.0100.9</softwareIdList>
  <softwareIdList>12.0100.7</softwareIdList>
  <softwareIdList>13.0102.7</softwareIdList>
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
