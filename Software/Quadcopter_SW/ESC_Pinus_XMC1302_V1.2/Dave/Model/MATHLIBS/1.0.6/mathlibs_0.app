<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="MATHLIBS" description="This app generates Math functions. &#xA;The functions include &#xA;Division, Modulo Division and &#xA;Trigonometric. This app &#xA;consumes NVIC001 app if &#xA;Non Blocking option is selected." descriptionURL="/doc/html/group___m_a_t_h_l_i_b_s.html" mode="SHARABLE" URI="http://www.infineon.com/1.0.6/app/mathlibs/0">
  <provided xsi:type="ResourceModel:StringParameter" name="Message" URI="http://www.infineon.com/1.0.6/app/mathlibs/0/pwmlib_srdummy">
    <defaultValue xsi:type="ResourceModel:StringValue" value="This App only provides APIs. &#xA; There are no UI configurations. &#xA; Refer User Documentation for details."/>
    <localValue xsi:type="ResourceModel:StringValue" value="This App only provides APIs. &#xA; There are no UI configurations. &#xA; Refer User Documentation for details."/>
    <globalValue xsi:type="ResourceModel:StringValue" value="This App only provides APIs. &#xA; There are no UI configurations. &#xA; Refer User Documentation for details."/>
    <toolTipHelpDescription>This informs whether timer concatenation is required to achieve PWM waveform with given frequency and resolution.non-editable field</toolTipHelpDescription>
  </provided>
  <propertyConstants name="uridevice" value="device"/>
  <categoryDescription description="MATH Library" name="MATHLIBS"/>
  <manifestInfo version="1.0.6">
    <keywords>MATHLIBS</keywords>
    <keywords>MATH01</keywords>
    <keywords>STDMATH01</keywords>
    <keywords>FASTMATH01</keywords>
    <keywords>MATHLLD01</keywords>
    <keywords>MATH</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" singleton="true" systemDefined="true"/>
  </manifestInfo>
  <datagenerate fileName="MATH01.h" fileType="HFILE" templateFileName="MATH01.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="MATHLLD01.h" fileType="HFILE" templateFileName="MATHLLD01.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="STDMATH01.h" fileType="HFILE" templateFileName="STDMATH01.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="FASTMATH01.h" fileType="HFILE" templateFileName="FASTMATH01.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="x" fileType="HFILE" templateFileName="Dave/Generated/inc/MATHLIBS" templateEngine="NONE" fileAction="INCLUDE"/>
  <datagenerate fileName="MATH01.c" templateFileName="MATH01.cdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="MATHLLD01.c" templateFileName="MATHLLD01.cdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="STDMATH01.c" templateFileName="STDMATH01.cdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="FASTMATH01.c" templateFileName="FASTMATH01.cdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="x" templateFileName="Dave/Generated/src/MATHLIBS" templateEngine="NONE" fileAction="INCLUDE"/>
  <softwareIdList>13.0102.7</softwareIdList>
  <softwareIdList>13.0102.10</softwareIdList>
  <softwareIdList>13.0102.11</softwareIdList>
  <softwareIdList>13.0102.9</softwareIdList>
</ResourceModel:App>
