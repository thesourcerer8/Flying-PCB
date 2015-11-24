package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class dave3_c_template
{
  protected static String nl;
  public static synchronized dave3_c_template create(String lineSeparator)
  {
    nl = lineSeparator;
    dave3_c_template result = new dave3_c_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*******************************************************************************" + NL + " Copyright (c) 2011, Infineon Technologies AG                                 **" + NL + " All rights reserved.                                                         **" + NL + "                                                                              **" + NL + " Redistribution and use in source and binary forms, with or without           **" + NL + " modification,are permitted provided that the following conditions are met:   **" + NL + "                                                                              **" + NL + " *Redistributions of source code must retain the above copyright notice,      **" + NL + " this list of conditions and the following disclaimer.                        **" + NL + " *Redistributions in binary form must reproduce the above copyright notice,   **" + NL + " this list of conditions and the following disclaimer in the documentation    **" + NL + " and/or other materials provided with the distribution.                       **" + NL + " *Neither the name of the copyright holders nor the names of its contributors **" + NL + " may be used to endorse or promote products derived from this software without**" + NL + " specific prior written permission.                                           **" + NL + "                                                                              **" + NL + " THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\"  **" + NL + " AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **" + NL + " IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **" + NL + " ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **" + NL + " LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **" + NL + " CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **" + NL + " SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **" + NL + " INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **" + NL + " CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **" + NL + " ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **" + NL + " POSSIBILITY OF SUCH DAMAGE.                                                  **" + NL + "                                                                              **" + NL + " To improve the quality of the software, users are encouraged to share        **" + NL + " modifications, enhancements or bug fixes with Infineon Technologies AG       **" + NL + " dave@infineon.com).                                                          **" + NL + "                                                                              **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon <Microcontroller name, step>                           **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : June 27, 2013                                       **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "/**" + NL + " * @file  DAVE3.c" + NL + " *" + NL + " * @brief This file contains implementation of initialization functions calling sequence. " + NL + " *" + NL + " * Revision History" + NL + " * 27 June 2013 v1.0.33 Initial Version" + NL + " */" + NL + "" + NL + "/*******************************************************************************" + NL + "**                      Include Files                                         **" + NL + "*******************************************************************************/" + NL + "#include \"../../inc/DAVESupport/DAVE3.h\"" + NL + "" + NL + "/*******************************************************************************" + NL + "**                 Function declarations                                     **" + NL + "*******************************************************************************/" + NL + "" + NL + "//****************************************************************************" + NL + "// @Function      void DAVE_Init(void) " + NL + "//" + NL + "//----------------------------------------------------------------------------" + NL + "// @Description   This function initializes the Apps Init Functions." + NL + "//" + NL + "//----------------------------------------------------------------------------" + NL + "// @Returnvalue   None" + NL + "//" + NL + "//----------------------------------------------------------------------------" + NL + "// @Parameters    None" + NL + "//" + NL + "//****************************************************************************" + NL + "" + NL + "void DAVE_Init(void)" + NL + "{";
  protected final String TEXT_2 = NL + "     ";
  protected final String TEXT_3 = "     " + NL + "    //  NVIC Priority Grouping" + NL + "    NVIC_SetPriorityGrouping(1);";
  protected final String TEXT_4 = NL + NL + "//****************************************************************************" + NL + "// @Initialization of APPs Init Functions" + NL + "//****************************************************************************" + NL + "\t//  MUX configurations" + NL + "\tDAVE_MUX_PreInit();";
  protected final String TEXT_5 = " " + NL + "\t//  Initialization of app '";
  protected final String TEXT_6 = "'\t\t     " + NL + "\t";
  protected final String TEXT_7 = "_Init();" + NL + "\t";
  protected final String TEXT_8 = NL + "      " + NL + "\t//  MUX configurations" + NL + "\tDAVE_MUX_Init();\t" + NL + "} //  End of function DAVE_Init" + NL + NL;
  protected final String TEXT_9 = NL + "//****************************************************************************" + NL + "// @Function      void SystemInit_DAVE3(void) " + NL + "//" + NL + "//----------------------------------------------------------------------------" + NL + "// @Description   This function initializes the Clock Init Functions." + NL + "//" + NL + "//----------------------------------------------------------------------------" + NL + "// @Returnvalue   None" + NL + "//" + NL + "//----------------------------------------------------------------------------" + NL + "// @Parameters    None" + NL + "//" + NL + "//****************************************************************************" + NL + "" + NL + "void SystemInit_DAVE3(void)" + NL + "{" + NL + "\t// CLK Initialisation" + NL + "\tCLK001_Init();";
  protected final String TEXT_10 = "\t" + NL + "\t// EBU Initialisation" + NL + "\tEBU001_Init();";
  protected final String TEXT_11 = NL + "} //  End of function SystemInit_DAVE3" + NL;
  protected final String TEXT_12 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
     int xmc4Device = -1;
   xmc4Device = ((app.getSoftwareId().substring(0,1).compareTo("4")==0)?1:0); 
    stringBuffer.append(TEXT_1);
     String TempApps = null;
   String MyAppName = null;
   ArrayList<String> apps;
   ArrayList<String> apps_sorted = new ArrayList<String>();
   String TempLowerApps = null; 
   boolean CLKApp = false;
   boolean EBUApp = false;
   apps=(ArrayList<String>)(app.getApps());
 	 for (int k = 0; k < apps.size(); k++) {
		 TempApps = apps.get(k);
		 if(app.isAppInitProvider(apps.get(k)) == true) {
		 	MyAppName = TempApps.substring(TempApps.indexOf("/app/") + 5, TempApps.lastIndexOf("/"));
		 	TempLowerApps = MyAppName.toLowerCase(); 
		 
			 if (TempLowerApps.equalsIgnoreCase("clk001")) {CLKApp = true;}
			 if (TempLowerApps.equalsIgnoreCase("ebu001")) {EBUApp = true;}
			 
			 if(!apps_sorted.contains(TempLowerApps)) 
			 {       
				 apps_sorted.add(TempLowerApps);
			 }     
		 }  
     } 
    stringBuffer.append(TEXT_2);
    if (xmc4Device==1){
    stringBuffer.append(TEXT_3);
    }
    stringBuffer.append(TEXT_4);
     
 for (int k = 0; k < apps_sorted.size(); k++) 
 {
 TempLowerApps = apps_sorted.get(k);
    if (!(TempLowerApps.equalsIgnoreCase("canglobal"))){
    stringBuffer.append(TEXT_5);
    stringBuffer.append(TempLowerApps.toUpperCase());
    stringBuffer.append(TEXT_6);
    stringBuffer.append( TempLowerApps.toUpperCase());
    stringBuffer.append(TEXT_7);
    }
    
} 

    stringBuffer.append(TEXT_8);
     if (CLKApp) { 
    stringBuffer.append(TEXT_9);
     if (EBUApp) { 
    stringBuffer.append(TEXT_10);
     } 
    stringBuffer.append(TEXT_11);
     } 
    stringBuffer.append(TEXT_12);
    return stringBuffer.toString();
  }
}
