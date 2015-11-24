package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class eru001confc_template
{
  protected static String nl;
  public static synchronized eru001confc_template create(String lineSeparator)
  {
    nl = lineSeparator;
    eru001confc_template result = new eru001confc_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[ERU001_Conf.c]*/" + NL + "" + NL + "/*******************************************************************************" + NL + " Copyright (c) 2013, Infineon Technologies AG                                 **" + NL + " All rights reserved.                                                         **" + NL + "                                                                              **" + NL + " Redistribution and use in source and binary forms, with or without           **" + NL + " modification,are permitted provided that the following conditions are met:   **" + NL + "                                                                              **" + NL + " *Redistributions of source code must retain the above copyright notice,      **" + NL + " this list of conditions and the following disclaimer.                        **" + NL + " *Redistributions in binary form must reproduce the above copyright notice,   **" + NL + " this list of conditions and the following disclaimer in the documentation    **" + NL + " and/or other materials provided with the distribution.                       **" + NL + " *Neither the name of the copyright holders nor the names of its contributors **" + NL + " may be used to endorse or promote products derived from this software without**" + NL + " specific prior written permission.                                           **" + NL + "                                                                              **" + NL + " THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\"  **" + NL + " AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **" + NL + " IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **" + NL + " ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **" + NL + " LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **" + NL + " CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **" + NL + " SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **" + NL + " INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **" + NL + " CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **" + NL + " ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **" + NL + " POSSIBILITY OF SUCH DAMAGE.                                                  **" + NL + "                                                                              **" + NL + " To improve the quality of the software, users are encouraged to share        **" + NL + " modifications, enhancements or bug fixes with Infineon Technologies AG       **" + NL + " dave@infineon.com).                                                          **" + NL + "                                                                              **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC4000/XMC1000 Series                                 **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** NOTE     : Any Changes made to this file will be overwritten during Code   **" + NL + "**            Generation                                                      **" + NL + "**                                                                            **" + NL + "********************************************************************************" + NL + "** VERSION HISTORY:" + NL + "********************************************************************************" + NL + "** v1.0.4,  25 Jan 2013,  BRG: Initial version." + NL + "** v1.0.6,  14 Mar 2013,  BRG: Supported to XMC4200 and XMC4400 device series." + NL + "** v1.0.10, 30 Sep 2013,  BRG: Code has been updated in complaint to coding " + NL + "**                             guidelines.                           " + NL + "*******************************************************************************/";
  protected final String TEXT_2 = NL + "/**" + NL + " * @file   ERU001_Conf.c" + NL + " *" + NL + " * @brief  This file contains the ERU001 Handle and ERU001 Handle array " + NL + " * definition according to the configuration parameters of ERU001 GUI." + NL + " */" + NL + "" + NL + "/**" + NL + " * @cond INTERNAL_DOCS" + NL + " */" + NL + "" + NL + "/*******************************************************************************" + NL + " ** INCLUDE FILES                                                             **" + NL + " ******************************************************************************/" + NL + "/* Included to access ERU001 app data structure, functions & enumerations */" + NL + "#include \"../../inc/ERU001/ERU001.h\"" + NL + "" + NL + "" + NL + "/*******************************************************************************" + NL + "** PRIVATE MACRO DEFINITIONS:" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "** PRIVATE TYPE DEFINITIONS:" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "** PRIVATE FUNCTION DECLARATIONS:" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "** PRIVATE CONSTANT DEFINITIONS:" + NL + "*******************************************************************************/" + NL + "" + NL + "/**" + NL + " * @ingroup ERU001_publicparam" + NL + " * @{" + NL + " */" + NL + "/*******************************************************************************" + NL + "** GLOBAL CONSTANT DEFINITIONS:" + NL + "*******************************************************************************/";
  protected final String TEXT_3 = NL + NL + "/* This is the GUI configurations made for ERU001 app Instance */";
  protected final String TEXT_4 = NL + "const ERU001_HandleType ERU001_Handle";
  protected final String TEXT_5 = " = {" + NL + "  /* Mapped ERU Unit */" + NL + "  .ERURegs      = ERU";
  protected final String TEXT_6 = ", " + NL + "  /* InputChannel  */" + NL + "  .InputChannel    = (uint8_t)";
  protected final String TEXT_7 = "," + NL + "  /* Rebuild Level Detection for Status Flag for ETL";
  protected final String TEXT_8 = " */ " + NL + "  .LevelDetect     = (uint8_t)";
  protected final String TEXT_9 = "," + NL + "  /* Rising Edge Detection Enable for ETL";
  protected final String TEXT_10 = "  */" + NL + "  .RiseEdgeDetEn   = (uint8_t)";
  protected final String TEXT_11 = "," + NL + "  /* Falling Edge Detection Enable for ETL";
  protected final String TEXT_12 = "  */" + NL + "  .FallEdgeDetEn   = (uint8_t)";
  protected final String TEXT_13 = "," + NL + "  /* Input Source Select for ERS";
  protected final String TEXT_14 = "  */" + NL + "  .InputSrcSel     = (uint8_t)";
  protected final String TEXT_15 = "," + NL + "  /* Input A Negation Select for ERS";
  protected final String TEXT_16 = "  */" + NL + "  .InputANegSel    = (uint8_t)";
  protected final String TEXT_17 = "," + NL + "  /* Input B Negation Select for ERS";
  protected final String TEXT_18 = "  */" + NL + "  .InputBNegSel    = (uint8_t)";
  protected final String TEXT_19 = "," + NL + "};";
  protected final String TEXT_20 = NL + "/* ERU Channel NOT MAPPED FOR APP INSTANCE ";
  protected final String TEXT_21 = " */";
  protected final String TEXT_22 = " " + NL + "" + NL + "/*******************************************************************************" + NL + "** GLOBAL VARIABLE DEFINITIONS:" + NL + "*******************************************************************************/";
  protected final String TEXT_23 = NL + "/* The variable is used to store the address of the ERU channel Handles */" + NL + "ERU001_HandleType* ERU001_HandleArray[ ] = " + NL + "                   {";
  protected final String TEXT_24 = NL + "                     ";
  protected final String TEXT_25 = NL + "                   };" + NL + "" + NL + "/*******************************************************************************" + NL + "** PUBLIC FUNCTION DEFINITIONS:" + NL + "*******************************************************************************/  " + NL + "" + NL + "/*******************************************************************************" + NL + "** FUNCTION LIKE MACRO DEFINITIONS:" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "** PRIVATE VARIABLES:" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "** PRIVATE FUNCTION DEFINITIONS:" + NL + "*******************************************************************************/" + NL + "" + NL + "/**" + NL + " * @}" + NL + " */" + NL + "/*CODE_BLOCK_END*/";
  protected final String TEXT_26 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/eru001/";
    stringBuffer.append(TEXT_2);
     String MappedUri = null; 
     String appInst  = null; 
     String UnitInst = null; 
     String ChannelInst = null; 
     String AppHandle = null; 
     int Nr_Cnt = 0; 
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/eru001/")); 
    stringBuffer.append(TEXT_3);
     for (String appIns : appsList ) {
 appInst = appIns.substring(appIns.lastIndexOf("/")+1);
     MappedUri = app.getMappedUri(AppBaseuri + appInst + "/ers_etl"); 
     if((MappedUri != null) && (MappedUri != "")) { 
     UnitInst = MappedUri.substring(MappedUri.indexOf("eru") + 4, MappedUri.indexOf("/ers_etl/") ); 
     ChannelInst = MappedUri.substring(MappedUri.indexOf("ers_etl") + 8, MappedUri.length()); 
    stringBuffer.append(TEXT_4);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_5);
    stringBuffer.append( UnitInst);
    stringBuffer.append(TEXT_6);
    stringBuffer.append( ChannelInst);
    stringBuffer.append(TEXT_7);
    stringBuffer.append( ChannelInst);
    stringBuffer.append(TEXT_8);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/ers_etl/exicon/ld"));
    stringBuffer.append(TEXT_9);
    stringBuffer.append( ChannelInst);
    stringBuffer.append(TEXT_10);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/ers_etl/exicon/re"));
    stringBuffer.append(TEXT_11);
    stringBuffer.append( ChannelInst);
    stringBuffer.append(TEXT_12);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/ers_etl/exicon/fe"));
    stringBuffer.append(TEXT_13);
    stringBuffer.append( ChannelInst);
    stringBuffer.append(TEXT_14);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/ers_etl/exicon/ss"));
    stringBuffer.append(TEXT_15);
    stringBuffer.append( ChannelInst);
    stringBuffer.append(TEXT_16);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/ers_etl/exicon/na"));
    stringBuffer.append(TEXT_17);
    stringBuffer.append( ChannelInst);
    stringBuffer.append(TEXT_18);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/ers_etl/exicon/nb"));
    stringBuffer.append(TEXT_19);
     } 
     else { 
    stringBuffer.append(TEXT_20);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_21);
     } 
    } 
    stringBuffer.append(TEXT_22);
    for (String appIns : appsList ) {
  appInst = appIns.substring(appIns.lastIndexOf("/")+1);	
  if(Nr_Cnt == 0)
  {
    AppHandle = "(ERU001_HandleType*) &ERU001_Handle"+appInst;
  }
  else
  {
    AppHandle =  AppHandle + ",\n                     " + "(ERU001_HandleType*) &ERU001_Handle"+appInst;
  }
  Nr_Cnt++;
}
    stringBuffer.append(TEXT_23);
    stringBuffer.append(TEXT_24);
    stringBuffer.append(AppHandle);
    stringBuffer.append(TEXT_25);
    stringBuffer.append(TEXT_26);
    return stringBuffer.toString();
  }
}
