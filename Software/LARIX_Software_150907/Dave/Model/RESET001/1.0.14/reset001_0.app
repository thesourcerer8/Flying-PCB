<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="RESET001" description="App which provides APIs to &#xA;assert/deassert peripheral&#xA; modules." descriptionURL="/doc/html/group___r_e_s_e_t001_app.html" mode="SHARABLE" URI="http://www.infineon.com/1.0.14/app/reset001/0">
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../ERU001/1.0.16/eru001_0.app#//@consumed.1"/>
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../ERU002/1.0.14/eru002_0.app#//@consumed.1"/>
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../UART001/1.0.24/uart001_0.app#//@consumed.7"/>
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../CCU4GLOBAL/1.0.22/ccu4global_0.app#//@consumed.3"/>
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../UART001/1.0.24/uart001_1.app#//@consumed.7"/>
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../CCU4GLOBAL/1.0.22/ccu4global_1.app#//@consumed.3"/>
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../ERU001/1.0.16/eru001_1.app#//@consumed.1"/>
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../ERU002/1.0.14/eru002_1.app#//@consumed.1"/>
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../I2C001/1.0.28/i2c001_0.app#//@consumed.6"/>
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../I2C001/1.0.28/i2c001_1.app#//@consumed.6"/>
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../UART001/1.0.24/uart001_2.app#//@consumed.7"/>
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../CCU8GLOBAL/1.0.20/ccu8global_0.app#//@consumed.3"/>
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../CCU4GLOBAL/1.0.22/ccu4global_2.app#//@consumed.3"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.14/app/reset001/0/rcurst">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.28"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/rcurst" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.14/app/reset001/0/vadcreset">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.29"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/vadcreset" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;                    var value1 = Solver.getSoftwareId().substring(0,2).compareTo(&quot;42&quot;);&#xD;&#xA;                    if(value1  == 0 ){&#xD;&#xA;                      return false;&#xD;&#xA;                    }&#xD;&#xA;                    return true;&#xD;&#xA;                }" URI="http://www.infineon.com/1.0.14/app/reset001/0/dsdreset">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.30"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/dsdreset" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.14/app/reset001/0/ccu4reset0">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.31"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/ccu4reset/0" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.14/app/reset001/0/ccu4reset1">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.32"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/ccu4reset/1" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;                    var value1 = Solver.getSoftwareId().substring(0,2).compareTo(&quot;42&quot;);&#xD;&#xA;                    if(value1  == 0 ){&#xD;&#xA;                      return false;&#xD;&#xA;                    }&#xD;&#xA;                    return true;&#xD;&#xA;                }" URI="http://www.infineon.com/1.0.14/app/reset001/0/ccu4reset2">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.33"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/ccu4reset/2" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;                    var value1 = Solver.getSoftwareId().substring(0,2).compareTo(&quot;42&quot;);&#xD;&#xA;                    if(value1  == 0 ){&#xD;&#xA;                      return false;&#xD;&#xA;                    }&#xD;&#xA;                    return true;&#xD;&#xA;                }" URI="http://www.infineon.com/1.0.14/app/reset001/0/ccu4reset3">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.34"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/ccu4reset/3" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.14/app/reset001/0/ccu8reset0">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.35"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/ccu8reset/0" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;                    var value1 = Solver.getSoftwareId().substring(0,2).compareTo(&quot;42&quot;);&#xD;&#xA;                    if(value1  == 0 ){&#xD;&#xA;                      return false;&#xD;&#xA;                    }&#xD;&#xA;                    return true;&#xD;&#xA;                }" URI="http://www.infineon.com/1.0.14/app/reset001/0/ccu8reset1">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.36"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/ccu8reset/1" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.14/app/reset001/0/posifreset0">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.37"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/posifreset/0" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;                    var value1 = Solver.getSoftwareId().substring(0,2).compareTo(&quot;42&quot;);&#xD;&#xA;                    if(value1  == 0 ){&#xD;&#xA;                      return false;&#xD;&#xA;                    }&#xD;&#xA;                    return true;&#xD;&#xA;                }" URI="http://www.infineon.com/1.0.14/app/reset001/0/posifreset1">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.38"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/posifreset/1" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.14/app/reset001/0/usicreset0">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.39"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/usicreset/0" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.14/app/reset001/0/usicreset1">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.40"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/usicreset/1" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = Solver.getSoftwareId().substring(0,2).compareTo(&quot;44&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value2 = Solver.getSoftwareId().substring(0,2).compareTo(&quot;42&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if((value1  == 0 ) || (value2 == 0 )) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  return false;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;return true;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.14/app/reset001/0/usicreset2">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.41"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/usicreset/2" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.14/app/reset001/0/eru1reset">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.42"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/eru1reset" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = Solver.getSoftwareId().substring(0,2).compareTo(&quot;44&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value2 = Solver.getSoftwareId().substring(0,2).compareTo(&quot;42&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if((value1  == 0 ) || (value2 == 0 )) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  return false;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;return true;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.14/app/reset001/0/mmcreset">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.43"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/mmcreset" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.14/app/reset001/0/fcereset">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.44"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/fcereset" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = Solver.getSoftwareId().compareTo(&quot;42.0208.6&quot;);&#xD;&#xA;                    if(value1  == 0){&#xD;&#xA;                      return false;&#xD;&#xA;                    }&#xD;&#xA;                    return true;&#xD;&#xA;                }" URI="http://www.infineon.com/1.0.14/app/reset001/0/ledtsreset">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.45"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/ledtsreset" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.14/app/reset001/0/pportreset">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.46"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/pportreset" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;                    var value1 = Solver.getSoftwareId().compareTo(&quot;45.4.2&quot;);&#xD;&#xA;                    var value2 = Solver.getSoftwareId().compareTo(&quot;45.4.3&quot;);&#xD;&#xA;                    var value3 = Solver.getSoftwareId().compareTo(&quot;45.0204.2&quot;);&#xD;&#xA;                    var value4 = Solver.getSoftwareId().compareTo(&quot;45.0204.3&quot;);&#xD;&#xA;                    var value5 = Solver.getSoftwareId().compareTo(&quot;42.04.5&quot;);&#xD;&#xA;                    var value6 = Solver.getSoftwareId().compareTo(&quot;42.04.6&quot;);&#xD;&#xA;                    var value7 = Solver.getSoftwareId().compareTo(&quot;45.0304.2&quot;);&#xD;&#xA;                    var value8 = Solver.getSoftwareId().compareTo(&quot;45.0304.3&quot;);&#xD;&#xA;                    var value9 = Solver.getSoftwareId().compareTo(&quot;42.0204.5&quot;);&#xD;&#xA;                    var value10 = Solver.getSoftwareId().compareTo(&quot;42.0204.6&quot;); &#xD;&#xA;                    var value11 = Solver.getSoftwareId().compareTo(&quot;42.0208.6&quot;); &#xD;&#xA;                    if((value1  == 0 ) || (value2 == 0 )||(value3  == 0 ) || (value4 == 0 )||&#xD;&#xA;                       (value5  == 0 ) || (value6 == 0 )||(value7  == 0 ) || (value8 == 0 )||&#xD;&#xA;                       (value9  == 0 ) || (value10 == 0 ) || (value11==0) ){&#xD;&#xA;                      return false;&#xD;&#xA;                    }&#xD;&#xA;                    return true;&#xD;&#xA;                }" URI="http://www.infineon.com/1.0.14/app/reset001/0/usbreset">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.47"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/usbreset" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;                    var value1 = Solver.getSoftwareId().compareTo(&quot;45.4.2&quot;);&#xD;&#xA;                    var value2 = Solver.getSoftwareId().compareTo(&quot;45.4.3&quot;);&#xD;&#xA;                    var value3 = Solver.getSoftwareId().compareTo(&quot;45.0204.2&quot;);&#xD;&#xA;                    var value4 = Solver.getSoftwareId().compareTo(&quot;45.0204.3&quot;);&#xD;&#xA;                    var value5 = Solver.getSoftwareId().compareTo(&quot;42.04.5&quot;);&#xD;&#xA;                    var value6 = Solver.getSoftwareId().compareTo(&quot;42.04.6&quot;);&#xD;&#xA;                    var value7 = Solver.getSoftwareId().compareTo(&quot;45.0304.2&quot;);&#xD;&#xA;                    var value8 = Solver.getSoftwareId().compareTo(&quot;45.0304.3&quot;);&#xD;&#xA;                    var value9 = Solver.getSoftwareId().compareTo(&quot;42.0204.5&quot;);&#xD;&#xA;                    var value10 = Solver.getSoftwareId().compareTo(&quot;42.0204.6&quot;);                    &#xD;&#xA;                    if((value1  == 0 ) || (value2 == 0 )||(value3  == 0 ) || (value4 == 0 )||(value5  == 0 ) || (value6 == 0 )||(value7  == 0 ) || (value8 == 0 )||(value9  == 0 ) || (value10 == 0 )){&#xD;&#xA;                      return false;&#xD;&#xA;                    }&#xD;&#xA;                    return true;&#xD;&#xA;                }" URI="http://www.infineon.com/1.0.14/app/reset001/0/mcanreset">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.48"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/mcanreset" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.14/app/reset001/0/wdtreset">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.49"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/wdtreset" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.14/app/reset001/0/dacreset">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.50"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/dacreset" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.14/app/reset001/0/dmareset0">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.51"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/dmareset/0" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = Solver.getSoftwareId().substring(0,2).compareTo(&quot;44&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value2 = Solver.getSoftwareId().substring(0,2).compareTo(&quot;42&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if((value1  == 0 ) || (value2 == 0 )) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  return false;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;return true;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.14/app/reset001/0/dmareset1">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.52"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/dmareset/1" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = Solver.getSoftwareId().substring(0,2).compareTo(&quot;44&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value2 = Solver.getSoftwareId().substring(0,2).compareTo(&quot;42&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if((value1  == 0 ) || (value2 == 0 )) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  return false;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;return true;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.14/app/reset001/0/ebureset">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.53"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/ebureset" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;                    var value1 = Solver.getSoftwareId().substring(0,2).compareTo(&quot;42&quot;);&#xD;&#xA;                    var value2 = Solver.getSoftwareId().substring(0,5).compareTo(&quot;44.02&quot;);&#xD;&#xA;                    var value3 = Solver.getSoftwareId().substring(0,4).compareTo(&quot;45.2&quot;);&#xD;&#xA;                    var value4 = Solver.getSoftwareId().substring(0,4).compareTo(&quot;45.4&quot;);&#xD;&#xA;                    var value5 = Solver.getSoftwareId().compareTo(&quot;45.0202.3&quot;);&#xD;&#xA;                    var value6 = Solver.getSoftwareId().compareTo(&quot;45.0204.2&quot;);&#xD;&#xA;                    var value7 = Solver.getSoftwareId().compareTo(&quot;45.0204.3&quot;);&#xD;&#xA;                    var value8 = Solver.getSoftwareId().compareTo(&quot;45.0302.3&quot;);&#xD;&#xA;                    var value9 = Solver.getSoftwareId().compareTo(&quot;45.0304.2&quot;);&#xD;&#xA;                    var value10 = Solver.getSoftwareId().compareTo(&quot;45.0304.3&quot;);&#xD;&#xA;                    var value11 = Solver.getSoftwareId().compareTo(&quot;44.0202.3&quot;);&#xD;&#xA;                    var value12 = Solver.getSoftwareId().compareTo(&quot;44.0202.5&quot;);&#xD;&#xA;                    if((value1  == 0 ) || (value2 == 0 )|| (value3 == 0 )|| (value4 == 0 )|| &#xD;&#xA;                       (value5 == 0 )|| (value6 == 0 )|| (value7 == 0 ) || (value8 == 0 )|| &#xD;&#xA;                       (value9 == 0 )|| (value10 == 0 )|| (value11 == 0 )|| (value12 == 0 )){&#xD;&#xA;                      return false;&#xD;&#xA;                    }&#xD;&#xA;                    return true;&#xD;&#xA;                }" URI="http://www.infineon.com/1.0.14/app/reset001/0/ethreset">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.54"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/ethreset" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;                    var value1 = Solver.getSoftwareId().substring(0,2).compareTo(&quot;45&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value2 = Solver.getSoftwareId().compareTo(&quot;42.0208.6&quot;);&#xD;&#xA;                    if((value1  == 0 )||(value2  == 0 )){&#xD;&#xA;                      return false;&#xD;&#xA;                    }&#xD;&#xA;                    return true;&#xD;&#xA;                }" URI="http://www.infineon.com/1.0.14/app/reset001/0/hrpwmreset">
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/hrpwmreset" uriType="LOCALTYPE"/>
  </consumed>
  <propertyConstants name="uri_rstctrl" value="peripheral/scu/0/rstctrl/0/"/>
  <categoryDescription description="Peripheral Specific Apps" name="Peripheral Specific Apps">
    <subCategory description="CPU-System" name="CPU-System">
      <subCategory description="System control Unit (SCU)" name="System control Unit (SCU)"/>
    </subCategory>
  </categoryDescription>
  <manifestInfo version="1.0.14">
    <keywords>Reset</keywords>
    <keywords>RESET001</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" singleton="true"/>
  </manifestInfo>
  <datagenerate fileName="RESET001.h" fileType="HFILE" templateFileName="RESET001.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="RESET001.c" templateFileName="RESET001.cdt" templateEngine="NONE" fileAction="COPY"/>
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
</ResourceModel:App>
