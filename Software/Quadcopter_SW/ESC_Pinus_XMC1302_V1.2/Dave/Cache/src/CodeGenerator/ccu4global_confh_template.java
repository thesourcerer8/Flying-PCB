package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class ccu4global_confh_template
{
  protected static String nl;
  public static synchronized ccu4global_confh_template create(String lineSeparator)
  {
    nl = lineSeparator;
    ccu4global_confh_template result = new ccu4global_confh_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = "";
  protected final String TEXT_2 = NL + NL + "/*CODE_BLOCK_BEGIN[CCU4Global_Conf.h]*/" + NL + "" + NL + "/******************************************************************************" + NL + " *" + NL + " * Copyright (C) 2014 Infineon Technologies AG. All rights reserved." + NL + " *" + NL + " * Infineon Technologies AG (Infineon) is supplying this software for use with" + NL + " * Infineon's microcontrollers." + NL + " * This file can be freely distributed within development tools that are" + NL + " * supporting such microcontrollers." + NL + " *" + NL + " * THIS SOFTWARE IS PROVIDED \"AS IS\".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED" + NL + " * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF" + NL + " * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE." + NL + " * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL," + NL + " * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER." + NL + " *" + NL + "********************************************************************************" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC4000/XMC1000 Series                                 **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** MAY BE CHANGED BY USER [yes/Yes]: Yes                                      **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : Nov 26, 2013                                           **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "**                       Author(s) Identity                                   **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "** Initials     Name                                                          **" + NL + "** ---------------------------------------------------------------------------**" + NL + "** SNR          App Developer                                                 **" + NL + "*******************************************************************************/" + NL + "" + NL + "/**" + NL + " * @file  CCU4Global_Conf.h" + NL + " *" + NL + " * @brief This file contains App parameter data as per GUI configurations" + NL + " *" + NL + " */" + NL + "/* Revision History" + NL + " * 22 March    2012   v1.0.0    Initial version" + NL + " * 26 Nov      2013   v1.0.18   Added number of instances macro" + NL + " *" + NL + " */" + NL + "#ifndef CCU4GLOBALCONF_H_" + NL + "#define CCU4GLOBALCONF_H_" + NL + "" + NL + "#ifdef __cplusplus" + NL + "extern \"C\" {" + NL + "#endif" + NL;
  protected final String TEXT_3 = " ";
  protected final String TEXT_4 = NL + NL + "/**" + NL + " * @ingroup CCU4Global_constants" + NL + " * @{" + NL + " */" + NL + "#define CCU4GLOBAL_NUM_INSTANCES ";
  protected final String TEXT_5 = "U" + NL + "/**" + NL + "  * @}" + NL + "  */" + NL + "" + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif" + NL + "#endif /* CCU4GlobalCONF_H_ */" + NL + "" + NL + "/**" + NL + " * @}" + NL + " */" + NL + " " + NL + "/*CODE_BLOCK_END*/";
  protected final String TEXT_6 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/ccu4global/"; 
     String appInst  = null; 
     int NumInstances = 0; 
    stringBuffer.append(TEXT_2);
     ArrayList<String> appsList = (ArrayList<String>)
                                (app.getApps("app/ccu4global/"));
     for (String appIns : appsList ) { 
     appInst = appIns.substring(appIns.lastIndexOf("/")+1);
     NumInstances++; 
    stringBuffer.append(TEXT_3);
    }
    stringBuffer.append(TEXT_4);
    stringBuffer.append(NumInstances);
    stringBuffer.append(TEXT_5);
    stringBuffer.append(TEXT_6);
    return stringBuffer.toString();
  }
}
