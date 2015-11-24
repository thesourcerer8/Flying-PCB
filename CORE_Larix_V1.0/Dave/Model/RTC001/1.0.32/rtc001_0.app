<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="RTC001" description="The App which provides Real Time Clock &#xA; functionality. The App provides the user facilities like&#xA; setting time and configuring alarm through the UI." descriptionURL="/doc/html/group___r_t_c001_app.html" mode="SHARABLE" URI="http://www.infineon.com/1.0.32/app/rtc001/0">
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../SLTHA003/1.0.14/sltha003_0.app#//@consumed.0"/>
  <provided xsi:type="ResourceModel:VirtualSignal" name="RTC Timer Event" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_timer_vs" requiredSignalResource="rtc/timer_int" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="RTC Alarm Event" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_alarm_vs" requiredSignalResource="rtc/alarm_int" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="GCU RTC Timer Event" URI="http://www.infineon.com/1.0.32/app/rtc001/0/gcu_intrtctick_rtctimerint" requiredSignalResource="gcu_intrtctick/rtc_timer_int" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="RTC Timer Event" URI="http://www.infineon.com/1.0.32/app/rtc001/0/gcu_intrtctick_int" requiredSignalResource="gcu_intrtctick/int" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="GCU RTC Alarm Event" URI="http://www.infineon.com/1.0.32/app/rtc001/0/gcu_intrtctick_rtcalarmint" requiredSignalResource="gcu_intrtcalarm/rtc_alarm_int" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="RTC Alarm Event" URI="http://www.infineon.com/1.0.32/app/rtc001/0/gcu_intrtcalarm_int" requiredSignalResource="gcu_intrtcalarm/int" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="RTC Enable" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwenablertc" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>RTC Enable option.
