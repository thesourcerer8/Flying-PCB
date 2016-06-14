package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class uart001_confc_template
{
  protected static String nl;
  public static synchronized uart001_confc_template create(String lineSeparator)
  {
    nl = lineSeparator;
    uart001_confc_template result = new uart001_confc_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[UART001_Conf.c]*/" + NL + "/*******************************************************************************" + NL + " Copyright (c) 2013, Infineon Technologies AG                                 **" + NL + " All rights reserved.                                                         **" + NL + "                                                                              **" + NL + " Redistribution and use in source and binary forms, with or without           **" + NL + " modification,are permitted provided that the following conditions are met:   **" + NL + "                                                                              **" + NL + " *Redistributions of source code must retain the above copyright notice,      **" + NL + " this list of conditions and the following disclaimer.                        **" + NL + " *Redistributions in binary form must reproduce the above copyright notice,   **" + NL + " this list of conditions and the following disclaimer in the documentation    **" + NL + " and/or other materials provided with the distribution.                       **" + NL + " *Neither the name of the copyright holders nor the names of its              **" + NL + " contributors may be used to endorse or promote products derived from this    **" + NL + " software without specific prior written permission.                          **" + NL + "                                                                              **" + NL + " THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\"  **" + NL + " AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **" + NL + " IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **" + NL + " ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **" + NL + " LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **" + NL + " CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **" + NL + " SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **" + NL + " INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **" + NL + " CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **" + NL + " ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **" + NL + " POSSIBILITY OF SUCH DAMAGE.                                                  **" + NL + "                                                                              **" + NL + " To improve the quality of the software, users are encouraged to share        **" + NL + " modifications, enhancements or bug fixes with Infineon Technologies AG       **" + NL + " dave@infineon.com).                                                          **" + NL + "                                                                              **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC4000/XMC1000 Series                                 **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** NOTE     : Any Changes made to this file will be overwritten during Code   **" + NL + "**            Generation                                                      **" + NL + "**                                                                            **" + NL + "********************************************************************************" + NL + "** VERSION HISTORY:" + NL + "********************************************************************************" + NL + "** 04 Dec 2012 v1.0.4   Changes from 1.0.2 are" + NL + "**                      1. Modified the handle parameters for macros from" + NL + "**                      numbers." + NL + "**                      2. Modified as per coding guidelines and MISRA checks                " + NL + "** 26 Mar 2013 v1.0.10  1. Updated for the alignment in revision history." + NL + "**                      2. Updated to support XMC1000 devices. " + NL + "**                      3. Modified the structure UART001_HandleType to add" + NL + "**                      baud parameters for the configured baud rate." + NL + "** 29 Nov 2013 v1.0.20  1. Created Array of handle pointers to store the handle" + NL + "**                      base addresses." + NL + "**                      2. Added UART001.h inclusion in the UART001_Conf.c, to " + NL + "**                      get the handle type declarations." + NL + "**                      3. Added Tx & RX pin handle configurations in the " + NL + "**                      UART001_HandleType, to configure the mapped port base " + NL + "**                      address and the pin number." + NL + "**                      4. Removed DAVE3.h inclusion to fix the MISR warning for" + NL + "**                      multiple includes.                 " + NL + "*******************************************************************************/ " + NL + "/**" + NL + " * @file   UART001_Conf.c" + NL + " * " + NL + " * @App Version UART001 <";
  protected final String TEXT_2 = ">" + NL + " *" + NL + " * @brief  Configuration file generated based on UI settings " + NL + " *         of UART001 App" + NL + " *" + NL + " */" + NL + "" + NL + "/*******************************************************************************" + NL + " ** INCLUDE FILES                                                             **" + NL + " ******************************************************************************/" + NL + "#include \"../../inc/UART001/UART001.h\"";
  protected final String TEXT_3 = NL + "const UART001_HandleType UART001_Handle";
  protected final String TEXT_4 = "  = " + NL + "{" + NL + "   .UartRegs = USIC";
  protected final String TEXT_5 = "_CH";
  protected final String TEXT_6 = ", /* Usic Channel offset value */" + NL + "   .PinHandle = {";
  protected final String TEXT_7 = "   ";
  protected final String TEXT_8 = NL + "                 /* Tx port pin base address & pin no.*/" + NL + "                 (UART001_PORTS_TypeDef *) PORT";
  protected final String TEXT_9 = "_BASE, (uint8_t) ";
  protected final String TEXT_10 = ",";
  protected final String TEXT_11 = NL + "                 /* Tx PIN instance (no.";
  protected final String TEXT_12 = ") is not mapped to any port pin. */";
  protected final String TEXT_13 = "   ";
  protected final String TEXT_14 = NL + "                 /* Rx port pin base address & pin no.*/" + NL + "                 (UART001_PORTS_TypeDef *) PORT";
  protected final String TEXT_15 = "_BASE, (uint8_t) ";
  protected final String TEXT_16 = NL + "                 /* Rx PIN instance (no.";
  protected final String TEXT_17 = ") is not mapped to any port pin. */";
  protected final String TEXT_18 = NL + "   \t\t\t\t},  ";
  protected final String TEXT_19 = "\t\t\t" + NL + "   .Mode = ";
  protected final String TEXT_20 = "UART_LOOPBACK";
  protected final String TEXT_21 = "UART_HALFDUPLEX";
  protected final String TEXT_22 = "UART_FULLDUPLEX";
  protected final String TEXT_23 = ", /* Mode */" + NL + "   .StopBit = ";
  protected final String TEXT_24 = "UART_TWO_STOPBIT";
  protected final String TEXT_25 = "UART_ONE_STOPBIT";
  protected final String TEXT_26 = ",/* StopBit */" + NL + "   .Parity  = ";
  protected final String TEXT_27 = "UART_PARITY_EVEN";
  protected final String TEXT_28 = "UART_PARITY_ODD";
  protected final String TEXT_29 = "UART_PARITY_NONE";
  protected final String TEXT_30 = ",/* Parity */ " + NL + "   .DataBits = (uint16_t)";
  protected final String TEXT_31 = ",/* Word Length */" + NL + "   .BaudRate  = (uint32_t)";
  protected final String TEXT_32 = ",/*Baud Rate */" + NL + "   .TxFifoEn = (bool) ";
  protected final String TEXT_33 = ", /* Additional Transmit FIFO buffer capability enable */" + NL + "   .RxFifoEn = (bool) ";
  protected final String TEXT_34 = ", /* Additional Receive FIFO buffer capability enable */" + NL + "   .TxLimit = (uint8_t)";
  protected final String TEXT_35 = ",/* FIFO Tigger Level */" + NL + "   .RxLimit = (uint8_t)";
  protected final String TEXT_36 = ",/* FIFO Tigger Level */" + NL + "   .TxFifoSize = (uint8_t)";
  protected final String TEXT_37 = ",/* Tx FIFO Size */" + NL + "   .RxFifoSize = (uint8_t)";
  protected final String TEXT_38 = ",/* Rx FIFO Size */" + NL + "   .RecvNoiseEn = (bool)";
  protected final String TEXT_39 = ", /* Protocol specific interrupt enable */" + NL + "   .FormatErrEn = (bool)";
  protected final String TEXT_40 = ", /* Protocol specific interrupt enable */" + NL + "   .FrameFinEn = (bool)";
  protected final String TEXT_41 = ", /* Protocol specific interrupt enable */" + NL + "   .BGR_STEP = (uint16_t)";
  protected final String TEXT_42 = ",  /* Baud Rate Generation step value */" + NL + "   .BGR_PDIV = (uint16_t)";
  protected final String TEXT_43 = ",   /* Baud Rate Generation  pdiv value */" + NL + "   .BGR_DCTQ = (uint16_t)";
  protected final String TEXT_44 = ", /* Baud Rate Generation dctq value */";
  protected final String TEXT_45 = "   " + NL + "   .BGR_SP = (uint16_t)";
  protected final String TEXT_46 = ", /* Baud Rate Generation sampling point */" + NL + "   .BGR_PCTQ = (uint8_t)0  /* Baud Rate Generation pctq value */" + NL + "};" + NL;
  protected final String TEXT_47 = NL + "/* CHANNEL IS NOT MAPPED */";
  protected final String TEXT_48 = NL + "const UART001_HandleType *UART001_HandleArray[UART001_NUM_HANDLES] = " + NL + "{";
  protected final String TEXT_49 = "  \t\t" + NL + "   &UART001_Handle";
  protected final String TEXT_50 = ",";
  protected final String TEXT_51 = " ";
  protected final String TEXT_52 = NL + "};";
  protected final String TEXT_53 = NL + NL + "/*CODE_BLOCK_END*/";
  protected final String TEXT_54 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
     String AppBaseuri = "app/uart001/";
    stringBuffer.append(TEXT_1);
    stringBuffer.append( app.getAppVersion(AppBaseuri));
    stringBuffer.append(TEXT_2);
     String Uarturi = "peripheral/usic/"; 
     String MappedUri = null; 
     String UnitInst = null; 
     String ChannelInst = null; 
     int mode= 0; 
     int loopcount= 0; 
     int NodeNr= 0; 
     String appInst  = null; 
     int uart001_Configured= 0; 
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/uart001/"));
 for (String appIns : appsList ) {
 appInst = appIns.substring(appIns.lastIndexOf("/")+1);
     MappedUri = app.getMappedUri(AppBaseuri + appInst + "/channel"); 
     if((MappedUri != null) && (MappedUri != "")) { 
     UnitInst = MappedUri.substring(MappedUri .length()-11,MappedUri.indexOf("/channel/")); 
     ChannelInst = MappedUri.substring(MappedUri.length()-1); 
     uart001_Configured = 1; 
     NodeNr++; 
    stringBuffer.append(TEXT_3);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_4);
    stringBuffer.append( UnitInst );
    stringBuffer.append(TEXT_5);
    stringBuffer.append( ChannelInst );
    stringBuffer.append(TEXT_6);
     String pinUri = app.getMappedUri(AppBaseuri + appInst +"/uart_txpin"); 
     if ((pinUri != null) && (pinUri.trim() != "")) { 
     String portNo = pinUri.substring(pinUri.indexOf("port/p/")+7,pinUri.indexOf("/pad/")); 
     String pinNo = pinUri.substring(pinUri.indexOf("/pad/")+5,pinUri.length()); 
    stringBuffer.append(TEXT_7);
     int Pin = Integer.parseInt(pinNo);
    stringBuffer.append(TEXT_8);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_9);
    stringBuffer.append( Pin );
    stringBuffer.append(TEXT_10);
    } else { 
    stringBuffer.append(TEXT_11);
    stringBuffer.append( appInst );
    stringBuffer.append(TEXT_12);
    } 
     String pinUri1 = app.getMappedUri(AppBaseuri + appInst +"/uart_rxpin"); 
     if ((pinUri1 != null) && (pinUri1.trim() != "")) { 
     String portNo1 = pinUri1.substring(pinUri1.indexOf("port/p/")+7,pinUri1.indexOf("/pad/")); 
     String pinNo1 = pinUri1.substring(pinUri1.indexOf("/pad/")+5,pinUri1.length()); 
    stringBuffer.append(TEXT_13);
     int Pin1 = Integer.parseInt(pinNo1);
    stringBuffer.append(TEXT_14);
    stringBuffer.append(portNo1);
    stringBuffer.append(TEXT_15);
    stringBuffer.append( Pin1 );
    } else { 
    stringBuffer.append(TEXT_16);
    stringBuffer.append( appInst );
    stringBuffer.append(TEXT_17);
    } 
    stringBuffer.append(TEXT_18);
      for (int t=0; t< 3; t++) { 
	  int opmode = app.getIntegerValue(AppBaseuri + appInst + "/uart001_erwmode/" + t);   
	  if (opmode == 1) {  
	  mode = t ;
	} 
	} 
    stringBuffer.append(TEXT_19);
     if(mode==2){
    stringBuffer.append(TEXT_20);
    } else if(mode==1){
    stringBuffer.append(TEXT_21);
    } else{
    stringBuffer.append(TEXT_22);
    }
    stringBuffer.append(TEXT_23);
    if((app.getIntegerValue(AppBaseuri + appInst +"/channel/pcr/stpb")) == 1){
    stringBuffer.append(TEXT_24);
    } else{
    stringBuffer.append(TEXT_25);
    }
    stringBuffer.append(TEXT_26);
    if ((app.getIntegerValue(AppBaseuri + appInst +"/channel/ccr/pm")) == 2){
    stringBuffer.append(TEXT_27);
    } else if ((app.getIntegerValue(AppBaseuri + appInst +"/channel/ccr/pm")) == 3){
    stringBuffer.append(TEXT_28);
    }else if ((app.getIntegerValue(AppBaseuri + appInst +"/channel/ccr/pm")) == 0){
    stringBuffer.append(TEXT_29);
    }else{} 
    stringBuffer.append(TEXT_30);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/channel/sctr/wle") );
    stringBuffer.append(TEXT_31);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/uart001_irwbaudrate") );
    stringBuffer.append(TEXT_32);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/UART001_erwEnbleTxFIFO/0") );
    stringBuffer.append(TEXT_33);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/UART001_erwEnbleRxFIFO/0") );
    stringBuffer.append(TEXT_34);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/channel/tbctr/limit") );
    stringBuffer.append(TEXT_35);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/channel/rbctr/limit") );
    stringBuffer.append(TEXT_36);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/channel/tbctr_size") );
    stringBuffer.append(TEXT_37);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/channel/rbctr_size") );
    stringBuffer.append(TEXT_38);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/uart001_erwRecvNoiseDetectInt/0") );
    stringBuffer.append(TEXT_39);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/uart001_erwFmtErrorInt/0") );
    stringBuffer.append(TEXT_40);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst +"/uart001_erwFrameFinishInt/0") );
    stringBuffer.append(TEXT_41);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/uart001_stepvalue"));
    stringBuffer.append(TEXT_42);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/uart001_pdivvalue"));
    stringBuffer.append(TEXT_43);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/Time_Quanta_dummylevel") );
    stringBuffer.append(TEXT_44);
    	double sampling_point = 0.0;
 	long sampling_point1 = 0;
 	int dctq = (app.getIntegerValue(AppBaseuri + appInst + "/Time_Quanta_dummylevel")); 	    
   sampling_point = (((1 + dctq) / 2)  +  1);   
   sampling_point1 = Math.round(sampling_point); 			
 
    stringBuffer.append(TEXT_45);
    stringBuffer.append( sampling_point1);
    stringBuffer.append(TEXT_46);
     } 
     else { 
    stringBuffer.append(TEXT_47);
     } 
    } 
     if(uart001_Configured == 1) { 
    stringBuffer.append(TEXT_48);
     for (String appIns1 : appsList ) {
	appInst = appIns1.substring(appIns1.lastIndexOf("/")+1);
     MappedUri = app.getMappedUri(AppBaseuri + appInst + "/channel"); 
     if((MappedUri != null) && (MappedUri != "")) { 
    stringBuffer.append(TEXT_49);
    stringBuffer.append(appInst);
     loopcount++; 
     if(loopcount != NodeNr) { 
    stringBuffer.append(TEXT_50);
     } 
     } 
    stringBuffer.append(TEXT_51);
    } 
    stringBuffer.append(TEXT_52);
     } 
    stringBuffer.append(TEXT_53);
    stringBuffer.append(TEXT_54);
    return stringBuffer.toString();
  }
}
