package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class io004_confh_template
{
  protected static String nl;
  public static synchronized io004_confh_template create(String lineSeparator)
  {
    nl = lineSeparator;
    io004_confh_template result = new io004_confh_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[IO004_Conf.h]*/" + NL + "/*******************************************************************************" + NL + " *" + NL + " * Copyright (C) 2014 Infineon Technologies AG. All rights reserved." + NL + " *" + NL + " * Infineon Technologies AG (Infineon) is supplying this software for use with " + NL + " * Infineon's microcontrollers.  " + NL + " * This file can be freely distributed within development tools that are " + NL + " * supporting such microcontrollers. " + NL + " *" + NL + " * THIS SOFTWARE IS PROVIDED \"AS IS\".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED" + NL + " * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF" + NL + " * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE." + NL + " * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL, " + NL + " * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER." + NL + " *" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC4000/XMC1000 Series                                 **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** MAY BE CHANGED BY USER [yes/no]: Yes                                       **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : Jan 17, 2014                                           **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "/**" + NL + " * @file   IO004_Conf.h" + NL + " *" + NL + " * @brief  Configuration file generated based on UI settings " + NL + " *         of IO004 App" + NL + " *" + NL + " */" + NL + "" + NL + "#ifndef _CONF_IO004_H_" + NL + "#define _CONF_IO004_H_" + NL + "" + NL + "#ifdef __cplusplus" + NL + "extern \"C\" {" + NL + "#endif" + NL + "/******************************************************************************" + NL + "@Defines" + NL + "******************************************************************************/" + NL + "" + NL + "#include <DAVE3.h>" + NL;
  protected final String TEXT_2 = NL;
  protected final String TEXT_3 = NL + "extern const IO004_HandleType IO004_Handle";
  protected final String TEXT_4 = ";" + NL;
  protected final String TEXT_5 = NL + "/* IO004 App instance (no.";
  protected final String TEXT_6 = ") is not mapped to any Port Pad. */";
  protected final String TEXT_7 = NL + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif" + NL + "#endif  // ifndef _CONF_IO004_H_" + NL + "/*CODE_BLOCK_END*/";
  protected final String TEXT_8 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String P = "port/p/"; 
     String AppBaseuri = "app/io004/"; 
     String appInst  = null; 
    stringBuffer.append(TEXT_2);
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/io004/"));
 for (String appIns : appsList ) {
 appInst = appIns.substring(appIns.lastIndexOf("/")+1);
     String pinUri = app.getMappedUri(AppBaseuri + appInst +"/pin"); 
     if ((pinUri != null) && (pinUri.trim() != "")) { 
    stringBuffer.append(TEXT_3);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_4);
     } else { 
    stringBuffer.append(TEXT_5);
    stringBuffer.append( appInst );
    stringBuffer.append(TEXT_6);
     }} 
    stringBuffer.append(TEXT_7);
    stringBuffer.append(TEXT_8);
    return stringBuffer.toString();
  }
}
