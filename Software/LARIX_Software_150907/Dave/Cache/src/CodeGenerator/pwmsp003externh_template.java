package CodeGenerator;

import java.util.*;
import java.text.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class pwmsp003externh_template
{
  protected static String nl;
  public static synchronized pwmsp003externh_template create(String lineSeparator)
  {
    nl = lineSeparator;
    pwmsp003externh_template result = new pwmsp003externh_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[pwmsp003.h]*/" + NL + "" + NL + "/*******************************************************************************" + NL + "**\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t  **" + NL + "** Copyright (C) 2013 Infineon Technologies AG. All rights reserved.          **" + NL + "**                                                                            **" + NL + "** Infineon Technologies AG (Infineon) is supplying this software for use     **" + NL + "** with Infineon's microcontrollers.\t\t\t\t\t\t\t\t\t      **" + NL + "** This file can be freely distributed within development tools that are      **" + NL + "** supporting such microcontrollers.                                          **" + NL + "**                                                                            **" + NL + "** THIS SOFTWARE IS PROVIDED \"AS IS\".  NO WARRANTIES, WHETHER EXPRESS,        **" + NL + "** IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES    **" + NL + "** OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS      **" + NL + "** SOFTWARE. INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, **" + NL + "** INCIDENTAL, OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.           **" + NL + "**\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t  **     " + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC4000/XMC1000 Series                                 **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** NOTE     : Any changes made to this file will be overwritten during Code   **" + NL + "**            generation                                                      **" + NL + "**                                                                            **" + NL + "********************************************************************************" + NL + "** VERSION HISTORY:" + NL + "********************************************************************************" + NL + "** v1.0.0, 26 Nov 2013,  SSAM: Initial version" + NL + "*******************************************************************************/" + NL + "" + NL + "/**" + NL + " * @file  PWMSP003_Extern.h" + NL + " * @brief Provides extern declarations of the app configuration handles." + NL + " */" + NL + " ";
  protected final String TEXT_2 = NL + "#ifndef PWMSP003_EXTERN_H_" + NL + "#define PWMSP003_EXTERN_H_" + NL + "" + NL + "#ifdef __cplusplus" + NL + "extern \"C\" {" + NL + "#endif" + NL + " " + NL + "/*******************************************************************************" + NL + "** INCLUDE FILES:" + NL + "*******************************************************************************/" + NL + "" + NL + "  " + NL + "/*******************************************************************************" + NL + "** GLOBAL VARIABLE DEFINITIONS: " + NL + "*******************************************************************************/" + NL + "/* Extend the scope of variable to other files */   ";
  protected final String TEXT_3 = NL;
  protected final String TEXT_4 = NL + "extern const PWMSP003_HandleType PWMSP003_Handle";
  protected final String TEXT_5 = ";";
  protected final String TEXT_6 = NL + NL + "extern const PWMSP003_HandleType * PWMSP003_HandleArr[PWMSP003_NUM_INSTANCES];" + NL + "/* Support for C++ codebase */" + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif" + NL + "" + NL + "" + NL + "#endif /* PWMSP003_EXTERN_H_ */" + NL + "" + NL + "/*CODE_BLOCK_END*/";
  protected final String TEXT_7 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/pwmsp003/"; 
     String appInst  = null; 
     int instance  = 0; 
    stringBuffer.append(TEXT_2);
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/pwmsp003/")); 
     for (String appIns : appsList ) {
   appInst = appIns.substring(appIns.lastIndexOf("/")+1);
     instance++; 
    }
    stringBuffer.append(TEXT_3);
    for (String appIns : appsList ) {
 appInst = appIns.substring(appIns.lastIndexOf("/")+1);
    stringBuffer.append(TEXT_4);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_5);
    }
    stringBuffer.append(TEXT_6);
    stringBuffer.append(TEXT_7);
    return stringBuffer.toString();
  }
}
