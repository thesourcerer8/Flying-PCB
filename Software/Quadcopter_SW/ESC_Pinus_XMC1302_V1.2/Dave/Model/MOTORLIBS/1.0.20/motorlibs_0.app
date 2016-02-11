<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="MOTORLIBS" description="This is the motor library for &#xA; different library functions. It is &#xA;used by motor app.This app does not consume any HW &#xA; reqources,so do not use it standalone." mode="SHARABLE" URI="http://www.infineon.com/1.0.20/app/motorlibs/0">
  <provided xsi:type="ResourceModel:StringParameter" name="Message" URI="http://www.infineon.com/1.0.20/app/motorlibs/0/motorlibs_srdummy">
    <defaultValue xsi:type="ResourceModel:StringValue" value="This App only provides APIs. &#xA; There are no UI configurations. &#xA; Refer User Documentation for details."/>
    <localValue xsi:type="ResourceModel:StringValue" value="This App only provides APIs. &#xA; There are no UI configurations. &#xA; Refer User Documentation for details."/>
    <globalValue xsi:type="ResourceModel:StringValue" value="This App only provides APIs. &#xA; There are no UI configurations. &#xA; Refer User Documentation for details."/>
    <toolTipHelpDescription>This informs whether timer concatenation is required to achieve PWM waveform with given frequency and resolution.non-editable field</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This is the function for PT1 Filter." URI="http://www.infineon.com/1.0.20/app/motorlibs/0/motorlibs_pt1controller" APIName="MOTORLIBS_PT1Controller">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This is the function for PI controller." URI="http://www.infineon.com/1.0.20/app/motorlibs/0/motorlibs_picontroller" APIName="MOTORLIBS_PIController">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <propertyConstants name="uridevice" value="device"/>
  <categoryDescription description="Apps related to motor control library" name="Motor Control Library">
    <subCategory description="Motor control library functions" name="Motor Control Library"/>
  </categoryDescription>
  <manifestInfo version="1.0.20">
    <keywords>Motor Control Library</keywords>
    <keywords>MOTORLIBS</keywords>
    <keywords>SHARABLE</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" singleton="true" systemDefined="true"/>
  </manifestInfo>
  <datagenerate fileName="MOTORLIBS.h" fileType="HFILE" templateFileName="MOTORLIBS.hdt" fileAction="COPY"/>
  <datagenerate fileName="x" fileType="HFILE" templateFileName="Dave/Generated/inc/MOTORLIBS" templateEngine="NONE" fileAction="INCLUDE"/>
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
  <softwareIdList>45.0300.2</softwareIdList>
  <softwareIdList>45.0300.3</softwareIdList>
  <softwareIdList>45.0302.3</softwareIdList>
  <softwareIdList>45.0304.3</softwareIdList>
  <softwareIdList>45.0304.2</softwareIdList>
  <softwareIdList>44.0200.3</softwareIdList>
  <softwareIdList>44.0200.5</softwareIdList>
  <softwareIdList>44.0202.3</softwareIdList>
  <softwareIdList>44.0202.5</softwareIdList>
  <softwareIdList>44.0.3</softwareIdList>
  <softwareIdList>44.00.5</softwareIdList>
  <softwareIdList>44.02.3</softwareIdList>
  <softwareIdList>44.02.5</softwareIdList>
  <softwareIdList>42.00.5</softwareIdList>
  <softwareIdList>42.0.6</softwareIdList>
  <softwareIdList>42.04.5</softwareIdList>
  <softwareIdList>42.04.6</softwareIdList>
  <softwareIdList>42.0200.5</softwareIdList>
  <softwareIdList>42.0200.6</softwareIdList>
  <softwareIdList>42.0204.5</softwareIdList>
  <softwareIdList>42.0204.6</softwareIdList>
  <softwareIdList>42.0208.6</softwareIdList>
  <softwareIdList>13.0102.7</softwareIdList>
  <softwareIdList>13.0102.10</softwareIdList>
  <softwareIdList>13.0102.11</softwareIdList>
  <softwareIdList>13.0101.7</softwareIdList>
  <softwareIdList>13.0101.10</softwareIdList>
  <softwareIdList>13.0101.11</softwareIdList>
</ResourceModel:App>
