package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class io002_externh_template
{
  protected static String nl;
  public static synchronized io002_externh_template create(String lineSeparator)
  {
    nl = lineSeparator;
    io002_externh_template result = new io002_externh_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[IO002_Extern.h]*/" + NL + "/**************************************************************************//**" + NL + " *" + NL + " * Copyright (C) 2013 Infineon Technologies AG. All rights reserved." + NL + " *" + NL + " * Infineon Technologies AG (Infineon) is supplying this software for use with " + NL + " * Infineon's microcontrollers.  " + NL + " * This file can be freely distributed within development tools that are " + NL + " * supporting such microcontrollers. " + NL + " *" + NL + " * THIS SOFTWARE IS PROVIDED \"AS IS\".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED" + NL + " * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF" + NL + " * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE." + NL + " * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL, " + NL + " * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER." + NL + " *" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC4000/XMC1000 Series                                 **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** MAY BE CHANGED BY USER [yes/no]: Yes                                       **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : Oct 10, 2013                                           **" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "/**" + NL + " * @file   IO002_Extern.h" + NL + " *" + NL + " * @brief  This file has prototypes and Configuration constants for IO002 app." + NL + " */" + NL + "/* Revision History " + NL + " * 9 Oct 2013 v1.0.23  Added the extern declarations for each instances of IO002" + NL + " * app." + NL + " *" + NL + " */" + NL + "" + NL + "#ifndef _IO002_EXTERN_H_" + NL + "#define _IO002_EXTERN_H_" + NL + "" + NL + "/******************************************************************************" + NL + "@Defines" + NL + "******************************************************************************/" + NL + "#ifdef __cplusplus" + NL + "extern \"C\" {" + NL + "#endif" + NL;
  protected final String TEXT_2 = NL;
  protected final String TEXT_3 = NL + "/** Handle for IO002 instance ";
  protected final String TEXT_4 = "*/" + NL + "extern const IO002_HandleType IO002_Handle";
  protected final String TEXT_5 = ";" + NL;
  protected final String TEXT_6 = NL + "/* IO002 App instance (no.";
  protected final String TEXT_7 = ") is not mapped to any Port Pad. */";
  protected final String TEXT_8 = NL + "/**Pointer to array of IO002_HandleType*/" + NL + "extern const IO002_HandleType * IO002_HandleArr[IO002_NUM_INSTANCES];" + NL + "/**" + NL + "  * @}" + NL + "  */" + NL + "" + NL + "" + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif" + NL + "#endif  /* ifndef _IO002_EXTERN_H_ */" + NL + "/*CODE_BLOCK_END*/";
  protected final String TEXT_9 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String P = "port/p/"; 
     String AppBaseuri = "app/io002/"; 
     String appInst  = null; 
     int instance = 0; 
    stringBuffer.append(TEXT_2);
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/io002/"));
/**
 * @ingroup IO002_datastructures
 * @{
 */
 for (String appIns : appsList ) {
 appInst = appIns.substring(appIns.lastIndexOf("/")+1);
     instance++; 
     String pinUri = app.getMappedUri(AppBaseuri + appInst +"/pin"); 
     if ((pinUri != null) && (pinUri.trim() != "")) { 
    stringBuffer.append(TEXT_3);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_4);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_5);
     } else { 
    stringBuffer.append(TEXT_6);
    stringBuffer.append( appInst );
    stringBuffer.append(TEXT_7);
     }} 
    stringBuffer.append(TEXT_8);
    stringBuffer.append(TEXT_9);
    return stringBuffer.toString();
  }
}
