package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class pwmmp001confh_template
{
  protected static String nl;
  public static synchronized pwmmp001confh_template create(String lineSeparator)
  {
    nl = lineSeparator;
    pwmmp001confh_template result = new pwmmp001confh_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[PWMMP001Conf.h]*/" + NL + "" + NL + "/******************************************************************************" + NL + " *" + NL + " * Copyright (C) 2013 Infineon Technologies AG. All rights reserved." + NL + " *" + NL + " * Infineon Technologies AG (Infineon) is supplying this software for use with" + NL + " * Infineon's microcontrollers." + NL + " * This file can be freely distributed within development tools that are" + NL + " * supporting such microcontrollers." + NL + " *" + NL + " * THIS SOFTWARE IS PROVIDED \"AS IS\".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED" + NL + " * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF" + NL + " * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE." + NL + " * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL," + NL + " * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER." + NL + " *" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC4000/XMC1000 Series                                 **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : DAVE App Developer                                              **" + NL + "**                                                                            **" + NL + "** MAY BE CHANGED BY USER [yes/Yes]: Ys                                       **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : September 24, 2013                                     **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "**                       Author(s) Identity                                   **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "** Initials     Name                                                          **" + NL + "** ---------------------------------------------------------------------------**" + NL + "** KS           DAVE App Developer                                            **" + NL + "*******************************************************************************/" + NL + "" + NL + "/**" + NL + " * @file  PWMMP001_Conf.h" + NL + " *" + NL + " * @brief This file contains App parameter data as per GUI configurations" + NL + " *" + NL + " */" + NL + "/* Revision History" + NL + " * 01 Jan 2013   v1.0.10   taken as base version" + NL + " * 24 Sep 2013   v1.0.14   Added c++ support " + NL + " */" + NL + "#ifndef PWMMP001CONF_H_" + NL + "#define PWMMP001CONF_H_" + NL + "" + NL + "#ifdef __cplusplus" + NL + "extern \"C\" {" + NL + "#endif" + NL + "" + NL + "#include <DAVE3.h>" + NL;
  protected final String TEXT_2 = NL;
  protected final String TEXT_3 = NL;
  protected final String TEXT_4 = NL + NL + "extern const PWMMP001_HandleType PWMMP001_Handle";
  protected final String TEXT_5 = ";";
  protected final String TEXT_6 = NL + NL + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif" + NL + "" + NL + "#endif /* PWMMP001CONF_H_ */" + NL + "/**" + NL + " * @}" + NL + " */" + NL + "/*CODE_BLOCK_END*/";
  protected final String TEXT_7 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/pwmmp001/"; 
    stringBuffer.append(TEXT_2);
     String appInst  = null; 
    stringBuffer.append(TEXT_3);
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/pwmmp001/"));
for (String appIns : appsList ) {
		appInst = appIns.substring(appIns.lastIndexOf("/")+1);
    stringBuffer.append(TEXT_4);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_5);
    }
    stringBuffer.append(TEXT_6);
    stringBuffer.append(TEXT_7);
    return stringBuffer.toString();
  }
}
