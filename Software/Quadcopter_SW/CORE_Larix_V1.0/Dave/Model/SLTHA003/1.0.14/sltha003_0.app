<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="SLTHA003" description="This is a standard library which uses Newlib library &#xA; for timer and memory management related functions." descriptionURL="/doc/html/group___s_l_t_h_a003_app.html" mode="SHARABLE" URI="http://www.infineon.com/1.0.14/app/sltha003/0">
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../USBLD001/1.0.18/usbld001_0.app#//@consumed.1"/>
  <provided xsi:type="ResourceModel:IntegerParameter" name="RTOS Present " evalFunction="&#xD;&#xA;                            function ForwardMapping()&#xD;&#xA;                            {&#xD;&#xA;                                var Res0 = SCM.getResource(&quot;topindex&quot;);   &#xD;&#xA;                                SCM.setIntValue(Res0,1);&#xD;&#xA;                                var Res4 = SCM.getResource(&quot;gmm001/gmm001_irwHeapSize&quot;);&#xD;&#xA;                                SCM.setIntValue(Res4,10240);&#xD;&#xA;                                &#xD;&#xA;                            }&#xD;&#xA;                            function BackwardMapping()&#xD;&#xA;                            {&#xD;&#xA;                                var Res1 = SCM.getResource(&quot;topindex&quot;);   &#xD;&#xA;                            }               &#xD;&#xA;                        " URI="http://www.infineon.com/1.0.14/app/sltha003/0/sltha003_rtos_present" downWardmappedList="//@consumed.2" maxValue="1" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>This allows a user to enable or disable RTOS</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function can be used to request allocation of an object&#xD;&#xA;        with at least Size bytes of storage available" URI="http://www.infineon.com/1.0.14/app/sltha003/0/_malloc_r" APIName="_malloc_r">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function can be used to request a block of memory sufficient to hold &#xD;&#xA;      an array of NoOfElem elements, each of which has size ElemSize." URI="http://www.infineon.com/1.0.14/app/sltha003/0/_calloc_r" APIName="_calloc_r">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function can be used When you no longer need an object originally &#xD;&#xA;                     allocated by malloc or realloc (or the related function calloc), return it to the memory storage pool by calling free with the address of the&#xD;&#xA;                    object as the argument" URI="http://www.infineon.com/1.0.14/app/sltha003/0/_free_r" APIName="_free_r">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function can be used if you already have a block of storage allocated by&#xD;&#xA;                    malloc, but you no longer need all the space allocated to it, you can make it&#xD;&#xA;                    smaller or larger by calling realloc." URI="http://www.infineon.com/1.0.14/app/sltha003/0/_realloc_r" APIName="_realloc_r">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function gets the calendar time in seconds." URI="http://www.infineon.com/1.0.14/app/sltha003/0/_gettimeofday" APIName="_gettimeofday">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function gets the processor time.  " URI="http://www.infineon.com/1.0.14/app/sltha003/0/_times" APIName="_times">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.14/app/sltha003/0/rtcapp">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../RTC001/1.0.32/rtc001_0.app#/"/>
    <requiredResource uriString="app/rtc001/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = Solver.getSoftwareId().substring(0,2).compareTo(&quot;44&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value2 = Solver.getSoftwareId().substring(0,2).compareTo(&quot;42&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if((value1  == 0 ) || (value2 == 0 )) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9; return false;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;    return true;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;   }" URI="http://www.infineon.com/1.0.14/app/sltha003/0/gmm001">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../GMM001/1.0.16/gmm001_0.app#/"/>
    <requiredResource uriString="app/gmm001/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.14/app/sltha003/0/topindex" upWardMappingList="//@provided.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <propertyConstants name="uriDevice" value="Device/0.1.28"/>
  <categoryDescription description="Middleware layer apps" name="Middleware Apps">
    <subCategory description="Apps related to standard libraries" name="File System"/>
  </categoryDescription>
  <manifestInfo version="1.0.14">
    <keywords>Standard Library</keywords>
    <keywords>Stdlib</keywords>
    <keywords>Memory Allocation</keywords>
    <keywords>SLTHA003</keywords>
    <keywords>Timer</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" singleton="true"/>
  </manifestInfo>
  <datagenerate fileName="SLTHA003_HW_Private.h" fileType="HFILE" templateFileName="SLTHA003_HW_Privateh.jet"/>
  <datagenerate fileName="SLTHA003.c" templateFileName="SLTHA003.cdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="SLTHA003.h" fileType="HFILE" templateFileName="SLTHA003.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="SLTHA003_Conf.c" templateFileName="SLTHA003_Confc.jet"/>
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
