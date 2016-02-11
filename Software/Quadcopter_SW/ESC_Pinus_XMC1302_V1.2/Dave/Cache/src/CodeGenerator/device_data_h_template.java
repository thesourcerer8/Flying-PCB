package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class device_data_h_template
{
  protected static String nl;
  public static synchronized device_data_h_template create(String lineSeparator)
  {
    nl = lineSeparator;
    device_data_h_template result = new device_data_h_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = "/**************************************************************************//**" + NL + " *" + NL + " * Copyright (C) 2011 Infineon Technologies AG. All rights reserved." + NL + " *" + NL + " * Infineon Technologies AG (Infineon) is supplying this software for use with" + NL + " * Infineon's microcontrollers." + NL + " * This file can be freely distributed within development tools that are" + NL + " * supporting such microcontrollers." + NL + " *" + NL + " * THIS SOFTWARE IS PROVIDED \"AS IS\".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED" + NL + " * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF" + NL + " * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE." + NL + " * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL," + NL + " * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER." + NL + " *" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon <Microcontroller name, step>                           **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : Jan  22, 2014                                       **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "" + NL + "/**" + NL + " * @file  Device_Data.h" + NL + " *" + NL + " * @brief This file contains clock definition " + NL + " *        prototypes." + NL + " * 22 Jan 2014 v1.0.40 Initial version." + NL + " *" + NL + " */" + NL + "" + NL + "#ifndef _DEVICE_DATA_H_" + NL + "#define _DEVICE_DATA_H_" + NL + "" + NL + "#ifdef __cplusplus" + NL + "extern \"C\" {" + NL + "#endif" + NL;
  protected final String TEXT_2 = NL + "#define CLKVAL1_SSW 0x80000000 " + NL + "#define CLKVAL2_SSW 0x80000000 " + NL;
  protected final String TEXT_3 = "  " + NL + "#include \"../../inc/CLK002/CLKVAL_SSW.h\" ";
  protected final String TEXT_4 = " " + NL + "" + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif" + NL + "" + NL + "#endif  // ifndef _DEVICE_DATA_H_";
  protected final String TEXT_5 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
     String TempApps = null;
   String MyAppName = null;
   ArrayList<String> apps;
   String TempLowerApps = null; 
   boolean CLKApp = false;
   apps=(ArrayList<String>)(app.getApps());
  	 for (int k = 0; k < apps.size(); k++) {
		 TempApps = apps.get(k);
		 MyAppName = TempApps.substring(TempApps.indexOf("/app/") + 5, TempApps.lastIndexOf("/"));
		 TempLowerApps = MyAppName.toLowerCase();
		 if (TempLowerApps.equalsIgnoreCase("clk002")) {CLKApp = true;}
  } 
    stringBuffer.append(TEXT_1);
     if (!CLKApp) { 
    stringBuffer.append(TEXT_2);
     } else { 
    stringBuffer.append(TEXT_3);
     } 
    stringBuffer.append(TEXT_4);
    stringBuffer.append(TEXT_5);
    return stringBuffer.toString();
  }
}
