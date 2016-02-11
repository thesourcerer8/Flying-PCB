package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class dave3_h_template
{
  protected static String nl;
  public static synchronized dave3_h_template create(String lineSeparator)
  {
    nl = lineSeparator;
    dave3_h_template result = new dave3_h_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/**************************************************************************//**" + NL + " *" + NL + " * Copyright (C) 2011 Infineon Technologies AG. All rights reserved." + NL + " *" + NL + " * Infineon Technologies AG (Infineon) is supplying this software for use with" + NL + " * Infineon's microcontrollers." + NL + " * This file can be freely distributed within development tools that are" + NL + " * supporting such microcontrollers." + NL + " *" + NL + " * THIS SOFTWARE IS PROVIDED \"AS IS\".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED" + NL + " * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF" + NL + " * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE." + NL + " * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL," + NL + " * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER." + NL + " *" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon <Microcontroller name, step>                           **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : Jan 22, 2014                                          **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "" + NL + "/**" + NL + " * @file  DAVE3.h" + NL + " *" + NL + " * @brief This file contains all public data structures,enums and function" + NL + " *        prototypes" + NL + " *" + NL + " * Revision History" + NL + " * 26 June 2013 v1.0.32 Initial Version." + NL + " * 22 Jan  2014 v1.0.40 C++ macro inserted. " + NL + " *" + NL + " */" + NL + "" + NL + "#ifndef _DAVE3_H_" + NL + "#define _DAVE3_H_" + NL + "" + NL + "#ifdef __cplusplus" + NL + "extern \"C\" {" + NL + "#endif" + NL;
  protected final String TEXT_2 = NL + "//****************************************************************************" + NL + "// @Prototypes Of Global Functions" + NL + "//****************************************************************************" + NL + "" + NL + "void DAVE_Init(void);" + NL;
  protected final String TEXT_3 = NL + "void SystemInit_DAVE3(void);" + NL;
  protected final String TEXT_4 = "      " + NL + "//****************************************************************************" + NL + "// @Project Includes" + NL + "//****************************************************************************" + NL + NL;
  protected final String TEXT_5 = NL + "#include <XMC4500.h>";
  protected final String TEXT_6 = NL + "#include <XMC4400.h>";
  protected final String TEXT_7 = NL + "#include <XMC4200.h>";
  protected final String TEXT_8 = NL + "#include <XMC1100.h>";
  protected final String TEXT_9 = NL + "#include <XMC1200.h>";
  protected final String TEXT_10 = NL + "#include <XMC1300.h>";
  protected final String TEXT_11 = NL + NL + "#include \"../../inc/LIBS/types.h\"" + NL + "\t" + NL + "#include \"../../inc/DAVESupport/MULTIPLEXER.h\"" + NL + "" + NL + "" + NL + "// #include APP HEADER FILES.";
  protected final String TEXT_12 = NL + "\t#include \"../../inc/";
  protected final String TEXT_13 = "/";
  protected final String TEXT_14 = ".h\" ";
  protected final String TEXT_15 = NL + "\t#include \"../../inc/";
  protected final String TEXT_16 = "/";
  protected final String TEXT_17 = "_Conf.h\"";
  protected final String TEXT_18 = NL + NL;
  protected final String TEXT_19 = "  " + NL + "/*******************************************************************************" + NL + "**                      Global Macro Definitions                              **" + NL + "*******************************************************************************/" + NL + "#ifndef DBG001_H" + NL + "#define DBG001_H" + NL + "" + NL + "" + NL + "#define SAFETY_CRITICAL(groupid,messageid,length,value)" + NL + "        /** NULL */" + NL + "/** */" + NL + "#define CRITICAL(groupid,messageid,length,value)" + NL + "        /** NULL */" + NL + "/** */" + NL + "#define ERROR(groupid,messageid,length,value)" + NL + "        /** NULL */" + NL + "/** */" + NL + "#define WARNING(groupid,messageid,length,value)" + NL + "        /** NULL */" + NL + "/** */" + NL + "#define INFO(groupid,messageid,length,value)" + NL + "        /** NULL */" + NL + "/** */" + NL + "#define TRACE(groupid,messageid,length,value)" + NL + "" + NL + "#define DBG001_RegisterCallBack(A,B,C)" + NL + "" + NL + "/** Macro for Logging function start */" + NL + "#define FUNCTION_ENTRY(GID, Status) " + NL + "" + NL + "/** Macro for logging function stop */" + NL + "#define FUNCTION_EXIT(GID, Status) " + NL + "" + NL + "#define DBG001_I(e) /* empty */" + NL + "#define DBG001_IG(e,g) /* empty */" + NL + "#define DBG001_IH(e,h) /* empty */" + NL + "#define DBG001_IP(e,p) /* empty */" + NL + "#define DBG001_IGH(e,g,h) /* empty */" + NL + "#define DBG001_IGP(e,g,p) /* empty */" + NL + "#define DBG001_IHP(e,h,p) /* empty */" + NL + "#define DBG001_IGHP(e,g,h,p) /* empty */" + NL + "" + NL + "#define DBG001_N(e) /* empty */" + NL + "#define DBG001_NG(e,g) /* empty */" + NL + "#define DBG001_NH(e,h) /* empty */" + NL + "#define DBG001_NP(e,p) /* empty */" + NL + "#define DBG001_NGH(e,g,h) /* empty */" + NL + "#define DBG001_NGP(e,g,p) /* empty */" + NL + "#define DBG001_NHP(e,h,p) /* empty */" + NL + "#define DBG001_NGHP(e,g,h,p) /* empty */" + NL + "" + NL + "#define DBG001_ID(e) /* empty */" + NL + "#define DBG001_IS(e) /* empty */" + NL + "#define DBG001_ISG(e,g) /* empty */" + NL + "" + NL + "#define DBG001_SAFETY_CRITICAL(groupid,messageid,length,value)" + NL + "        /** NULL */" + NL + "/** */" + NL + "#define DBG001_CRITICAL(groupid,messageid,length,value)" + NL + "        /** NULL */" + NL + "/** */" + NL + "#define DBG001_ERROR(groupid,messageid,length,value)" + NL + "        /** NULL */" + NL + "/** */" + NL + "#define DBG001_WARNING(groupid,messageid,length,value)" + NL + "        /** NULL */" + NL + "/** */" + NL + "#define DBG001_INFO(groupid,messageid,length,value)" + NL + "        /** NULL */" + NL + "/** */" + NL + "#define DBG001_TRACE(groupid,messageid,length,value)" + NL + "" + NL + "/** Macro for Logging function start */" + NL + "#define DBG001_FUNCTION_ENTRY(GID, Status)" + NL + " " + NL + "/** Macro for logging function stop */" + NL + "#define DBG001_FUNCTION_EXIT(GID, Status) " + NL + "      " + NL + "#endif  /** ifndef DBG001_H */ " + NL;
  protected final String TEXT_20 = "    ";
  protected final String TEXT_21 = "                     " + NL + "" + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif" + NL + "" + NL + "#endif  /** ifndef _DAVE3_H_ */";
  protected final String TEXT_22 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
     int Is45Device = -1;
   int Is44Device = -1;
   int Is42Device = -1;
   int Is11Device = -1;
   int Is12Device = -1;
   int Is13Device = -1;
   Is45Device = ((app.getSoftwareId().substring(0,2).compareTo("45")==0)?1:0);
   Is44Device = ((app.getSoftwareId().substring(0,2).compareTo("44")==0)?1:0);
   Is42Device = ((app.getSoftwareId().substring(0,2).compareTo("42")==0)?1:0);
   Is11Device = ((app.getSoftwareId().substring(0,2).compareTo("11")==0)?1:0);
   Is12Device = ((app.getSoftwareId().substring(0,2).compareTo("12")==0)?1:0);
   Is13Device = ((app.getSoftwareId().substring(0,2).compareTo("13")==0)?1:0);
   int xmc4Device = -1;
   xmc4Device = ((app.getSoftwareId().substring(0,1).compareTo("4")==0)?1:0); 
    stringBuffer.append(TEXT_1);
     String TempApps = null;
   String MyAppName = null;
   ArrayList<String> apps;
   ArrayList<String> apps_sorted = new ArrayList<String>();
   String TempLowerApps = null; 
   boolean CLKApp = false;
   boolean DBGApp = false;   
   apps=(ArrayList<String>)(app.getApps());
  	 for (int k = 0; k < apps.size(); k++) {
		 TempApps = apps.get(k);
//		 if(app.isAppInitProvider(apps.get(k)) == true) {
		 MyAppName = TempApps.substring(TempApps.indexOf("/app/") + 5, TempApps.lastIndexOf("/"));
		 TempLowerApps = MyAppName.toLowerCase();
		 if (TempLowerApps.equalsIgnoreCase("clk001")) {CLKApp = true;}
		 if (TempLowerApps.equalsIgnoreCase("dbg001")) {DBGApp = true;}
		 if(!apps_sorted.contains(TempLowerApps)) 
		 {        
			 apps_sorted.add(TempLowerApps);
		 }     
//   }  
  } 
    stringBuffer.append(TEXT_2);
     if (CLKApp) { 
    stringBuffer.append(TEXT_3);
     } 
    stringBuffer.append(TEXT_4);
    if (Is45Device==1){
    stringBuffer.append(TEXT_5);
    } else if (Is44Device==1){
    stringBuffer.append(TEXT_6);
    } else if (Is42Device==1){
    stringBuffer.append(TEXT_7);
    } else if (Is11Device==1){
    stringBuffer.append(TEXT_8);
    } else if (Is12Device==1){
    stringBuffer.append(TEXT_9);
    } else if (Is13Device==1){
    stringBuffer.append(TEXT_10);
    }
    stringBuffer.append(TEXT_11);
     
 for (int k = 0; k < apps_sorted.size(); k++) 
 {
 TempLowerApps = apps_sorted.get(k);
if(TempLowerApps.compareTo("davesupport") != 0 && TempLowerApps.compareTo("mathlibs") != 0
		                                       && TempLowerApps.compareTo("math01") != 0
		                                       && TempLowerApps.compareTo("motorlibs") != 0) { 
    stringBuffer.append(TEXT_12);
    stringBuffer.append( TempLowerApps.toUpperCase());
    stringBuffer.append(TEXT_13);
    stringBuffer.append(TempLowerApps.toUpperCase());
    stringBuffer.append(TEXT_14);
    }else if (TempLowerApps.compareTo("math01") == 0){
    stringBuffer.append(TEXT_15);
    stringBuffer.append( TempLowerApps.toUpperCase());
    stringBuffer.append(TEXT_16);
    stringBuffer.append(TempLowerApps.toUpperCase());
    stringBuffer.append(TEXT_17);
    }}
    stringBuffer.append(TEXT_18);
    if (xmc4Device==1){
     if (!DBGApp) { 
    stringBuffer.append(TEXT_19);
     } 
    stringBuffer.append(TEXT_20);
     } 
    stringBuffer.append(TEXT_21);
    stringBuffer.append(TEXT_22);
    return stringBuffer.toString();
  }
}
