package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class adcglob001_confc_template
{
  protected static String nl;
  public static synchronized adcglob001_confc_template create(String lineSeparator)
  {
    nl = lineSeparator;
    adcglob001_confc_template result = new adcglob001_confc_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[ADCGLOB001_Conf.c]*/" + NL + "/*******************************************************************************" + NL + " Copyright (c) 2013, Infineon Technologies AG                                 **" + NL + " All rights reserved.                                                         **" + NL + "                                                                              **" + NL + " Redistribution and use in source and binary forms, with or without           **" + NL + " modification,are permitted provided that the following conditions are met:   **" + NL + "                                                                              **" + NL + " *Redistributions of source code must retain the above copyright notice,      **" + NL + " this list of conditions and the following disclaimer.                        **" + NL + " *Redistributions in binary form must reproduce the above copyright notice,   **" + NL + " this list of conditions and the following disclaimer in the documentation    **" + NL + " and/or other materials provided with the distribution.                       **" + NL + " *Neither the name of the copyright holders nor the names of its contributors **" + NL + " may be used to endorse or promote products derived from this software without**" + NL + " specific prior written permission.                                           **" + NL + "                                                                              **" + NL + " THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\"  **" + NL + " AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **" + NL + " IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **" + NL + " ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **" + NL + " LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **" + NL + " CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **" + NL + " SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **" + NL + " INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **" + NL + " CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **" + NL + " ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **" + NL + " POSSIBILITY OF SUCH DAMAGE.                                                  **" + NL + "                                                                              **" + NL + " To improve the quality of the software, users are encouraged to share        **" + NL + " modifications, enhancements or bug fixes with Infineon Technologies AG       **" + NL + " dave@infineon.com).                                                          **" + NL + "                                                                              **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC4000/XMC1000 Series                                 **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : DAVE App Developer                                              **" + NL + "**                                                                            **" + NL + "** MAY BE CHANGED BY USER [yes/no]: Yes                                       **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE :  14 Nov 2013                                           **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "**                       Author(s) Identity                                   **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "** Initials     Name                                                          **" + NL + "** ---------------------------------------------------------------------------**" + NL + "** prashana           DAVE App Developer                                      **" + NL + "*******************************************************************************/" + NL + "" + NL + "/**" + NL + " * @file ADCGLOBAL001_Conf.c" + NL + " *" + NL + " * @brief This file contains the configuration parameters for all instances of the" + NL + " * ADC GLOBAL App" + NL + " *" + NL + " * Change History:" + NL + " * Date       version       Details" + NL + " * 12-Dec-2012   1.0.5    Initial code added for XMC1000" + NL + " * 18-Jan-2013   1.0.6    Merging with XMC1000 done" + NL + " * 24-Apr-2013   1.0.12   Ported to XMC4500 step AB and" + NL + " *                        Source Result selection Feature added" + NL + " * 10-Jun-2013   1.0.14   1. Supported for XMC1100 device,  " + NL + " *                        2. Comment in header section - the Device series name is" + NL + " *                           made as XMC1000" + NL + " * 27-Jun-2013   1.0.16   Global limits made unavailable for adc004 app" + NL + " * 29-Aug-2013   1.0.18   XMC1200/XMC1300 New Sofware IDS added." + NL + " *                        Unused code removed" + NL + " * 31-Oct-2013   1.0.20   1. The macro name ADCGLOB001_DBG002_FUNCTION_ENTRY is " + NL + " *                        corrected as ADCGLOB001_FUNCTION_ENTRY " + NL + " *                        2. Analog Clock divider value minimum 1 was generated" + NL + " *                        and now it is made as 0 for XMC1000 devices. " + NL + " * 14-Nov-2013   1.0.22   CLK001_Init() for XMC4000 devices CLK002_Init() for " + NL + " *                        XMC1000 devices is removed in ADCGLOB001_Init() " + NL + " *                        function, since this CLK00x_Init() function is called" + NL + " *                        at the beginning  of the DAVE_Init() function.                        " + NL + " */" + NL + "" + NL + "#include <DAVE3.h>" + NL;
  protected final String TEXT_2 = NL;
  protected final String TEXT_3 = NL + NL + NL + "ADCGLOB001_DynamicDataType ADCGLOB001_DynamicData";
  protected final String TEXT_4 = " =" + NL + "{" + NL + "  .StateType = ADCGLOB001_UNINITIALIZED" + NL + "};    " + NL + "    " + NL + "        " + NL + "const ADCGLOB001_HandleType ADCGLOB001_Handle";
  protected final String TEXT_5 = " = " + NL + "{" + NL + "  .kGlobalPtr          = (VADC_GLOBAL_TypeDef*)(void*)VADC," + NL + "        " + NL + "  .kDynamicDataPtr      = &ADCGLOB001_DynamicData";
  protected final String TEXT_6 = "," + NL + " ";
  protected final String TEXT_7 = " " + NL + "  .KGlobBoundary0        = (uint16_t) ";
  protected final String TEXT_8 = "," + NL + "      " + NL + "  .KGlobBoundary1        = (uint16_t) ";
  protected final String TEXT_9 = ",";
  protected final String TEXT_10 = NL + "  .kAnalogClkDivider      = (uint8_t) ";
  protected final String TEXT_11 = "," + NL + "          " + NL + "  .kArbiterClkDivider     = (uint8_t) ";
  protected final String TEXT_12 = "," + NL + "      " + NL + "  .kSampleTimeControlClass0  = (uint8_t) ";
  protected final String TEXT_13 = "," + NL + "            " + NL + "  .kSampleTimeControlClass1   = (uint8_t) ";
  protected final String TEXT_14 = "," + NL + "  ";
  protected final String TEXT_15 = "       " + NL + "  .kEMUXSampleTimeControlClass0= (uint8_t) ";
  protected final String TEXT_16 = "," + NL + "                " + NL + "  .kEMUXSampleTimeControlClass1= (uint8_t) ";
  protected final String TEXT_17 = ",";
  protected final String TEXT_18 = "         " + NL + "  .kConversionModeClass0    = (uint8_t) ";
  protected final String TEXT_19 = "ADCGLOB001_12BIT,";
  protected final String TEXT_20 = "ADCGLOB001_10BIT,";
  protected final String TEXT_21 = "ADCGLOB001_8BIT,";
  protected final String TEXT_22 = "ADCGLOB001_10BITFAST,";
  protected final String TEXT_23 = NL + "             " + NL + "  .kConversionModeClass1     = (uint8_t) ";
  protected final String TEXT_24 = "ADCGLOB001_12BIT,";
  protected final String TEXT_25 = "ADCGLOB001_10BIT,";
  protected final String TEXT_26 = "ADCGLOB001_8BIT,";
  protected final String TEXT_27 = "ADCGLOB001_10BITFAST,";
  protected final String TEXT_28 = NL + "  ";
  protected final String TEXT_29 = "      " + NL + "  .kEMUXConversionModeClass0   = (uint8_t) ";
  protected final String TEXT_30 = "ADCGLOB001_12BIT,";
  protected final String TEXT_31 = "ADCGLOB001_10BIT,";
  protected final String TEXT_32 = "ADCGLOB001_8BIT,";
  protected final String TEXT_33 = "ADCGLOB001_10BITFAST,";
  protected final String TEXT_34 = NL + "          " + NL + "  .kEMUXConversionModeClass1   = (uint8_t) ";
  protected final String TEXT_35 = "ADCGLOB001_12BIT,";
  protected final String TEXT_36 = "ADCGLOB001_10BIT,";
  protected final String TEXT_37 = "ADCGLOB001_8BIT,";
  protected final String TEXT_38 = "ADCGLOB001_10BITFAST,";
  protected final String TEXT_39 = "        " + NL + "  .keStartCalib           = (uint8_t) ";
  protected final String TEXT_40 = "," + NL + "          " + NL + "  .keDoubleClkMSBConver     = (uint8_t) ";
  protected final String TEXT_41 = NL + " " + NL + "};" + NL + "  ";
  protected final String TEXT_42 = NL + NL + NL;
  protected final String TEXT_43 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
     int Is11Device = -1; 
     Is11Device = ((app.getSoftwareId().substring(0,2).compareTo("11")==0)?1:0); 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/adcglob001/"; 
     String appInst  = null; 
    stringBuffer.append(TEXT_2);
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/adcglob001/"));

for (String appIns : appsList ) {
    appInst = appIns.substring(appIns.lastIndexOf("/")+1);
    stringBuffer.append(TEXT_3);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_4);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_5);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_6);
    if (Is11Device!=1)	{
    stringBuffer.append(TEXT_7);
    stringBuffer.append(app.getIntegerValue(AppBaseuri + appInst + "/adcglob001_irwglobboundary0"));
    stringBuffer.append(TEXT_8);
    stringBuffer.append(app.getIntegerValue(AppBaseuri + appInst + "/adcglob001_irwglobboundary1"));
    stringBuffer.append(TEXT_9);
    }
    stringBuffer.append(TEXT_10);
    stringBuffer.append(app.getIntegerValue(AppBaseuri + appInst + "/adcglob001_irwanalogclockdivider"));
    stringBuffer.append(TEXT_11);
    stringBuffer.append(app.getIntegerValue(AppBaseuri + appInst + "/adcglob001_irwdigitalclockdivider"));
    stringBuffer.append(TEXT_12);
    stringBuffer.append(app.getIntegerValue(AppBaseuri + appInst + "/adcglob001_irwclass0stcsvalue"));
    stringBuffer.append(TEXT_13);
    stringBuffer.append(app.getIntegerValue(AppBaseuri + appInst + "/adcglob001_irwclass1stcsvalue"));
    stringBuffer.append(TEXT_14);
    if (Is11Device!=1)	{
    stringBuffer.append(TEXT_15);
    stringBuffer.append(app.getIntegerValue(AppBaseuri + appInst + "/adcglob001_irwclass0stcevalue"));
    stringBuffer.append(TEXT_16);
    stringBuffer.append(app.getIntegerValue(AppBaseuri + appInst + "/adcglob001_irwclass1stcevalue"));
    stringBuffer.append(TEXT_17);
    }
    stringBuffer.append(TEXT_18);
     if (app.getIntegerValue(AppBaseuri + appInst + "/adcglob001001_erwconmodeclass0") == 0){
    stringBuffer.append(TEXT_19);
    } else if  (app.getIntegerValue(AppBaseuri + appInst + "/adcglob001001_erwconmodeclass0") == 1){
    stringBuffer.append(TEXT_20);
    } else if  (app.getIntegerValue(AppBaseuri + appInst + "/adcglob001001_erwconmodeclass0") == 2){
    stringBuffer.append(TEXT_21);
    } else if  (app.getIntegerValue(AppBaseuri + appInst + "/adcglob001001_erwconmodeclass0") == 5){
    stringBuffer.append(TEXT_22);
    } 
    stringBuffer.append(TEXT_23);
     if (app.getIntegerValue(AppBaseuri + appInst + "/adcglob001001_erwconmodeclass1") == 0){
    stringBuffer.append(TEXT_24);
    } else if  (app.getIntegerValue(AppBaseuri + appInst + "/adcglob001001_erwconmodeclass1") == 1){
    stringBuffer.append(TEXT_25);
    } else if  (app.getIntegerValue(AppBaseuri + appInst + "/adcglob001001_erwconmodeclass1") == 2){
    stringBuffer.append(TEXT_26);
    } else if  (app.getIntegerValue(AppBaseuri + appInst + "/adcglob001001_erwconmodeclass1") == 5){
    stringBuffer.append(TEXT_27);
    } 
    stringBuffer.append(TEXT_28);
    if (Is11Device!=1)	{
    stringBuffer.append(TEXT_29);
     if (app.getIntegerValue(AppBaseuri + appInst + "/adcglob001001_erwextmuxclass0") == 0){
    stringBuffer.append(TEXT_30);
    } else if  (app.getIntegerValue(AppBaseuri + appInst + "/adcglob001001_erwextmuxclass0") == 1){
    stringBuffer.append(TEXT_31);
    } else if  (app.getIntegerValue(AppBaseuri + appInst + "/adcglob001001_erwextmuxclass0") == 2){
    stringBuffer.append(TEXT_32);
    } else if  (app.getIntegerValue(AppBaseuri + appInst + "/adcglob001001_erwextmuxclass0") == 5){
    stringBuffer.append(TEXT_33);
    } 
    stringBuffer.append(TEXT_34);
     if (app.getIntegerValue(AppBaseuri + appInst + "/adcglob001001_erwextmuxclass1") == 0){
    stringBuffer.append(TEXT_35);
    } else if  (app.getIntegerValue(AppBaseuri + appInst + "/adcglob001001_erwextmuxclass1") == 1){
    stringBuffer.append(TEXT_36);
    } else if  (app.getIntegerValue(AppBaseuri + appInst + "/adcglob001001_erwextmuxclass1") == 2){
    stringBuffer.append(TEXT_37);
    } else if  (app.getIntegerValue(AppBaseuri + appInst + "/adcglob001001_erwextmuxclass1") == 5){
    stringBuffer.append(TEXT_38);
    } 
    }
    stringBuffer.append(TEXT_39);
    stringBuffer.append(app.getIntegerValue(AppBaseuri + appInst + "/adcglob001_erwstartupcalibration"));
    stringBuffer.append(TEXT_40);
    stringBuffer.append(app.getIntegerValue(AppBaseuri + appInst + "/adcglob001_erwdblclockmsb"));
    stringBuffer.append(TEXT_41);
    }
    stringBuffer.append(TEXT_42);
    stringBuffer.append(TEXT_43);
    return stringBuffer.toString();
  }
}
