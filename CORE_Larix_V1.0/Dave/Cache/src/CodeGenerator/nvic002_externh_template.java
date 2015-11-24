package CodeGenerator;

import java.util.*;
import java.text.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class nvic002_externh_template
{
  protected static String nl;
  public static synchronized nvic002_externh_template create(String lineSeparator)
  {
    nl = lineSeparator;
    nvic002_externh_template result = new nvic002_externh_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[NVIC002_Extern.h]*/";
  protected final String TEXT_2 = NL + "/*******************************************************************************" + NL + " *" + NL + " * Copyright (C) 2014 Infineon Technologies AG. All rights reserved." + NL + " *" + NL + " * Infineon Technologies AG (Infineon) is supplying this software for use with " + NL + " * Infineon's microcontrollers.  " + NL + " * This file can be freely distributed within development tools that are " + NL + " * supporting such microcontrollers. " + NL + " *" + NL + " * THIS SOFTWARE IS PROVIDED \"AS IS\".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED" + NL + " * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF" + NL + " * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE." + NL + " * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL, " + NL + " * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER." + NL + " *" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC4000/XMC1000 Series   \t\t\t                  **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** MAY BE CHANGED BY USER [yes/no]: Yes                                       **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : Jul 17, 2014                                           **" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "**                       Author(s) Identity                                   **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "** Initials     Name                                                          **" + NL + "** ---------------------------------------------------------------------------**" + NL + "** SNR          App Developer                                                 **" + NL + "*******************************************************************************/" + NL + "" + NL + "/**" + NL + " * @file   NVIC002_Extern.h" + NL + " *" + NL + " * @App    Version NVIC002 <";
  protected final String TEXT_3 = ">" + NL + " *" + NL + " * @brief  This file has prototypes and configuration constants for NVIC002 ap." + NL + " *" + NL + " */" + NL + "/* Revision History\t" + NL + " * 08  Oct 2013  v1.0.20   Initial version" + NL + " * 17  Jul 2014  v1.0.28   End of line is corrected" + NL + " */" + NL + "" + NL + "#ifndef _NVIC002_EXTERN_H_" + NL + "#define _NVIC002_EXTERN_H_" + NL + "" + NL + "#ifdef __cplusplus" + NL + "extern \"C\" {" + NL + "#endif" + NL + "" + NL + "" + NL + "/******************************************************************************" + NL + " @Defines" + NL + "******************************************************************************/";
  protected final String TEXT_4 = NL;
  protected final String TEXT_5 = "\t";
  protected final String TEXT_6 = NL + NL + "/**" + NL + " * @ingroup NVIC002_datastructures" + NL + " * @{" + NL + " */";
  protected final String TEXT_7 = NL + "extern const NVIC002_HandleType NVIC002_Handle";
  protected final String TEXT_8 = ";";
  protected final String TEXT_9 = NL + NL + "extern const NVIC002_HandleType * NVIC002_HandleArray[";
  protected final String TEXT_10 = "];" + NL + "" + NL + "/**" + NL + "  * @}" + NL + "  */" + NL + "" + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif" + NL + "#endif  " + NL + "/*CODE_BLOCK_END*/";
  protected final String TEXT_11 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/nvic002/"; 
    stringBuffer.append(TEXT_2);
    stringBuffer.append( app.getAppVersion(AppBaseuri));
    stringBuffer.append(TEXT_3);
     String appInst  = null; 
     int NumInstances  = 0; 
    stringBuffer.append(TEXT_4);
     ArrayList<String> appsList = 
             (ArrayList<String>)(app.getApps("app/nvic002/")); 
     for (String appIns : appsList ) {
   appInst = appIns.substring(appIns.lastIndexOf("/")+1);
    stringBuffer.append(TEXT_5);
     NumInstances++; 
    }
    stringBuffer.append(TEXT_6);
    for (String appIns : appsList ) {
 appInst = appIns.substring(appIns.lastIndexOf("/")+1);
    stringBuffer.append(TEXT_7);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_8);
    }
    stringBuffer.append(TEXT_9);
    stringBuffer.append(NumInstances);
    stringBuffer.append(TEXT_10);
    stringBuffer.append(TEXT_11);
    return stringBuffer.toString();
  }
}
