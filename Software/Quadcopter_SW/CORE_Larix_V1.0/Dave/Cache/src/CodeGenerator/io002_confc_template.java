package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class io002_confc_template
{
  protected static String nl;
  public static synchronized io002_confc_template create(String lineSeparator)
  {
    nl = lineSeparator;
    io002_confc_template result = new io002_confc_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[IO002_Conf.c]*/" + NL + "/*******************************************************************************" + NL + " Copyright (c) 2013, Infineon Technologies AG                                 **" + NL + " All rights reserved.                                                         **" + NL + "                                                                              **" + NL + " Redistribution and use in source and binary forms, with or without           **" + NL + " modification,are permitted provided that the following conditions are met:   **" + NL + "                                                                              **" + NL + " *Redistributions of source code must retain the above copyright notice,      **" + NL + " this list of conditions and the following disclaimer.                        **" + NL + " *Redistributions in binary form must reproduce the above copyright notice,   **" + NL + " this list of conditions and the following disclaimer in the documentation    **" + NL + " and/or other materials provided with the distribution.                       **" + NL + " *Neither the name of the copyright holders nor the names of its contributors **" + NL + " may be used to endorse or promote products derived from this software without** " + NL + " specific prior written permission.                                           **" + NL + "                                                                              **" + NL + " THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\"  **" + NL + " AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **" + NL + " IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **" + NL + " ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **" + NL + " LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **" + NL + " CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **" + NL + " SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **" + NL + " INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **" + NL + " CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **" + NL + " ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **" + NL + " POSSIBILITY OF SUCH DAMAGE.                                                  **" + NL + "                                                                              **" + NL + " To improve the quality of the software, users are encouraged to share        **" + NL + " modifications, enhancements or bug fixes with Infineon Technologies AG       **" + NL + " dave@infineon.com).                                                          **" + NL + "                                                                              **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC4000/XMC1000 Series                                 **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** MAY BE CHANGED BY USER [yes/no]: Yes                                       **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : Jan 1, 2014                                           **" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "/**" + NL + " * @file   IO002_Conf.c" + NL + " *" + NL + " * @brief  Configuration file generated based on UI settings " + NL + " *         of IO002 App" + NL + " */" + NL + "/* Revision History " + NL + " * 1. Jan 2013 v1.0.12  Ported to XMC1000 Devices, MISRA errors fixed." + NL + " * 2. Oct 2013 v1.0.24  Updated for separating static and dynamic code." + NL + " * 3. Jan1,2014 v1.0.26 Updated the file to fix the instance removal numbering issue" + NL + " * 4. Jan06,2014 v1.0.28 Updated the issue with port 14 pad register access." + NL + " */" + NL + "" + NL + "/*******************************************************************************" + NL + " ** INCLUDE FILES                                                             **" + NL + " ******************************************************************************/" + NL + "#include \"../../inc/IO002/IO002.h\"" + NL;
  protected final String TEXT_2 = NL;
  protected final String TEXT_3 = NL;
  protected final String TEXT_4 = " ";
  protected final String TEXT_5 = " ";
  protected final String TEXT_6 = " ";
  protected final String TEXT_7 = NL + NL + "const IO002_HandleType IO002_Handle";
  protected final String TEXT_8 = " = {" + NL + "  .PortNr   = ";
  protected final String TEXT_9 = "U , /* Mapped Port */" + NL + "  .PortPin  = ";
  protected final String TEXT_10 = "U,   /* Mapped Pin */" + NL + "  .OMR_PS = ";
  protected final String TEXT_11 = "U,/* omr_ps value*/" + NL + "  .PDR_PD = ";
  protected final String TEXT_12 = "U,/* pdr_pd value*/" + NL + "  .HW_SEL = ";
  protected final String TEXT_13 = "U,/* IO002_irwHWControl value */" + NL + "  .IOCR_PCR = ";
  protected final String TEXT_14 = "U,/* iocr_pcr value*/" + NL + "  .IOCR_PCR2 = ";
  protected final String TEXT_15 = "U,/* IO002_inputchardummy value*/" + NL + "  .IOCR_PO = ";
  protected final String TEXT_16 = "U,/* iocr_po value*/" + NL + "  .IOCR = ";
  protected final String TEXT_17 = "U,/* iocr_po value left shifted by 3*/" + NL + "  .IOCR_OE = ";
  protected final String TEXT_18 = "U,/* iocr_oe value*/" + NL + "  .PHCR_EN = ";
  protected final String TEXT_19 = "U,/* IO002_erwPadHysteresis value*/  ";
  protected final String TEXT_20 = NL + "  .PDR0_MSK = PORT";
  protected final String TEXT_21 = "_PDR0_PD";
  protected final String TEXT_22 = "_Msk,/* pad driver 0 mask*/" + NL + "  .PDR0_POS = PORT";
  protected final String TEXT_23 = "_PDR0_PD";
  protected final String TEXT_24 = "_Pos,/* pad driver 0 position*/" + NL + "\t";
  protected final String TEXT_25 = NL + "\t.PDR1_MSK = PORT";
  protected final String TEXT_26 = "_PDR1_PD";
  protected final String TEXT_27 = "_Msk,/* pad driver 1 mask*/" + NL + "\t.PDR1_POS = PORT";
  protected final String TEXT_28 = "_PDR1_PD";
  protected final String TEXT_29 = "_Pos,/* pad driver 1 position*/" + NL + "\t";
  protected final String TEXT_30 = "  ";
  protected final String TEXT_31 = " ";
  protected final String TEXT_32 = " ";
  protected final String TEXT_33 = NL + "  .PHCR0_MSK = PORT";
  protected final String TEXT_34 = "_PHCR0_PH";
  protected final String TEXT_35 = "_Msk,/*Hysteresis control 0 mask*/" + NL + "\t";
  protected final String TEXT_36 = "  " + NL + "  .PHCR1_MSK = PORT";
  protected final String TEXT_37 = "_PHCR1_PH";
  protected final String TEXT_38 = "_Msk,/*Hysteresis control 1 mask*/" + NL + "\t";
  protected final String TEXT_39 = "    " + NL + "  .PortRegs = (PORTS_TypeDef*)PORT";
  protected final String TEXT_40 = "_BASE, /* Port Base Address*/ " + NL + "\t";
  protected final String TEXT_41 = NL + "  .pdr0_ptr = (__IO uint32_t*)&(((PORTS_TypeDef*)PORT";
  protected final String TEXT_42 = "_BASE)->PDR0)" + NL + "\t";
  protected final String TEXT_43 = NL + "\t.pdr1_ptr = (__IO uint32_t*)&(((PORTS_TypeDef*)PORT";
  protected final String TEXT_44 = "_BASE)->PDR1)" + NL + "\t";
  protected final String TEXT_45 = NL + "  .pdr0_ptr = 0," + NL + "  .pdr1_ptr = 0" + NL + "\t";
  protected final String TEXT_46 = NL + "  .pdr0_ptr = 0," + NL + "  .pdr1_ptr = 0" + NL + "\t";
  protected final String TEXT_47 = NL + "      " + NL + "};";
  protected final String TEXT_48 = NL + "/* IO002 App instance (no.";
  protected final String TEXT_49 = ") is not mapped to any Port Pad. */";
  protected final String TEXT_50 = NL + NL + NL + NL + "const IO002_HandleType * IO002_HandleArr[IO002_NUM_INSTANCES] =" + NL + "{";
  protected final String TEXT_51 = " ";
  protected final String TEXT_52 = NL;
  protected final String TEXT_53 = NL + "\t&IO002_Handle";
  protected final String TEXT_54 = ",";
  protected final String TEXT_55 = " ";
  protected final String TEXT_56 = NL + "};" + NL + "" + NL + "  " + NL + "/*CODE_BLOCK_END*/";
  protected final String TEXT_57 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String P = "http://www.infineon.com/0.1.28/port/p/"; 
     String AppBaseuri = "app/io002/"; 
     String appInst  = null; 
    stringBuffer.append(TEXT_2);
     int IsXMC1000Device = -1; 
     IsXMC1000Device = ((app.getSoftwareId().substring(0,1).compareTo("1")==0)?1:0);

    stringBuffer.append(TEXT_3);
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/io002/"));
 for (String appIns : appsList ) {
 appInst = appIns.substring(appIns.lastIndexOf("/")+1);
     String pinUri = app.getMappedUri(AppBaseuri + appInst +"/pin"); 
     if ((pinUri != null) && (pinUri.trim() != "")) { 
     String portNo = pinUri.substring(pinUri.indexOf("port/p/")+7,pinUri.indexOf("/pad/")); 
     String pinNo = pinUri.substring(pinUri.indexOf("/pad/")+5,pinUri.length()); 
    stringBuffer.append(TEXT_4);
     int OMR_PS = app.getIntegerValue(AppBaseuri + appInst +"/pin/omr_ps");
int PDR_PD = app.getIntegerValue(AppBaseuri + appInst +"/pin/pdr_pd");
int HW_SEL = app.getIntegerValue(AppBaseuri + appInst +"IO002_irwHWControl");
int IOCR_PCR = app.getIntegerValue(AppBaseuri + appInst +"/pin/iocr_pcr");
int IOCR_PCR2 = app.getIntegerValue(AppBaseuri + appInst +"/IO002_inputchardummy");
int IOCR_PO = app.getIntegerValue(AppBaseuri + appInst +"/pin/iocr_po");
int IOCR_OE = app.getIntegerValue(AppBaseuri + appInst +"/pin/iocr_oe"); 
int PHCR_EN = app.getIntegerValue(AppBaseuri + appInst +"/IO002_erwPadHysteresis");
int IOCR    = (IOCR_PO << 3 );
     int Pin = Integer.parseInt(pinNo);
    stringBuffer.append(TEXT_5);
     int PortNum = Integer.parseInt(portNo);
    stringBuffer.append(TEXT_6);
     if(HW_SEL == -1 ) {
    HW_SEL = 0;
    }
    stringBuffer.append(TEXT_7);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_8);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_9);
    stringBuffer.append(pinNo);
    stringBuffer.append(TEXT_10);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/pin/omr_ps"));
    stringBuffer.append(TEXT_11);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/pin/pdr_pd"));
    stringBuffer.append(TEXT_12);
    stringBuffer.append( HW_SEL);
    stringBuffer.append(TEXT_13);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/pin/iocr_pcr"));
    stringBuffer.append(TEXT_14);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/IO002_inputchardummy"));
    stringBuffer.append(TEXT_15);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/pin/iocr_po"));
    stringBuffer.append(TEXT_16);
    stringBuffer.append( IOCR);
    stringBuffer.append(TEXT_17);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/pin/iocr_oe"));
    stringBuffer.append(TEXT_18);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/IO002_erwPadHysteresis"));
    stringBuffer.append(TEXT_19);
     if(IsXMC1000Device == 0){
    if(PortNum != 14){
     if(Pin < 8) {
    stringBuffer.append(TEXT_20);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_21);
    stringBuffer.append(pinNo);
    stringBuffer.append(TEXT_22);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_23);
    stringBuffer.append(pinNo);
    stringBuffer.append(TEXT_24);
     } else {
    stringBuffer.append(TEXT_25);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_26);
    stringBuffer.append(pinNo);
    stringBuffer.append(TEXT_27);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_28);
    stringBuffer.append(pinNo);
    stringBuffer.append(TEXT_29);
    }}}
    stringBuffer.append(TEXT_30);
     if(IOCR_OE == 0 ) {
    stringBuffer.append(TEXT_31);
     if (IsXMC1000Device == 1){
    stringBuffer.append(TEXT_32);
     if (Pin < 8) {
    stringBuffer.append(TEXT_33);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_34);
    stringBuffer.append(pinNo);
    stringBuffer.append(TEXT_35);
    } else if ((Pin >= 8) && (Pin <= 15)) {
    stringBuffer.append(TEXT_36);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_37);
    stringBuffer.append(pinNo);
    stringBuffer.append(TEXT_38);
    }
    }}
    stringBuffer.append(TEXT_39);
    stringBuffer.append( portNo);
    stringBuffer.append(TEXT_40);
     if (IsXMC1000Device == 0){
    if(PortNum != 14){
     if(Pin < 8) {
    stringBuffer.append(TEXT_41);
    stringBuffer.append( portNo);
    stringBuffer.append(TEXT_42);
     }else{
    stringBuffer.append(TEXT_43);
    stringBuffer.append( portNo);
    stringBuffer.append(TEXT_44);
    }}
    else{
    stringBuffer.append(TEXT_45);
    }
    }
    else{
    stringBuffer.append(TEXT_46);
    }
    stringBuffer.append(TEXT_47);
     } else { 
    stringBuffer.append(TEXT_48);
    stringBuffer.append( appInst );
    stringBuffer.append(TEXT_49);
     }} 
    stringBuffer.append(TEXT_50);
     int instance = 0; 
     int last_instance = 0; 
     for (String appIns : appsList ) { 
     appInst = appIns.substring(appIns.lastIndexOf("/")+1);
     instance++; 
    stringBuffer.append(TEXT_51);
    }
    stringBuffer.append(TEXT_52);
     last_instance = instance;
     instance = 0;
     for (String appIns : appsList ) { 
     appInst = appIns.substring(appIns.lastIndexOf("/")+1);
    stringBuffer.append(TEXT_53);
    stringBuffer.append(appInst);
     if(instance+1 != (last_instance)) {
    stringBuffer.append(TEXT_54);
    } 
     instance++; 
    stringBuffer.append(TEXT_55);
    }
    stringBuffer.append(TEXT_56);
    stringBuffer.append(TEXT_57);
    return stringBuffer.toString();
  }
}
