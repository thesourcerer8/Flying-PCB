package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class ccu4global_confc_template
{
  protected static String nl;
  public static synchronized ccu4global_confc_template create(String lineSeparator)
  {
    nl = lineSeparator;
    ccu4global_confc_template result = new ccu4global_confc_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[CCU4Global_Conf.c]*/" + NL + "" + NL + "/*******************************************************************************" + NL + " Copyright (c) 2014, Infineon Technologies AG                                 **" + NL + " All rights reserved.                                                         **" + NL + "                                                                              **" + NL + " Redistribution and use in source and binary forms, with or without           **" + NL + " modification,are permitted provided that the following conditions are met:   **" + NL + "                                                                              **" + NL + " *Redistributions of source code must retain the above copyright notice,      **" + NL + " this list of conditions and the following disclaimer.                        **" + NL + " *Redistributions in binary form must reproduce the above copyright notice,   **" + NL + " this list of conditions and the following disclaimer in the documentation    **" + NL + " and/or other materials provided with the distribution.                       **" + NL + " *Neither the name of the copyright holders nor the names of its contributors **" + NL + " may be used to endorse or promote products derived from this software without**" + NL + " specific prior written permission.                                           **" + NL + "                                                                              **" + NL + " THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\"  **" + NL + " AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **" + NL + " IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **" + NL + " ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **" + NL + " LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **" + NL + " CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **" + NL + " SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **" + NL + " INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **" + NL + " CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **" + NL + " ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **" + NL + " POSSIBILITY OF SUCH DAMAGE.                                                  **" + NL + "                                                                              **" + NL + " To improve the quality of the software, users are encouraged to share        **" + NL + " modifications, enhancements or bug fixes with Infineon Technologies AG       **" + NL + " dave@infineon.com).                                                          **" + NL + "                                                                              **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC4000/XMC1000 Series                                 **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** MAY BE CHANGED BY USER [yes/no]: Yes                                       **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : November 25, 2013                                     **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "**                       Author(s) Identity                                   **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "** Initials     Name                                                          **" + NL + "** ---------------------------------------------------------------------------**" + NL + "** SNR           App Developer                                                **" + NL + "*******************************************************************************/";
  protected final String TEXT_2 = NL + "/**" + NL + " * @file  CCU4Global_Confc.c" + NL + " * @App Version CCU4Global <";
  protected final String TEXT_3 = ">" + NL + " * @brief This file contains the Handles or the generated configuration for the " + NL + " * App." + NL + " *" + NL + " */" + NL + "/* Revision History" + NL + " * 22 March  2012   v1.0.0  Initial version" + NL + " * 17 Sept   2012   v1.0.6 \tRemoved the slice uri static definition " + NL + " * 25 Nov    2013   v1.0.12 Followed coding guidelines" + NL + " * 02 Jan    2014   v1.0.18 Mapped the handle number with app instance number" + NL + " */" + NL + "" + NL + "/*******************************************************************************" + NL + " ** INCLUDE FILES                                                             **" + NL + " ******************************************************************************/" + NL + "#include \"../../inc/CCU4Global/CCU4Global.h\"" + NL;
  protected final String TEXT_4 = NL + NL + "/**" + NL + " * @ingroup CCU4Global_publicparam" + NL + " * @{" + NL + " */" + NL;
  protected final String TEXT_5 = NL;
  protected final String TEXT_6 = NL + NL + "const CCU4Global_HandleType CCU4Global_Handle";
  protected final String TEXT_7 = " =" + NL + "{" + NL + "  .CC4yKernRegsPtr = (CCU4_GLOBAL_TypeDef*) CCU4";
  protected final String TEXT_8 = "_BASE," + NL + "  .KernelNumber = ";
  protected final String TEXT_9 = "," + NL + "  " + NL + "\t#if ((__TARGET_DEVICE__ == XMC44) || (__TARGET_DEVICE__ == XMC42) || \\" + NL + "\t     (__TARGET_DEVICE__ == XMC41) || (UC_FAMILY == XMC1))";
  protected final String TEXT_10 = " " + NL + "\t.ClockGating = SCU_CLK_CGATCLR1_CCU4";
  protected final String TEXT_11 = "_Pos," + NL + "\t";
  protected final String TEXT_12 = NL + "\t.ClockGating = SCU_CLK_CGATCLR0_CCU4";
  protected final String TEXT_13 = "_Pos," + NL + "\t";
  protected final String TEXT_14 = NL + "\t#endif" + NL + "" + NL + "  \t#if (UC_FAMILY == XMC4)" + NL + "\t";
  protected final String TEXT_15 = NL + "\t.PeripheralReset = PER1_CCU4";
  protected final String TEXT_16 = NL + "\t";
  protected final String TEXT_17 = NL + "\t.PeripheralReset = PER0_CCU4";
  protected final String TEXT_18 = NL + "\t";
  protected final String TEXT_19 = NL + "\t#endif" + NL + "" + NL + "};" + NL + "    ";
  protected final String TEXT_20 = " " + NL + "//This app is not mapped to any CCU4 Module ";
  protected final String TEXT_21 = "  " + NL + "" + NL + "const CCU4Global_HandleType * CCU4Global_HandleArray[CCU4GLOBAL_NUM_INSTANCES] =" + NL + "{";
  protected final String TEXT_22 = NL + "   &CCU4Global_Handle";
  protected final String TEXT_23 = ",";
  protected final String TEXT_24 = " ";
  protected final String TEXT_25 = NL + "};" + NL + "" + NL + "/**" + NL + " * @}" + NL + " */" + NL + "/*CODE_BLOCK_END*/";
  protected final String TEXT_26 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/ccu4global/"; 
    stringBuffer.append(TEXT_2);
    stringBuffer.append(app.getAppVersion(AppBaseuri) );
    stringBuffer.append(TEXT_3);
     String kernelNo = null; 
     String SliceUri = null; 
     String appInst  = null; 
     String temp = "3"; 
     int NodeNum = 0; 
    stringBuffer.append(TEXT_4);
     ArrayList<String> appsList = (ArrayList<String>)
                                    (app.getApps("app/ccu4global/"));
  for (String appIns : appsList ) {
  appInst = appIns.substring(appIns.lastIndexOf("/")+1);
    stringBuffer.append(TEXT_5);
     SliceUri = app.getMappedUri(AppBaseuri + appInst +"/global"); 
     if ((SliceUri != null) && (SliceUri.trim() != "")) { 
     NodeNum++; 
     kernelNo = SliceUri.substring(SliceUri.indexOf("/ccu4")+6,
                                   SliceUri.indexOf("/global")); 
    stringBuffer.append(TEXT_6);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_7);
    stringBuffer.append( kernelNo);
    stringBuffer.append(TEXT_8);
    stringBuffer.append(kernelNo);
    stringBuffer.append(TEXT_9);
     if(kernelNo.equals(temp)) { 
    stringBuffer.append(TEXT_10);
    stringBuffer.append(kernelNo);
    stringBuffer.append(TEXT_11);
    } else {
    stringBuffer.append(TEXT_12);
    stringBuffer.append(kernelNo);
    stringBuffer.append(TEXT_13);
    }
    stringBuffer.append(TEXT_14);
     if(kernelNo.equals(temp)) { 
    stringBuffer.append(TEXT_15);
    stringBuffer.append(kernelNo);
    stringBuffer.append(TEXT_16);
    } else {
    stringBuffer.append(TEXT_17);
    stringBuffer.append(kernelNo);
    stringBuffer.append(TEXT_18);
    }
    stringBuffer.append(TEXT_19);
    } else {
    stringBuffer.append(TEXT_20);
    }
    }
    stringBuffer.append(TEXT_21);
     int NumInstances = 0; 
     for (String appIns : appsList ) { 
     appInst = appIns.substring(appIns.lastIndexOf("/")+1);
    stringBuffer.append(TEXT_22);
    stringBuffer.append(appInst);
     NumInstances++; 
     if(NumInstances != NodeNum) {
    stringBuffer.append(TEXT_23);
    } 
    stringBuffer.append(TEXT_24);
    }
    stringBuffer.append(TEXT_25);
    stringBuffer.append(TEXT_26);
    return stringBuffer.toString();
  }
}
