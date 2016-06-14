<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="ERU001" description="This app provides event request selection&#xA; and edge trigger logic configuration." descriptionURL="/doc/html/group___event___request___e_r_s___e_t_l___e_r_u001_app.html" URI="http://www.infineon.com/1.0.16/app/eru001/1" userLabel="DPS310_ERU_INPUT">
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../IO002/1.0.30/io002_1.app#//@consumed.10"/>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Signal A Input" URI="http://www.infineon.com/1.0.16/app/eru001/1/eru001_input_a" requiredSignalResource="ers_etl/a">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Signal B Input" URI="http://www.infineon.com/1.0.16/app/eru001/1/eru001_input_b" requiredSignalResource="ers_etl/b">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Trigger Pulse Output" URI="http://www.infineon.com/1.0.16/app/eru001/1/eru001_triggerpulse" requiredSignalResource="ers_etl/tr">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Flag Status Output" URI="http://www.infineon.com/1.0.16/app/eru001/1/eru001_flagstatus" requiredSignalResource="ers_etl/fl">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Event Request Select" URI="http://www.infineon.com/1.0.16/app/eru001/1/eru001_erwsourceselect">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>Event Input Selectors allows one or two input source selection.</toolTipHelpDescription>
    <item name="A" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var tempRes = SCM.getResource(&quot;eru001_dummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;ers_etl/exicon/ss&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;ers_etl/exicon/na&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res2 = SCM.getResource(&quot;ers_etl/exicon/nb&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res1,0);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res2,0);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(tempRes,0);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;              &#x9;&#x9;&#x9;&#x9;  var tempRes = SCM.getResource(&quot;eru001_dummy&quot;);&#xD;&#xA;              &#x9;&#x9;&#x9;&#x9;  var value = SCM.getIntValue(tempRes);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value === 0 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.16/app/eru001/1/eru001_erwsourceselect/0" downWardmappedList="//@consumed.6 //@consumed.4 //@consumed.5 //@consumed.2" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Source A input is selected for ERSx</toolTipHelpDescription>
    </item>
    <item name="A'" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var tempRes = SCM.getResource(&quot;eru001_dummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;ers_etl/exicon/ss&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;ers_etl/exicon/na&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res2 = SCM.getResource(&quot;ers_etl/exicon/nb&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res1,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res2,0);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(tempRes,1);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;          &#x9;&#x9;&#x9;&#x9;  var tempRes = SCM.getResource(&quot;eru001_dummy&quot;);&#xD;&#xA;&#x9;          &#x9;&#x9;&#x9;&#x9;  var value = SCM.getIntValue(tempRes);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.16/app/eru001/1/eru001_erwsourceselect/1" downWardmappedList="//@consumed.6 //@consumed.4 //@consumed.5 //@consumed.2" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Source A intput with negation selected for ERSx</toolTipHelpDescription>
    </item>
    <item name="A  &amp; B" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var tempRes = SCM.getResource(&quot;eru001_dummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;ers_etl/exicon/ss&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;ers_etl/exicon/na&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res2 = SCM.getResource(&quot;ers_etl/exicon/nb&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,3);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res1,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res2,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(tempRes,2);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;              &#x9;&#x9;&#x9;&#x9;  var tempRes = SCM.getResource(&quot;eru001_dummy&quot;);&#xD;&#xA;              &#x9;&#x9;&#x9;&#x9;  var value = SCM.getIntValue(tempRes);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 2 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.16/app/eru001/1/eru001_erwsourceselect/2" downWardmappedList="//@consumed.6 //@consumed.4 //@consumed.5 //@consumed.2" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Logical AND of source A and 
 source B input selected for ERSx</toolTipHelpDescription>
    </item>
    <item name="A' &amp; B" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var tempRes = SCM.getResource(&quot;eru001_dummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;ers_etl/exicon/ss&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;ers_etl/exicon/na&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res2 = SCM.getResource(&quot;ers_etl/exicon/nb&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,3);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res1,1);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res2,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(tempRes,3);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;              &#x9;&#x9;&#x9;&#x9;  var tempRes = SCM.getResource(&quot;eru001_dummy&quot;);&#xD;&#xA;              &#x9;&#x9;&#x9;&#x9;  var value = SCM.getIntValue(tempRes);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 3 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.16/app/eru001/1/eru001_erwsourceselect/3" downWardmappedList="//@consumed.6 //@consumed.4 //@consumed.5 //@consumed.2" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Logical AND of source A with negation and 
 source B input selected for ERSx.</toolTipHelpDescription>
    </item>
    <item name="A &amp; B'" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            { &#xD;&#xA;              var tempRes = SCM.getResource(&quot;eru001_dummy&quot;);&#xD;&#xA;              var Res = SCM.getResource(&quot;ers_etl/exicon/ss&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;ers_etl/exicon/na&quot;);&#xD;&#xA;              var Res2 = SCM.getResource(&quot;ers_etl/exicon/nb&quot;);&#xD;&#xA;              SCM.setIntValue(Res,3); &#xD;&#xA;              SCM.setIntValue(Res1,0);  &#xD;&#xA;              SCM.setIntValue(Res2,1);&#xD;&#xA;              SCM.setIntValue(tempRes,4);               &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;                        var tempRes = SCM.getResource(&quot;eru001_dummy&quot;);&#xD;&#xA;                        var value = SCM.getIntValue(tempRes);&#xD;&#xA;                if (value == 4 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1 ){&#xD;&#xA;                    SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;                else {&#xD;&#xA;                    SCM.setIntValue(currentResource,0);&#xD;&#xA;                } &#xD;&#xA;            }       &#xD;&#xA;            " URI="http://www.infineon.com/1.0.16/app/eru001/1/eru001_erwsourceselect/4" downWardmappedList="//@consumed.6 //@consumed.4 //@consumed.5 //@consumed.2" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Logical AND of source A and 
 source B with negation input selected for ERSx.</toolTipHelpDescription>
    </item>
    <item name="A' &amp; B'" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var tempRes = SCM.getResource(&quot;eru001_dummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;ers_etl/exicon/ss&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;ers_etl/exicon/na&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res2 = SCM.getResource(&quot;ers_etl/exicon/nb&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,3);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res1,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res2,1);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(tempRes,5);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;              &#x9;var tempRes = SCM.getResource(&quot;eru001_dummy&quot;);&#xD;&#xA;              &#x9;var value = SCM.getIntValue(tempRes);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 5 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.16/app/eru001/1/eru001_erwsourceselect/5" downWardmappedList="//@consumed.6 //@consumed.4 //@consumed.5 //@consumed.2" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Logical AND of source A with negation and 
 source B with negation input selected for ERSx.</toolTipHelpDescription>
    </item>
    <item name="A  + B" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            { &#xD;&#xA;              var tempRes = SCM.getResource(&quot;eru001_dummy&quot;);&#xD;&#xA;              var Res = SCM.getResource(&quot;ers_etl/exicon/ss&quot;);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;ers_etl/exicon/na&quot;);&#xD;&#xA;              var Res2 = SCM.getResource(&quot;ers_etl/exicon/nb&quot;);&#xD;&#xA;              SCM.setIntValue(Res,2);&#xD;&#xA;              SCM.setIntValue(Res1,0);  &#xD;&#xA;              SCM.setIntValue(Res2,0);  &#xD;&#xA;              SCM.setIntValue(tempRes,6);               &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;                        var tempRes = SCM.getResource(&quot;eru001_dummy&quot;);&#xD;&#xA;                        var value = SCM.getIntValue(tempRes);&#xD;&#xA;                if (value == 6 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1 ){&#xD;&#xA;                    SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;                else {&#xD;&#xA;                    SCM.setIntValue(currentResource,0);&#xD;&#xA;                } &#xD;&#xA;            }       &#xD;&#xA;            " URI="http://www.infineon.com/1.0.16/app/eru001/1/eru001_erwsourceselect/6" downWardmappedList="//@consumed.6 //@consumed.4 //@consumed.5 //@consumed.2" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Logical OR of source A and 
 source B input selected for ERSx.</toolTipHelpDescription>
    </item>
    <item name="A  + B'" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var tempRes = SCM.getResource(&quot;eru001_dummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;ers_etl/exicon/ss&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;ers_etl/exicon/na&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res2 = SCM.getResource(&quot;ers_etl/exicon/nb&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,2);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res1,0);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res2,1);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(tempRes,7);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;              &#x9;&#x9;&#x9;&#x9;  var tempRes = SCM.getResource(&quot;eru001_dummy&quot;);&#xD;&#xA;              &#x9;&#x9;&#x9;&#x9;  var value = SCM.getIntValue(tempRes);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 7 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.16/app/eru001/1/eru001_erwsourceselect/7" downWardmappedList="//@consumed.6 //@consumed.4 //@consumed.5 //@consumed.2" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Logical OR of source A and 
 source B with negation input selected for ERSx.</toolTipHelpDescription>
    </item>
    <item name="A' + B" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var tempRes = SCM.getResource(&quot;eru001_dummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;ers_etl/exicon/ss&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;ers_etl/exicon/na&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res2 = SCM.getResource(&quot;ers_etl/exicon/nb&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,2);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res1,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res2,0);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(tempRes,8);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;              &#x9;&#x9;&#x9;&#x9;  var tempRes = SCM.getResource(&quot;eru001_dummy&quot;);&#xD;&#xA;              &#x9;&#x9;&#x9;&#x9;  var value = SCM.getIntValue(tempRes);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 8 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.16/app/eru001/1/eru001_erwsourceselect/8" downWardmappedList="//@consumed.6 //@consumed.4 //@consumed.5 //@consumed.2" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Logical OR of source A with negation and 
 source B input selected for ERSx.</toolTipHelpDescription>
    </item>
    <item name="A' + B'" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var tempRes = SCM.getResource(&quot;eru001_dummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;ers_etl/exicon/ss&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;ers_etl/exicon/na&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res2 = SCM.getResource(&quot;ers_etl/exicon/nb&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,2);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res1,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res2,1);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(tempRes,9);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;              &#x9;&#x9;&#x9;&#x9;  var tempRes = SCM.getResource(&quot;eru001_dummy&quot;);&#xD;&#xA;              &#x9;&#x9;&#x9;&#x9;  var value = SCM.getIntValue(tempRes);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 9 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.16/app/eru001/1/eru001_erwsourceselect/9" downWardmappedList="//@consumed.6 //@consumed.4 //@consumed.5 //@consumed.2" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Logical OR of source A with negation and 
 source B with negation input selected for ERSx.</toolTipHelpDescription>
    </item>
    <item name="B" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var tempRes = SCM.getResource(&quot;eru001_dummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;ers_etl/exicon/ss&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;ers_etl/exicon/na&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res2 = SCM.getResource(&quot;ers_etl/exicon/nb&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res1,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res2,0);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(tempRes,10);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;              &#x9;&#x9;&#x9;&#x9;  var tempRes = SCM.getResource(&quot;eru001_dummy&quot;);&#xD;&#xA;              &#x9;&#x9;&#x9;&#x9;  var value = SCM.getIntValue(tempRes);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 10 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.16/app/eru001/1/eru001_erwsourceselect/10" downWardmappedList="//@consumed.6 //@consumed.4 //@consumed.5 //@consumed.2" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Source B intput is selected for ERSx. </toolTipHelpDescription>
    </item>
    <item name="B'" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var tempRes = SCM.getResource(&quot;eru001_dummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;ers_etl/exicon/ss&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;ers_etl/exicon/na&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res2 = SCM.getResource(&quot;ers_etl/exicon/nb&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res1,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res2,1);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(tempRes,11);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;                var tempRes = SCM.getResource(&quot;eru001_dummy&quot;);&#xD;&#xA;              &#x9;var value = SCM.getIntValue(tempRes);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 11 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1 ){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.16/app/eru001/1/eru001_erwsourceselect/11" downWardmappedList="//@consumed.6 //@consumed.4 //@consumed.5 //@consumed.2" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Source B intput negation is selected for ERSx. </toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Falling edge" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;ers_etl/exicon/fe&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,value);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;ers_etl/exicon/fe&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,value);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.16/app/eru001/1/eru001_erwedgedetfalled" downWardmappedList="//@consumed.7" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>Event Detect Type: Falling Edge</toolTipHelpDescription>
    <item name="Falling edge" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;ers_etl/exicon/fe&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if(value == 1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value === 0){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;ers_etl/exicon/fe&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value ==1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.16/app/eru001/1/eru001_erwedgedetfalled/0" downWardmappedList="//@consumed.7" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>The falling edge level of the selected signal is translated into events.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Rising edge" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;ers_etl/exicon/re&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,value);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;ers_etl/exicon/re&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,value);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.16/app/eru001/1/eru001_erwedgedetrised" downWardmappedList="//@consumed.8" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Event Detect Type: Rising Edge</toolTipHelpDescription>
    <item name="Rising edge" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;ers_etl/exicon/re&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if(value == 1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value === 0){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  &#x9;var Res = SCM.getResource(&quot;ers_etl/exicon/re&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else if(value ==1){&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.16/app/eru001/1/eru001_erwedgedetrised/0" downWardmappedList="//@consumed.8" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>The rising edge level of the selected signal is translated into events.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable Sticky Status Flag" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;              var Res = SCM.getResource(&quot;ers_etl/exicon/ld&quot;); &#xD;&#xA;            var value = SCM.getIntValue(currentResource);&#xD;&#xA;            if(value == 1){&#xD;&#xA;              SCM.setIntValue(Res,0);&#xD;&#xA;            }else if(value === 0){&#xD;&#xA;              SCM.setIntValue(Res,1);&#xD;&#xA;            }&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;              var Res = SCM.getResource(&quot;ers_etl/exicon/ld&quot;); &#xD;&#xA;            var value = SCM.getIntValue(Res); &#xD;&#xA;            if (value == -1) {&#xD;&#xA;              SCM.setIntValue(currentResource,0);&#xD;&#xA;            } else if (value === 0) {&#xD;&#xA;              SCM.setIntValue(currentResource,1);               &#xD;&#xA;            }else if(value ==1){&#xD;&#xA;              SCM.setIntValue(currentResource,0);&#xD;&#xA;            }&#xD;&#xA;          }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.16/app/eru001/1/eru001_erwclearstatus" downWardmappedList="//@consumed.9" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Status flag can be used as a sticky status flag by enabling this option 
 otherwise it can be used as a pattern detection.</toolTipHelpDescription>
    <item name="Enable Sticky Status Flag" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;              var Res = SCM.getResource(&quot;ers_etl/exicon/ld&quot;); &#xD;&#xA;            var value = SCM.getIntValue(currentResource);&#xD;&#xA;            if(value == 1){&#xD;&#xA;              SCM.setIntValue(Res,0);&#xD;&#xA;            }else if(value === 0){&#xD;&#xA;              SCM.setIntValue(Res,1);&#xD;&#xA;            }&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;              var Res = SCM.getResource(&quot;ers_etl/exicon/ld&quot;); &#xD;&#xA;            var value = SCM.getIntValue(Res); &#xD;&#xA;            if (value == -1) {&#xD;&#xA;              SCM.setIntValue(currentResource,0);&#xD;&#xA;            } else if (value === 0) {&#xD;&#xA;              SCM.setIntValue(currentResource,1);               &#xD;&#xA;            }else if(value ==1){&#xD;&#xA;              SCM.setIntValue(currentResource,0);&#xD;&#xA;            }&#xD;&#xA;          }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.16/app/eru001/1/eru001_erwclearstatus/0" downWardmappedList="//@consumed.9" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Status flag can be used as a sticky status flag by enabling this option 
 otherwise it can be used as a pattern detection.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:StringParameter" name="Status Flag" evalFunction="&#xD;&#xA;          function ForwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res0 = SCM.getResource(&quot;ers_etl/exicon/ld&quot;); &#xD;&#xA;            var value0 = SCM.getIntValue(Res0); &#xD;&#xA;            var Res1 = SCM.getResource(&quot;ers_etl/exicon/re&quot;); &#xD;&#xA;            var value1 = SCM.getIntValue(Res1);&#xD;&#xA;            var Res2 = SCM.getResource(&quot;ers_etl/exicon/fe&quot;); &#xD;&#xA;            var value2 = SCM.getIntValue(Res2);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res0 = SCM.getResource(&quot;ers_etl/exicon/ld&quot;); &#xD;&#xA;            var value0 = SCM.getIntValue(Res0); &#xD;&#xA;            var Res1 = SCM.getResource(&quot;ers_etl/exicon/re&quot;); &#xD;&#xA;            var value1 = SCM.getIntValue(Res1);&#xD;&#xA;            var Res2 = SCM.getResource(&quot;ers_etl/exicon/fe&quot;); &#xD;&#xA;            var value2 = SCM.getIntValue(Res2);&#xD;&#xA;            if((value0 === 0) &amp;&amp; (value1 == 1) &amp;&amp; (value2 == 0)){&#xD;&#xA;              SCM.setStringValue(currentResource, &quot;Status flag is set by rising edge.&quot;);&#xD;&#xA;            }&#xD;&#xA;            else  if((value0 === 0) &amp;&amp; (value1 == 0) &amp;&amp; (value2 == 1)){&#xD;&#xA;              SCM.setStringValue(currentResource, &quot;Status flag is set by falling edge.&quot;);&#xD;&#xA;            }&#xD;&#xA;            else  if((value0 === 0) &amp;&amp; (value1 == 1) &amp;&amp; (value2 == 1)){&#xD;&#xA;              SCM.setStringValue(currentResource, &quot;Status flag is set by both edge.&quot;);&#xD;&#xA;            }&#xD;&#xA;            else  if((value0 == 1) &amp;&amp; (value1 == 0) &amp;&amp; (value2 == 1)){&#xD;&#xA;              SCM.setStringValue(currentResource, &quot;Status flag is set by falling edge.&quot;);&#xD;&#xA;            }&#xD;&#xA;            else  if((value0 == 1) &amp;&amp; (value1 == 1) &amp;&amp; (value2 == 0)){&#xD;&#xA;              SCM.setStringValue(currentResource, &quot;Status flag is set by rising edge.&quot;);&#xD;&#xA;            }&#xD;&#xA;&#x9;&#x9;&#x9;else  if((value0 == 1) &amp;&amp; (value1 == 1) &amp;&amp; (value2 == 1)){&#xD;&#xA;              SCM.setStringValue(currentResource, &quot;Status flag is set by both edges (Not Allowed)&quot;);&#xD;&#xA;            }&#xD;&#xA;            else{&#xD;&#xA;              SCM.setStringValue(currentResource,&quot;Select Event Edge Detection type.&quot;);&#xD;&#xA;          }&#xD;&#xA;        }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.16/app/eru001/1/eru001_erostring">
    <defaultValue xsi:type="ResourceModel:StringValue" value=" "/>
    <localValue xsi:type="ResourceModel:StringValue" value=" "/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Status flag is set by falling edge."/>
    <toolTipHelpDescription>Event Edge Detection type to modify status flag (non-editable)</toolTipHelpDescription>
  </provided>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.16/app/eru001/1/ers_etl">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../ERU1/ERU1_1.dd#//@provided.11"/>
    <requiredResource uriString="peripheral/eru/*/ers_etl/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = Solver.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if(value1  == 0 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  return false;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;return true;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.16/app/eru001/1/resetapp">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../RESET001/1.0.14/reset001_0.app#/"/>
    <requiredResource uriString="app/reset001/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.16/app/eru001/1/eru001_dummy" upWardMappingList="//@provided.4/@item.0 //@provided.4/@item.1 //@provided.4/@item.2 //@provided.4/@item.3 //@provided.4/@item.4 //@provided.4/@item.5 //@provided.4/@item.6 //@provided.4/@item.7 //@provided.4/@item.8 //@provided.4/@item.9 //@provided.4/@item.10 //@provided.4/@item.11" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.16/app/eru001/1/ers_etl/a" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../ERU1/ERU1_1.dd#//@provided.12"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.16/app/eru001/1/ers_etl/exicon/na" upWardMappingList="//@provided.4/@item.0 //@provided.4/@item.1 //@provided.4/@item.2 //@provided.4/@item.3 //@provided.4/@item.4 //@provided.4/@item.5 //@provided.4/@item.6 //@provided.4/@item.7 //@provided.4/@item.8 //@provided.4/@item.9 //@provided.4/@item.10 //@provided.4/@item.11" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../ERU1/ERU1_1.dd#//@provided.13"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.16/app/eru001/1/ers_etl/exicon/nb" upWardMappingList="//@provided.4/@item.0 //@provided.4/@item.1 //@provided.4/@item.2 //@provided.4/@item.3 //@provided.4/@item.4 //@provided.4/@item.5 //@provided.4/@item.6 //@provided.4/@item.7 //@provided.4/@item.8 //@provided.4/@item.9 //@provided.4/@item.10 //@provided.4/@item.11" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../ERU1/ERU1_1.dd#//@provided.14"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.16/app/eru001/1/ers_etl/exicon/ss" upWardMappingList="//@provided.4/@item.0 //@provided.4/@item.1 //@provided.4/@item.2 //@provided.4/@item.3 //@provided.4/@item.4 //@provided.4/@item.5 //@provided.4/@item.6 //@provided.4/@item.7 //@provided.4/@item.8 //@provided.4/@item.9 //@provided.4/@item.10 //@provided.4/@item.11" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../ERU1/ERU1_1.dd#//@provided.15"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.16/app/eru001/1/ers_etl/exicon/fe" upWardMappingList="//@provided.5 //@provided.5/@item.0 //@provided.8" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../ERU1/ERU1_1.dd#//@provided.16"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.16/app/eru001/1/ers_etl/exicon/re" upWardMappingList="//@provided.6 //@provided.6/@item.0 //@provided.8" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../ERU1/ERU1_1.dd#//@provided.17"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.16/app/eru001/1/ers_etl/exicon/ld" upWardMappingList="//@provided.7 //@provided.7/@item.0 //@provided.8" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../ERU1/ERU1_1.dd#//@provided.18"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.16/app/eru001/1/ers_etl/fl" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../ERU1/ERU1_1.dd#//@provided.19"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.16/app/eru001/1/ers_etl/tr" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../ERU1/ERU1_1.dd#//@provided.20"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.16/app/eru001/1/ers_etl/b" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../ERU1/ERU1_1.dd#//@provided.21"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.16/app/eru001/1/SignalConfigurator_626612868" bindingMode="READ" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../ERU002/1.0.14/eru002_1.app#/"/>
    <requiredResource uriString="app/eru002/1" uriType="LOCALTYPE"/>
  </consumed>
  <propertyConstants name="uridevice" value="device/">
    <propertyConstants name="uriPeri_ERU" value="peripheral/eru/"/>
  </propertyConstants>
  <categoryDescription description="Peripheral Specific Apps" name="Peripheral Specific Apps">
    <subCategory description="CPU-System" name="CPU-System">
      <subCategory description="System control Unit (SCU)" name="System control Unit (SCU)"/>
    </subCategory>
  </categoryDescription>
  <manifestInfo version="1.0.16">
    <keywords>ERU</keywords>
    <keywords>Trigger</keywords>
    <keywords>ERU001</keywords>
    <keywords>external interrupt</keywords>
    <keywords>interrupt</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" initProvider="true"/>
  </manifestInfo>
  <datagenerate fileName="ERU001.h" fileType="HFILE" templateFileName="ERU001.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="ERU001.c" templateFileName="ERU001.cdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="ERU001_Extern.h" fileType="HFILE" templateFileName="ERU001Externh.jet"/>
  <datagenerate fileName="ERU001_Conf.c" templateFileName="ERU001Confc.jet"/>
  <datagenerate fileName="ERU001_Conf.h" fileType="HFILE" templateFileName="ERU001Confh.jet"/>
  <connections sourceSignal="app/eru001/1/eru001_triggerpulse" targetSignal="SignalConfigurator_626612868/eru002_trin" isSystemDefined="false"/>
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
  <softwareIdList>45.0204.2</softwareIdList>
  <softwareIdList>45.0204.3</softwareIdList>
  <softwareIdList>44.0.3</softwareIdList>
  <softwareIdList>44.00.5</softwareIdList>
  <softwareIdList>44.02.3</softwareIdList>
  <softwareIdList>44.02.5</softwareIdList>
  <softwareIdList>42.00.5</softwareIdList>
  <softwareIdList>42.0.6</softwareIdList>
  <softwareIdList>42.04.5</softwareIdList>
  <softwareIdList>42.04.6</softwareIdList>
  <softwareIdList>11.0100.9</softwareIdList>
  <softwareIdList>11.0100.7</softwareIdList>
  <softwareIdList>12.0100.7</softwareIdList>
  <softwareIdList>13.0102.7</softwareIdList>
  <softwareIdList>12.0101.7</softwareIdList>
  <softwareIdList>12.0102.8</softwareIdList>
  <softwareIdList>12.0102.9</softwareIdList>
  <softwareIdList>13.0101.7</softwareIdList>
  <softwareIdList>13.0101.9</softwareIdList>
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
