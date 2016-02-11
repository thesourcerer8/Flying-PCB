package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class adcglob001_confh_template
{
  protected static String nl;
  public static synchronized adcglob001_confh_template create(String lineSeparator)
  {
    nl = lineSeparator;
    adcglob001_confh_template result = new adcglob001_confh_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = "/*CODE_BLOCK_BEGIN[ADCGLOB001CONF.h]*/" + NL + "" + NL + "/******************************************************************************" + NL + " *" + NL + " * Copyright (C) 2013 Infineon Technologies AG. All rights reserved." + NL + " *" + NL + " * Infineon Technologies AG (Infineon) is supplying this software for use with" + NL + " * Infineon's microcontrollers." + NL + " * This file can be freely distributed within development tools that are" + NL + " * supporting such microcontrollers." + NL + " *" + NL + " * THIS SOFTWARE IS PROVIDED \"AS IS\".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED" + NL + " * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF" + NL + " * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE." + NL + " * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL," + NL + " * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER." + NL + " *" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC4000/XMC1000 Series                                 **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** MAY BE CHANGED BY USER [yes/no]: Yes                                       **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : Nov 14, 2013                                           **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "**                       Author(s) Identity                                   **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "** Initials     Name                                                          **" + NL + "** ---------------------------------------------------------------------------**" + NL + "**PrashanA           App Developer                                            **" + NL + "*******************************************************************************/" + NL + "" + NL + "/**" + NL + " * @file  ADCGLOB001CONF.h" + NL + " *" + NL + " * @brief This file contains App parameter data as per GUI configurations" + NL + " *" + NL + " * Change History:" + NL + " * Date       version       Details" + NL + " * 12-Dec-2012   1.0.5    Initial code added for XMC1000" + NL + " * 18-Jan-2013   1.0.6    Merging with XMC1000 done" + NL + " * 24-Apr-2013   1.0.12   Ported to XMC4500 step AB and" + NL + " *                        Source Result selection Feature added" + NL + " * 10-Jun-2013   1.0.14   1. Supported for XMC1100 device,  " + NL + " *                        2. Comment in header section - the Device series name is" + NL + " *                           made as XMC1000" + NL + " * 27-Jun-2013   1.0.16   Global limits made unavailable for adc004 app" + NL + " * 29-Aug-2013   1.0.18   XMC1200/XMC1300 New Sofware IDS added." + NL + " *                        Unused code removed " + NL + " * 31-Oct-2013   1.0.20   1. The macro name ADCGLOB001_DBG002_FUNCTION_ENTRY is " + NL + " *                        corrected as ADCGLOB001_FUNCTION_ENTRY " + NL + " *                        2. Analog Clock divider value minimum 1 was generated" + NL + " *                        and now it is made as 0 for XMC1000 devices." + NL + " * 14-Nov-2013   1.0.22   CLK001_Init() for XMC4000 devices CLK002_Init() for " + NL + " *                        XMC1000 devices is removed in ADCGLOB001_Init() " + NL + " *                        function, since this CLK00x_Init() function is called" + NL + " *                        at the beginning  of the DAVE_Init() function. " + NL + " */" + NL + "#ifndef ADCGLOB001CONF_H_" + NL + "#define ADCGLOB001CONF_H_" + NL + "" + NL + "#ifdef __cplusplus" + NL + "extern \"C\" {" + NL + "#endif" + NL + "" + NL + "#include <DAVE3.h>" + NL;
  protected final String TEXT_2 = NL;
  protected final String TEXT_3 = NL;
  protected final String TEXT_4 = NL + NL + "extern const ADCGLOB001_HandleType ADCGLOB001_Handle";
  protected final String TEXT_5 = ";";
  protected final String TEXT_6 = NL + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif" + NL + "  " + NL + "#endif /* ADCGLOB001CONF_H_ */" + NL + "" + NL + "/**" + NL + " * @}" + NL + " */" + NL + " " + NL + "/*CODE_BLOCK_END*/";
  protected final String TEXT_7 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/adcglob001/"; 
    stringBuffer.append(TEXT_2);
     String appInst  = null; 
    stringBuffer.append(TEXT_3);
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/adcglob001/"));
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
