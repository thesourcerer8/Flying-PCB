package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class libsh_template
{
  protected static String nl;
  public static synchronized libsh_template create(String lineSeparator)
  {
    nl = lineSeparator;
    libsh_template result = new libsh_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = "/******************************************************************************" + NL + " *" + NL + " * Copyright (C) 2012 Infineon Technologies AG. All rights reserved." + NL + " *" + NL + " * Infineon Technologies AG (Infineon) is supplying this software for use with" + NL + " * Infineon's microcontrollers." + NL + " * This file can be freely distributed within development tools that are" + NL + " * supporting such microcontrollers." + NL + " *" + NL + " * THIS SOFTWARE IS PROVIDED \"AS IS\".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED" + NL + " * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF" + NL + " * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE." + NL + " * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL," + NL + " * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER." + NL + " *" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon <Microcontroller name, step>                           **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** MAY BE CHANGED BY USER [yes/Yes]: Ys                                       **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : July 05, 2012                                           **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "**                       Author(s) Identity                                   **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "** Initials     Name                                                          **" + NL + "** ---------------------------------------------------------------------------**" + NL + "** KS           App Developer                                                 **" + NL + "*******************************************************************************/" + NL + "" + NL + "/**" + NL + " * @file  LIBS.h" + NL + " *" + NL + " * @brief This file contains all public data structures,enums and function" + NL + " *        prototypes for SinglePhPWM with dead time APP." + NL + " *" + NL + " */" + NL + "/* Revision History" + NL + " *  1 Dec 2012   v1.0.4   taken as base version" + NL + " * 13 Dec 2012   v1.0.6   app ported to xmc4400 and xmc4200 devices " + NL + " *  1 Feb 2013   v1.0.8   changed as jet file to make it compatible with xmc1xxx devices" + NL + " * 05 Jul 2013   v1.0.16  MOTORLIB.h included" + NL + " */" + NL + "#ifndef LIBS_H_" + NL + "#define LIBS_H_" + NL + "" + NL + "#ifdef __cplusplus" + NL + "extern \"C\" {" + NL + "#endif" + NL + "" + NL + "/*******************************************************************************" + NL + "**                      Include Files                                         **" + NL + "*******************************************************************************/";
  protected final String TEXT_2 = NL;
  protected final String TEXT_3 = NL + "#include \"CCU8PWMLIB.h\"" + NL + "" + NL + "#include \"MOTORLIB.h\"";
  protected final String TEXT_4 = NL + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif" + NL + "" + NL + "#endif /* CCU8PWMLIB_H_ */" + NL;
  protected final String TEXT_5 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     int Is11Device = -1; 
     int Is12Device = -1; 
     Is11Device = ((app.getSoftwareId().substring(0,2).compareTo("11")==0)?1:0); 
     Is12Device = ((app.getSoftwareId().substring(0,2).compareTo("12")==0)?1:0); 
    stringBuffer.append(TEXT_2);
     if(!((Is11Device == 1) | (Is12Device == 1))) 
{ 
    stringBuffer.append(TEXT_3);
    } 
    stringBuffer.append(TEXT_4);
    stringBuffer.append(TEXT_5);
    return stringBuffer.toString();
  }
}
