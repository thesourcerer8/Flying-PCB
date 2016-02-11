package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class uart001_externh_template
{
  protected static String nl;
  public static synchronized uart001_externh_template create(String lineSeparator)
  {
    nl = lineSeparator;
    uart001_externh_template result = new uart001_externh_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[UART001_Extern.h]*/" + NL + "/*******************************************************************************" + NL + "**                                                                            **" + NL + "** Copyright (C) 2013 Infineon Technologies AG. All rights reserved.          **" + NL + "**                                                                            **" + NL + "** Infineon Technologies AG (Infineon) is supplying this software for use     **" + NL + "** with Infineon's microcontrollers.                                          **" + NL + "** This file can be freely distributed within development tools that are      **" + NL + "** supporting such microcontrollers.                                          **" + NL + "**                                                                            **" + NL + "** THIS SOFTWARE IS PROVIDED \"AS IS\".  NO WARRANTIES, WHETHER EXPRESS,        **" + NL + "** IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF **" + NL + "** MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS         **" + NL + "** SOFTWARE. INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, ** " + NL + "** INCIDENTAL, OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.           **" + NL + "**                                                                            **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC4000/XMC1000 Series                                 **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** NOTE     : Any Changes made to this file will be overwritten during Code   **" + NL + "**            Generation                                                      **" + NL + "**                                                                            **" + NL + "********************************************************************************" + NL + "** VERSION HISTORY:" + NL + "********************************************************************************" + NL + "** 29 Nov 2013  V1.0.20  Newly created for extern declarations of UART001 app " + NL + "*******************************************************************************/";
  protected final String TEXT_2 = NL + "/**" + NL + " * @file   UART001_Extern.h" + NL + " *" + NL + " * @App Version UART001 <";
  protected final String TEXT_3 = ">" + NL + " *" + NL + " * @brief  This file contains extern declarations of UART001." + NL + " *" + NL + " */" + NL + "" + NL + "#ifndef UART001_EXTERN_H_" + NL + "#define UART001_EXTERN_H_" + NL + "" + NL + "#ifdef __cplusplus" + NL + "extern \"C\" {" + NL + "#endif" + NL + "" + NL + "/*******************************************************************************" + NL + "** @Defines" + NL + "*******************************************************************************/" + NL;
  protected final String TEXT_4 = "     ";
  protected final String TEXT_5 = NL + "extern const UART001_HandleType\tUART001_Handle";
  protected final String TEXT_6 = "; ";
  protected final String TEXT_7 = NL + "/* CHANNEL IS NOT MAPPED */";
  protected final String TEXT_8 = NL + "extern const UART001_HandleType *UART001_HandleArray[";
  protected final String TEXT_9 = "]; " + NL + "" + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif                     " + NL + "" + NL + "#endif  /* ifndef UART001_EXTERN_H_ */" + NL + "" + NL + "/*CODE_BLOCK_END*/";
  protected final String TEXT_10 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/uart001/";
    stringBuffer.append(TEXT_2);
    stringBuffer.append(app.getAppVersion(AppBaseuri) );
    stringBuffer.append(TEXT_3);
     String MappedUri = null; 
     String appInst  = null; 
     int NodeNr = 0; 
     int Is44Device = -1; 
     int Is42Device = -1; 
     int Is45Device = -1; 
     int Is1xDevice = -1; 
     String deviceId = null; 
     deviceId = app.getSoftwareId(); 
     if (deviceId != null)
{      
   Is44Device = ((deviceId.substring(0,2).compareTo("44")==0)?1:0);
   Is42Device = ((deviceId.substring(0,2).compareTo("42")==0)?1:0);
   Is45Device = ((deviceId.substring(0,2).compareTo("45")==0)?1:0);
   Is1xDevice = ((deviceId.substring(0,1).compareTo("1")==0)?1:0); 	
}
    stringBuffer.append(TEXT_4);
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/uart001/"));
 for (String appIns : appsList ) {
 appInst = appIns.substring(appIns.lastIndexOf("/")+1);
 MappedUri = app.getMappedUri(AppBaseuri + appInst + "/channel");
 if((MappedUri != null) && (MappedUri != "")) {
NodeNr++; 
    stringBuffer.append(TEXT_5);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_6);
     }else { 
    stringBuffer.append(TEXT_7);
     } 
     } 
    stringBuffer.append(TEXT_8);
    stringBuffer.append(NodeNr);
    stringBuffer.append(TEXT_9);
    stringBuffer.append(TEXT_10);
    return stringBuffer.toString();
  }
}
