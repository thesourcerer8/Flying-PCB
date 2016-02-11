package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class rtc001_confh_template
{
  protected static String nl;
  public static synchronized rtc001_confh_template create(String lineSeparator)
  {
    nl = lineSeparator;
    rtc001_confh_template result = new rtc001_confh_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[RTC001_Conf.h]*/" + NL + "" + NL + "/*******************************************************************************" + NL + "**                                                                            **" + NL + "** Copyright (C) 2011-2013 Infineon Technologies AG. All rights reserved.     **   " + NL + "**                                                                            **" + NL + "** Infineon Technologies AG (Infineon) is supplying this software for use     ** " + NL + "** with Infineon's microcontrollers.                                          **" + NL + "** This file can be freely distributed within development tools that are      **" + NL + "** supporting such microcontrollers.                                          **" + NL + "**                                                                            **" + NL + "** THIS SOFTWARE IS PROVIDED \"AS IS\". NO WARRANTIES, WHETHER EXPRESS,IMPLIED  **" + NL + "** OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF         **" + NL + "** MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS         **" + NL + "** SOFTWARE. INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR          ** " + NL + "** SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.  **" + NL + "**                                                                            **                                        " + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC4000/XMC1000 Series                                 **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** NOTE     : Any Changes made to this file will be overwritten during Code   **" + NL + "**            Generation                                                      **" + NL + "**                                                                            **" + NL + "**                                                                            **    " + NL + "*******************************************************************************/" + NL + "" + NL + "" + NL + "/*******************************************************************************" + NL + "** Version History:                                                           **" + NL + "********************************************************************************" + NL + "** v1.0.22    23 Feb 2013  JP: Ported for XMC4400 and XMC1000 Devices.        **" + NL + "**                            Conditional consumption of NVIC_SCU,NVIC_SR101  **" + NL + "**                            Apps based on the device.                       ** " + NL + "**                                                                            **" + NL + "** v1.0.24    20 Mar 2013  JP: Mirror register status check                   **" + NL + "**                            statements under the functions RTC001_Disable(),**" + NL + "**                            RTC001_ConfigAlarm() and RTC001_Clock_SetTime() ** " + NL + "**                            are maintained uniquely for both XMC4000 and    ** " + NL + "**                            XMC1000 devices. DBG002 related bugs(ID22796)   ** " + NL + "**                            are fixed. Revision History added.              **" + NL + "**                                                                            **" + NL + "** v1.0.26    23 Apr 2013  JP: In Function RTC001_ldatevalid(uint16_t m,      **" + NL + "**                            uint16_t d,uint16_t y), \"Day (d) == 0\" is       ** " + NL + "**                            checked.                                        **" + NL + "**                                                                            **" + NL + "** v1.0.28    09 Sep 2013  JP: XMC1000 Five new SW IDs are supported.         **" + NL + "**                            RTC001 --> wrong handling of Hibernate register **  " + NL + "**                            is fixed.                                       **" + NL + "**                                                                            **" + NL + "** v1.0.30    16 Oct 2013  JP: Code has been updated in compliant to          **" + NL + "**                            coding guidelines.                              **                                                                           " + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "*******************************************************************************/ ";
  protected final String TEXT_2 = NL + NL + "/**" + NL + " *" + NL + " * @file RTC001_Conf.h" + NL + " *" + NL + " * " + NL + " *" + NL + " * @brief Real Time Clock App implementation configuration file." + NL + " *        This file contains other dependent fle inclusions and " + NL + " *        dummy definitions of debug log macros. " + NL + " *        " + NL + "*/" + NL + "" + NL + "#ifndef _CONF_RTC001_H_" + NL + "#define _CONF_RTC001_H_" + NL + "" + NL + "#ifdef __cplusplus" + NL + "extern \"C\" {" + NL + "#endif" + NL + "/*****************************************************************************" + NL + " ** @Project Includes:                                                      **" + NL + " *****************************************************************************/" + NL;
  protected final String TEXT_3 = NL + "#include \"../../inc/NVIC_SCU001/NVIC_SCU001.h\"";
  protected final String TEXT_4 = "\t ";
  protected final String TEXT_5 = NL + "#include \"../../inc/NVIC_SR101/NVIC_SR101.h\"";
  protected final String TEXT_6 = NL + "\t " + NL + "" + NL + "/*****************************************************************************" + NL + "** Dummy Definitions of Debug Log Macros:                                   **" + NL + "*****************************************************************************/" + NL + "/*These definitions are included here to avoid compilation errors," + NL + " since the DBG002 app is not part of the project. All the macros are defined" + NL + " as empty*/ " + NL + "#ifndef _DBG002_H_" + NL + "" + NL + "#define DBG002_RegisterCallBack(A,B,C)" + NL + "#define DBG002_I(e) " + NL + "#define DBG002_IG(e,g) " + NL + "#define DBG002_IH(e,h) " + NL + "#define DBG002_IP(e,p) " + NL + "#define DBG002_IGH(e,g,h) " + NL + "#define DBG002_IGP(e,g,p) " + NL + "#define DBG002_IHP(e,h,p) " + NL + "#define DBG002_IGHP(e,g,h,p) " + NL + "#define DBG002_N(e) " + NL + "#define DBG002_NG(e,g) " + NL + "#define DBG002_NH(e,h) " + NL + "#define DBG002_NP(e,p) " + NL + "#define DBG002_NGH(e,g,h) " + NL + "#define DBG002_NGP(e,g,p) " + NL + "#define DBG002_NHP(e,h,p) " + NL + "#define DBG002_NGHP(e,g,h,p) " + NL + "#define DBG002_ID(e) " + NL + "#define DBG002_IS(e) " + NL + "#define DBG002_ISG(e,g) " + NL + "#define DBG002_SAFETY_CRITICAL(groupid,messageid,length,value)" + NL + "#define DBG002_CRITICAL(groupid,messageid,length,value)" + NL + "#define DBG002_ERROR(groupid,messageid,length,value)" + NL + "#define DBG002_WARNING(groupid,messageid,length,value)" + NL + "#define DBG002_INFO(groupid,messageid,length,value)" + NL + "#define DBG002_TRACE(groupid,messageid,length,value)" + NL + "#define DBG002_FUNCTION_ENTRY(GID, Status) " + NL + "#define DBG002_FUNCTION_EXIT(GID, Status) " + NL + "" + NL + "#endif/* End of defintions of dummy Debug Log macros*/                  " + NL + "" + NL + "/* Define used for Alarm Interrupt Enabled */";
  protected final String TEXT_7 = NL + "#define RTC001_ALARMINTERRUPT" + NL;
  protected final String TEXT_8 = " " + NL + "/* Define used for Timer event trigger to SCU interrupt Enabled */";
  protected final String TEXT_9 = NL + "#define RTC001_EVENTTRIGTOSCU" + NL;
  protected final String TEXT_10 = NL + NL + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif" + NL + "" + NL + "\t" + NL + "#endif  /* ifndef _CONF_RTC001_H_ */" + NL + "/*CODE_BLOCK_END*/ ";
  protected final String TEXT_11 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/RTC001/0";
     int Is4Device = -1; 
     int Is1Device = -1; 
     Is4Device = ((app.getSoftwareId().substring(0,1).compareTo("4")==0)?1:0); 
     Is1Device = ((app.getSoftwareId().substring(0,1).compareTo("1")==0)?1:0); 
    stringBuffer.append(TEXT_2);
     if ((app.getIntegerValue(AppBaseuri + "/RTC001_Eventtrigger_timer/0")==1) || (app.getIntegerValue(AppBaseuri + "/RTC001_Eventtrigger_Alarm/0")==1)){
    if (Is4Device==1){
    stringBuffer.append(TEXT_3);
    }
    stringBuffer.append(TEXT_4);
    if (Is1Device==1){
    stringBuffer.append(TEXT_5);
    }
    }
    stringBuffer.append(TEXT_6);
     if(app.getIntegerValue(AppBaseuri + "/RTC001_erwAlarmIntrptEna/0")==1) {
    stringBuffer.append(TEXT_7);
    }
    stringBuffer.append(TEXT_8);
     if ((app.getIntegerValue(AppBaseuri + "/RTC001_Eventtrigger_timer/0")==1) || (app.getIntegerValue(AppBaseuri + "/RTC001_Eventtrigger_Alarm/0")==1)){
    stringBuffer.append(TEXT_9);
    }
    stringBuffer.append(TEXT_10);
    stringBuffer.append(TEXT_11);
    return stringBuffer.toString();
  }
}
