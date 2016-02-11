package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class nvic002_confh_template
{
  protected static String nl;
  public static synchronized nvic002_confh_template create(String lineSeparator)
  {
    nl = lineSeparator;
    nvic002_confh_template result = new nvic002_confh_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = "";
  protected final String TEXT_2 = NL + NL + "/*CODE_BLOCK_BEGIN[NVIC002_Conf.h]*/" + NL + "/**************************************************************************//**" + NL + " *" + NL + " * Copyright (C) 2014 Infineon Technologies AG. All rights reserved." + NL + " *" + NL + " * Infineon Technologies AG (Infineon) is supplying this software for use with " + NL + " * Infineon's microcontrollers.  " + NL + " * This file can be freely distributed within development tools that are " + NL + " * supporting such microcontrollers. " + NL + " *" + NL + " * THIS SOFTWARE IS PROVIDED \"AS IS\".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED" + NL + " * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF" + NL + " * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE." + NL + " * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL, " + NL + " * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER." + NL + " *" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC4000/XMC1000 Series   \t\t\t                  **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** MAY BE CHANGED BY USER [yes/no]: Yes                                       **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : Jul 17, 2014                                           **" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "**                       Author(s) Identity                                   **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "** Initials     Name                                                          **" + NL + "** ---------------------------------------------------------------------------**" + NL + "** SNR          App Developer                                                 **" + NL + "*******************************************************************************/" + NL + "" + NL + "/**" + NL + " * @file   NVIC002_Conf.h" + NL + " *" + NL + " * @App    Version NVIC002 <";
  protected final String TEXT_3 = ">" + NL + " *" + NL + " * @brief  Configuration file generated based on UI settings " + NL + " *         of NVIC002 App" + NL + " *" + NL + " */" + NL + "/* Revision History\t" + NL + " * 18  Feb 2013   v1.0.12 " + NL + " * 08  Oct 2013   v1.0.20 Updated as per coding guidelines" + NL + " * 17 Jul 2014   v1.0.28   End of line is corrected" + NL + " */" + NL + "#ifndef _NVIC002_CONF_H_" + NL + "#define _NVIC002_CONF_H_" + NL + "" + NL + "#ifdef __cplusplus" + NL + "extern \"C\" {" + NL + "#endif" + NL + "" + NL + "/****************************************************************************" + NL + "@Defines" + NL + "****************************************************************************/";
  protected final String TEXT_4 = NL + "#define DEBUG_APP ";
  protected final String TEXT_5 = NL + "  ";
  protected final String TEXT_6 = NL + "/* User defined function mapped to IRQ_Hdlr_";
  protected final String TEXT_7 = " */" + NL + "#define ";
  protected final String TEXT_8 = "    IRQ_Hdlr_";
  protected final String TEXT_9 = " " + NL;
  protected final String TEXT_10 = NL + "/* NVIC NODE NOT MAPPED FOR APP INSTANCE ";
  protected final String TEXT_11 = " */";
  protected final String TEXT_12 = NL + NL + "/**" + NL + " * @ingroup NVIC002_constants" + NL + " * @{" + NL + " */" + NL + "#define NVIC002_NUM_INSTANCES ";
  protected final String TEXT_13 = "U" + NL + "/**" + NL + "  * @}" + NL + "  */" + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif" + NL + "" + NL + "#endif  /* ifndef _NVIC002_CONF_H_ */" + NL + "/*CODE_BLOCK_END*/";

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/nvic002/";
     String appInst  = null; 
     String NodeID = null; 
     String MappedUri = null; 
     String UserFunc = null; 
    stringBuffer.append(TEXT_2);
    stringBuffer.append( app.getAppVersion(AppBaseuri));
    stringBuffer.append(TEXT_3);
     String TempApps = null;
   String MyAppName = null;
   ArrayList<String> apps;
   String TempLowerApps = null; 
   boolean DBGApp = false;   
   apps=(ArrayList<String>)(app.getApps());
   for (int k = 0; k < apps.size(); k++) {
   TempApps = apps.get(k);
   MyAppName = TempApps.substring(TempApps.indexOf("/app/") + 5, 
		                          TempApps.lastIndexOf("/"));
   TempLowerApps = MyAppName.toLowerCase();
   if (TempLowerApps.equalsIgnoreCase("dbg002")) {DBGApp = true;}   
  } 
    stringBuffer.append(TEXT_4);
    stringBuffer.append(DBGApp);
    stringBuffer.append(TEXT_5);
     int NumInstances = 0; 
     ArrayList<String> appsList = 
		(ArrayList<String>)(app.getApps("app/nvic002/"));
     for (String appIns : appsList ) {
appInst = appIns.substring(appIns.lastIndexOf("/")+1);
     NumInstances++; 
     MappedUri = app.getMappedUri(AppBaseuri + appInst + "/nvicnode"); 
     if((MappedUri != null) && (MappedUri != "")) { 
     NodeID = MappedUri.substring(MappedUri.lastIndexOf('/')+ 1 );
int Offset = Integer.parseInt(NodeID); 
UserFunc = app.getStringValue(AppBaseuri+appInst+"/NVIC002_srwUserFunction");  
if((UserFunc != null) && (UserFunc != "")) { 
    stringBuffer.append(TEXT_6);
    stringBuffer.append(Offset);
    stringBuffer.append(TEXT_7);
    stringBuffer.append(UserFunc);
    stringBuffer.append(TEXT_8);
    stringBuffer.append(Offset);
    stringBuffer.append(TEXT_9);
     }} 
     else { 
    stringBuffer.append(TEXT_10);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_11);
     }} 
    stringBuffer.append(TEXT_12);
    stringBuffer.append(NumInstances);
    stringBuffer.append(TEXT_13);
    return stringBuffer.toString();
  }
}
