<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="PWMSP001" description="This app generates single phase PWM &#xA; waveform without dead time. &#xA; This app supports external start, external &#xA;stop, trap and dither features." descriptionURL="/doc/html/group___p_w_m_s_p001.html" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5" userLabel="AttControl_Timer">
  <provided xsi:type="ResourceModel:VirtualSignal" name="Direct Output Pin" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_directoutput_vs" requiredSignalResource="pin_directoutput/pad" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Global" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_globalsignal_vs" requiredSignalResource="slice/global_signal">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Compare Match Interrupt" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_cmds_cmus_vs" requiredSignalResource="slice/cmds_cmus">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="PWM Output" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_out_vs" requiredSignalResource="slice/out">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="PWM Status" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_st_vs" requiredSignalResource="slice/st">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Timer Concatenation Output" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_concat_bus_out_vs" requiredSignalResource="slice1/concat_bus_out" canExpose="false">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Timer Concatenation Input" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_concat_bus_in_vs" requiredSignalResource="slice/concat_bus_in" canExpose="false">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Period Match Interrupt" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_pmus_omds_vs" requiredSignalResource="slice/pmus_omds">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="External Start Interrupt" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_e0as_vs" requiredSignalResource="slice/e0as">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="External Stop Interrupt" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_e1as_vs" requiredSignalResource="slice/e1as">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Trap Interrupt" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_e2as_vs" requiredSignalResource="slice/e2as">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Input External Start" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_gp0_unsync_vs" requiredSignalResource="slice/gp0_unsync">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Input External Stop" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_gp1_unsync_vs" requiredSignalResource="slice/gp1_unsync">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Input Trap" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_gp2_unsync_vs" requiredSignalResource="slice/gp2_unsync">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Timer Concatenation Input External Start" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_tcextstartinput_vs" requiredSignalResource="slice1/gp0_unsync">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Timer Concatenation Input External Stop" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_tcextstopinput_vs" requiredSignalResource="slice1/gp1_unsync">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Timer Mode" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/tssm&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/tssm&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwtimermode" downWardmappedList="//@consumed.38" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This allows user to select Single Shot mode or Periodic mode</toolTipHelpDescription>
    <item name="Enable Single Shot Mode" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/tssm&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1){&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              }else if(value === 0){&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }  &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;                var Res = SCM.getResource(&quot;slice/tc/tssm&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value == -1) {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(currentResource,0);                &#xD;&#xA;              }else if(value ==1){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }    &#xD;&#xA;            }" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwtimermode/0" downWardmappedList="//@consumed.38" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Enable Single Shot mode</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Counting Mode" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/tcm&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/tcm&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwcountingmode" downWardmappedList="//@consumed.39">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This allows user to select edge-aligned or center-aligned PWM generation</toolTipHelpDescription>
    <item name="Edge-Aligned Mode" evalFunction="      &#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/tcm&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/tcm&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;              " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwcountingmode/0" downWardmappedList="//@consumed.39" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Edge-Aligned Mode</toolTipHelpDescription>
    </item>
    <item name="Center-Aligned Mode" evalFunction="      &#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/tcm&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/tcm&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value == 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }else{&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;              " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwcountingmode/1" downWardmappedList="//@consumed.39" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Center-Aligned Mode</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Output Passive Level" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/psl/psl&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/psl/psl&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwoutpassivelevel" downWardmappedList="//@consumed.45">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This allows user to select passive level for output - Low or High</toolTipHelpDescription>
    <item name="Passive Low" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/psl/psl&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/psl/psl&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }          &#xD;&#xA;          " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwoutpassivelevel/0" downWardmappedList="//@consumed.45" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription></toolTipHelpDescription>
    </item>
    <item name="Passive High" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/psl/psl&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/psl/psl&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value == 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwoutpassivelevel/1" downWardmappedList="//@consumed.45" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription></toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="External Start Trigger Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/ins/ev0em&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/ins/ev0em&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwstartedge" downWardmappedList="//@consumed.26">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This allows user to select start trigger edge</toolTipHelpDescription>
    <item name="No Trigger" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/ins/ev0em&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/ins/ev0em&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }        &#xD;&#xA;          " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwstartedge/0" downWardmappedList="//@consumed.26" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Trigger is not required.</toolTipHelpDescription>
    </item>
    <item name="Rising Edge" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/ins/ev0em&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/ins/ev0em&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }  &#xD;&#xA;          " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwstartedge/1" downWardmappedList="//@consumed.26" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Trigger on rising edge.</toolTipHelpDescription>
    </item>
    <item name="Falling Edge" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/ins/ev0em&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,2);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/ins/ev0em&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 2 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }  &#xD;&#xA;            " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwstartedge/2" downWardmappedList="//@consumed.26" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Trigger on falling edge.</toolTipHelpDescription>
    </item>
    <item name="Both Edges" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/ins/ev0em&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,3);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/ins/ev0em&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 3 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }  &#xD;&#xA;          " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwstartedge/3" downWardmappedList="//@consumed.26" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Trigger on rising and falling edge.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="External Stop Trigger Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/ins/ev1em&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/ins/ev1em&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwstopedge" downWardmappedList="//@consumed.27">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This allows user to select stop trigger edge</toolTipHelpDescription>
    <item name="No Trigger" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/ins/ev1em&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/ins/ev1em&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }  &#xD;&#xA;          " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwstopedge/0" downWardmappedList="//@consumed.27" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Trigger is not required.</toolTipHelpDescription>
    </item>
    <item name="Rising Edge" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/ins/ev1em&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/ins/ev1em&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;          " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwstopedge/1" downWardmappedList="//@consumed.27" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Trigger on rising edge.</toolTipHelpDescription>
    </item>
    <item name="Falling Edge" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/ins/ev1em&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,2);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/ins/ev1em&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 2 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;          " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwstopedge/2" downWardmappedList="//@consumed.27" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Trigger on falling edge.</toolTipHelpDescription>
    </item>
    <item name="Both Edges" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/ins/ev1em&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,3);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/ins/ev1em&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 3 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;          " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwstopedge/3" downWardmappedList="//@consumed.27" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Trigger on rising and falling edge.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="External Start Active Edge Configuration" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/strm&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/strm&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwextstartconf" downWardmappedList="//@consumed.36">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This allows user to configure external start</toolTipHelpDescription>
    <item name="Start Timer" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/strm&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/strm&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }  &#xD;&#xA;          " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwextstartconf/0" downWardmappedList="//@consumed.36" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>This will set only the run bit of the timer.</toolTipHelpDescription>
    </item>
    <item name="Clear and Start timer" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/strm&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/strm&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }  &#xD;&#xA;          " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwextstartconf/1" downWardmappedList="//@consumed.36" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>This will first clear the timer and then set the run bit of the timer.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="External Stop Active Edge Configurations" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/endm&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/endm&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwextstopconf" downWardmappedList="//@consumed.37">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This allows user to configure external stop</toolTipHelpDescription>
    <item name="Stop Timer" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/endm&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/endm&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;          " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwextstopconf/0" downWardmappedList="//@consumed.37" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>This will reset the run bit of the timer.</toolTipHelpDescription>
    </item>
    <item name="Clear timer" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/endm&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/endm&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;          " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwextstopconf/1" downWardmappedList="//@consumed.37" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>This will clear the timer register value but keeps the timer running.</toolTipHelpDescription>
    </item>
    <item name="Clear and stop timer" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/endm&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,2);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/endm&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 2 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;          " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwextstopconf/2" downWardmappedList="//@consumed.37" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>This will clear the timer register value and also clears the RUN bit of the timer.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Trap Enable" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_temptrapconf&quot;);&#xD;&#xA;              SCM.setIntValue(Res,value);        &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_temptrapconf&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwenabletrap" downWardmappedList="//@consumed.0" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription></toolTipHelpDescription>
    <item name="Enable Trap" evalFunction="&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res3 = SCM.getResource(&quot;pwmsp001_temptrapconf&quot;);&#xD;&#xA;              if (value == 1 )&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res3, 1);&#xD;&#xA;              }&#xD;&#xA;              else (value == 0 )&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res3, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res3 = SCM.getResource(&quot;pwmsp001_temptrapconf&quot;);&#xD;&#xA;              var value3 = SCM.getIntValue(Res3);&#xD;&#xA;              if (value3 == 1) &#xD;&#xA;              { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwenabletrap/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>Enable the trap configuration</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Synchronization Enable" evalFunction="&#xD;&#xA;             function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_temptrapexittime&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_temptrapexittime&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwtrapexittime" downWardmappedList="//@consumed.1">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This allows a user to configure synchronization with PWM Signal.</toolTipHelpDescription>
    <item name="Exit Trap with Synchronization" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res3 = SCM.getResource(&quot;pwmsp001_temptrapexittime&quot;);  &#xD;&#xA;              if(value == 1 )&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res3, 0);&#xD;&#xA;              }&#xD;&#xA;              else&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res2,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res3 = SCM.getResource(&quot;pwmsp001_temptrapexittime&quot;);&#xD;&#xA;              var value3 = SCM.getIntValue(Res3);&#xD;&#xA;              if (value3 == 0)&#xD;&#xA;              { &#xD;&#xA;              SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;          " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwtrapexittime/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
      <toolTipHelpDescription>Trap state is exited synchronized with the PWM Signal</toolTipHelpDescription>
    </item>
    <item name="Exit Trap without synchronization" evalFunction="&#xD;&#xA;           function ForwardMapping()&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res2 = SCM.getResource(&quot;slice/tc/trpse&quot;);&#xD;&#xA;              var Res3 = SCM.getResource(&quot;pwmsp001_temptrapexittime&quot;);  &#xD;&#xA;              if (value == 1 )&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res2, 0);&#xD;&#xA;                SCM.setIntValue(Res3, 1);&#xD;&#xA;              }&#xD;&#xA;              else&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(Res2,1);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res3 = SCM.getResource(&quot;pwmsp001_temptrapexittime&quot;);&#xD;&#xA;              var value3 = SCM.getIntValue(Res3);&#xD;&#xA;              if (value3 == 1)&#xD;&#xA;              { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else&#xD;&#xA;              {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;          " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwtrapexittime/1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>Trap State is immediately exited.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Trap Exit Control" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/trpsw&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/trpsw&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwtrapexit" downWardmappedList="//@consumed.43">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This allows user to control trap exit</toolTipHelpDescription>
    <item name="Auto Exit" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/trpsw&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/trpsw&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;          " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwtrapexit/0" downWardmappedList="//@consumed.43" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Slice exits the trap state automatically when trap signal is not present</toolTipHelpDescription>
    </item>
    <item name="SW Exit" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/trpsw&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/trpsw&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;          " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwtrapexit/1" downWardmappedList="//@consumed.43" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Trap state can only be exited by SW request</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Trap level" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/ins/ev2lm&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/ins/ev2lm&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwtraplevel" downWardmappedList="//@consumed.28">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>This allows user to set trap level</toolTipHelpDescription>
    <item name="Active on Low Level" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/ins/ev2lm&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/ins/ev2lm&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }      &#xD;&#xA;          " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwtraplevel/0" downWardmappedList="//@consumed.28" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Active Low</toolTipHelpDescription>
    </item>
    <item name="Active on High Level" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/ins/ev2lm&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);        &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/ins/ev2lm&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }      &#xD;&#xA;          " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwtraplevel/1" downWardmappedList="//@consumed.28" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Active High</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="CCU4 clock resolution" evalFunction="&#xD;&#xA;        function ForwardMapping(){&#xD;&#xA;             var Res2 = SCM.getResource(&quot;ccu4globalapp/ccu4global_irclock&quot;);&#xD;&#xA;             var Clock = SCM.getDoubleValue(Res2);&#xD;&#xA;&#x9;&#x9;&#x9; var XMC1xxx=SCM.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9; var XMC42xx=SCM.getSoftwareId().substring(0,2).compareTo(&quot;42&quot;);&#xD;&#xA;&#xD;&#xA;             if (Clock == -1)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{ &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if(XMC1xxx==0)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;Clock = 32;&#xD;&#xA;&#x9;&#x9;&#x9; &#x9;&#x9;else if(XMC42xx==0)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;Clock = 80;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;else&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;Clock = 120;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#xD;&#xA;             var clkDiv = (1000 /Clock);&#xD;&#xA;&#xD;&#xA;             var value2 = SCM.getDoubleValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9; var tempRes = SCM.getResource(&quot;pwmsp001_tempresolution&quot;);&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;if(value2==0){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;if(XMC1xxx==0){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;value2 =32;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;value2 =20;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;} &#xD;&#xA;&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9; SCM.setDoubleValue(tempRes,value2);&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#xD;&#xA;             var Res3 = SCM.getResource(&quot;slice/psc/psiv&quot;);  &#xD;&#xA;             var Divider = (value2) / clkDiv;&#xD;&#xA;&#xD;&#xA;             var Prescalar = Math.floor( Math.log(Divider) / Math.log( 2 ) );&#xD;&#xA;             SCM.setIntValue(Res3, Prescalar);&#xD;&#xA;         }&#xD;&#xA;        &#xD;&#xA;        function BackwardMapping(){&#xD;&#xA;            var tempRes = SCM.getResource(&quot;pwmsp001_tempresolution&quot;);&#xD;&#xA;            var value = SCM.getDoubleValue(tempRes);&#xD;&#xA;            SCM.setDoubleValue(currentResource,value);&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;var Res2 = SCM.getResource(&quot;ccu4globalapp/ccu4global_irclock&quot;);&#xD;&#xA;            var Clock = SCM.getDoubleValue(Res2);&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;var clkDiv = (1000 /Clock);&#xD;&#xA;&#xD;&#xA; &#x9;&#x9;&#x9; var res_max=Math.ceil(clkDiv*32768);&#xD;&#xA;&#x9;&#x9;&#x9; var res_min=Math.ceil(clkDiv);&#xD;&#xA;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9; SCM.setMinMaxValue(currentResource,res_min,res_max,1);&#xD;&#xA;        }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_irwresolution" downWardmappedList="//@consumed.8 //@consumed.50" maxValue="42aab" minValue="9">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1388"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1388"/>
    <toolTipHelpDescription>This allows user to input resolution for CCU4 clock. Depending on 1/(resolution*PWM frequency) the app decides if timer concatenation is needed</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Selected Resolution" evalFunction="&#xD;&#xA;        function ForwardMapping(){&#xD;&#xA;              var Res5 = SCM.getResource(&quot;slice/psc/psiv&quot;);          &#xD;&#xA;              var prescalar = SCM.getIntValue(Res5);&#xD;&#xA;              var Res2 = SCM.getResource(&quot;ccu4globalapp/ccu4global_irclock&quot;);          &#xD;&#xA;              var Clock = SCM.getDoubleValue(Res2);   &#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping(){&#xD;&#xA;              var Res2 = SCM.getResource(&quot;ccu4globalapp/ccu4global_irclock&quot;);          &#xD;&#xA;              var Clock = SCM.getDoubleValue(Res2);&#xD;&#xA;&#x9;&#x9;&#x9;  var XMC1xxx=SCM.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;  var XMC42xx=SCM.getSoftwareId().substring(0,2).compareTo(&quot;42&quot;);&#xD;&#xA;&#xD;&#xA;              if (Clock == -1)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{ &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if(XMC1xxx==0)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;Clock = 32;&#xD;&#xA;&#x9;&#x9;&#x9; &#x9;&#x9;else if(XMC42xx==0)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;Clock = 80;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;else&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;Clock = 120;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;              var clkDiv = (1000 /Clock); &#xD;&#xA;     &#xD;&#xA;              var Res_2 = SCM.getResource(&quot;pwmsp001_tempresolution&quot;);&#xD;&#xA;              var value2 = SCM.getDoubleValue(Res_2);&#xD;&#xA;&#xD;&#xA;              var Divider = (value2) / clkDiv;&#xD;&#xA;&#xD;&#xA;              var Prescalar = Math.floor( Math.log(Divider) / Math.log( 2 ) );          &#xD;&#xA;              var temp = 0;   &#xD;&#xA;              if(Prescalar > 15) {&#xD;&#xA;                temp = 0;&#xD;&#xA;              }&#xD;&#xA;              else{           &#xD;&#xA;                temp = clkDiv * (1 &lt;&lt; Prescalar);&#xD;&#xA;              }&#xD;&#xA;              SCM.setDoubleValue(currentResource, temp);&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9; var res_max=Math.ceil(clkDiv*32768);&#xD;&#xA;&#x9;&#x9;&#x9; var res_min=Math.floor(clkDiv);&#xD;&#xA;&#x9;&#x9;&#x9; &#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9; SCM.setMinMaxValue(currentResource,res_min,res_max,1);&#xD;&#xA;&#xD;&#xA;        }  &#xD;&#xA;        " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_irselresolution" maxValue="42aab" minValue="8">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="40b0aaaaaaaaaaab"/>
    <toolTipHelpDescription>Selected Resolution (non-editable)</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="PWM frequency" evalFunction="&#xD;&#xA;        function ForwardMapping(){&#xD;&#xA;          var Scalefactor = 1000000000;&#xD;&#xA;          var Scalefactor1 = 1;  &#xD;&#xA;          var ClkScalefactor = 1;      &#xD;&#xA;          var PwmTime = 0;&#xD;&#xA;          var Count = 0;&#xD;&#xA;          var lsb = 0;&#xD;&#xA;          var mode = 0;&#xD;&#xA;          var Res7 = 0;&#xD;&#xA;          var Res6 = 0;&#xD;&#xA;          var freq = SCM.getDoubleValue(currentResource);&#xD;&#xA;          var tempRes = SCM.getResource(&quot;pwmsp001_tempfreq&quot;);&#xD;&#xA;          SCM.setDoubleValue(tempRes,freq);&#xD;&#xA;&#xD;&#xA;          var Res2 = SCM.getResource(&quot;pwmsp001_irselresolution&quot;);          &#xD;&#xA;          var resolution = SCM.getDoubleValue(Res2);&#xD;&#xA;&#xD;&#xA;          var Res1 = SCM.getResource(&quot;slice/tc/tcm&quot;); &#xD;&#xA;          var val1 = SCM.getIntValue(Res1); &#xD;&#xA;          if(val1 == 1){mode = 1;}   &#xD;&#xA;    &#xD;&#xA;          var Res5 = SCM.getResource(&quot;slice/prs/prs&quot;);&#xD;&#xA;          Res6 = SCM.getResource(&quot;slice1/prs/prs&quot;);&#xD;&#xA;          Res7 = SCM.getResource(&quot;slice/cmc/tce&quot;);      &#xD;&#xA;          &#xD;&#xA;          PwmTime = (Scalefactor / (Scalefactor1 * freq )) ;&#xD;&#xA;          Count = (PwmTime / resolution);&#xD;&#xA;//center-aligned mode&#xD;&#xA;          if(mode == 1)&#xD;&#xA;          {&#xD;&#xA;            Count = (Count-1) >> 1;&#xD;&#xA;            if (Count > 65535){&#xD;&#xA;                 SCM.setIntValue(Res5, 0);&#xD;&#xA;                SCM.setIntValue(Res7, 0);&#xD;&#xA;            }&#xD;&#xA;            else{&#xD;&#xA;                 SCM.setIntValue(Res5, Count);&#xD;&#xA;            }                      &#xD;&#xA;          }&#xD;&#xA;//edge-aligned mode&#xD;&#xA;          else{          &#xD;&#xA;            if(Count > 65535){&#xD;&#xA;              do{&#xD;&#xA;                  Count = Count >> 1;&#xD;&#xA;                  lsb++;&#xD;&#xA;                }while(Count >= 65535);&#xD;&#xA;                 lsb = ((1 &lt;&lt; lsb) -1);&#xD;&#xA;&#xD;&#xA;                 SCM.setIntValue(Res6, Count);&#xD;&#xA;                SCM.setIntValue(Res5, lsb);    &#xD;&#xA;                SCM.setIntValue(Res7, 1);        &#xD;&#xA;            }&#xD;&#xA;            else&#xD;&#xA;            {              &#xD;&#xA;              SCM.setIntValue(Res5, Count-1);&#xD;&#xA;              SCM.setIntValue(Res7, 0);&#xD;&#xA;            }&#xD;&#xA;          }&#xD;&#xA;&#xD;&#xA;        }&#xD;&#xA;&#xD;&#xA;        function BackwardMapping(){&#xD;&#xA;            var tempRes = SCM.getResource(&quot;pwmsp001_tempfreq&quot;);&#xD;&#xA;            var value = SCM.getDoubleValue(tempRes);&#xD;&#xA;&#x9;&#x9;&#x9;var Res2 = SCM.getResource(&quot;ccu4globalapp/ccu4global_irclock&quot;);          &#xD;&#xA;            var Clock = SCM.getDoubleValue(Res2);&#xD;&#xA;            SCM.setDoubleValue(currentResource,value);&#xD;&#xA;          &#xD;&#xA;&#x9;&#x9;&#x9; var freq_max=Math.ceil((Clock/2)*1000000);&#xD;&#xA;&#x9;&#x9;&#x9; var freq_min=1;&#xD;&#xA;&#x9;&#x9;&#x9; SCM.setMinMaxValue(currentResource,freq_min,freq_max,1);&#xD;&#xA;}&#xD;&#xA;" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_irwfreq" downWardmappedList="//@consumed.10 //@consumed.57 //@consumed.55 //@consumed.31" maxValue="3938700" minValue="1">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="5DC"/>
    <localValue xsi:type="ResourceModel:StringValue" value="c8"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="c8"/>
    <toolTipHelpDescription>This allows user to input PWM frequency. Maximum value till which timer will count (Period register)</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Period value" evalFunction="&#xD;&#xA;        function ForwardMapping(){&#xD;&#xA;             var Res_2 = SCM.getResource(&quot;ccu4globalapp/ccu4global_irclock&quot;);          &#xD;&#xA;             var Clock = SCM.getDoubleValue(Res_2);&#xD;&#xA;              var Res5 = SCM.getResource(&quot;slice/psc/psiv&quot;);          &#xD;&#xA;              var prescalar = SCM.getIntValue(Res5);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;slice/prs/prs&quot;);          &#xD;&#xA;              var prescalar1 = SCM.getIntValue(Res1);&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/tcm&quot;);&#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping(){&#xD;&#xA;          var Scalefactor = 1000000000;&#xD;&#xA;          var PwmTime = 0;&#xD;&#xA;          var Count = 0;&#xD;&#xA;          var lsb = 0;&#xD;&#xA;          var mode = 0;&#xD;&#xA;          var period = 0;&#xD;&#xA;          var Res4 = SCM.getResource(&quot;pwmsp001_tempfreq&quot;);          &#xD;&#xA;          var freq = SCM.getDoubleValue(Res4);&#xD;&#xA;&#xD;&#xA;          var Res6 = SCM.getResource(&quot;pwmsp001_irselresolution&quot;);&#xD;&#xA;          var resolution = SCM.getDoubleValue(Res6);&#xD;&#xA;&#xD;&#xA;          var Res1 = SCM.getResource(&quot;slice/tc/tcm&quot;); &#xD;&#xA;          var val1 = SCM.getIntValue(Res1); &#xD;&#xA;          if(val1 == 1){mode = 1;}  &#xD;&#xA;    &#xD;&#xA;          PwmTime = (Scalefactor / (freq )) ;&#xD;&#xA;          Count = (PwmTime / resolution);&#xD;&#xA;//center-aligned mode&#xD;&#xA;          if(mode == 1)&#xD;&#xA;          {&#xD;&#xA;            Count = (Count-1) >> 1;&#xD;&#xA;            if (Count > 65535){&#xD;&#xA;              period = 0;&#xD;&#xA;            }&#xD;&#xA;            else{&#xD;&#xA;               period = Count;&#xD;&#xA;            }                     &#xD;&#xA;          }&#xD;&#xA;//edge-aligned mode&#xD;&#xA;          else{         &#xD;&#xA;              period =  Count-1;&#xD;&#xA;          }&#xD;&#xA;          SCM.setIntValue(currentResource, period);&#xD;&#xA; &#xD;&#xA;        }  &#xD;&#xA;" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_irperiodval" maxValue="FFFFFFFF" minValue="1">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="492"/>
    <toolTipHelpDescription>Period register value</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="TimerConcate" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;             var Res_2 = SCM.getResource(&quot;ccu4globalapp/ccu4global_irclock&quot;);          &#xD;&#xA;             var Clock = SCM.getDoubleValue(Res_2);&#xD;&#xA;              var Res5 = SCM.getResource(&quot;slice/psc/psiv&quot;);          &#xD;&#xA;              var prescalar = SCM.getIntValue(Res5);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;slice/prs/prs&quot;);          &#xD;&#xA;              var prescalar1 = SCM.getIntValue(Res1);&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/tcm&quot;);&#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;          var Scalefactor = 1000000000;&#xD;&#xA;          var PwmTime = 0;&#xD;&#xA;          var Count = 0;&#xD;&#xA;          var lsb = 0;&#xD;&#xA;          var mode = 0;&#xD;&#xA;          var period = 0;&#xD;&#xA;          var tc = 0;&#xD;&#xA;          var Res4 = SCM.getResource(&quot;pwmsp001_tempfreq&quot;);          &#xD;&#xA;          var freq = SCM.getDoubleValue(Res4);&#xD;&#xA;&#xD;&#xA;          var Res6 = SCM.getResource(&quot;pwmsp001_irselresolution&quot;);&#xD;&#xA;          var resolution = SCM.getDoubleValue(Res6);&#xD;&#xA;&#xD;&#xA;          var Res1 = SCM.getResource(&quot;slice/tc/tcm&quot;); &#xD;&#xA;          var val1 = SCM.getIntValue(Res1); &#xD;&#xA;          if(val1 == 1){mode = 1;}  &#xD;&#xA;    &#xD;&#xA;          PwmTime = (Scalefactor / (freq )) ;&#xD;&#xA;          Count = (PwmTime / resolution);&#xD;&#xA;//center-aligned mode&#xD;&#xA;          if(mode == 1)&#xD;&#xA;          {&#xD;&#xA;            tc = 0;&#xD;&#xA;          }&#xD;&#xA;//edge-aligned mode&#xD;&#xA;          else{         &#xD;&#xA;            if(Count > 65535){&#xD;&#xA;              tc = 1;&#xD;&#xA;            }&#xD;&#xA;            else&#xD;&#xA;            {             &#xD;&#xA;              tc = 0;&#xD;&#xA;            }&#xD;&#xA;          }&#xD;&#xA;          SCM.setIntValue(currentResource, tc);&#xD;&#xA;          }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_irtimerconcat" maxValue="1" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Timer Concatenation. Hidden parameter.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:StringParameter" name="Selected Timer concatenation setting" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;             var Res_2 = SCM.getResource(&quot;ccu4globalapp/ccu4global_irclock&quot;);          &#xD;&#xA;             var Clock = SCM.getDoubleValue(Res_2);&#xD;&#xA;              var Res5 = SCM.getResource(&quot;slice/psc/psiv&quot;);          &#xD;&#xA;              var prescalar = SCM.getIntValue(Res5);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;slice/prs/prs&quot;);          &#xD;&#xA;              var prescalar1 = SCM.getIntValue(Res1);&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/tcm&quot;);&#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Scalefactor = 1000000000;&#xD;&#xA;            var PwmTime = 0;&#xD;&#xA;            var Count = 0;&#xD;&#xA;            var lsb = 0;&#xD;&#xA;            var mode = 0;&#xD;&#xA;            var period = 0;&#xD;&#xA;            var tc = 0;&#xD;&#xA;            var Res4 = SCM.getResource(&quot;pwmsp001_tempfreq&quot;);          &#xD;&#xA;            var freq = SCM.getDoubleValue(Res4);&#xD;&#xA;  &#xD;&#xA;            var Res6 = SCM.getResource(&quot;pwmsp001_irselresolution&quot;);&#xD;&#xA;            var resolution = SCM.getDoubleValue(Res6);&#xD;&#xA;  &#xD;&#xA;            var Res1 = SCM.getResource(&quot;slice/tc/tcm&quot;); &#xD;&#xA;            var val1 = SCM.getIntValue(Res1); &#xD;&#xA;            if(val1 == 1){mode = 1;}  &#xD;&#xA;      &#xD;&#xA;            PwmTime = (Scalefactor / (freq )) ;&#xD;&#xA;            Count = (PwmTime / resolution);&#xD;&#xA;  //center-aligned mode&#xD;&#xA;            if(mode == 1)&#xD;&#xA;            {&#xD;&#xA;              tc = 0;&#xD;&#xA;            }&#xD;&#xA;  //edge-aligned mode&#xD;&#xA;            else{         &#xD;&#xA;              if(Count > 65535){&#xD;&#xA;                tc = 1;&#xD;&#xA;              }&#xD;&#xA;              else&#xD;&#xA;              {             &#xD;&#xA;                tc = 0;&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            if(tc === 0 || tc == -1){&#xD;&#xA;              SCM.setStringValue(currentResource, &quot;No timer concatenation&quot;);&#xD;&#xA;            }&#xD;&#xA;            else if(tc == 1){&#xD;&#xA;              SCM.setStringValue(currentResource, &quot;Timer concatenation&quot;);&#xD;&#xA;            }&#xD;&#xA;        }&#xD;&#xA;" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_srtimerconcatenation">
    <defaultValue xsi:type="ResourceModel:StringValue" value=" "/>
    <localValue xsi:type="ResourceModel:StringValue" value=" "/>
    <globalValue xsi:type="ResourceModel:StringValue" value="No timer concatenation"/>
    <toolTipHelpDescription>Selected timer concatenation setting (non-editable)</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Lower Timer Period value" evalFunction="&#xD;&#xA;        function ForwardMapping(){&#xD;&#xA;          var Res_2 = SCM.getResource(&quot;ccu4globalapp/ccu4global_irclock&quot;);          &#xD;&#xA;          var Clock = SCM.getDoubleValue(Res_2);&#xD;&#xA;          var Res5 = SCM.getResource(&quot;slice/psc/psiv&quot;);          &#xD;&#xA;          var prescalar = SCM.getIntValue(Res5);&#xD;&#xA;          var Res1 = SCM.getResource(&quot;slice/prs/prs&quot;);          &#xD;&#xA;          var prescalar1 = SCM.getIntValue(Res1);&#xD;&#xA;          var Res = SCM.getResource(&quot;slice/tc/tcm&quot;);&#xD;&#xA;          var value = SCM.getIntValue(Res);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping(){&#xD;&#xA;          var Scalefactor = 1000000000;&#xD;&#xA;          var PwmTime = 0;&#xD;&#xA;          var Count = 0;&#xD;&#xA;          var lsb = 0;&#xD;&#xA;          var mode = 0;&#xD;&#xA;          var period = 0;&#xD;&#xA;          var Res4 = SCM.getResource(&quot;pwmsp001_tempfreq&quot;);          &#xD;&#xA;          var freq = SCM.getDoubleValue(Res4);&#xD;&#xA;&#xD;&#xA;          var Res6 = SCM.getResource(&quot;pwmsp001_irselresolution&quot;);&#xD;&#xA;          var resolution = SCM.getDoubleValue(Res6);&#xD;&#xA;&#xD;&#xA;          var Res1 = SCM.getResource(&quot;slice/tc/tcm&quot;); &#xD;&#xA;          var val1 = SCM.getIntValue(Res1); &#xD;&#xA;          if(val1 == 1){mode = 1;}  &#xD;&#xA;    &#xD;&#xA;          PwmTime = (Scalefactor / (freq )) ;&#xD;&#xA;          Count = (PwmTime / resolution);&#xD;&#xA;//center-aligned mode&#xD;&#xA;          if(mode == 1)&#xD;&#xA;          {&#xD;&#xA;            Count = (Count-1) >> 1;&#xD;&#xA;            if (Count > 65535){&#xD;&#xA;              period = 0;&#xD;&#xA;            }&#xD;&#xA;            else{&#xD;&#xA;               period = Count;&#xD;&#xA;            }                     &#xD;&#xA;          }&#xD;&#xA;          //edge-aligned mode&#xD;&#xA;          else{ &#xD;&#xA;            if(Count > 65535){&#xD;&#xA;              do{&#xD;&#xA;                  Count = Count >> 1;&#xD;&#xA;                  lsb++;&#xD;&#xA;                }while(Count >= 65535);&#xD;&#xA;                lsb = ((1 &lt;&lt; lsb) -1);&#xD;&#xA;                period = Count;&#xD;&#xA;            }&#xD;&#xA;            else&#xD;&#xA;            {             &#xD;&#xA;              period =  Count-1;&#xD;&#xA;            }&#xD;&#xA;          }&#xD;&#xA;          SCM.setIntValue(currentResource, period);&#xD;&#xA;        }  &#xD;&#xA;         " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_irperiodregval0" maxValue="FFFF" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="492"/>
    <toolTipHelpDescription>Lower Timer Period register value</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Higher Timer Period value" evalFunction="&#xD;&#xA;        function ForwardMapping(){&#xD;&#xA;          var Res_2 = SCM.getResource(&quot;ccu4globalapp/ccu4global_irclock&quot;);          &#xD;&#xA;          var Clock = SCM.getDoubleValue(Res_2);&#xD;&#xA;          var Res5 = SCM.getResource(&quot;slice/psc/psiv&quot;);          &#xD;&#xA;          var prescalar = SCM.getIntValue(Res5);&#xD;&#xA;          var Res1 = SCM.getResource(&quot;slice/prs/prs&quot;);          &#xD;&#xA;          var prescalar1 = SCM.getIntValue(Res1);&#xD;&#xA;          var Res = SCM.getResource(&quot;slice/tc/tcm&quot;);&#xD;&#xA;          var value = SCM.getIntValue(Res);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping(){&#xD;&#xA;          var Scalefactor = 1000000000;&#xD;&#xA;          var PwmTime = 0;&#xD;&#xA;          var Count = 0;&#xD;&#xA;          var lsb = 0;&#xD;&#xA;          var mode = 0;&#xD;&#xA;          var period = 0;&#xD;&#xA;          var Res4 = SCM.getResource(&quot;pwmsp001_tempfreq&quot;);          &#xD;&#xA;          var freq = SCM.getDoubleValue(Res4);&#xD;&#xA;&#xD;&#xA;          var Res6 = SCM.getResource(&quot;pwmsp001_irselresolution&quot;);&#xD;&#xA;          var resolution = SCM.getDoubleValue(Res6);&#xD;&#xA;&#xD;&#xA;          var Res1 = SCM.getResource(&quot;slice/tc/tcm&quot;); &#xD;&#xA;          var val1 = SCM.getIntValue(Res1); &#xD;&#xA;          if(val1 == 1){mode = 1;}  &#xD;&#xA;    &#xD;&#xA;          PwmTime = (Scalefactor / (freq )) ;&#xD;&#xA;          Count = (PwmTime / resolution);&#xD;&#xA;//center-aligned mode&#xD;&#xA;          if(mode == 1)&#xD;&#xA;          {&#xD;&#xA;             period = 0;&#xD;&#xA;          }&#xD;&#xA;          //edge-aligned mode&#xD;&#xA;          else{ &#xD;&#xA;            if(Count > 65535)&#xD;&#xA;            {&#xD;&#xA;               do{&#xD;&#xA;                  Count = Count >> 1;&#xD;&#xA;                  lsb++;&#xD;&#xA;                }while(Count >= 65535);&#xD;&#xA;                lsb = ((1 &lt;&lt; lsb) -1);&#xD;&#xA;                period = lsb;&#xD;&#xA;            }&#xD;&#xA;            else&#xD;&#xA;            {             &#xD;&#xA;              period =  0;&#xD;&#xA;            }&#xD;&#xA;          }&#xD;&#xA;          SCM.setIntValue(currentResource, period);&#xD;&#xA;        }  &#xD;&#xA;        " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_irperiodregval1" maxValue="FFFF" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Higher Timer Period register value</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Duty Cycle in %" evalFunction="&#xD;&#xA;        function ForwardMapping(){&#xD;&#xA;          var Res6 = SCM.getResource(&quot;slice/tc/tcm&quot;); &#xD;&#xA;          var value6 = SCM.getIntValue(Res6); &#xD;&#xA;          var Res8 = SCM.getResource(&quot;pwmsp001_irtimerconcat&quot;);&#xD;&#xA;          var tc = SCM.getIntValue(Res8);&#xD;&#xA;          var Res9 = SCM.getResource(&quot;pwmsp001_irperiodval&quot;);&#xD;&#xA;          var period = SCM.getIntValue(Res9);&#xD;&#xA;          var Res10 = 0;&#xD;&#xA;          var pr = 0;&#xD;&#xA;          var pr1 = 0;&#xD;&#xA;          var Res = 0;&#xD;&#xA;          var countingmode = 0;&#xD;&#xA;          var compreg  = 0;&#xD;&#xA;          var compreg1 = 0;&#xD;&#xA;          var compreg2 = 0;&#xD;&#xA;&#xD;&#xA;          if(pr == -1){pr = 1;}&#xD;&#xA;&#xD;&#xA;          var duty = SCM.getDoubleValue(currentResource);&#xD;&#xA;          var tempRes = SCM.getResource(&quot;pwmsp001_tempduty&quot;);&#xD;&#xA;          SCM.setDoubleValue(tempRes,duty);&#xD;&#xA;          &#xD;&#xA;          var Res0 = SCM.getResource(&quot;slice/crs/crs&quot;);&#xD;&#xA;          Res = SCM.getResource(&quot;slice1/crs/crs&quot;);&#xD;&#xA;&#xD;&#xA;&#xD;&#xA;          if(value6 == 1){countingmode = 1;}&#xD;&#xA;&#xD;&#xA;          //edge-aligned mode with and without timer concatenation&#xD;&#xA;&#xD;&#xA;          if (countingmode === 0){&#xD;&#xA;            if(tc == 1){&#xD;&#xA;              compreg = ((100 - duty ) * (period)) / 100;&#xD;&#xA;&#x9;&#x9;&#x9;  if(period > 65535){&#xD;&#xA;&#x9;              do{&#xD;&#xA;&#x9;                  period = period >> 1;&#xD;&#xA;&#x9;                }while(period >= 65535);&#xD;&#xA;&#x9;          }&#xD;&#xA;&#xD;&#xA;              compreg2 = compreg % (period);&#xD;&#xA;              compreg1 = compreg / (period);&#xD;&#xA;&#xD;&#xA;              SCM.setIntValue(Res,compreg2); &#xD;&#xA;              SCM.setIntValue(Res0,compreg1); &#xD;&#xA;            }&#xD;&#xA;            else{&#xD;&#xA;              compreg = ((100 - duty ) * (period+1)) / 100;    &#xD;&#xA;              SCM.setIntValue(Res0,compreg );          &#xD;&#xA;            } &#xD;&#xA;          }&#xD;&#xA;          //center-aligned mode&#xD;&#xA;          else if (countingmode == 1){&#xD;&#xA;            compreg = ((100 - duty ) * period) / 100;&#xD;&#xA;            SCM.setIntValue(Res0,compreg );&#xD;&#xA;          }&#xD;&#xA;        }&#xD;&#xA;&#xD;&#xA;        function BackwardMapping(){&#xD;&#xA;           var tempRes = SCM.getResource(&quot;pwmsp001_tempduty&quot;);&#xD;&#xA;           var value = SCM.getDoubleValue(tempRes);&#xD;&#xA;           SCM.setDoubleValue(currentResource,value);&#xD;&#xA;        }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_irwdutycycle" downWardmappedList="//@consumed.11 //@consumed.60" maxValue="64" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="32"/>
    <localValue xsi:type="ResourceModel:StringValue" value="32"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="32"/>
    <toolTipHelpDescription>This allows user to input required duty cycle value in %</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Selected Prescalar" evalFunction="&#xD;&#xA;        function ForwardMapping(){&#xD;&#xA;           var Res2 = SCM.getResource(&quot;ccu4globalapp/ccu4global_irclock&quot;);&#xD;&#xA;           var clock = SCM.getDoubleValue(Res2);&#xD;&#xA;           var Res3 = SCM.getResource(&quot;pwmsp001_tempresolution&quot;);&#xD;&#xA;           var value3 = SCM.getDoubleValue(Res3);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping(){&#xD;&#xA;           var Res2 = SCM.getResource(&quot;ccu4globalapp/ccu4global_irclock&quot;);&#xD;&#xA;           var Clock = SCM.getDoubleValue(Res2);&#xD;&#xA; &#x9;&#x9;   var XMC1xxx=SCM.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);&#xD;&#xA; &#x9;&#x9;   var XMC42xx=SCM.getSoftwareId().substring(0,2).compareTo(&quot;42&quot;);&#xD;&#xA;&#xD;&#xA;             if (Clock == -1)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{ &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if(XMC1xxx==0)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;Clock = 32;&#xD;&#xA;&#x9;&#x9;&#x9; &#x9;&#x9;else if(XMC42xx==0)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;Clock = 80;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;else&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;Clock = 120;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;        &#xD;&#xA;           var clkDiv = (1000 /Clock);      &#xD;&#xA;           var Res_2 = SCM.getResource(&quot;pwmsp001_tempresolution&quot;);&#xD;&#xA;           var value2 = SCM.getDoubleValue(Res_2);&#xD;&#xA;           var Divider = (value2) / clkDiv;&#xD;&#xA;           var Prescalar = Math.floor( Math.log(Divider) / Math.log( 2 ) );&#xD;&#xA;           var temp = 0;&#xD;&#xA;           if(Prescalar > 15) {&#xD;&#xA;              temp = 0;&#xD;&#xA;              }&#xD;&#xA;          else{           &#xD;&#xA;                temp = clkDiv * (1 &lt;&lt; Prescalar);&#xD;&#xA;              }&#xD;&#xA;              SCM.setIntValue(currentResource, Prescalar);&#xD;&#xA;        }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_irselprescalar" maxValue="F" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="9"/>
    <toolTipHelpDescription>This is the closest possible resolution that can be achieved. non-editable field</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Compare value" evalFunction="&#xD;&#xA;        function ForwardMapping(){&#xD;&#xA;          var Res_2 = SCM.getResource(&quot;ccu4globalapp/ccu4global_irclock&quot;);          &#xD;&#xA;          var Clock = SCM.getDoubleValue(Res_2);&#xD;&#xA;          var Res4 = SCM.getResource(&quot;slice/psc/psiv&quot;);&#xD;&#xA;          var value4 = SCM.getIntValue(Res4); &#xD;&#xA;          var Res1 = SCM.getResource(&quot;slice/prs/prs&quot;);          &#xD;&#xA;          var prescalar1 = SCM.getIntValue(Res1); &#xD;&#xA;          var Res2 = SCM.getResource(&quot;slice/crs/crs&quot;);          &#xD;&#xA;          var value2 = SCM.getIntValue(Res2); &#xD;&#xA;          var Res = SCM.getResource(&quot;slice/tc/tcm&quot;);&#xD;&#xA;          var value = SCM.getIntValue(Res);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping(){&#xD;&#xA;          var Res3 = SCM.getResource(&quot;slice/psc/psiv&quot;);&#xD;&#xA;          var value3 = SCM.getIntValue(Res3);   &#xD;&#xA;          var Res6 = SCM.getResource(&quot;slice/tc/tcm&quot;); &#xD;&#xA;          var value6 = SCM.getIntValue(Res6); &#xD;&#xA;          var Res9 = SCM.getResource(&quot;pwmsp001_irperiodval&quot;);&#xD;&#xA;          var pr = SCM.getIntValue(Res9);&#xD;&#xA;          var Res8 = SCM.getResource(&quot;pwmsp001_irtimerconcat&quot;);&#xD;&#xA;          var tc = SCM.getIntValue(Res8);&#xD;&#xA;&#xD;&#xA;          var Res10 = 0;&#xD;&#xA;          var Res = 0;&#xD;&#xA;&#xD;&#xA;          var tempRes = SCM.getResource(&quot;pwmsp001_tempduty&quot;);&#xD;&#xA;          var duty = SCM.getDoubleValue(tempRes);&#xD;&#xA;&#xD;&#xA;          var countingmode = 0;&#xD;&#xA;          var compreg  = 0;&#xD;&#xA;          var period = 0;&#xD;&#xA;&#xD;&#xA;          if(value6 == 1){countingmode = 1;}&#xD;&#xA;&#xD;&#xA;//edge-aligned mode with and without timer concatenation&#xD;&#xA;          if (countingmode === 0){&#xD;&#xA;              compreg = ((100 - duty ) * (pr+1)) / 100;   &#xD;&#xA;          }&#xD;&#xA;//center-aligned mode&#xD;&#xA;          else if (countingmode == 1){&#xD;&#xA;            compreg = ((100 - duty ) * pr) / 100;&#xD;&#xA;          }&#xD;&#xA;          SCM.setIntValue(currentResource,compreg ); &#xD;&#xA;        } &#xD;&#xA;        " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_ircompareval" maxValue="FFFFFFFF" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="249"/>
    <toolTipHelpDescription>Compare register value</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Lower Timer Compare value" evalFunction="&#xD;&#xA;        function ForwardMapping(){&#xD;&#xA;          var Res_2 = SCM.getResource(&quot;ccu4globalapp/ccu4global_irclock&quot;);          &#xD;&#xA;          var Clock = SCM.getDoubleValue(Res_2);&#xD;&#xA;          var Res4 = SCM.getResource(&quot;slice/psc/psiv&quot;);&#xD;&#xA;          var value4 = SCM.getIntValue(Res4); &#xD;&#xA;          var Res1 = SCM.getResource(&quot;slice/prs/prs&quot;);          &#xD;&#xA;          var prescalar1 = SCM.getIntValue(Res1); &#xD;&#xA;          var Res2 = SCM.getResource(&quot;slice/crs/crs&quot;);          &#xD;&#xA;          var value2 = SCM.getIntValue(Res2); &#xD;&#xA;          var Res = SCM.getResource(&quot;slice/tc/tcm&quot;);&#xD;&#xA;          var value = SCM.getIntValue(Res);&#xD;&#xA;          var Res_compare = SCM.getResource(&quot;pwmsp001_ircompareval&quot;);&#xD;&#xA;          var compare_value = SCM.getIntValue(Res_compare);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping(){&#xD;&#xA;          var Res3 = SCM.getResource(&quot;slice/psc/psiv&quot;);&#xD;&#xA;          var value3 = SCM.getIntValue(Res3);   &#xD;&#xA;          var Res6 = SCM.getResource(&quot;slice/tc/tcm&quot;); &#xD;&#xA;          var value6 = SCM.getIntValue(Res6); &#xD;&#xA;          var Res9 = SCM.getResource(&quot;pwmsp001_irperiodval&quot;);&#xD;&#xA;          var Res8 = SCM.getResource(&quot;pwmsp001_irtimerconcat&quot;);&#xD;&#xA;          var tc = SCM.getIntValue(Res8);&#xD;&#xA;          var Res_low_period = SCM.getResource(&quot;pwmsp001_irperiodregval0&quot;);&#xD;&#xA;          var low_period_value = SCM.getIntValue(Res_low_period);&#xD;&#xA;          var Res_high_period = SCM.getResource(&quot;pwmsp001_irperiodregval1&quot;);&#xD;&#xA;          var high_period_value = SCM.getIntValue(Res_high_period);&#xD;&#xA;          var tempRes = SCM.getResource(&quot;pwmsp001_tempduty&quot;);&#xD;&#xA;          var duty = SCM.getDoubleValue(tempRes);&#xD;&#xA;          var Res_compare = SCM.getResource(&quot;pwmsp001_ircompareval&quot;);&#xD;&#xA;          var compare_value = SCM.getIntValue(Res_compare);&#xD;&#xA;&#xD;&#xA;          var countingmode = 0;&#xD;&#xA;          var compreg  = 0;&#xD;&#xA;          var period = 0;&#xD;&#xA;          if(value6 == 1){countingmode = 1;}&#xD;&#xA;&#xD;&#xA;//edge-aligned mode with and without timer concatenation&#xD;&#xA;          if (countingmode === 0)&#xD;&#xA;          {&#xD;&#xA;             if(tc == 1)&#xD;&#xA;             {&#xD;&#xA;              period =((high_period_value+1)*(low_period_value+1)) + 1;&#xD;&#xA;              compreg = ((100 - duty ) * (period)) / 100;&#xD;&#xA;              compreg = Math.floor(compreg) % Math.floor(low_period_value);&#xD;&#xA;             }&#xD;&#xA;             else&#xD;&#xA;             {&#xD;&#xA;              compreg = compare_value;   &#xD;&#xA;             }  &#xD;&#xA;          }&#xD;&#xA;//center-aligned mode&#xD;&#xA;          else if (countingmode == 1){&#xD;&#xA;            compreg = compare_value;&#xD;&#xA;          }&#xD;&#xA;          SCM.setIntValue(currentResource,compreg); &#xD;&#xA;        } &#xD;&#xA;        " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_ircompareregval0" maxValue="FFFF" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="249"/>
    <toolTipHelpDescription>Lower Timer Compare register value</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Higher Timer Compare value" evalFunction="&#xD;&#xA;        function ForwardMapping(){&#xD;&#xA;          var Res_2 = SCM.getResource(&quot;ccu4globalapp/ccu4global_irclock&quot;);          &#xD;&#xA;          var Clock = SCM.getDoubleValue(Res_2);&#xD;&#xA;          var Res4 = SCM.getResource(&quot;slice/psc/psiv&quot;);&#xD;&#xA;          var value4 = SCM.getIntValue(Res4); &#xD;&#xA;          var Res1 = SCM.getResource(&quot;slice/prs/prs&quot;);          &#xD;&#xA;          var prescalar1 = SCM.getIntValue(Res1); &#xD;&#xA;          var Res2 = SCM.getResource(&quot;slice/crs/crs&quot;);          &#xD;&#xA;          var value2 = SCM.getIntValue(Res2); &#xD;&#xA;          var Res = SCM.getResource(&quot;slice/tc/tcm&quot;);&#xD;&#xA;          var value = SCM.getIntValue(Res);&#xD;&#xA;          var Res_compare = SCM.getResource(&quot;pwmsp001_ircompareval&quot;);&#xD;&#xA;          var compare_value = SCM.getIntValue(Res_compare);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping(){&#xD;&#xA;          var Res3 = SCM.getResource(&quot;slice/psc/psiv&quot;);&#xD;&#xA;          var value3 = SCM.getIntValue(Res3);   &#xD;&#xA;          var Res6 = SCM.getResource(&quot;slice/tc/tcm&quot;); &#xD;&#xA;          var value6 = SCM.getIntValue(Res6); &#xD;&#xA;          var Res9 = SCM.getResource(&quot;pwmsp001_irperiodval&quot;);&#xD;&#xA;          var Res8 = SCM.getResource(&quot;pwmsp001_irtimerconcat&quot;);&#xD;&#xA;          var tc = SCM.getIntValue(Res8);&#xD;&#xA;          var Res_low_period = SCM.getResource(&quot;pwmsp001_irperiodregval0&quot;);&#xD;&#xA;          var low_period_value = SCM.getIntValue(Res_low_period);&#xD;&#xA;          var Res_high_period = SCM.getResource(&quot;pwmsp001_irperiodregval1&quot;);&#xD;&#xA;          var high_period_value = SCM.getIntValue(Res_high_period);&#xD;&#xA;          var tempRes = SCM.getResource(&quot;pwmsp001_tempduty&quot;);&#xD;&#xA;          var duty = SCM.getDoubleValue(tempRes);&#xD;&#xA;          var Res_compare = SCM.getResource(&quot;pwmsp001_ircompareval&quot;);&#xD;&#xA;          var compare_value = SCM.getIntValue(Res_compare);&#xD;&#xA;          var countingmode = 0;&#xD;&#xA;          var compreg  = 0;&#xD;&#xA;          var period = 0;&#xD;&#xA;&#xD;&#xA;          if(value6 == 1){countingmode = 1;}&#xD;&#xA;&#xD;&#xA;//edge-aligned mode with and without timer concatenation&#xD;&#xA;          if (countingmode === 0){&#xD;&#xA;             if(tc == 1)&#xD;&#xA;             {&#xD;&#xA;              period =((high_period_value+1)*(low_period_value+1)) + 1;&#xD;&#xA;              compreg = ((100 - duty ) * (period)) / 100;&#xD;&#xA;              compreg = Math.floor(compreg) / Math.floor(low_period_value);&#xD;&#xA;            }&#xD;&#xA;            else{&#xD;&#xA;              compreg = 0;    &#xD;&#xA;            }  &#xD;&#xA;          }&#xD;&#xA;//center-aligned mode&#xD;&#xA;          else if (countingmode == 1){&#xD;&#xA;            compreg = 0;&#xD;&#xA;          }&#xD;&#xA;          SCM.setIntValue(currentResource,compreg); &#xD;&#xA;        } &#xD;&#xA;        " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_ircompareregval1" maxValue="FFFF" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Higher Timer Compare register value</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Dither compare value" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var value = SCM.getIntValue(currentResource);&#xD;&#xA;            var Res = SCM.getResource(&quot;slice/dits/dcvs&quot;);&#xD;&#xA;            SCM.setIntValue (Res, value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;slice/dits/dcvs&quot;);&#xD;&#xA;            var value = SCM.getIntValue(Res);          &#xD;&#xA;            SCM.setIntValue (currentResource, value);&#xD;&#xA;          }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_irwdithercomp" downWardmappedList="//@consumed.48" maxValue="F" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>The dither compare value range is 0-15. This is the number of cycles for which the duty, period or both (depending on the dither mode selection) would be altered in the 16 cycles.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Dither Mode" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/dithe&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;slice/tc/dithe&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwdithermode" downWardmappedList="//@consumed.40">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This allows user to set the dither mode</toolTipHelpDescription>
    <item name="Disable" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res0 = SCM.getResource(&quot;slice/tc/dithe&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res0,0);&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res0,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;slice/tc/dithe&quot;);&#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              if (value0 === 0) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value0 == -1){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }        &#xD;&#xA;          " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwdithermode/0" downWardmappedList="//@consumed.40" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Disable dither</toolTipHelpDescription>
    </item>
    <item name="Change in only pwm period" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res0 = SCM.getResource(&quot;slice/tc/dithe&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res0,3);    &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res0,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;slice/tc/dithe&quot;);&#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;&#xD;&#xA;              if (value0 === 3) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value0 == -1){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }  &#xD;&#xA;          " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwdithermode/1" downWardmappedList="//@consumed.40" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Change in only PWM period is allowed.</toolTipHelpDescription>
    </item>
    <item name="Change in only duty cycle" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res0 = SCM.getResource(&quot;slice/tc/dithe&quot;);&#xD;&#xA;&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res0,2);&#xD;&#xA;      &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res0,0);&#xD;&#xA;&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;slice/tc/dithe&quot;);&#xD;&#xA;&#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;&#xD;&#xA;              if (value0 === 2) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value0 == -1){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }  &#xD;&#xA;            " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwdithermode/2" downWardmappedList="//@consumed.40" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Change in only PWM duty cycle is allowed.</toolTipHelpDescription>
    </item>
    <item name="Change in both PWM period and duty cycle" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res0 = SCM.getResource(&quot;slice/tc/dithe&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res0,1);      &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res0,0);&#xD;&#xA;              }              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;slice/tc/dithe&quot;);&#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              if (value0 === 1) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value0 == -1){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;          " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwdithermode/3" downWardmappedList="//@consumed.40" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Change in both PWM period and duty cycle is allowed.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Start" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_tempstart&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_tempstart&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwstart" downWardmappedList="//@consumed.2" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This allows user to configure whether this app should be started during initialization.&#xD;
