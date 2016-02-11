package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class usbld001_hw_privateh_template
{
  protected static String nl;
  public static synchronized usbld001_hw_privateh_template create(String lineSeparator)
  {
    nl = lineSeparator;
    usbld001_hw_privateh_template result = new usbld001_hw_privateh_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/**************************************************************************//**" + NL + " *" + NL + " * Copyright (C) 2013 Infineon Technologies AG. All rights reserved." + NL + " *" + NL + " * Infineon Technologies AG (Infineon) is supplying this software for use with" + NL + " * Infineon's microcontrollers." + NL + " * This file can be freely distributed within development tools that are" + NL + " * supporting such microcontrollers." + NL + " *" + NL + " * THIS SOFTWARE IS PROVIDED \"AS IS\".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED" + NL + " * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF" + NL + " * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE." + NL + " * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL," + NL + " * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER." + NL + " *" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon <Microcontroller name, step>                           **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : February 11, 2013                                      **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "" + NL + "/**" + NL + " * @file  USBLD001_HW_Private.h" + NL + " *" + NL + " * @brief This file contains macros related to Controller specific parameters" + NL + " *        " + NL + " *" + NL + " */" + NL;
  protected final String TEXT_2 = NL;
  protected final String TEXT_3 = NL + NL + "#ifndef _USBLD001_HW_PRIVATE_H_" + NL + "#define _USBLD001_HW_PRIVATE_H_" + NL + "#ifdef __cplusplus" + NL + "extern \"C\"{" + NL + "#endif" + NL + "" + NL + "" + NL + "#ifndef  __TARGET_DEVICE__" + NL + "" + NL + "#ifndef XMC45" + NL + "#define XMC45 45" + NL + "#endif" + NL + "#ifndef XMC44" + NL + "#define XMC44 44" + NL + "#endif" + NL + "#ifndef XMC42" + NL + "#define XMC42 42" + NL + "#endif" + NL;
  protected final String TEXT_4 = NL + "#define __TARGET_DEVICE__ XMC45";
  protected final String TEXT_5 = NL + "#define __TARGET_DEVICE__ XMC44";
  protected final String TEXT_6 = " " + NL + "#define __TARGET_DEVICE__ XMC42";
  protected final String TEXT_7 = NL + NL + "#endif" + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif" + NL + "#endif ";
  protected final String TEXT_8 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     int Is44Device = -1; 
     int Is42Device = -1; 
     int Is45Device = -1; 
    stringBuffer.append(TEXT_2);
     Is44Device = ((app.getSoftwareId().substring(0,2).compareTo("44")==0)?1:0); 
     Is42Device = ((app.getSoftwareId().substring(0,2).compareTo("42")==0)?1:0); 
     Is45Device = ((app.getSoftwareId().substring(0,2).compareTo("45")==0)?1:0); 
    stringBuffer.append(TEXT_3);
    if (Is45Device==1){
    stringBuffer.append(TEXT_4);
    }else if (Is44Device==1){
    stringBuffer.append(TEXT_5);
    }else{
    stringBuffer.append(TEXT_6);
    }
    stringBuffer.append(TEXT_7);
    stringBuffer.append(TEXT_8);
    return stringBuffer.toString();
  }
}
