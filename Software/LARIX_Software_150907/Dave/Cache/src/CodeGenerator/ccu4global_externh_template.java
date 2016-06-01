package CodeGenerator;

import java.util.*;
import java.text.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class ccu4global_externh_template
{
  protected static String nl;
  public static synchronized ccu4global_externh_template create(String lineSeparator)
  {
    nl = lineSeparator;
    ccu4global_externh_template result = new ccu4global_externh_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[CCU4Global_Extern.h]*/" + NL + "" + NL + "/*******************************************************************************" + NL + " * @file     CCU4Global_Extern.h" + NL + " * @brief    This file has prototypes & Configuration constants for CCU4Global " + NL + " *           app." + NL + " * @version  V1.0.0" + NL + " * @date     26 Nov 2013" + NL + " *" + NL + " * @note" + NL + " * Copyright (C) 2014 Infineon Technologies AG. All rights reserved." + NL + "" + NL + " *" + NL + " * @par" + NL + " * Infineon Technologies AG (Infineon) is supplying this software for use with " + NL + " * Infineon's microcontrollers." + NL + " *   " + NL + " * This file can be freely distributed within development tools that are " + NL + " * supporting such microcontrollers." + NL + " *  " + NL + " *" + NL + " * @par" + NL + " * THIS SOFTWARE IS PROVIDED \"AS IS\".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED" + NL + " * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF" + NL + " * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE." + NL + " * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL," + NL + " * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER." + NL + " *" + NL + " ******************************************************************************/" + NL + "/**************************** Change history ***********************************" + NL + " * V1.0.0,\t26-Nov-13\t Initial Version" + NL + " * *************************** Change history *********************************/" + NL + "" + NL + "#ifndef _CCU4GLOBAL_EXTERN_H_" + NL + "#define _CCU4GLOBAL_EXTERN_H_" + NL + "" + NL + "#ifdef __cplusplus" + NL + "extern \"C\" {" + NL + "#endif" + NL + "" + NL + "" + NL + "//*****************************************************************************" + NL + "// @Defines" + NL + "//*****************************************************************************";
  protected final String TEXT_2 = NL;
  protected final String TEXT_3 = NL + "/**" + NL + " * @ingroup CCU4Global_datastructures" + NL + " * @{" + NL + " */";
  protected final String TEXT_4 = NL + "extern const CCU4Global_HandleType CCU4Global_Handle";
  protected final String TEXT_5 = ";";
  protected final String TEXT_6 = NL + NL + "extern const CCU4Global_HandleType " + NL + "             * CCU4Global_HandleArray[CCU4GLOBAL_NUM_INSTANCES];" + NL + "" + NL + "/**" + NL + "  * @}" + NL + "  */" + NL + "" + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif" + NL + "#endif  " + NL + "/*CODE_BLOCK_END*/";
  protected final String TEXT_7 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/ccu4global/"; 
     String appInst  = null; 
    stringBuffer.append(TEXT_2);
     ArrayList<String> appsList = 
             (ArrayList<String>)(app.getApps("app/ccu4global/")); 
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
