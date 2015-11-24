package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class ccu8global_confc_template
{
  protected static String nl;
  public static synchronized ccu8global_confc_template create(String lineSeparator)
  {
    nl = lineSeparator;
    ccu8global_confc_template result = new ccu8global_confc_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[CCU8GLOBAL_Conf.c]*/" + NL + "/*******************************************************************************" + NL + " Copyright (c) 2014, Infineon Technologies AG                                 **" + NL + " All rights reserved.                                                         **" + NL + "                                                                              **" + NL + " Redistribution and use in source and binary forms, with or without           **" + NL + " modification,are permitted provided that the following conditions are met:   **" + NL + "                                                                              **" + NL + " *Redistributions of source code must retain the above copyright notice,      **" + NL + " this list of conditions and the following disclaimer.                        **" + NL + " *Redistributions in binary form must reproduce the above copyright notice,   **" + NL + " this list of conditions and the following disclaimer in the documentation    **" + NL + " and/or other materials provided with the distribution.                       **" + NL + " *Neither the name of the copyright holders nor the names of its contributors **" + NL + " may be used to endorse or promote products derived from this software without**" + NL + " specific prior written permission.                                           **" + NL + "                                                                              **" + NL + " THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\"  **" + NL + " AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **" + NL + " IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **" + NL + " ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **" + NL + " LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **" + NL + " CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **" + NL + " SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **" + NL + " INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **" + NL + " CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **" + NL + " ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **" + NL + " POSSIBILITY OF SUCH DAMAGE.                                                  **" + NL + "                                                                              **" + NL + " To improve the quality of the software, users are encouraged to share        **" + NL + " modifications, enhancements or bug fixes with Infineon Technologies AG       **" + NL + " dave@infineon.com).                                                          **" + NL + "                                                                              **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC4000 / XMC1300 Series                               **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** MAY BE CHANGED BY USER [Yes/No]: Yes                                       **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : Nov  26, 2013                                          **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "/* Revision History" + NL + " *****************************************************************************" + NL + "** Date     Version      Dev    Remarks" + NL + "**" + NL + "** V1.0.6   26-11-2013   JBT    Updated after for fixed static file changes." + NL + "**                              Coding guidelines followed, MISRA checks done " + NL + "**                              New documentation template related  changes done" + NL + "** V1.0.4   17-09-2012   BKB    Removed the sliceuri static definition" + NL + "** V1.0.0   22-03-2012   BKB    Initial Version" + NL + "*******************************************************************************/" + NL + "/*******************************************************************************" + NL + "**  Developer     Name" + NL + "**----------------------------------------------------------------------------" + NL + "**  JBT           Jubin Thomas" + NL + "**  BKB           Balaji Kurra Bala " + NL + "*******************************************************************************/" + NL + "/**" + NL + " * @file   CCU8GLOBAL_Conf.c" + NL + " * " + NL + " *" + NL + " * @brief  Configuration source file generated based on UI settings" + NL + " *         of CCU8GLOBAL App" + NL + " *" + NL + " */" + NL + "" + NL + "" + NL + "/*******************************************************************************" + NL + "** INCLUDE FILES:" + NL + "*******************************************************************************/" + NL + "/* Included to access the enumerations, app data structure & functions */" + NL + "#include \"../../inc/CCU8GLOBAL/CCU8GLOBAL.h\"" + NL + "" + NL + "/*******************************************************************************" + NL + "** PRIVATE MACRO DEFINITIONS:" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "** PRIVATE TYPE DEFINITIONS:" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "** PRIVATE FUNCTION DECLARATIONS:" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "** PRIVATE CONSTANT DEFINITIONS:" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "** GLOBAL CONSTANT DEFINITIONS:" + NL + "*******************************************************************************/";
  protected final String TEXT_2 = NL + NL;
  protected final String TEXT_3 = NL + NL + "const CCU8GLOBAL_HandleType CCU8GLOBAL_Handle";
  protected final String TEXT_4 = " =" + NL + "{" + NL + "  .CC8yKernRegsPtr  = (CCU8_GLOBAL_TypeDef*) CCU8";
  protected final String TEXT_5 = "_BASE," + NL + "  " + NL + "  #if ((UC_SERIES == XMC44)||(UC_SERIES == XMC42)|| \\" + NL + "       (UC_SERIES == XMC13)||(UC_SERIES == XMC41))" + NL + "  /* This defines the clock gating clear register position   */" + NL + "  .ClockGating_Pos  = SCU_CLK_CGATCLR0_CCU8";
  protected final String TEXT_6 = "_Pos," + NL + "  #endif" + NL + "  " + NL + "  #if (UC_FAMILY == XMC4)" + NL + "  /* This defines the RESET DeAssert peripheral position   */" + NL + "  .PeriphResetNum   = PER0_CCU8";
  protected final String TEXT_7 = "," + NL + "  #endif" + NL + "};" + NL + "  ";
  protected final String TEXT_8 = " " + NL + "/*This app is not mapped to any CCU8 Module */";
  protected final String TEXT_9 = "  ";
  protected final String TEXT_10 = NL + NL;
  protected final String TEXT_11 = NL + "/* This structure is used to store the address of the App Handles */" + NL + "CCU8GLOBAL_HandleType* CCU8GLOBAL_HandleArray[CCU8GLOBAL_INSTANCES] = " + NL + "                        {";
  protected final String TEXT_12 = NL + "                          ";
  protected final String TEXT_13 = NL + "                        };" + NL + "" + NL + "/*CODE_BLOCK_END*/";
  protected final String TEXT_14 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
     String AppBaseuri = "app/ccu8global/"; 
    stringBuffer.append(TEXT_1);
     String kernelNo = null; 
     String SliceUri = null; 
     String AppHandle = null;
     String appInst  = null; 
     int Nr_Cnt = 0; 
    stringBuffer.append(TEXT_2);
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/ccu8global/"));
     for (String appIns : appsList ) {
     appInst = appIns.substring(appIns.lastIndexOf("/")+1); 
     SliceUri = app.getMappedUri(AppBaseuri + appInst +"/global"); 
     if ((SliceUri != null) && (SliceUri.trim() != "")) { 
     kernelNo = SliceUri.substring(SliceUri.indexOf("/ccu8")+6,SliceUri.indexOf("/global")); 
    stringBuffer.append(TEXT_3);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_4);
    stringBuffer.append( kernelNo);
    stringBuffer.append(TEXT_5);
    stringBuffer.append( kernelNo);
    stringBuffer.append(TEXT_6);
    stringBuffer.append( kernelNo);
    stringBuffer.append(TEXT_7);
    } else {
    stringBuffer.append(TEXT_8);
    }
    stringBuffer.append(TEXT_9);
    }
    stringBuffer.append(TEXT_10);
     for (String appIns : appsList ) {
   appInst = appIns.substring(appIns.lastIndexOf("/")+1);
   if(Nr_Cnt == 0) 
   {
     AppHandle =  "(CCU8GLOBAL_HandleType*) &CCU8GLOBAL_Handle"+appInst;
   }
   else
   {
     AppHandle =  AppHandle + ",\n                          " + "(CCU8GLOBAL_HandleType*) &CCU8GLOBAL_Handle"+appInst;
   }
   Nr_Cnt++;
}
    stringBuffer.append(TEXT_11);
    stringBuffer.append(TEXT_12);
    stringBuffer.append(AppHandle);
    stringBuffer.append(TEXT_13);
    stringBuffer.append(TEXT_14);
    return stringBuffer.toString();
  }
}
