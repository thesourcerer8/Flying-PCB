package CodeGenerator;

import java.util.*;
import java.text.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class eru002_externh_template
{
  protected static String nl;
  public static synchronized eru002_externh_template create(String lineSeparator)
  {
    nl = lineSeparator;
    eru002_externh_template result = new eru002_externh_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[ERU002_Extern.h]*/" + NL + "" + NL + "/*******************************************************************************" + NL + " * @file     ERU002_Extern.h" + NL + " * @brief    This file has prototypes and Configuration constants for ERU002 " + NL + " *           app." + NL + " * @version  V1.0.0" + NL + " * @date     13 Nov 2013" + NL + " *" + NL + " * @note" + NL + " * Copyright (C) 2013 Infineon Technologies AG. All rights reserved." + NL + "" + NL + " *" + NL + " * @par" + NL + " * Infineon Technologies AG (Infineon) is supplying this software for use with " + NL + " * Infineon's microcontrollers." + NL + " *   " + NL + " * This file can be freely distributed within development tools that are " + NL + " * supporting such microcontrollers." + NL + " *  " + NL + " *" + NL + " * @par" + NL + " * THIS SOFTWARE IS PROVIDED \"AS IS\".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED" + NL + " * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF" + NL + " * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE." + NL + " * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL," + NL + " * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER." + NL + " *" + NL + " ******************************************************************************/" + NL + "/**************************** Change history ***********************************" + NL + " * V1.0.0,\t13-Nov-13\t Initial Version" + NL + " * *************************** Change history *********************************/" + NL + "" + NL + "#ifndef _ERU002_EXTERN_H_" + NL + "#define _ERU002_EXTERN_H_" + NL + "" + NL + "#ifdef __cplusplus" + NL + "extern \"C\" {" + NL + "#endif" + NL + "" + NL + "" + NL + "//*****************************************************************************" + NL + "// @Defines" + NL + "//*****************************************************************************";
  protected final String TEXT_2 = NL;
  protected final String TEXT_3 = "\t";
  protected final String TEXT_4 = NL + NL + "/**" + NL + " * @ingroup ERU002_datastructures" + NL + " * @{" + NL + " */";
  protected final String TEXT_5 = NL + "extern const ERU002_HandleType ERU002_Handle";
  protected final String TEXT_6 = ";";
  protected final String TEXT_7 = NL + NL + "extern const ERU002_HandleType * ERU002_HandleArray[";
  protected final String TEXT_8 = "];" + NL + "" + NL + "/**" + NL + "  * @}" + NL + "  */" + NL + "" + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif" + NL + "#endif  " + NL + "/*CODE_BLOCK_END*/";
  protected final String TEXT_9 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/eru002/"; 
     String appInst  = null; 
     int NumInstances  = 0; 
    stringBuffer.append(TEXT_2);
     ArrayList<String> appsList = 
             (ArrayList<String>)(app.getApps("app/eru002/")); 
     for (String appIns : appsList ) {
   appInst = appIns.substring(appIns.lastIndexOf("/")+1);
    stringBuffer.append(TEXT_3);
     NumInstances++; 
    }
    stringBuffer.append(TEXT_4);
    for (String appIns : appsList ) {
 appInst = appIns.substring(appIns.lastIndexOf("/")+1);
    stringBuffer.append(TEXT_5);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_6);
    }
    stringBuffer.append(TEXT_7);
    stringBuffer.append(NumInstances);
    stringBuffer.append(TEXT_8);
    stringBuffer.append(TEXT_9);
    return stringBuffer.toString();
  }
}
