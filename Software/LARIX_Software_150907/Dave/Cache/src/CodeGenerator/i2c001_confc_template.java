package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class i2c001_confc_template
{
  protected static String nl;
  public static synchronized i2c001_confc_template create(String lineSeparator)
  {
    nl = lineSeparator;
    i2c001_confc_template result = new i2c001_confc_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + NL + "/*CODE_BLOCK_BEGIN[I2C001_Conf.c]*/" + NL + "/******************************************************************************" + NL + " Copyright (c) 2011, Infineon Technologies AG                                **" + NL + " All rights reserved.                                                        **" + NL + "                                                                             **" + NL + " Redistribution and use in source and binary forms, with or without          **" + NL + " modification,are permitted provided that the following conditions are met:  **" + NL + "                                                                             **" + NL + " *Redistributions of source code must retain the above copyright notice,     **" + NL + " this list of conditions and the following disclaimer.                       **" + NL + " *Redistributions in binary form must reproduce the above copyright notice,  **" + NL + " this list of conditions and the following disclaimer in the documentation   **" + NL + " and/or other materials provided with the distribution.                      **" + NL + " *Neither the name of the copyright holders nor the names of its contributors**" + NL + " may be used to endorse or promote products derived from this software       ** " + NL + " without specific prior written permission.                                  **" + NL + "                                                                             **" + NL + " THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" **" + NL + " AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE   **" + NL + " IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE  **" + NL + " ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE  **" + NL + " LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR        **" + NL + " CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF        **" + NL + " SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS   **" + NL + " INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN     **" + NL + " CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)      **" + NL + " ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE  **" + NL + " POSSIBILITY OF SUCH DAMAGE.                                                 **" + NL + "                                                                             **" + NL + " To improve the quality of the software, users are encouraged to share       **" + NL + " modifications, enhancements or bug fixes with Infineon Technologies AG      **" + NL + " dave@infineon.com).                                                         **" + NL + "                                                                             **" + NL + "*******************************************************************************" + NL + "**                                                                           **" + NL + "**                                                                           **" + NL + "** PLATFORM : Infineon XMC4000/XMC1000 Series                                **" + NL + "**                                                                           **" + NL + "** COMPILER : Compiler Independent                                           **" + NL + "**                                                                           **" + NL + "** AUTHOR   : App Developer                                                  **" + NL + "**                                                                           **" + NL + "** MAY BE CHANGED BY USER [yes/no]: Yes                                      **" + NL + "**                                                                           **" + NL + "** MODIFICATION DATE : Jan 28, 2013                                          **" + NL + "******************************************************************************/";
  protected final String TEXT_2 = NL + "/**" + NL + " * @file   I2C001_Conf.c" + NL + " *" + NL + " * @App Version I2C001 <";
  protected final String TEXT_3 = ">" + NL + " *" + NL + " * @brief  Configuration file generated based on UI settings " + NL + " *         of I2C001 App" + NL + " *" + NL + " */" + NL + "/*" + NL + " * Revision History" + NL + " * 28 Jan 2013 v1.0.22  Changes from 1.0.12 are" + NL + " *                      1. Modified as per coding guidelines and MISRA checks." + NL + " *                      2. Updated for alignments in revision history." + NL + " *                      3. Updated to support XMC1000 devices." + NL + " *" + NL + " */" + NL + "" + NL + "/******************************************************************************" + NL + " ** INCLUDE FILES                                                            **" + NL + " *****************************************************************************/" + NL + "#include <DAVE3.h>" + NL;
  protected final String TEXT_4 = NL;
  protected final String TEXT_5 = NL;
  protected final String TEXT_6 = NL + NL + "const I2C001Handle_type I2C001_Handle";
  protected final String TEXT_7 = "  = " + NL + "{" + NL + "  /* Temp Code for testing Eval functions */" + NL + "" + NL + "   .USICChannel = USIC_U";
  protected final String TEXT_8 = "C";
  protected final String TEXT_9 = ",/* USIC Channel No */" + NL + "   .I2CRegs = USIC";
  protected final String TEXT_10 = "_CH";
  protected final String TEXT_11 = ", /* Register Base address */" + NL + "   .BitRate  = (uint32_t) ";
  protected final String TEXT_12 = ",/* Bit Rate */" + NL + "   .TxLimit = (uint8_t) ";
  protected final String TEXT_13 = ",/* FIFO Tigger Level */" + NL + "   .RxLimit = (uint8_t) ";
  protected final String TEXT_14 = ",/* FIFO Tigger Level */" + NL + "   .TxFifoSize = (uint8_t) ";
  protected final String TEXT_15 = ",/* Tx FIFO Size */" + NL + "   .RxFifoSize = (uint8_t) ";
  protected final String TEXT_16 = ",/* Rx FIFO Size */" + NL + "   .StartCondRecvIntEn = (bool) ";
  protected final String TEXT_17 = ", /* Protocol specific interrupt enable */" + NL + "   .RepStartCondRecvIntEn = (bool) ";
  protected final String TEXT_18 = ", /* Protocol specific interrupt enable */" + NL + "   .StopCondRecvIntEn = (bool) ";
  protected final String TEXT_19 = ", /* Protocol specific interrupt enable */" + NL + "   .NackDetectIntEn = (bool) ";
  protected final String TEXT_20 = ", /* Protocol specific interrupt enable */" + NL + "   .ArbLostIntEn = (bool) ";
  protected final String TEXT_21 = ", /* Protocol specific interrupt enable */   " + NL + "   .ErrorIntEn = (bool) ";
  protected final String TEXT_22 = ", /* Protocol specific interrupt enable */   " + NL + "   .AckIntEn = (bool) ";
  protected final String TEXT_23 = " /* Protocol specific interrupt enable */   " + NL + "     " + NL + "};";
  protected final String TEXT_24 = NL + "/* CHANNEL IS NOT MAPPED */";
  protected final String TEXT_25 = NL;
  protected final String TEXT_26 = NL + "/*CODE_BLOCK_END*/ ";
  protected final String TEXT_27 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/i2c001/";
    stringBuffer.append(TEXT_2);
    stringBuffer.append(app.getAppVersion(AppBaseuri) );
    stringBuffer.append(TEXT_3);
     String MappedUri = null; 
     String UnitInst = null; 
     String ChannelInst = null; 
    stringBuffer.append(TEXT_4);
     String appInst  = null; 
    stringBuffer.append(TEXT_5);
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/i2c001/"));
 for (String appIns : appsList ) {
 appInst = appIns.substring(appIns.lastIndexOf("/")+1);
     MappedUri = app.getMappedUri(AppBaseuri + appInst + "/channel"); 
     if((MappedUri != null) && (MappedUri != "")) { 
     UnitInst = MappedUri.substring(MappedUri .length()-11,MappedUri.indexOf("/channel/")); 
     ChannelInst = MappedUri.substring(MappedUri.length()-1); 
    stringBuffer.append(TEXT_6);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_7);
    stringBuffer.append(UnitInst);
    stringBuffer.append(TEXT_8);
    stringBuffer.append( ChannelInst);
    stringBuffer.append(TEXT_9);
    stringBuffer.append(UnitInst);
    stringBuffer.append(TEXT_10);
    stringBuffer.append(ChannelInst);
    stringBuffer.append(TEXT_11);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/I2C001_irwbitrate") );
    stringBuffer.append(TEXT_12);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/channel/tbctr/limit") );
    stringBuffer.append(TEXT_13);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/channel/rbctr/limit") );
    stringBuffer.append(TEXT_14);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/channel/tbctr_size") );
    stringBuffer.append(TEXT_15);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/channel/rbctr_size") );
    stringBuffer.append(TEXT_16);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/I2C001_erwStartCondRecvInt/0") );
    stringBuffer.append(TEXT_17);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/I2C001_erwRepStartCondRecvInt/0") );
    stringBuffer.append(TEXT_18);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/I2C001_erwStopCondRecvInt/0") );
    stringBuffer.append(TEXT_19);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/I2C001_erwNackDetectInt/0") );
    stringBuffer.append(TEXT_20);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/I2C001_erwArbLostInt/0") );
    stringBuffer.append(TEXT_21);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/I2C001_erwErrorInt/0") );
    stringBuffer.append(TEXT_22);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/I2C001_erwAckInt/0") );
    stringBuffer.append(TEXT_23);
     } 
     else { 
    stringBuffer.append(TEXT_24);
     } 
    stringBuffer.append(TEXT_25);
     } 
    stringBuffer.append(TEXT_26);
    stringBuffer.append(TEXT_27);
    return stringBuffer.toString();
  }
}
