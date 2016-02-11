package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class eru001confh_template
{
  protected static String nl;
  public static synchronized eru001confh_template create(String lineSeparator)
  {
    nl = lineSeparator;
    eru001confh_template result = new eru001confh_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[ERU001_Confh.h]*/" + NL + "" + NL + "/*******************************************************************************" + NL + " Copyright (c) 2014, Infineon Technologies AG                                 **" + NL + " All rights reserved.                                                         **" + NL + "                                                                              **" + NL + " Redistribution and use in source and binary forms, with or without           **" + NL + " modification,are permitted provided that the following conditions are met:   **" + NL + "                                                                              **" + NL + " *Redistributions of source code must retain the above copyright notice,      **" + NL + " this list of conditions and the following disclaimer.                        **" + NL + " *Redistributions in binary form must reproduce the above copyright notice,   **" + NL + " this list of conditions and the following disclaimer in the documentation    **" + NL + " and/or other materials provided with the distribution.                       **" + NL + " *Neither the name of the copyright holders nor the names of its contributors **" + NL + " may be used to endorse or promote products derived from this software without**" + NL + " specific prior written permission.                                           **" + NL + "                                                                              **" + NL + " THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\"  **" + NL + " AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **" + NL + " IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **" + NL + " ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **" + NL + " LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **" + NL + " CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **" + NL + " SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **" + NL + " INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **" + NL + " CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **" + NL + " ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **" + NL + " POSSIBILITY OF SUCH DAMAGE.                                                  **" + NL + "                                                                              **" + NL + " To improve the quality of the software, users are encouraged to share        **" + NL + " modifications, enhancements or bug fixes with Infineon Technologies AG       **" + NL + " dave@infineon.com).                                                          **" + NL + "                                                                              **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC4000/XMC1000 Series                                 **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** NOTE     : Any Changes made to this file will be overwritten during Code   **" + NL + "**            Generation                                                      **" + NL + "**                                                                            **" + NL + "********************************************************************************" + NL + "** VERSION HISTORY:" + NL + "********************************************************************************" + NL + "** v1.0.4,  25 Jan 2013,  BRG: Initial version." + NL + "** v1.0.10, 30 Sep 2013,  BRG: Code has been updated in complaint to coding. " + NL + "**                             guidelines." + NL + "** v1.0.16, 26 Mar 2014,  BRG: DBG002 macros are removed." + NL + "*******************************************************************************/" + NL;
  protected final String TEXT_2 = NL + "/**" + NL + " * @file   ERU001_Conf.h" + NL + " *" + NL + " * @brief  This file contains global macro definitions and extern declarations" + NL + " *  of ERU001." + NL + " */" + NL + "#ifndef _CONF_ERU001_H_" + NL + "#define _CONF_ERU001_H_" + NL + "" + NL + "#ifdef __cplusplus" + NL + "extern \"C\" {" + NL + "#endif" + NL + "" + NL + "/*******************************************************************************" + NL + "** INCLUDE FILES:" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "** PRIVATE MACRO DEFINITIONS:" + NL + "*******************************************************************************/";
  protected final String TEXT_3 = NL + "/*******************************************************************************" + NL + "** PRIVATE TYPE DEFINITIONS:" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "** PRIVATE FUNCTION DECLARATIONS:" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "** PRIVATE CONSTANT DEFINITIONS:" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "** GLOBAL MACRO DEFINITIONS: \t\t\t\t\t\t\t\t\t\t" + NL + "*******************************************************************************/";
  protected final String TEXT_4 = NL + "/**" + NL + " * @ingroup ERU001_constants" + NL + " * @{" + NL + " */";
  protected final String TEXT_5 = NL + "/**" + NL + " * Base Address of mapped ERU Module for App Instance 0" + NL + " */" + NL + "#define ERU001_";
  protected final String TEXT_6 = "_ERU\t  ERU";
  protected final String TEXT_7 = NL + "/**" + NL + " *  Mapped ERS + ETL instance  for App Instance 0" + NL + " */" + NL + "#define ERU001_";
  protected final String TEXT_8 = "_ERS_ETL_X   (";
  protected final String TEXT_9 = "U)";
  protected final String TEXT_10 = NL + "/* CHANNEL IS NOT MAPPED */";
  protected final String TEXT_11 = NL + NL + "/**" + NL + " *  ERU001 number of channel (App) Instances" + NL + " */" + NL + "#define ERU001_NUM_INSTANCES (";
  protected final String TEXT_12 = "U)" + NL + "" + NL + "/**" + NL + " * @}" + NL + " */" + NL + "\t" + NL + "\t" + NL + "/*******************************************************************************" + NL + "** ENUMERATIONS:" + NL + "*******************************************************************************/\t" + NL + "\t" + NL + "\t" + NL + "/*******************************************************************************" + NL + "** GLOBAL TYPE DEFINITIONS:                     " + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "**  External Variables    " + NL + "*******************************************************************************/" + NL + "" + NL + "" + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif" + NL + "" + NL + "#endif  /* _CONF_ERU001_H_ */" + NL + "/*CODE_BLOCK_END*/";
  protected final String TEXT_13 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/eru001/";
    stringBuffer.append(TEXT_2);
     String TempApps = null;
   String MyAppName = null;
   ArrayList<String> apps;
   String TempLowerApps = null; 
   boolean DBGApp = false;   
   apps=(ArrayList<String>)(app.getApps());
        for (int k = 0; k < apps.size(); k++) {
              TempApps = apps.get(k);
//            if(app.isAppInitProvider(apps.get(k)) == true) {
              MyAppName = TempApps.substring(TempApps.indexOf("/app/") + 5, TempApps.lastIndexOf("/"));
              TempLowerApps = MyAppName.toLowerCase();
              if (TempLowerApps.equalsIgnoreCase("dbg002")) {DBGApp = true;}   
//   }  
  } 
    stringBuffer.append(TEXT_3);
     String MappedUri = null; 
     String appInst  = null; 
     String UnitInst = null; 
     String ChannelInst = null; 
     int InstancesNum = 0; 
    stringBuffer.append(TEXT_4);
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/eru001/"));
 for (String appIns : appsList ) {
 appInst = appIns.substring(appIns.lastIndexOf("/")+1);
     MappedUri = app.getMappedUri(AppBaseuri + appInst + "/ers_etl"); 
     if((MappedUri != null) && (MappedUri != "")) { 
     UnitInst = MappedUri.substring(MappedUri.indexOf("eru") + 4, MappedUri.indexOf("/ers_etl/") ); 
     ChannelInst = MappedUri.substring(MappedUri.indexOf("ers_etl") + 8, MappedUri.length()); 
    stringBuffer.append(TEXT_5);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_6);
    stringBuffer.append(UnitInst);
    stringBuffer.append(TEXT_7);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_8);
    stringBuffer.append( ChannelInst );
    stringBuffer.append(TEXT_9);
     InstancesNum++; 
     } 
     else { 
    stringBuffer.append(TEXT_10);
     } 
    } 
    stringBuffer.append(TEXT_11);
    stringBuffer.append( InstancesNum);
    stringBuffer.append(TEXT_12);
    stringBuffer.append(TEXT_13);
    return stringBuffer.toString();
  }
}
