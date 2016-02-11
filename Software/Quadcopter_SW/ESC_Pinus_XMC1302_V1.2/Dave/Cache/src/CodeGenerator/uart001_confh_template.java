package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class uart001_confh_template
{
  protected static String nl;
  public static synchronized uart001_confh_template create(String lineSeparator)
  {
    nl = lineSeparator;
    uart001_confh_template result = new uart001_confh_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[UART001_Conf.h]*/" + NL + "/*******************************************************************************" + NL + "**                                                                            **" + NL + "** Copyright (C) 2013 Infineon Technologies AG. All rights reserved.          **" + NL + "**                                                                            **" + NL + "** Infineon Technologies AG (Infineon) is supplying this software for use     **" + NL + "** with Infineon's microcontrollers.                                          **" + NL + "** This file can be freely distributed within development tools that are      **" + NL + "** supporting such microcontrollers.                                          **" + NL + "**                                                                            **" + NL + "** THIS SOFTWARE IS PROVIDED \"AS IS\".  NO WARRANTIES, WHETHER EXPRESS,        **" + NL + "** IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF **" + NL + "** MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS         **" + NL + "** SOFTWARE. INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, ** " + NL + "** INCIDENTAL, OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.           **" + NL + "**                                                                            **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC4000/XMC1000 Series                                 **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** NOTE     : Any Changes made to this file will be overwritten during Code   **" + NL + "**            Generation                                                      **" + NL + "**                                                                            **" + NL + "********************************************************************************" + NL + "** VERSION HISTORY:" + NL + "********************************************************************************" + NL + "** 29 Nov 2013 v1.0.20  1. Added global macro definitions required by UART001 " + NL + "**                      App." + NL + "**                      2. Removed DAVE3.h inclusion to fix the MISR warning for" + NL + "**                      multiple includes.     " + NL + "*******************************************************************************/" + NL + "/**" + NL + " * @file   UART001_Conf.h" + NL + " * " + NL + " * @App Version UART001 <";
  protected final String TEXT_2 = ">" + NL + " *" + NL + " * @brief  Configuration file generated based on UI settings " + NL + " *         of UART001 App" + NL + " *" + NL + " */" + NL + "#ifndef _CONF_UART001_H_" + NL + "#define _CONF_UART001_H_" + NL + "" + NL + "#ifdef __cplusplus" + NL + "extern \"C\" {" + NL + "#endif" + NL + "" + NL + "/*******************************************************************************" + NL + "** @Defines" + NL + "*******************************************************************************/";
  protected final String TEXT_3 = "   ";
  protected final String TEXT_4 = NL + "/*System Core clock frequency in MHz */" + NL + "#define UART001_CLOCK    ";
  protected final String TEXT_5 = "F ";
  protected final String TEXT_6 = NL + "/*Base Address of mapped USIC Module for App Instance ";
  protected final String TEXT_7 = " */" + NL + "#define UART001_";
  protected final String TEXT_8 = "_USIC \t  USIC";
  protected final String TEXT_9 = NL + "/*Base Address of mapped USIC Channel for App Instance ";
  protected final String TEXT_10 = " */" + NL + "#define UART001_";
  protected final String TEXT_11 = "_USIC_CH  USIC";
  protected final String TEXT_12 = "_CH";
  protected final String TEXT_13 = NL + "/*USIC0 peripheral module has been configured */" + NL + "#define UART001_PER0_USIC";
  protected final String TEXT_14 = "_ENABLED";
  protected final String TEXT_15 = NL + "/*USIC1 peripheral module has been configured */" + NL + "#define UART001_PER1_USIC";
  protected final String TEXT_16 = "_ENABLED";
  protected final String TEXT_17 = NL + "/*USIC1 peripheral module has been configured */" + NL + "#define UART001_PER1_USIC";
  protected final String TEXT_18 = "_ENABLED";
  protected final String TEXT_19 = NL + "/*Macro specifying the transmit FIFO buffer has been enabled */" + NL + "#define UART001_TXFIFO_ENABLE";
  protected final String TEXT_20 = " ";
  protected final String TEXT_21 = " ";
  protected final String TEXT_22 = NL + "/*Macro specifying the receive FIFO buffer has been enabled */" + NL + "#define UART001_RXFIFO_ENABLE ";
  protected final String TEXT_23 = NL + "/*CHANNEL IS NOT MAPPED */";
  protected final String TEXT_24 = NL + "/*Macro specifying the number of UART001 handles */" + NL + "#define UART001_NUM_HANDLES   ";
  protected final String TEXT_25 = NL + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif   " + NL + "" + NL + "#endif /* End of _CONF_UART001_H_ */" + NL + "/*CODE_BLOCK_END*/";
  protected final String TEXT_26 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
     String Baseuri = "app/uart001/";
    stringBuffer.append(TEXT_1);
    stringBuffer.append( app.getAppVersion(Baseuri));
    stringBuffer.append(TEXT_2);
     String AppBaseuri = "app/uart001/";
     String Uarturi = "peripheral/usic/"; 
     String MappedUri = null; 
     String appInst  = null; 
     String UnitInst = null; 
     String ChannelInst = null; 
     int NodeNr = 0; 
     int USIC0_Enable = 0; 
     int USIC1_Enable = 0; 
     int USIC2_Enable = 0; 
     int TxFifo_Enable = 0; 
     int RxFifo_Enable = 0; 
     double clockfreq = 0; 
     int Is44Device = -1; 
     int Is42Device = -1; 
     int Is45Device = -1; 
     int Is1xDevice = -1; 
     String deviceId = null; 
     deviceId = app.getSoftwareId(); 
     if (deviceId != null)
{      
   Is44Device = ((deviceId.substring(0,2).compareTo("44")==0)?1:0);
   Is42Device = ((deviceId.substring(0,2).compareTo("42")==0)?1:0);
   Is45Device = ((deviceId.substring(0,2).compareTo("45")==0)?1:0);
   Is1xDevice = ((deviceId.substring(0,1).compareTo("1")==0)?1:0); 	
}
    stringBuffer.append(TEXT_3);
     if(Is1xDevice == 1){
  clockfreq = app.getDoubleValue (AppBaseuri + 0 + "/clockapp/clk002_irMCLK" );
}else if ((Is45Device==1)||(Is44Device==1)||(Is42Device==1)){
  clockfreq = app.getDoubleValue (AppBaseuri + 0 + "/clockapp/clk001_iroActualFreqPB" );
}
else{}

    stringBuffer.append(TEXT_4);
    stringBuffer.append( clockfreq);
    stringBuffer.append(TEXT_5);
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/uart001/")); 
      for (String appIns : appsList ) {
 appInst = appIns.substring(appIns.lastIndexOf("/")+1);
     MappedUri = app.getMappedUri(AppBaseuri + appInst + "/channel"); 
     if((MappedUri != null) && (MappedUri != "")) { 
     UnitInst = MappedUri.substring(MappedUri .length()-11,MappedUri.indexOf("/channel/")); 
     ChannelInst = MappedUri.substring(MappedUri.length()-1); 
     NodeNr++; 
    stringBuffer.append(TEXT_6);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_7);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_8);
    stringBuffer.append(UnitInst);
    stringBuffer.append(TEXT_9);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_10);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_11);
    stringBuffer.append( UnitInst );
    stringBuffer.append(TEXT_12);
    stringBuffer.append( ChannelInst );
     int Unit = Integer.parseInt(UnitInst); 
     if((Unit == 0) && (USIC0_Enable == 0)) { 
    stringBuffer.append(TEXT_13);
    stringBuffer.append( Unit );
    stringBuffer.append(TEXT_14);
     USIC0_Enable = 1; 
    } else if ((Unit == 1) && (USIC1_Enable == 0)){
    stringBuffer.append(TEXT_15);
    stringBuffer.append( Unit );
    stringBuffer.append(TEXT_16);
     USIC1_Enable = 1; 
     } else if ((Unit == 2) && (USIC2_Enable == 0)){
    stringBuffer.append(TEXT_17);
    stringBuffer.append( Unit );
    stringBuffer.append(TEXT_18);
     USIC2_Enable = 1; 
     }
     int TempFifoEn = app.getIntegerValue(AppBaseuri + appInst +"/UART001_erwEnbleTxFIFO/0");
    if ((TempFifoEn == 1) && (TxFifo_Enable == 0))
{ 
    stringBuffer.append(TEXT_19);
     TxFifo_Enable = 1; 
    }
    stringBuffer.append(TEXT_20);
     TempFifoEn = app.getIntegerValue(AppBaseuri + appInst +"/UART001_erwEnbleRxFIFO/0");
    stringBuffer.append(TEXT_21);
     if ((TempFifoEn == 1) && (RxFifo_Enable == 0))
{ 
    stringBuffer.append(TEXT_22);
     RxFifo_Enable = 1; 
    }
     } else { 
    stringBuffer.append(TEXT_23);
     } 
    } 
    stringBuffer.append(TEXT_24);
    stringBuffer.append(NodeNr);
    stringBuffer.append(TEXT_25);
    stringBuffer.append(TEXT_26);
    return stringBuffer.toString();
  }
}
