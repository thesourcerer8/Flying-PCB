package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class eru002confc_template
{
  protected static String nl;
  public static synchronized eru002confc_template create(String lineSeparator)
  {
    nl = lineSeparator;
    eru002confc_template result = new eru002confc_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[ERU002_Conf.c]*/" + NL + "/*******************************************************************************" + NL + " Copyright (c) 2014, Infineon Technologies AG                                 **" + NL + " All rights reserved.                                                         **" + NL + "                                                                              **" + NL + " Redistribution and use in source and binary forms, with or without           **" + NL + " modification,are permitted provided that the following conditions are met:   **" + NL + "                                                                              **" + NL + " *Redistributions of source code must retain the above copyright notice,      **" + NL + " this list of conditions and the following disclaimer.                        **" + NL + " *Redistributions in binary form must reproduce the above copyright notice,   **" + NL + " this list of conditions and the following disclaimer in the documentation    **" + NL + " and/or other materials provided with the distribution.                       **" + NL + " *Neither the name of the copyright holders nor the names of its contributors **" + NL + " may be used to endorse or promote products derived from this software without** " + NL + " specific prior written permission.                                           **" + NL + "                                                                              **" + NL + " THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\"  **" + NL + " AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **" + NL + " IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **" + NL + " ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **" + NL + " LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **" + NL + " CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **" + NL + " SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **" + NL + " INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **" + NL + " CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **" + NL + " ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **" + NL + " POSSIBILITY OF SUCH DAMAGE.                                                  **" + NL + "                                                                              **" + NL + " To improve the quality of the software, users are encouraged to share        **" + NL + " modifications, enhancements or bug fixes with Infineon Technologies AG       **" + NL + " dave@infineon.com).                                                          **" + NL + "                                                                              **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC4000 Series/XMC1000 series                          **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** MAY BE CHANGED BY USER [yes/no]: Yes                                       **" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "*******************************************************************************/";
  protected final String TEXT_2 = NL + "/**" + NL + " * @file   ERU002_Conf.c" + NL + " *" + NL + " * Revision History" + NL + " * 25 Jan 2013 v1.0.4 Initial Version" + NL + " * 14 Mar 2013 v1.0.6 Porting to XMC42xx and XMC44xx" + NL + " * 15 Nov 2013 v1.0.12 Coding guidelines followed." + NL + " *" + NL + " * @brief  Configuration file generated based on UI settings " + NL + " *         of ERU002 App" + NL + " *" + NL + " */" + NL + "" + NL + "/*******************************************************************************" + NL + " ** INCLUDE FILES                                                             **" + NL + " ******************************************************************************/" + NL + "#include \"../../inc/ERU002/ERU002.h\"" + NL + "/**" + NL + " * @ingroup ERU002_publicparam" + NL + " * @{" + NL + " */" + NL;
  protected final String TEXT_3 = NL;
  protected final String TEXT_4 = NL + NL + "const ERU002_HandleType ERU002_Handle";
  protected final String TEXT_5 = " = {" + NL + "  /* Mapped ERU Unit */" + NL + "  .ERURegs      = ERU";
  protected final String TEXT_6 = ", " + NL + "  /* InputChannel  */" + NL + "  .OutputChannel = (uint8_t)";
  protected final String TEXT_7 = "," + NL + "  " + NL + "  .GP_Value = ";
  protected final String TEXT_8 = "," + NL + "  " + NL + "  .GEEN_Value = ";
  protected final String TEXT_9 = NL + "};";
  protected final String TEXT_10 = NL + "/* OGU NOT MAPPED FOR APP INSTANCE ";
  protected final String TEXT_11 = "*/";
  protected final String TEXT_12 = " " + NL + "" + NL + "const ERU002_HandleType * ERU002_HandleArray[ERU002_NUM_INSTANCES] =" + NL + "{";
  protected final String TEXT_13 = NL + "   &ERU002_Handle";
  protected final String TEXT_14 = ",";
  protected final String TEXT_15 = " ";
  protected final String TEXT_16 = NL + NL + "};" + NL + "" + NL + "/**" + NL + " * @}" + NL + " */" + NL + "/*CODE_BLOCK_END*/";
  protected final String TEXT_17 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/eru002/";
    stringBuffer.append(TEXT_2);
     String MappedUri = null; 
     String appInst  = null; 
     String UnitInst = null; 
     String ChannelInst = null; 
     int NodeNum = 0; 
    stringBuffer.append(TEXT_3);
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/eru002/"));
 for (String appIns : appsList ) {
 appInst = appIns.substring(appIns.lastIndexOf("/")+1);
     MappedUri = app.getMappedUri(AppBaseuri + appInst + "/ogu"); 
     if((MappedUri != null) && (MappedUri != "")) { 
     NodeNum++; 
     UnitInst = MappedUri.substring(MappedUri .length()-7,MappedUri.indexOf("/ogu/")); 
     ChannelInst = MappedUri.substring(MappedUri.length()-1); 
    stringBuffer.append(TEXT_4);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_5);
    stringBuffer.append( UnitInst);
    stringBuffer.append(TEXT_6);
    stringBuffer.append( ChannelInst);
    stringBuffer.append(TEXT_7);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + 
		  	  	  	  	  	  	  	  "/ogu/exocon/gp") );
    stringBuffer.append(TEXT_8);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + 
		  	  	  	  	  	  	  	  "/ogu/exocon/geen") );
    stringBuffer.append(TEXT_9);
     } 
     else { 
    stringBuffer.append(TEXT_10);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_11);
     } 
    } 
    stringBuffer.append(TEXT_12);
     int NumInstances = 0; 
     for (String appIns : appsList ) { 
     appInst = appIns.substring(appIns.lastIndexOf("/")+1);
    stringBuffer.append(TEXT_13);
    stringBuffer.append(appInst);
     NumInstances++; 
     if(NumInstances != NodeNum) {
    stringBuffer.append(TEXT_14);
    } 
    stringBuffer.append(TEXT_15);
    }
    stringBuffer.append(TEXT_16);
    stringBuffer.append(TEXT_17);
    return stringBuffer.toString();
  }
}