Note:Checking this option, enables the Hibernate Domain in CLK001 App.
User can configure the appropriate RTC Clock source in CLK001 App under RTC Tab.</toolTipHelpDescription>
    <item name="RTC Enable" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;rtc/ctr/enb&quot;);                               &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value0 = SCM.getSoftwareId().substring(0,1).compareTo(&quot;4&quot;);&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;            if (value0  == 0 ){&#xD;&#xA;                                   var Res1 = SCM.getResource(&quot;clockapp/clk001_erwEnableHibernate&quot;); &#xD;&#xA;                                }&#xD;&#xA;                                var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if(value == 1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);                                     &#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;                if (value0  == 0 ){  &#xD;&#xA;                                        SCM.setIntValue(Res1,1);&#xD;&#xA;                                    }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value === 0){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;rtc/ctr/enb&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == -1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value ==1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwenablertc/0" downWardmappedList="//@consumed.15 //@consumed.34" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Activates the RTC module clock.
The user needs to check this for the RTC to work.
 Default value is set.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable alarm event in hibernate mode" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwtimeralarm" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>Enable alarm event in hibernate mode</toolTipHelpDescription>
    <item name="Enable alarm event in hibernate mode" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;rtc/ctr/tae&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if(value == 1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value === 0){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;rtc/ctr/tae&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value ==1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwtimeralarm/0" downWardmappedList="//@consumed.17" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>This is used to wake up the device from 
hibernate mode using alarm event.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Event Trigger for Timer" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var value = SCM.getIntValue(currentResource);&#xD;&#xA;        var Res = SCM.getResource(&quot;rtc001_EventtriggerTemp1&quot;);&#xD;&#xA;        SCM.setIntValue(Res,value);   &#xD;&#xA;&#x9;&#x9;var dep1 = &quot;DependentApp&quot;;&#xD;&#xA;&#x9;&#x9;var NvicRes1 = SCM.getResource(&quot;nvic_scu001&quot;); &#xD;&#xA;&#x9;&#x9;SCM.setStringValue(NvicRes1,dep1);&#xD;&#xA;&#x9;&#x9;var ExcepRes1 = SCM.getResource(&quot;excp001&quot;); &#xD;&#xA;&#x9;&#x9;SCM.setStringValue(ExcepRes1,dep1); &#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var Res = SCM.getResource(&quot;rtc001_EventtriggerTemp1&quot;);&#xD;&#xA;        var value = SCM.getIntValue(Res);&#xD;&#xA;        SCM.setIntValue(currentResource,value);&#xD;&#xA;      }&#xD;&#xA;      " URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_eventtrigger_timer" downWardmappedList="//@consumed.1 //@consumed.6 //@consumed.10">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select event trigger for RTC</toolTipHelpDescription>
    <item name="Event Trigger to SCU interrupt" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            { &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;rtc001_EventtriggerTemp1&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var dep1 = &quot;DependentApp&quot;;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var NvicRes1 = SCM.getResource(&quot;nvic_scu001&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;SCM.setStringValue(NvicRes1,dep1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var ExcepRes1 = SCM.getResource(&quot;excp001&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;SCM.setStringValue(ExcepRes1,dep1);   &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;rtc001_EventtriggerTemp1&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }       &#xD;&#xA;            " URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_eventtrigger_timer/0" downWardmappedList="//@consumed.1 //@consumed.6 //@consumed.10" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>The NVIC_SCU001 App is consumed when this selection is
 made. The connections are done from RTC001 App to NVIC_SCU001 App.
 The user has to provide the handlers for proper function handling.</toolTipHelpDescription>
    </item>
    <item name="Event Trigger to NMI interrupt" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            { &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;rtc001_EventtriggerTemp1&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              } &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var dep1 = &quot;DependentApp&quot;;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var NvicRes1 = SCM.getResource(&quot;nvic_scu001&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;SCM.setStringValue(NvicRes1,dep1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var ExcepRes1 = SCM.getResource(&quot;excp001&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;SCM.setStringValue(ExcepRes1,dep1); &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;rtc001_EventtriggerTemp1&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }       &#xD;&#xA;            " URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_eventtrigger_timer/1" downWardmappedList="//@consumed.1 //@consumed.6 //@consumed.10" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>The EXCP001 App is consumed when this selection is made.
 The signal connectivity from RTC001 App to EXCP001 App is done.
Please configure EXCP001 App to handle NMI.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Event Trigger for Alarm" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var value = SCM.getIntValue(currentResource);&#xD;&#xA;        var Res = SCM.getResource(&quot;rtc001_EventtriggerTemp2&quot;);&#xD;&#xA;        SCM.setIntValue(Res,value);   &#xD;&#xA;&#x9;&#x9;var dep2 = &quot;DependentApp&quot;;&#xD;&#xA;&#x9;&#x9;var NvicRes2 = SCM.getResource(&quot;nvic_scu001&quot;); &#xD;&#xA;&#x9;&#x9;SCM.setStringValue(NvicRes2,dep2);&#xD;&#xA;&#x9;&#x9;var ExcepRes2 = SCM.getResource(&quot;excp001&quot;); &#xD;&#xA;&#x9;&#x9;SCM.setStringValue(ExcepRes2,dep2); &#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var Res = SCM.getResource(&quot;rtc001_EventtriggerTemp2&quot;);&#xD;&#xA;        var value = SCM.getIntValue(Res);&#xD;&#xA;        SCM.setIntValue(currentResource,value);&#xD;&#xA;      }&#xD;&#xA;      " URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_eventtrigger_alarm" downWardmappedList="//@consumed.2 //@consumed.6 //@consumed.10">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select event trigger for RTC</toolTipHelpDescription>
    <item name="Event Trigger to SCU interrupt" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            { &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;rtc001_EventtriggerTemp2&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var dep2 = &quot;DependentApp&quot;;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var NvicRes2 = SCM.getResource(&quot;nvic_scu001&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;SCM.setStringValue(NvicRes2,dep2);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var ExcepRes2 = SCM.getResource(&quot;excp001&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;SCM.setStringValue(ExcepRes2,dep2);   &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;rtc001_EventtriggerTemp2&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }       &#xD;&#xA;            " URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_eventtrigger_alarm/0" downWardmappedList="//@consumed.2 //@consumed.6 //@consumed.10" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>The NVIC_SCU001 App is conditionally consumed when this selection is
 made. The connections are done from RTC001 App to NVIC_SCU001 App.
 The user has to provide the handlers for proper function handling.</toolTipHelpDescription>
    </item>
    <item name="Event Trigger to NMI interrupt" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            { &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;rtc001_EventtriggerTemp2&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              } &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var dep2 = &quot;DependentApp&quot;;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var NvicRes2 = SCM.getResource(&quot;nvic_scu001&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;SCM.setStringValue(NvicRes2,dep2);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;var ExcepRes2 = SCM.getResource(&quot;excp001&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;SCM.setStringValue(ExcepRes2,dep2); &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;rtc001_EventtriggerTemp2&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }       &#xD;&#xA;            " URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_eventtrigger_alarm/1" downWardmappedList="//@consumed.2 //@consumed.6 //@consumed.10" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>The EXCP001 App is consumed when this selection is made.
 The signal connectivity from RTC001 App to EXCP001 App is done.
Please configure EXCP001 App to handle NMI.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable periodic seconds interrupt" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwperiodicsecinter" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>Enable periodic seconds interrupt</toolTipHelpDescription>
    <item name="Enable periodic seconds interrupt" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;rtc/msksr/mpse&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;                                var value0 = SCM.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if(value == 1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);                                    &#xD;&#xA;                                    if (value0 == 0){&#xD;&#xA;                                       var Res1 = SCM.getResource(&quot;nvic_sr101/nvic_sr101_erwRTCPeriodicEventEnableInt/0&quot;); &#xD;&#xA;                                       SCM.setIntValue(Res1,1);                                    &#xD;&#xA;                                    }                                        &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value === 0){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;                                    if (value0 == 0){&#xD;&#xA;                                       var Res1 = SCM.getResource(&quot;nvic_sr101/nvic_sr101_erwRTCPeriodicEventEnableInt/0&quot;);                                        &#xD;&#xA;                                       var Res2 = SCM.getResource(&quot;RTC001_erwPeriodicMinInter/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res3 = SCM.getResource(&quot;RTC001_erwPeriodicHrsInter/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res4 = SCM.getResource(&quot;RTC001_erwPeriodicDaysInter/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res5 = SCM.getResource(&quot;RTC001_erwPeriodicMonths/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res6 = SCM.getResource(&quot;RTC001_erwPeriodicYears/0&quot;);                                       &#xD;&#xA;                                       var value2 = SCM.getIntValue(Res2);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var value3 = SCM.getIntValue(Res3);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var value4 = SCM.getIntValue(Res4);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var value5 = SCM.getIntValue(Res5);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var value6 = SCM.getIntValue(Res6);                                        &#xD;&#xA;                                       if ((value2 | value3 | value4 | value5 | value6) == 0 ) { &#xD;&#xA;                                           SCM.setIntValue(Res1,0);   &#xD;&#xA;                                       }&#xD;&#xA;                                    }                                         &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;rtc/msksr/mpse&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value ==1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwperiodicsecinter/0" downWardmappedList="//@consumed.19" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Generate an interrupt event every seconds</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable periodic minutes interrupt" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwperiodicmininter" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>Enable periodic minutes interrupt</toolTipHelpDescription>
    <item name="Enable periodic minutes interrupt" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;rtc/msksr/mpmi&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;                                var value0 = SCM.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if(value == 1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);                                    &#xD;&#xA;                                    if (value0 == 0){&#xD;&#xA;                                       var Res1 = SCM.getResource(&quot;nvic_sr101/nvic_sr101_erwRTCPeriodicEventEnableInt/0&quot;); &#xD;&#xA;                                       SCM.setIntValue(Res1,1);                                    &#xD;&#xA;                                    }                                        &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value === 0){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0); &#xD;&#xA;                                    if (value0 == 0){                                      &#xD;&#xA;                                       var Res1 = SCM.getResource(&quot;nvic_sr101/nvic_sr101_erwRTCPeriodicEventEnableInt/0&quot;);                                        &#xD;&#xA;                                       var Res2 = SCM.getResource(&quot;RTC001_erwPeriodicSecInter/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res3 = SCM.getResource(&quot;RTC001_erwPeriodicHrsInter/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res4 = SCM.getResource(&quot;RTC001_erwPeriodicDaysInter/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res5 = SCM.getResource(&quot;RTC001_erwPeriodicMonths/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res6 = SCM.getResource(&quot;RTC001_erwPeriodicYears/0&quot;);                                       &#xD;&#xA;                                       var value2 = SCM.getIntValue(Res2);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var value3 = SCM.getIntValue(Res3);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var value4 = SCM.getIntValue(Res4);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var value5 = SCM.getIntValue(Res5);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var value6 = SCM.getIntValue(Res6);                                        &#xD;&#xA;                                       if ((value2 | value3 | value4 | value5 | value6) == 0 ) { &#xD;&#xA;                                           SCM.setIntValue(Res1,0);   &#xD;&#xA;                                       }&#xD;&#xA;                                    }                                         &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;rtc/msksr/mpmi&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value ==1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwperiodicmininter/0" downWardmappedList="//@consumed.20" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Generate an interrupt event every minutes</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable periodic hours interrupt" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwperiodichrsinter" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>Enable periodic hours interrupt</toolTipHelpDescription>
    <item name="Enable periodic hours interrupt" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;rtc/msksr/mpho&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;                                var value0 = SCM.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);  &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if(value == 1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);                                    &#xD;&#xA;                                    if (value0 == 0){&#xD;&#xA;                                       var Res1 = SCM.getResource(&quot;nvic_sr101/nvic_sr101_erwRTCPeriodicEventEnableInt/0&quot;); &#xD;&#xA;                                       SCM.setIntValue(Res1,1);                                    &#xD;&#xA;                                    }    &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value === 0){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;                                     if (value0 == 0){                                      &#xD;&#xA;                                       var Res1 = SCM.getResource(&quot;nvic_sr101/nvic_sr101_erwRTCPeriodicEventEnableInt/0&quot;);                                        &#xD;&#xA;                                       var Res2 = SCM.getResource(&quot;RTC001_erwPeriodicSecInter/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res3 = SCM.getResource(&quot;RTC001_erwPeriodicMinInter/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res4 = SCM.getResource(&quot;RTC001_erwPeriodicDaysInter/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res5 = SCM.getResource(&quot;RTC001_erwPeriodicMonths/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res6 = SCM.getResource(&quot;RTC001_erwPeriodicYears/0&quot;);                                       &#xD;&#xA;                                       var value2 = SCM.getIntValue(Res2);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var value3 = SCM.getIntValue(Res3);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var value4 = SCM.getIntValue(Res4);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var value5 = SCM.getIntValue(Res5);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var value6 = SCM.getIntValue(Res6);                                        &#xD;&#xA;                                       if ((value2 | value3 | value4 | value5 | value6) == 0 ) { &#xD;&#xA;                                           SCM.setIntValue(Res1,0);   &#xD;&#xA;                                       }&#xD;&#xA;                                    }  &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;rtc/msksr/mpho&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value ==1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwperiodichrsinter/0" downWardmappedList="//@consumed.21" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Generate an interrupt event for every hour</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable periodic days interrupt" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwperiodicdaysinter" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>Enable periodic days interrupt</toolTipHelpDescription>
    <item name="Enable periodic days interrupt" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;rtc/msksr/mpda&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;                                var value0 = SCM.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if(value == 1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);                                    &#xD;&#xA;                                    if (value0 == 0){&#xD;&#xA;                                       var Res1 = SCM.getResource(&quot;nvic_sr101/nvic_sr101_erwRTCPeriodicEventEnableInt/0&quot;); &#xD;&#xA;                                       SCM.setIntValue(Res1,1);                                    &#xD;&#xA;                                    }  &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value === 0){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;                                    if (value0 == 0){                                      &#xD;&#xA;                                       var Res1 = SCM.getResource(&quot;nvic_sr101/nvic_sr101_erwRTCPeriodicEventEnableInt/0&quot;);                                        &#xD;&#xA;                                       var Res2 = SCM.getResource(&quot;RTC001_erwPeriodicSecInter/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res3 = SCM.getResource(&quot;RTC001_erwPeriodicMinInter/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res4 = SCM.getResource(&quot;RTC001_erwPeriodicHrsInter/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res5 = SCM.getResource(&quot;RTC001_erwPeriodicMonths/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res6 = SCM.getResource(&quot;RTC001_erwPeriodicYears/0&quot;);                                       &#xD;&#xA;                                       var value2 = SCM.getIntValue(Res2);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var value3 = SCM.getIntValue(Res3);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var value4 = SCM.getIntValue(Res4);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var value5 = SCM.getIntValue(Res5);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var value6 = SCM.getIntValue(Res6);                                        &#xD;&#xA;                                       if ((value2 | value3 | value4 | value5 | value6) == 0 ) { &#xD;&#xA;                                           SCM.setIntValue(Res1,0);   &#xD;&#xA;                                       }&#xD;&#xA;                                    }  &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;rtc/msksr/mpda&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value ==1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwperiodicdaysinter/0" downWardmappedList="//@consumed.22" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Generate an interrupt event for every day</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable periodic months interrupt" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwperiodicmonths" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>Enable periodic months interrupt</toolTipHelpDescription>
    <item name="Enable periodic months interrupt" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;rtc/msksr/mpmo&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;                                var value0 = SCM.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if(value == 1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);                                    &#xD;&#xA;                                    if (value0 == 0){&#xD;&#xA;                                       var Res1 = SCM.getResource(&quot;nvic_sr101/nvic_sr101_erwRTCPeriodicEventEnableInt/0&quot;); &#xD;&#xA;                                       SCM.setIntValue(Res1,1);                                    &#xD;&#xA;                                    }  &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value === 0){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;                                    if (value0 == 0){                                      &#xD;&#xA;                                       var Res1 = SCM.getResource(&quot;nvic_sr101/nvic_sr101_erwRTCPeriodicEventEnableInt/0&quot;);                                        &#xD;&#xA;                                       var Res2 = SCM.getResource(&quot;RTC001_erwPeriodicSecInter/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res3 = SCM.getResource(&quot;RTC001_erwPeriodicMinInter/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res4 = SCM.getResource(&quot;RTC001_erwPeriodicHrsInter/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res5 = SCM.getResource(&quot;RTC001_erwPeriodicDaysInter/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res6 = SCM.getResource(&quot;RTC001_erwPeriodicYears/0&quot;);                                       &#xD;&#xA;                                       var value2 = SCM.getIntValue(Res2);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var value3 = SCM.getIntValue(Res3);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var value4 = SCM.getIntValue(Res4);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var value5 = SCM.getIntValue(Res5);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var value6 = SCM.getIntValue(Res6);                                        &#xD;&#xA;                                       if ((value2 | value3 | value4 | value5 | value6) == 0 ) { &#xD;&#xA;                                           SCM.setIntValue(Res1,0);   &#xD;&#xA;                                       }&#xD;&#xA;                                    }  &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;rtc/msksr/mpmo&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value ==1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwperiodicmonths/0" downWardmappedList="//@consumed.23" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Generate an interrupt event for every month</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable periodic years interrupt" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwperiodicyears" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>Enable periodic years interrupt</toolTipHelpDescription>
    <item name="Enable periodic years interrupt" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;rtc/msksr/mpye&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;                                var value0 = SCM.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if(value == 1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);                                    &#xD;&#xA;                                    if (value0 == 0){&#xD;&#xA;                                       var Res1 = SCM.getResource(&quot;nvic_sr101/nvic_sr101_erwRTCPeriodicEventEnableInt/0&quot;); &#xD;&#xA;                                       SCM.setIntValue(Res1,1);                                    &#xD;&#xA;                                    }  &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value === 0){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;                                     if (value0 == 0){                                      &#xD;&#xA;                                       var Res1 = SCM.getResource(&quot;nvic_sr101/nvic_sr101_erwRTCPeriodicEventEnableInt/0&quot;);                                        &#xD;&#xA;                                       var Res2 = SCM.getResource(&quot;RTC001_erwPeriodicSecInter/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res3 = SCM.getResource(&quot;RTC001_erwPeriodicMinInter/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res4 = SCM.getResource(&quot;RTC001_erwPeriodicHrsInter/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res5 = SCM.getResource(&quot;RTC001_erwPeriodicDaysInter/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res6 = SCM.getResource(&quot;RTC001_erwPeriodicMonths/0&quot;);                                       &#xD;&#xA;                                       var value2 = SCM.getIntValue(Res2);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var value3 = SCM.getIntValue(Res3);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var value4 = SCM.getIntValue(Res4);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var value5 = SCM.getIntValue(Res5);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   var value6 = SCM.getIntValue(Res6);                                        &#xD;&#xA;                                       if ((value2 | value3 | value4 | value5 | value6) == 0 ) { &#xD;&#xA;                                           SCM.setIntValue(Res1,0);   &#xD;&#xA;                                       }&#xD;&#xA;                                    }    &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;rtc/msksr/mpye&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value ==1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwperiodicyears/0" downWardmappedList="//@consumed.24" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Generate an interrupt event for every year</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable Time initialization once" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwtimeinitialisation" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>If this flag is checked during initialization of RTC
 then the time and date will be written only once;
 any update of time and date will be ineffective
 even after power off or reset as long as RTC runs
 from the battery. The RTC has to be disabled inorder to
 reprogram the initial time.</toolTipHelpDescription>
    <item name="Enable Time initialization once" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwtimeinitialisation/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>If this flag is checked during initialization of RTC
 then the time and date will be written only once;
 any update of time and date will be ineffective
 even after power off or reset as long as RTC runs
 from the battery. The RTC has to be disabled inorder to
 reprogram the initial time.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable alarm interrupt" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwalarmintrptena" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>Enable alarm interrupt</toolTipHelpDescription>
    <item name="Enable alarm interrupt" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;rtc/msksr/mai&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;                                var value0 = SCM.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if(value == 1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);                                    &#xD;&#xA;                                    if (value0 == 0){&#xD;&#xA;                                       var Res1 = SCM.getResource(&quot;nvic_sr101/nvic_sr101_erwRTCAlarmEventEnableInt/0&quot;); &#xD;&#xA;                                       SCM.setIntValue(Res1,1);                                    &#xD;&#xA;                                    }  &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value === 0){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;                                    if (value0 == 0){&#xD;&#xA;                                       var Res1 = SCM.getResource(&quot;nvic_sr101/nvic_sr101_erwRTCAlarmEventEnableInt/0&quot;);&#xD;&#xA;                                       SCM.setIntValue(Res1,0); &#xD;&#xA;                                    } &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}   &#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;rtc/msksr/mai&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value ==1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwalarmintrptena/0" downWardmappedList="//@consumed.25" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Generate an interrupt event if the
 time set in alarm matches with the RTC Clock</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable periodic seconds event in hibernate mode" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwenaseccomp" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>Enable periodic seconds event in hibernate mode</toolTipHelpDescription>
    <item name="Enable periodic seconds event in hibernate mode" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;rtc/ctr/esec&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if(value == 1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value === 0){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;rtc/ctr/esec&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value ==1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwenaseccomp/0" downWardmappedList="//@consumed.26" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>This is used to wake up the device from hibernate mode using periodic seconds event.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable periodic minutes event in hibernate mode" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwenamincomp" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>Enable periodic minutes event in hibernate mode</toolTipHelpDescription>
    <item name="Enable periodic minutes event in hibernate mode" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;rtc/ctr/emic&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if(value == 1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value === 0){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;rtc/ctr/emic&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value ==1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwenamincomp/0" downWardmappedList="//@consumed.27" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>This is used to wake up the device from hibernate mode using periodic minutes event.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable periodic hours event in hibernate mode" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwenahrscomp" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>Enable periodic hours event in hibernate mode</toolTipHelpDescription>
    <item name="Enable periodic hours event in hibernate mode" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;rtc/ctr/ehoc&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if(value == 1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value === 0){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;rtc/ctr/ehoc&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value ==1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwenahrscomp/0" downWardmappedList="//@consumed.28" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>This is used to wake up the device from hibernate mode using periodic hours event.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable periodic days event in hibernate mode" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwenadayscomp" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>Enable periodic days event in hibernate mode</toolTipHelpDescription>
    <item name="Enable periodic days event in hibernate mode" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;rtc/ctr/edac&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if(value == 1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value === 0){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;rtc/ctr/edac&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value ==1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwenadayscomp/0" downWardmappedList="//@consumed.29" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>This is used to wake up the device from hibernate mode using periodic days event.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable periodic months event in hibernate mode" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwenamonthscomp" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>Enable periodic months event in hibernate mode</toolTipHelpDescription>
    <item name="Enable periodic months event in hibernate mode" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;rtc/ctr/emoc&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if(value == 1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value === 0){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;rtc/ctr/emoc&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value ==1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwenamonthscomp/0" downWardmappedList="//@consumed.31" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>This is used to wake up the device from hibernate mode using periodic months event.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable periodic years event in hibernate mode" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwenayearscomp" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>Enable periodic years event in hibernate mode</toolTipHelpDescription>
    <item name="Enable periodic years event in hibernate mode" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;rtc/ctr/eyec&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if(value == 1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value === 0){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;rtc/ctr/eyec&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value ==1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erwenayearscomp/0" downWardmappedList="//@consumed.32" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>This is used to wake up the device from hibernate mode using periodic years event.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:StringParameter" name="User configured calendar date value" evalFunction="" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_srwdatevalue">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="01/01/1970"/>
    <localValue xsi:type="ResourceModel:StringValue" value="01/01/1970"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="01/01/1970"/>
    <toolTipHelpDescription>The value should be configured as mm/dd/yyyy.
 Invalid date filtering is not implemented in this version</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:StringParameter" name="User configured clock time value" evalFunction="" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_srwtimevalue">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="00:00:00"/>
    <localValue xsi:type="ResourceModel:StringValue" value="00:00:00"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="00:00:00"/>
    <toolTipHelpDescription>The value should be configured as hh:mm:ss
 Invalid time filtering is not implemented in this version</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:StringParameter" name="User configured alarm date value" evalFunction="" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_srwalarmdate">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="01/01/1970"/>
    <localValue xsi:type="ResourceModel:StringValue" value="01/01/1970"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="01/01/1970"/>
    <toolTipHelpDescription>The value should be configured as mm/dd/yyyy
 Invalid date filtering is not implemented in this version</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:StringParameter" name="User configured alarm time value" evalFunction="" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_srwalarmtime">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="00:01:00"/>
    <localValue xsi:type="ResourceModel:StringValue" value="00:01:00"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="00:01:00"/>
    <toolTipHelpDescription>The value should be configured as hh:mm:ss
 Invalid time filtering is not implemented in this version</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:StringParameter" name="User defined interrupt handler for Periodic interrupts" evalFunction="&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9; function ForwardMapping()&#xD;&#xA;&#x9;&#x9;          {&#xD;&#xA;&#x9;&#x9;            var Res0 = SCM.getResource(&quot;rtc001_EventtriggerTemp1&quot;); &#xD;&#xA;&#x9;&#x9;            var value0 = SCM.getIntValue(Res0); &#xD;&#xA;&#x9;&#x9;          }&#xD;&#xA;&#x9;&#x9;          function BackwardMapping()&#xD;&#xA;&#x9;&#x9;          {&#xD;&#xA;&#x9;&#x9;            var Res0 = SCM.getResource(&quot;rtc001_EventtriggerTemp1&quot;); &#xD;&#xA;&#x9;&#x9;            var value0 = SCM.getIntValue(Res0); &#xD;&#xA;&#x9;&#x9;            if((value0 === 1)){&#xD;&#xA;&#x9;&#x9;              SCM.setStringValue(currentResource, &quot;&quot;);&#xD;&#xA;&#x9;&#x9;            }&#x9;&#x9;            &#xD;&#xA;&#x9;&#x9;        }&#xD;&#xA;&#x9;&#x9;        " URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_srwtimeruserfunction">
    <defaultValue xsi:type="ResourceModel:StringValue" value=""/>
    <localValue xsi:type="ResourceModel:StringValue" value=""/>
    <globalValue xsi:type="ResourceModel:StringValue" value=""/>
    <toolTipHelpDescription>Function should be defined as: void Func(uint32_t CbArg).
The user should define a handler for the code compilation.
 The handler defined in the code should match the handler
entered through UI.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:StringParameter" name="User defined interrupt handler for Alarm interrupts" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  function ForwardMapping()&#xD;&#xA;&#x9;&#x9;          {&#xD;&#xA;&#x9;&#x9;            var Res0 = SCM.getResource(&quot;rtc001_EventtriggerTemp2&quot;); &#xD;&#xA;&#x9;&#x9;            var value0 = SCM.getIntValue(Res0);  &#xD;&#xA;&#x9;&#x9;          }&#xD;&#xA;&#x9;&#x9;          function BackwardMapping()&#xD;&#xA;&#x9;&#x9;          {&#xD;&#xA;&#x9;&#x9;            var Res0 = SCM.getResource(&quot;rtc001_EventtriggerTemp2&quot;); &#xD;&#xA;&#x9;&#x9;            var value0 = SCM.getIntValue(Res0); &#xD;&#xA;&#x9;&#x9;            if((value0 === 1)){&#xD;&#xA;&#x9;&#x9;              SCM.setStringValue(currentResource, &quot;&quot;);&#xD;&#xA;&#x9;&#x9;            }&#x9;&#x9;            &#xD;&#xA;&#x9;&#x9;        }&#xD;&#xA;                " URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_srwalarmuserfunction">
    <defaultValue xsi:type="ResourceModel:StringValue" value=""/>
    <localValue xsi:type="ResourceModel:StringValue" value=""/>
    <globalValue xsi:type="ResourceModel:StringValue" value=""/>
    <toolTipHelpDescription>Function should be defined as: void Func(uint32_t CbArg).
If the alarm is activated then the
user should define a handler for the code compilation.
 The handler defined in the code should match the handler
entered through UI.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:StringParameter" name="Timer Status Flag" evalFunction="&#xD;&#xA;&#x9;&#x9;          function ForwardMapping()&#xD;&#xA;&#x9;&#x9;          {&#xD;&#xA;&#x9;&#x9;            var Res0 = SCM.getResource(&quot;rtc001_EventtriggerTemp1&quot;); &#xD;&#xA;&#x9;&#x9;            var value0 = SCM.getIntValue(Res0); &#xD;&#xA;&#x9;&#x9;          }&#xD;&#xA;&#x9;&#x9;          function BackwardMapping()&#xD;&#xA;&#x9;&#x9;          {&#xD;&#xA;&#x9;&#x9;            var Res0 = SCM.getResource(&quot;rtc001_EventtriggerTemp1&quot;); &#xD;&#xA;&#x9;&#x9;            var value0 = SCM.getIntValue(Res0); &#xD;&#xA;&#x9;&#x9;            if((value0 === 0)){&#xD;&#xA;&#x9;&#x9;              SCM.setStringValue(currentResource, &quot;Triggers SCU Interrupt&quot;);&#xD;&#xA;&#x9;&#x9;            }&#xD;&#xA;&#x9;&#x9;            else  if((value0 === 1)){&#xD;&#xA;&#x9;&#x9;              SCM.setStringValue(currentResource, &quot;Triggers NMI (Please configure NMI in EXCP001 App)&quot;);&#xD;&#xA;&#x9;&#x9;            }&#xD;&#xA;&#x9;&#x9;            else{&#xD;&#xA;&#x9;&#x9;              SCM.setStringValue(currentResource,&quot; &quot;);&#xD;&#xA;&#x9;&#x9;          }&#xD;&#xA;&#x9;&#x9;        }&#xD;&#xA;&#x9;&#x9;        " URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erostring">
    <defaultValue xsi:type="ResourceModel:StringValue" value="Event Trigger for SCU interrupt"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Event Trigger for SCU interrupt"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Event Trigger for SCU interrupt"/>
    <toolTipHelpDescription>Selected trigger setting (non-editable)</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:StringParameter" name="Alarm Status Flag" evalFunction="&#xD;&#xA;&#x9;&#x9;          function ForwardMapping()&#xD;&#xA;&#x9;&#x9;          {&#xD;&#xA;&#x9;&#x9;            var Res0 = SCM.getResource(&quot;rtc001_EventtriggerTemp2&quot;); &#xD;&#xA;&#x9;&#x9;            var value0 = SCM.getIntValue(Res0); &#xD;&#xA;&#x9;&#x9;          }&#xD;&#xA;&#x9;&#x9;          function BackwardMapping()&#xD;&#xA;&#x9;&#x9;          {&#xD;&#xA;&#x9;&#x9;            var Res0 = SCM.getResource(&quot;rtc001_EventtriggerTemp2&quot;); &#xD;&#xA;&#x9;&#x9;            var value0 = SCM.getIntValue(Res0); &#xD;&#xA;&#x9;&#x9;            if((value0 === 0)){&#xD;&#xA;&#x9;&#x9;              SCM.setStringValue(currentResource, &quot;Triggers SCU Interrupt&quot;);&#xD;&#xA;&#x9;&#x9;            }&#xD;&#xA;&#x9;&#x9;            else  if((value0 === 1)){&#xD;&#xA;&#x9;&#x9;              SCM.setStringValue(currentResource, &quot;Triggers NMI (Please configure NMI in EXCP001 App)&quot;);&#xD;&#xA;&#x9;&#x9;            }&#xD;&#xA;&#x9;&#x9;            else{&#xD;&#xA;&#x9;&#x9;              SCM.setStringValue(currentResource,&quot; &quot;);&#xD;&#xA;&#x9;&#x9;          }&#xD;&#xA;&#x9;&#x9;        }&#xD;&#xA;&#x9;&#x9;        " URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_erostring1">
    <defaultValue xsi:type="ResourceModel:StringValue" value="Triggers SCU Interrupt"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Triggers SCU Interrupt"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Triggers SCU Interrupt"/>
    <toolTipHelpDescription>Selected trigger setting (non-editable)</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:API" description="Initializes the App based on User provided configuration." URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_init" APIName="RTC001_Init">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="Function provide to reset the App to default values." URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_deinit" APIName="RTC001_Deinit">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="The function enables the RTC module." URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_enable" APIName="RTC001_Enable">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="The function disables the RTC module." URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_disable" APIName="RTC001_Disable">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="The function gets the flag status." URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_getflagstatus" APIName="RTC001_GetFlagStatus">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="The function clears the flag status." URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_clearflagstatus" APIName="RTC001_ClearFlagStatus">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="The function to configure the alarm." URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_configalarm" APIName="RTC001_ConfigAlarm">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="The function to get clock time." URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_clock_gettime" APIName="RTC001_StartTimer">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="The function to set clock time." URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_clock_settime" APIName="RTC001_Clock_SetTime">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="The function to get time in seconds." URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_time" APIName="RTC001_Time">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_dummy" isSystemDefined="true">
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_eventtriggertemp1" upWardMappingList="//@provided.8 //@provided.8/@item.0 //@provided.8/@item.1 //@provided.28 //@provided.30" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc001_eventtriggertemp2" upWardMappingList="//@provided.9 //@provided.9/@item.0 //@provided.9/@item.1 //@provided.29 //@provided.31" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../realtimeclk/realtimeclk_0.dd#//@provided.0"/>
    <requiredResource uriString="peripheral/rtc/0/rtc" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9; {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;    var value = Solver.getSoftwareId().substring(0,1).compareTo(&quot;4&quot;);&#x9;&#x9;&#x9;&#x9;&#x9;   &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if (value  == 0 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;    return true;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;return false;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9; }" URI="http://www.infineon.com/1.0.32/app/rtc001/0/clockapp">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../CLK001/1.0.44/clk001_0.app#/"/>
    <requiredResource uriString="app/clk001/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9; {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;    var value = Solver.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);&#x9;&#x9;&#x9;&#x9;&#x9;   &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if (value  == 0 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;    return true;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;return false;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9; }" URI="http://www.infineon.com/1.0.32/app/rtc001/0/clockapp2">
    <requiredResource uriString="app/clk002/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;&#x9;&#x9;          var Res = Solver.getResource(&quot;rtc001_EventtriggerTemp1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;          var value = Solver.getIntValue(Res);&#xD;&#xA;&#x9;&#x9;&#x9;          var Res1 = Solver.getResource(&quot;rtc001_EventtriggerTemp2&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;          var value1 = Solver.getIntValue(Res1);&#xD;&#xA;                      var value2 = Solver.getSoftwareId().substring(0,1).compareTo(&quot;4&quot;);&#x9;&#x9;  &#xD;&#xA;&#x9;&#x9;&#x9;          if ( (value2 == 0 ) &amp;&amp; (value == 0 || value1 == 0) )&#xD;&#xA;&#x9;&#x9;&#x9;          {&#xD;&#xA;&#x9;&#x9;&#x9;            return true; &#xD;&#xA;&#x9;&#x9;&#x9;          } &#xD;&#xA;&#x9;&#x9;&#x9;          return false;&#xD;&#xA;&#x9;&#x9;&#x9;        }" URI="http://www.infineon.com/1.0.32/app/rtc001/0/nvic_scu001" upWardMappingList="//@provided.8 //@provided.8/@item.0 //@provided.8/@item.1 //@provided.9 //@provided.9/@item.0 //@provided.9/@item.1">
    <localValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <downWardmappedList xsi:type="ResourceModel:App" href="../../NVIC_SCU001/1.0.18/nvic_scu001_0.app#/"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <requiredResource uriString="app/nvic_scu001/0" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;&#x9;&#x9;          var Res = Solver.getResource(&quot;rtc001_EventtriggerTemp1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;          var value = Solver.getIntValue(Res);&#xD;&#xA;&#x9;&#x9;&#x9;          var Res1 = Solver.getResource(&quot;rtc001_EventtriggerTemp2&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;          var value1 = Solver.getIntValue(Res1);&#xD;&#xA;                      var value2 = Solver.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);&#x9;&#x9;  &#xD;&#xA;&#x9;&#x9;&#x9;          if ( (value2 == 0 ) &amp;&amp; (value == 0 || value1 == 0) )&#xD;&#xA;&#x9;&#x9;&#x9;          {&#xD;&#xA;&#x9;&#x9;&#x9;            return true; &#xD;&#xA;&#x9;&#x9;&#x9;          } &#xD;&#xA;&#x9;&#x9;&#x9;          return false;&#xD;&#xA;&#x9;&#x9;&#x9;        }" URI="http://www.infineon.com/1.0.32/app/rtc001/0/nvic_sr101">
    <requiredResource uriString="app/nvic_sr101/0" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/gcu_intrtctick">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.55"/>
    <requiredResource uriString="peripheral/scu/0/gcu/interrupt/rtctick" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/gcu_intrtcalarm">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.58"/>
    <requiredResource uriString="peripheral/scu/0/gcu/interrupt/rtcalarm" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;&#x9;&#x9;          var Res = Solver.getResource(&quot;rtc001_EventtriggerTemp1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;          var value = Solver.getIntValue(Res);&#xD;&#xA;&#x9;&#x9;&#x9;          var Res1 = Solver.getResource(&quot;rtc001_EventtriggerTemp2&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;          var value1 = Solver.getIntValue(Res1);&#xD;&#xA;                      var value2 = Solver.getSoftwareId().substring(0,1).compareTo(&quot;4&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;          if ( (value2 == 0 ) &amp;&amp;  (value == 1 || value1 == 1) )&#xD;&#xA;&#x9;&#x9;&#x9;          {&#xD;&#xA;&#x9;&#x9;&#x9;            return true; &#xD;&#xA;&#x9;&#x9;&#x9;          } &#xD;&#xA;&#x9;&#x9;&#x9;          return false;&#xD;&#xA;&#x9;&#x9;&#x9;        }" URI="http://www.infineon.com/1.0.32/app/rtc001/0/excp001" upWardMappingList="//@provided.8 //@provided.8/@item.0 //@provided.8/@item.1 //@provided.9 //@provided.9/@item.0 //@provided.9/@item.1">
    <localValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <requiredResource uriString="app/excp001/0" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/gcu_intrtctick/rtc_timer_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SCU/SCU_0.dd#//@provided.56"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/gcu_intrtcalarm/int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SCU/SCU_0.dd#//@provided.59"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/gcu_intrtctick/int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SCU/SCU_0.dd#//@provided.57"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc/alarm_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../realtimeclk/realtimeclk_0.dd#//@provided.1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc/ctr/enb" upWardMappingList="//@provided.6/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../realtimeclk/realtimeclk_0.dd#//@provided.2"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc/ctr/sus" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc/ctr/tae" upWardMappingList="//@provided.7/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../realtimeclk/realtimeclk_0.dd#//@provided.3"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc/ctr/div" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="7fff"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../realtimeclk/realtimeclk_0.dd#//@provided.4"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="7fff"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc/msksr/mpse" upWardMappingList="//@provided.10/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../realtimeclk/realtimeclk_0.dd#//@provided.5"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc/msksr/mpmi" upWardMappingList="//@provided.11/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../realtimeclk/realtimeclk_0.dd#//@provided.6"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc/msksr/mpho" upWardMappingList="//@provided.12/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../realtimeclk/realtimeclk_0.dd#//@provided.7"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc/msksr/mpda" upWardMappingList="//@provided.13/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../realtimeclk/realtimeclk_0.dd#//@provided.8"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc/msksr/mpmo" upWardMappingList="//@provided.14/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../realtimeclk/realtimeclk_0.dd#//@provided.9"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc/msksr/mpye" upWardMappingList="//@provided.15/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../realtimeclk/realtimeclk_0.dd#//@provided.10"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc/msksr/mai" upWardMappingList="//@provided.17/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../realtimeclk/realtimeclk_0.dd#//@provided.11"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc/ctr/esec" upWardMappingList="//@provided.18/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../realtimeclk/realtimeclk_0.dd#//@provided.12"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc/ctr/emic" upWardMappingList="//@provided.19/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../realtimeclk/realtimeclk_0.dd#//@provided.13"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc/ctr/ehoc" upWardMappingList="//@provided.20/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../realtimeclk/realtimeclk_0.dd#//@provided.14"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc/ctr/edac" upWardMappingList="//@provided.21/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../realtimeclk/realtimeclk_0.dd#//@provided.15"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc/ctr/edawec" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc/ctr/emoc" upWardMappingList="//@provided.22/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../realtimeclk/realtimeclk_0.dd#//@provided.16"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc/ctr/eyec" upWardMappingList="//@provided.23/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../realtimeclk/realtimeclk_0.dd#//@provided.17"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/rtc/timer_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../realtimeclk/realtimeclk_0.dd#//@provided.18"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/clockapp/clk001_erwenablehibernate" upWardMappingList="//@provided.6/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:EnumerationParameter" href="../../CLK001/1.0.44/clk001_0.app#//@provided.45"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/nvic_sr101/nvic_sr101_erwrtcperiodiceventenableint/0" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/nvic_sr101/nvic_sr101_erwrtcalarmeventenableint/0" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.32/app/rtc001/0/gcu_intrtcalarm/rtc_alarm_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SCU/SCU_0.dd#//@provided.60"/>
  </consumed>
  <propertyConstants name="uriprefix_rtc" value="peripheral/rtc/0/">
    <propertyConstants name="uri_clockapp" value="app/clk001/">
      <propertyConstants name="uri_clockapp2" value="app/clk002/">
        <propertyConstants name="uri_gcu" value="peripheral/scu/0/gcu/"/>
      </propertyConstants>
    </propertyConstants>
  </propertyConstants>
  <categoryDescription description="Basic Applications" name="Basic Applications">
    <subCategory description="Time Processing" name="Time Processing">
      <subCategory description="Timer" name="Timer"/>
    </subCategory>
  </categoryDescription>
  <manifestInfo version="1.0.32">
    <keywords>Real Time Clock</keywords>
    <keywords>RTC</keywords>
    <keywords>Real Timer</keywords>
    <keywords>Clock</keywords>
    <keywords>Timer</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" initProvider="true" singleton="true"/>
  </manifestInfo>
  <datagenerate fileName="RTC001.h" fileType="HFILE" templateFileName="RTC001.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="RTC001.c" templateFileName="RTC001.cdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="RTC001_Conf.c" templateFileName="RTC001_Confc.jet"/>
  <datagenerate fileName="RTC001_Conf.h" fileType="HFILE" templateFileName="RTC001_Confh.jet"/>
  <datagenerate fileName="RTC001_Extern.h" fileType="HFILE" templateFileName="RTC001_Externh.jet"/>
  <connections sourceSignal="gcu_intrtctick/rtc_timer_int" targetSignal="app/rtc001/0/gcu_intrtctick_int" constraintFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function resourceCondition(){&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;                                var value = Solver.getSoftwareId().substring(0,1).compareTo(&quot;4&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 0) &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   return true;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;return false;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  "/>
  <connections sourceSignal="gcu_intrtcalarm/rtc_alarm_int" targetSignal="app/rtc001/0/gcu_intrtcalarm_int" constraintFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function resourceCondition(){&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;                                var value = Solver.getSoftwareId().substring(0,1).compareTo(&quot;4&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 0) &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   return true;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;return false;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  "/>
  <connections sourceSignal="app/rtc001/0/gcu_intrtctick_int" targetSignal="nvic_scu001/scunode_vs" constraintFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function resourceCondition(){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = Solver.getResource(&quot;rtc001_EventtriggerTemp1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;            var value = Solver.getIntValue(Res);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;            var Res1 = Solver.getResource(&quot;RTC001_erwSoftwareTimer/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res2 = Solver.getResource(&quot;RTC001_erwPeriodicSecInter/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res3 = Solver.getResource(&quot;RTC001_erwPeriodicMinInter/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res4 = Solver.getResource(&quot;RTC001_erwPeriodicHrsInter/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res5 = Solver.getResource(&quot;RTC001_erwPeriodicDaysInter/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res6 = Solver.getResource(&quot;RTC001_erwPeriodicMonths/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res7 = Solver.getResource(&quot;RTC001_erwPeriodicYears/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = Solver.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value2 = Solver.getIntValue(Res2);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value3 = Solver.getIntValue(Res3);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value4 = Solver.getIntValue(Res4);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value5 = Solver.getIntValue(Res5);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value6 = Solver.getIntValue(Res6);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value7 = Solver.getIntValue(Res7);&#xD;&#xA;                                var value8 = Solver.getSoftwareId().substring(0,1).compareTo(&quot;4&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;            if ( (value8 == 0)  &amp;&amp;  ((value == 0) &amp;&amp; (value1 | value2 | value3 | value4 | value5 | value6 | value7 == 1 ))) &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;            {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;              return true;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;            }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;              return false;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;          }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;        "/>
  <connections sourceSignal="app/rtc001/0/gcu_intrtcalarm_int" targetSignal="nvic_scu001/scunode_vs" constraintFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function resourceCondition(){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = Solver.getResource(&quot;rtc001_EventtriggerTemp2&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;            var value = Solver.getIntValue(Res);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = Solver.getResource(&quot;RTC001_erwAlarmIntrptEna/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = Solver.getIntValue(Res1);&#xD;&#xA;                                var value2 = Solver.getSoftwareId().substring(0,1).compareTo(&quot;4&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if( (value2 == 0) &amp;&amp; (value1 == 1) &amp;&amp; (value == 0))&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   return true;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;return false;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;"/>
  <connections sourceSignal="app/rtc001/0/rtc001_timer_vs" targetSignal="nvic_sr101/scunode_vs" constraintFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function resourceCondition(){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = Solver.getResource(&quot;rtc001_EventtriggerTemp1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;            var value = Solver.getIntValue(Res);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;            var Res1 = Solver.getResource(&quot;RTC001_erwSoftwareTimer/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res2 = Solver.getResource(&quot;RTC001_erwPeriodicSecInter/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res3 = Solver.getResource(&quot;RTC001_erwPeriodicMinInter/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res4 = Solver.getResource(&quot;RTC001_erwPeriodicHrsInter/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res5 = Solver.getResource(&quot;RTC001_erwPeriodicDaysInter/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res6 = Solver.getResource(&quot;RTC001_erwPeriodicMonths/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res7 = Solver.getResource(&quot;RTC001_erwPeriodicYears/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = Solver.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value2 = Solver.getIntValue(Res2);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value3 = Solver.getIntValue(Res3);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value4 = Solver.getIntValue(Res4);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value5 = Solver.getIntValue(Res5);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value6 = Solver.getIntValue(Res6);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value7 = Solver.getIntValue(Res7);&#xD;&#xA;                                var value8 = Solver.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;            if ( (value8 == 0)  &amp;&amp;  ((value == 0) &amp;&amp; (value1 | value2 | value3 | value4 | value5 | value6 | value7 == 1 ))) &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;            {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;              return true;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;            }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;              return false;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;          }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;        "/>
  <connections sourceSignal="app/rtc001/0/rtc001_alarm_vs" targetSignal="nvic_sr101/scunode_vs" constraintFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function resourceCondition(){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = Solver.getResource(&quot;rtc001_EventtriggerTemp2&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;            var value = Solver.getIntValue(Res);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = Solver.getResource(&quot;RTC001_erwAlarmIntrptEna/0&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = Solver.getIntValue(Res1);&#xD;&#xA;                                var value2 = Solver.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if( (value2 == 0) &amp;&amp; (value1 == 1) &amp;&amp; (value == 0))&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   return true;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;return false;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;"/>
  <connections sourceSignal="app/rtc001/0/gcu_intrtcalarm_int" targetSignal="excp001/excp001_nmi_vs" constraintFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function resourceCondition(){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = Solver.getResource(&quot;rtc001_EventtriggerTemp2&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;            var value = Solver.getIntValue(Res);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if(value == 1)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   return true;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;return false;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;"/>
  <connections sourceSignal="app/rtc001/0/gcu_intrtctick_int" targetSignal="excp001/excp001_nmi_vs" constraintFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function resourceCondition(){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = Solver.getResource(&quot;rtc001_EventtriggerTemp1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;            var value = Solver.getIntValue(Res);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if(value == 1)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;   return true;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;return false;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;"/>
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
  <softwareIdList>11.0100.7</softwareIdList>
  <softwareIdList>11.0100.9</softwareIdList>
  <softwareIdList>12.0100.7</softwareIdList>
  <softwareIdList>13.0102.7</softwareIdList>
  <softwareIdList>45.0200.1</softwareIdList>
  <softwareIdList>45.0200.2</softwareIdList>
  <softwareIdList>45.0200.3</softwareIdList>
  <softwareIdList>45.0202.3</softwareIdList>
  <softwareIdList>45.0204.3</softwareIdList>
  <softwareIdList>45.0204.2</softwareIdList>
  <softwareIdList>12.0101.7</softwareIdList>
  <softwareIdList>12.0102.9</softwareIdList>
  <softwareIdList>12.0102.8</softwareIdList>
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
