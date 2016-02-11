<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="DAVESupport" description="DAVESupport App" mode="SHARABLE" URI="http://www.infineon.com/1.0.44/app/davesupport/0">
  <propertyConstants name="DAVESupport" value="/app/davesupport/0/"/>
  <categoryDescription description="DAVESupport App" name="DAVESupport App"/>
  <manifestInfo version="1.0.44">
    <keywords>DAVESupport</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" mainProvider="true" singleton="true" systemDefined="true"/>
  </manifestInfo>
  <datagenerate fileName="DAVE3.c" templateFileName="DAVE3_C.jet"/>
  <datagenerate fileName="DAVE3.h" fileType="HFILE" templateFileName="DAVE3_H.jet"/>
  <datagenerate fileName="MULTIPLEXER.c" templateFileName="MUX_C.jet"/>
  <datagenerate fileName="MULTIPLEXER.h" fileType="HFILE" templateFileName="MUX_H.jet"/>
  <datagenerate fileName="Device_Data.h" fileType="HFILE" templateFileName="DEVICE_DATA_H.jet" evalFunction="function preCondition()  {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  var xmc1Device = ((CG.getSoftwareId().substring(0,1).compareTo(&quot;1&quot;)==0)?1:0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  if (xmc1Device == 1) {&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;    return true;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;return false;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}"/>
  <datagenerate fileName="x" fileType="HFILE" templateFileName="Dave/Generated/inc/DAVESupport" templateEngine="NONE" fileAction="INCLUDE"/>
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