The PWM Generation can be started during the initialisation or can be started later by&#xD;
calling an API.</toolTipHelpDescription>
    <item name="Start during initialization" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_tempstart&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1){&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_tempstart&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if(value == 1){ &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwstart/0" downWardmappedList="//@consumed.2" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>If this is checked then PWM Generation would start during initialisation.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Compare Match Interrupt" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_tempcompmatch&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_tempcompmatch&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwcomaprematch" downWardmappedList="//@consumed.3" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This allows user to configure whether compare match interrupt&#xD;
to be enabled during initialization.</toolTipHelpDescription>
    <item name="Enable at initialization" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_tempcompmatch&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1){&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_tempcompmatch&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if(value == 1){ &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwcomaprematch/0" downWardmappedList="//@consumed.3" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Enable Compare match interrupt at initialization.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Period Match Interrupt" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_tempperiodmatch&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_tempperiodmatch&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwperiodmatch" downWardmappedList="//@consumed.5" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>This allows user to configure whether period match interrupt&#xD;
to be enabled during initialization.</toolTipHelpDescription>
    <item name="Enable at initialization" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_tempperiodmatch&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1){&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_tempperiodmatch&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if(value == 1){ &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwperiodmatch/0" downWardmappedList="//@consumed.5" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Enable Period match interrupt at initialization.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="External start Interrupt" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_tempextstart&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_tempextstart&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwextstart" downWardmappedList="//@consumed.6" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This allows user to configure whether external start interrupt&#xD;
to be enabled during initialization.</toolTipHelpDescription>
    <item name="Enable at initialization" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_tempextstart&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1){&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_tempextstart&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if(value == 1){ &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwextstart/0" downWardmappedList="//@consumed.6" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Enable External Start (Event 0) interrupt at initialization.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="External stop Interrupt" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_tempextstop&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_tempextstop&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwextstop" downWardmappedList="//@consumed.7" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This allows user to configure whether external stop interrupt&#xD;
to be enabled during initialization.</toolTipHelpDescription>
    <item name="Enable at initialization" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_tempextstop&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1){&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_tempextstop&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if(value == 1){ &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwextstop/0" downWardmappedList="//@consumed.7" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Enable External stop (Event 1) interrupt at initialization.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Trap Interrupt" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_temptrap&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(Res,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_temptrap&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              SCM.setIntValue(currentResource,value);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwtrap" downWardmappedList="//@consumed.4" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This allows user to configure whether trap interrupt&#xD;
to be enabled during initialization.</toolTipHelpDescription>
    <item name="Enable at initialization" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_temptrap&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1){&#xD;&#xA;                SCM.setIntValue(Res,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_temptrap&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if(value == 1){ &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwtrap/0" downWardmappedList="//@consumed.4" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Enable Trap (Event 2) interrupt at initialization.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Output Enable" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmsp001_directoutputpadenabledummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(currentResource);&#xD;&#xA;          SCM.setIntValue(Res, value);&#xD;&#xA;         }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmsp001_directoutputpadenabledummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(Res); &#xD;&#xA;          SCM.setIntValue(currentResource,value);&#xD;&#xA;        }&#xD;&#xA;" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwdirectoutputpadenable" downWardmappedList="//@consumed.16" multipleSelections="true">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Enables the Direct Output Pin and Consumes the Pin. If&#xD;
not enabled then Port Pin is not consumed</toolTipHelpDescription>
    <item name="Enable" evalFunction="&#xD;&#xA;           function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_directoutputpadenabledummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1 || value == -1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 1);&#xD;&#xA;              }&#xD;&#xA;              else&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 0);&#xD;&#xA;              }&#xD;&#xA;&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_directoutputpadenabledummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if(value == 1 )&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(currentResource, 1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                  SCM.setIntValue(currentResource, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA; " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwdirectoutputpadenable/0" downWardmappedList="//@consumed.16" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Output Pin is enabled and consumed</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Output Characteristics" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmsp001_directoutputpadchardummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(currentResource);&#xD;&#xA;          SCM.setIntValue(Res, value);&#xD;&#xA;         }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;pwmsp001_directoutputpadchardummy&quot;); &#xD;&#xA;          var value = SCM.getIntValue(Res); &#xD;&#xA;          SCM.setIntValue(currentResource,value);&#xD;&#xA;        }&#xD;&#xA;&#xD;&#xA;" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwdirectoutputpadchar" downWardmappedList="//@consumed.17">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select Pad Output characteristics for Direct Output Pin</toolTipHelpDescription>
    <item name="Push Pull" evalFunction="&#xD;&#xA;           function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_directoutputpadchardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1 || value == -1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_directoutputpadchardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if(value == 0 || value == -1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(currentResource, 1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                  SCM.setIntValue(currentResource, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwdirectoutputpadchar/0" downWardmappedList="//@consumed.17" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Direct Output Pin characteristics is Push Pull</toolTipHelpDescription>
    </item>
    <item name="Open Drain" evalFunction="&#xD;&#xA;           function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_directoutputpadchardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              if(value == 1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(Res, 1);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_directoutputpadchardummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if(value == 1)&#xD;&#xA;              {&#xD;&#xA;                  SCM.setIntValue(currentResource, 1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                  SCM.setIntValue(currentResource, 0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwdirectoutputpadchar/1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>Direct Output pin characteristic is Open Drain</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Pad Class" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmsp001_directoutputpadclassdummy&quot;); &#xD;&#xA;            var value = SCM.getIntValue(currentResource);  &#xD;&#xA;            SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pwmsp001_directoutputpadclassdummy&quot;); &#xD;&#xA;            var value = SCM.getIntValue(Res); &#xD;&#xA;            if (value == -1) {&#xD;&#xA;              SCM.setIntValue(currentResource,0);&#xD;&#xA;            } else {&#xD;&#xA;              SCM.setIntValue(currentResource,value);               &#xD;&#xA;            }   &#xD;&#xA;          }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwdirectoutputpadclass" downWardmappedList="//@consumed.15">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <toolTipHelpDescription>Select Pad class for Direct Output Pin</toolTipHelpDescription>
    <item name="A1 (Speed Grade 6 MHz)" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_directoutputpadclassdummy&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pin_directoutput/pdr_pd&quot;); &#xD;&#xA;              SCM.setIntValue(Res1,4);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);     &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_directoutputpadclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwdirectoutputpadclass/0" downWardmappedList="//@consumed.80 //@consumed.15" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Pad Class A1</toolTipHelpDescription>
    </item>
    <item name="A1+ (Speed Grade 25 MHz)" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_directoutputpadclassdummy&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pin_directoutput/pdr_pd&quot;); &#xD;&#xA;              SCM.setIntValue(Res1,4);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_directoutputpadclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value == 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwdirectoutputpadclass/1" downWardmappedList="//@consumed.80 //@consumed.15" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Pad class A1+</toolTipHelpDescription>
    </item>
    <item name="A2 (Speed Grade 40/80 MHz)" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_directoutputpadclassdummy&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pin_directoutput/pdr_pd&quot;); &#xD;&#xA;              SCM.setIntValue(Res1,4);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,2);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_directoutputpadclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value == 2) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1) {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwdirectoutputpadclass/2" downWardmappedList="//@consumed.80 //@consumed.15" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Pad class A2</toolTipHelpDescription>
    </item>
    <item name="Don't Care" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_directoutputpadclassdummy&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,3);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pwmsp001_directoutputpadclassdummy&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              if (value == 3) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1) {&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwdirectoutputpadclass/3" downWardmappedList="//@consumed.15" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>User is not concerned about Pad Driver strength</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Driver Mode" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pin_directoutput/pdr_pd&quot;); &#xD;&#xA;            var value = SCM.getIntValue(currentResource);  &#xD;&#xA;            SCM.setIntValue(Res,value);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;pin_directoutput/pdr_pd&quot;); &#xD;&#xA;            var value = SCM.getIntValue(Res); &#xD;&#xA;            if (value == -1) {&#xD;&#xA;              SCM.setIntValue(currentResource,0);&#xD;&#xA;            } else {&#xD;&#xA;              SCM.setIntValue(currentResource,value);               &#xD;&#xA;            }   &#xD;&#xA;          }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwdirectoutputpaddrivermode" downWardmappedList="//@consumed.80">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select Pad driver mode for Direct Output Pin</toolTipHelpDescription>
    <item name="Medium driver" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pin_directoutput/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmsp001_directoutputpadclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,4);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pin_directoutput/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmsp001_directoutputpadclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 0)&#xD;&#xA;              {&#xD;&#xA;                if (value == 4 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1) {&#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwdirectoutputpaddrivermode/0" downWardmappedList="//@consumed.80" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Medium driver is selected</toolTipHelpDescription>
    </item>
    <item name="Weak driver" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pin_directoutput/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmsp001_directoutputpadclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                  SCM.setIntValue(Res,7);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                  SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pin_directoutput/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmsp001_directoutputpadclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 0)&#xD;&#xA;              {&#xD;&#xA;                if (value == 7 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwdirectoutputpaddrivermode/1" downWardmappedList="//@consumed.80" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Weak driver is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Soft Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pin_directoutput/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmsp001_directoutputpadclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,2);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pin_directoutput/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmsp001_directoutputpadclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 1)&#xD;&#xA;              {&#xD;&#xA;                if (value === 2 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwdirectoutputpaddrivermode/2" downWardmappedList="//@consumed.80" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Strong driver Soft Edge is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Slow Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pin_directoutput/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmsp001_directoutputpadclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);       //0x02&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pin_directoutput/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmsp001_directoutputpadclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;                            if(value1 == 1)&#xD;&#xA;              {&#xD;&#xA;                if (value === 1 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwdirectoutputpaddrivermode/3" downWardmappedList="//@consumed.80" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:Reserved" value="Reserved"/>
      <toolTipHelpDescription>Strong driver Slow Edge is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Sharp Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pin_directoutput/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmsp001_directoutputpadclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);       //0x00&#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pin_directoutput/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmsp001_directoutputpadclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 >= 2)&#xD;&#xA;              {&#xD;&#xA;                if (value === 0 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwdirectoutputpaddrivermode/4" downWardmappedList="//@consumed.80" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Strong driver Sharp Edge is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Medium Edge" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;pin_directoutput/pdr_pd&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmsp001_directoutputpadclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,3);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }             &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;pin_directoutput/pdr_pd&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;pwmsp001_directoutputpadclassdummy&quot;); &#xD;&#xA;              var value1 = SCM.getIntValue(Res1);&#xD;&#xA;              if(value1 == 2)&#xD;&#xA;              {&#xD;&#xA;                if (value === 3) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;                            }else{&#xD;&#xA;                var reserved = SCM.getReserverd();&#xD;&#xA;                SCM.setValue(currentResource,reserved);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_erwdirectoutputpaddrivermode/5" downWardmappedList="//@consumed.80" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:Reserved" value="Reserved"/>
      <toolTipHelpDescription>Strong driver Medium Edge is selected</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function is used to initialize the APP" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_init" APIName="pwmsp001_Init">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This will reset the CCU8_CCy slice registers to default state." URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_deinit" APIName="pwmsp001_Deinit">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This will start the Single Phase PWM with Dead Time APP which will in turn start the CCU8_CCy slice." URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_start" APIName="pwmsp001_Start">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This will stop the Single Phase PWM with Dead Time APP which will in turn stop the CCU8_CCy slice." URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_stop" APIName="pwmsp001_Stop">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function will modify the duty cycle of the output waveform which will change the pulse width. Duty cycle is given in %" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_setdutycycle" APIName="pwmsp001_SetDutyCycle">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This will modify the PWM frequency.Period value is given in terms of the period register" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_setperiod" APIName="pwmsp001_SetPwmFreq">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function will modify the duty cycle of the output waveform which will change the pulse width.Duty cycle is given in terms of the compare register value" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_setcompare" APIName="pwmsp001_SetDutyCycle">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This will modify the PWM frequency which is given in Hertz" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_setpwmfreq" APIName="pwmsp001_SetPwmFreq">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This will update the timer register value when timer is stopped. This is used to set the starting value of the timer." URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_settimerval" APIName="pwmsp001_SetTimerVal">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This will request the update of the period register, compare register values from the respective shadow transfers." URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_swrequestshadowtransfer" APIName="pwmsp001_SWRequestShadowTransfer">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function will read the period register value." URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_getperiodreg" APIName="pwmsp001_GetPeriodReg">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function will reset the trap flag by checking whether trap condition is reset." URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_resettrapflag" APIName="pwmsp001_ResetTrapFlag">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function will read the timer values of compare register and period register." URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_gettimertegsval" APIName="pwmsp001_GetTimerRegsVal">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function will read the timer status whether timer is running or idle." URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_gettimerstatus" APIName="pwmsp001_GetTimerStatus">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function will enable the event. This should be called by the user first&#xD;&#xA; for interrupt handling." URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_enableevent" APIName="PWMSP001_EnableEvent">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function will enable the event. This should be called by the user first&#xD;&#xA; for interrupt handling." URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_enableevent" APIName="PWMSP001_EnableEvent"/>
  <provided xsi:type="ResourceModel:API" description="This function will disable the event." URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_disableevent" APIName="PWMSP001_DisableEvent">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function will clear the event." URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_clearpendingevent" APIName="PWMSP001_ClearPendingResetEvent">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function will set the event." URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_setpendingevent" APIName="PWMSP001_SetPendingEvent">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function will check whether given event is set." URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_getpendingevent" APIName="PWMSP001_GetPendingEvent">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_temptrapconf" upWardMappingList="//@provided.23" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_temptrapexittime" upWardMappingList="//@provided.24" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_tempstart" upWardMappingList="//@provided.42 //@provided.42/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_tempcompmatch" upWardMappingList="//@provided.43 //@provided.43/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_temptrap" upWardMappingList="//@provided.47 //@provided.47/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_tempperiodmatch" upWardMappingList="//@provided.44 //@provided.44/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_tempextstart" upWardMappingList="//@provided.45 //@provided.45/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_tempextstop" upWardMappingList="//@provided.46 //@provided.46/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_tempresolution" upWardMappingList="//@provided.27 //@provided.36 //@provided.28" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1388"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1388"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_tempselresolution" isSystemDefined="true">
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_tempfreq" upWardMappingList="//@provided.29 //@provided.30 //@provided.31 //@provided.32 //@provided.33 //@provided.34" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="c8"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="c8"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_tempduty" upWardMappingList="//@provided.35 //@provided.37 //@provided.38 //@provided.39" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="32"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="32"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/chkval" isSystemDefined="true">
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../CCU42/CCU42_2.dd#//@provided.47"/>
    <requiredResource uriString="peripheral/ccu4/*/cc4/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;          var Res0 = Solver.getResource(&quot;pwmsp001_irtimerconcat&quot;);&#xD;&#xA;          var tc = Solver.getIntValue(Res0);&#xD;&#xA;          if (tc == 1) {&#xD;&#xA;            return true; &#xD;&#xA;          } &#xD;&#xA;          return false;&#xD;&#xA;&#xD;&#xA;        }" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice1">
    <requiredResource uriString="peripheral/ccu4/*/cc4/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_directoutputpadclassdummy" upWardMappingList="//@provided.50 //@provided.50/@item.0 //@provided.50/@item.1 //@provided.50/@item.2 //@provided.50/@item.3 //@provided.51/@item.0 //@provided.51/@item.1 //@provided.51/@item.2 //@provided.51/@item.3 //@provided.51/@item.4 //@provided.51/@item.5" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_directoutputpadenabledummy" upWardMappingList="//@provided.48 //@provided.48/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pwmsp001_directoutputpadchardummy" upWardMappingList="//@provided.49 //@provided.49/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/ccu4globalapp">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../CCU4GLOBAL/1.0.22/ccu4global_1.app#/"/>
    <requiredResource uriString="app/ccu4global/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() &#xD;&#xA;        {&#xD;&#xA;          var Res0 = Solver.getResource(&quot;pwmsp001_erwdirectoutputpadenable&quot;);&#xD;&#xA;          var OutputEnable = Solver.getIntValue(Res0);&#xD;&#xA;          if (OutputEnable == 1)&#xD;&#xA;          {&#xD;&#xA;            return true; &#xD;&#xA;          } &#xD;&#xA;          return false;&#xD;&#xA;        }" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pin_directoutput">
    <requiredResource uriString="port/p/*/pad/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/gidls_ssi" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU42/CCU42_2.dd#//@provided.48"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/gidlc_csi" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU42/CCU42_2.dd#//@provided.49"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/gcss_sse" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU42/CCU42_2.dd#//@provided.50"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/gcss_sdse" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU42/CCU42_2.dd#//@provided.51"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/gcss_spse" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU42/CCU42_2.dd#//@provided.52"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/ins" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU42/CCU42_2.dd#//@provided.53"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/ins/ev0em" upWardMappingList="//@provided.19 //@provided.19/@item.0 //@provided.19/@item.1 //@provided.19/@item.2 //@provided.19/@item.3" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU42/CCU42_2.dd#//@provided.53/@bitFields.3"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/ins/ev1em" upWardMappingList="//@provided.20 //@provided.20/@item.0 //@provided.20/@item.1 //@provided.20/@item.2 //@provided.20/@item.3" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU42/CCU42_2.dd#//@provided.53/@bitFields.4"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/ins/ev2lm" upWardMappingList="//@provided.26 //@provided.26/@item.0 //@provided.26/@item.1" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU42/CCU42_2.dd#//@provided.53/@bitFields.8"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/cmc" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU42/CCU42_2.dd#//@provided.54"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice1/cmc" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/cmc/tce" upWardMappingList="//@provided.29" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU42/CCU42_2.dd#//@provided.54/@bitFields.11"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/tcst" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU42/CCU42_2.dd#//@provided.55"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/tcset" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU42/CCU42_2.dd#//@provided.56"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/tcclr" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU42/CCU42_2.dd#//@provided.57"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/tc" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU42/CCU42_2.dd#//@provided.58"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/tc/strm" upWardMappingList="//@provided.21 //@provided.21/@item.0 //@provided.21/@item.1" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU42/CCU42_2.dd#//@provided.58/@bitFields.7"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/tc/endm" upWardMappingList="//@provided.22 //@provided.22/@item.0 //@provided.22/@item.1 //@provided.22/@item.2" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU42/CCU42_2.dd#//@provided.58/@bitFields.6"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/tc/tssm" upWardMappingList="//@provided.16 //@provided.16/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU42/CCU42_2.dd#//@provided.58/@bitFields.1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/tc/tcm" upWardMappingList="//@provided.17 //@provided.17/@item.0 //@provided.17/@item.1 //@provided.29 //@provided.30 //@provided.31 //@provided.32 //@provided.33 //@provided.34 //@provided.35 //@provided.37 //@provided.38 //@provided.39" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU42/CCU42_2.dd#//@provided.58/@bitFields.0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/tc/dithe" upWardMappingList="//@provided.41 //@provided.41/@item.0 //@provided.41/@item.1 //@provided.41/@item.2 //@provided.41/@item.3" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU42/CCU42_2.dd#//@provided.58/@bitFields.10"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/tc/trape" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU42/CCU42_2.dd#//@provided.58/@bitFields.13"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/tc/trpse" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU42/CCU42_2.dd#//@provided.58/@bitFields.14"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/tc/trpsw" upWardMappingList="//@provided.25 //@provided.25/@item.0 //@provided.25/@item.1" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU42/CCU42_2.dd#//@provided.58/@bitFields.15"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/psl" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU42/CCU42_2.dd#//@provided.59"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/psl/psl" upWardMappingList="//@provided.18 //@provided.18/@item.0 //@provided.18/@item.1" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU42/CCU42_2.dd#//@provided.59/@bitFields.0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/dit" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU42/CCU42_2.dd#//@provided.60"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/dits" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU42/CCU42_2.dd#//@provided.61"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/dits/dcvs" upWardMappingList="//@provided.40" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU42/CCU42_2.dd#//@provided.61/@bitFields.0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/psc" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU42/CCU42_2.dd#//@provided.62"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/psc/psiv" upWardMappingList="//@provided.27 //@provided.28 //@provided.30 //@provided.31 //@provided.32 //@provided.33 //@provided.34 //@provided.37 //@provided.38 //@provided.39" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="9"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU42/CCU42_2.dd#//@provided.62/@bitFields.0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="9"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/fpc" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU42/CCU42_2.dd#//@provided.63"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/fpcs" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU42/CCU42_2.dd#//@provided.64"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/pr" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU42/CCU42_2.dd#//@provided.65"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/prs" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU42/CCU42_2.dd#//@provided.66"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/prs/prs" upWardMappingList="//@provided.29 //@provided.30 //@provided.31 //@provided.32 //@provided.33 //@provided.34 //@provided.37 //@provided.38 //@provided.39" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU42/CCU42_2.dd#//@provided.66/@bitFields.0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice1/prs" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice1/prs/prs" upWardMappingList="//@provided.29" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/cr" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU42/CCU42_2.dd#//@provided.67"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/crs" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU42/CCU42_2.dd#//@provided.68"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/crs/crs" upWardMappingList="//@provided.35 //@provided.37 //@provided.38 //@provided.39" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU42/CCU42_2.dd#//@provided.68/@bitFields.0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice1/crs" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice1/crs/crs" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/timer" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU42/CCU42_2.dd#//@provided.69"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/c0v" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU42/CCU42_2.dd#//@provided.70"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/c1v" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU42/CCU42_2.dd#//@provided.71"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/c2v" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU42/CCU42_2.dd#//@provided.72"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/c3v" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU42/CCU42_2.dd#//@provided.73"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/ints" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU42/CCU42_2.dd#//@provided.74"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/inte" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU42/CCU42_2.dd#//@provided.75"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/inte/pme" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU42/CCU42_2.dd#//@provided.75/@bitFields.0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/inte/cmue" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU42/CCU42_2.dd#//@provided.75/@bitFields.2"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/inte/cmde" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU42/CCU42_2.dd#//@provided.75/@bitFields.3"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/inte/e0ae" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU42/CCU42_2.dd#//@provided.75/@bitFields.4"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/inte/e1ae" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU42/CCU42_2.dd#//@provided.75/@bitFields.5"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/inte/e2ae" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CCU42/CCU42_2.dd#//@provided.75/@bitFields.6"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/srs" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU42/CCU42_2.dd#//@provided.76"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/sws" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU42/CCU42_2.dd#//@provided.77"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/swr" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../CCU42/CCU42_2.dd#//@provided.78"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/ccu4globalapp/ccu4global_irclock" upWardMappingList="//@provided.27 //@provided.28 //@provided.29 //@provided.30 //@provided.31 //@provided.32 //@provided.33 //@provided.34 //@provided.36 //@provided.37 //@provided.38 //@provided.39" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="78"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../CCU4GLOBAL/1.0.22/ccu4global_1.app#//@provided.2"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="78"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pin_directoutput/pdr_pd" upWardMappingList="//@provided.50/@item.0 //@provided.50/@item.1 //@provided.50/@item.2 //@provided.51 //@provided.51/@item.0 //@provided.51/@item.1 //@provided.51/@item.2 //@provided.51/@item.3 //@provided.51/@item.4 //@provided.51/@item.5" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/global_signal" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU42/CCU42_2.dd#//@provided.79"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/cmds_cmus" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU42/CCU42_2.dd#//@provided.80"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/concat_bus_in" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU42/CCU42_2.dd#//@provided.81"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/pmus_omds" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU42/CCU42_2.dd#//@provided.82"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/e2as" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU42/CCU42_2.dd#//@provided.83"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice1/gp1_unsync" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice1/gp0_unsync" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/st" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU42/CCU42_2.dd#//@provided.84"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/gp0_unsync" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU42/CCU42_2.dd#//@provided.85"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/pin_directoutput/pad" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/e1as" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU42/CCU42_2.dd#//@provided.86"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/e0as" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU42/CCU42_2.dd#//@provided.87"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice1/concat_bus_out" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/gp1_unsync" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU42/CCU42_2.dd#//@provided.88"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/gp2_unsync" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU42/CCU42_2.dd#//@provided.89"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/slice/out" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CCU42/CCU42_2.dd#//@provided.90"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.34/app/pwmsp001/5/SignalConfigurator_1407447678" bindingMode="READ" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../NVIC002/1.0.28/nvic002_5.app#/"/>
    <requiredResource uriString="app/nvic002/5" uriType="LOCALTYPE"/>
  </consumed>
  <propertyConstants name="uridevice" value="device">
    <propertyConstants name="uriPeri_CCU4" value="peripheral/ccu4/">
      <propertyConstants name="uriPWMSP001App" value="app/pwmsp001/"/>
    </propertyConstants>
  </propertyConstants>
  <categoryDescription description="Peripheral related Apps" name="Peripheral Specific Apps">
    <subCategory description="Timer-Capture-Compare" name="Timer-Capture-Compare">
      <subCategory description="CAPCOM4" name="Capture/Compare Unit 4 (CAPCOM4)"/>
    </subCategory>
  </categoryDescription>
  <categoryDescription description="Basic Applications" name="Basic Applications">
    <subCategory description="Apps related to Capture/Compare" name="Time Processing">
      <subCategory description="PWM waveform generation" name="PWM Generation"/>
    </subCategory>
  </categoryDescription>
  <manifestInfo version="1.0.34">
    <keywords>Single Phase PWM </keywords>
    <keywords>Duty Cycle</keywords>
    <keywords>PWM period</keywords>
    <keywords>CCU4</keywords>
    <keywords>PWMSP001</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" initProvider="true" isIOApp="true"/>
  </manifestInfo>
  <datagenerate fileName="PWMSP001.h" fileType="HFILE" templateFileName="PWMSP001.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="PWMSP001.c" templateFileName="PWMSP001c.jet"/>
  <datagenerate fileName="PWMSP001_Conf.h" fileType="HFILE" templateFileName="PWMSP001Confh.jet"/>
  <datagenerate fileName="PWMSP001_Conf.c" templateFileName="PWMSP001Confc.jet"/>
  <connections sourceSignal="ccu4globalapp/ccu4global_globalsignal_vs" targetSignal="app/pwmsp001/5/pwmsp001_globalsignal_vs"/>
  <connections sourceSignal="app/pwmsp001/5/pwmsp001_out_vs" targetSignal="app/pwmsp001/5/pwmsp001_directoutput_vs"/>
  <connections sourceSignal="app/pwmsp001/5/pwmsp001_concat_bus_out_vs" targetSignal="app/pwmsp001/5/pwmsp001_concat_bus_in_vs"/>
  <connections sourceSignal="app/pwmsp001/5/pwmsp001_pmus_omds_vs" targetSignal="SignalConfigurator_1407447678/nvic002_vs" isSystemDefined="false"/>
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
  <softwareIdList>42.0208.6</softwareIdList>
  <softwareIdList>42.0204.5</softwareIdList>
  <softwareIdList>42.0204.6</softwareIdList>
  <softwareIdList>42.0200.6</softwareIdList>
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
