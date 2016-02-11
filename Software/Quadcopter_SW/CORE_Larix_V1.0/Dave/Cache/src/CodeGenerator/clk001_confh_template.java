package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class clk001_confh_template
{
  protected static String nl;
  public static synchronized clk001_confh_template create(String lineSeparator)
  {
    nl = lineSeparator;
    clk001_confh_template result = new clk001_confh_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = "";
  protected final String TEXT_2 = NL + NL + "/*CODE_BLOCK_BEGIN[CLK001_Conf.h]*/" + NL + "" + NL + "/******************************************************************************" + NL + " *" + NL + " * Copyright (C) 2013 Infineon Technologies AG. All rights reserved." + NL + " *" + NL + " * Infineon Technologies AG (Infineon) is supplying this software for use with" + NL + " * Infineon's microcontrollers." + NL + " * This file can be freely distributed within development tools that are" + NL + " * supporting such microcontrollers." + NL + " *" + NL + " * THIS SOFTWARE IS PROVIDED \"AS IS\".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED" + NL + " * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF" + NL + " * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE." + NL + " * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL," + NL + " * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER." + NL + " *" + NL + "********************************************************************************" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC1000 Series                                         **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** MAY BE CHANGED BY USER [yes/Yes]: No                                       **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : Aug 21, 2013                                           **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "**                       Author(s) Identity                                   **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "** Initials     Name                                                          **" + NL + "** ---------------------------------------------------------------------------**" + NL + "** ES           App Developer                                                 **" + NL + "*******************************************************************************/" + NL + "" + NL + "/**" + NL + " * @file   CLK001_Conf.h" + NL + " * @brief <TBD>This file contains the configuration code for the App." + NL + " *" + NL + " * Revision History" + NL + " * 21 Aug 2013   v1.0.34    Static and configuration code separated." + NL + " * 05 Nov 2013   v1.0.38  Macro name changed from CLK001_CLK001_WDTCLK_EN to " + NL + "                          CLK001_WDTCLK_EN. " + NL + " *" + NL + " */" + NL + "#ifndef CLK001_CONF_H_" + NL + "#define CLK001_CONF_H_" + NL + "" + NL + "/* Support for C++ codebase */" + NL + "#ifdef __cplusplus" + NL + "extern \"C\" {" + NL + "#endif" + NL + "" + NL + "/*******************************************************************************" + NL + "**                           Include Files                                    **" + NL + "*******************************************************************************/" + NL + "#include \"CLK001_Const.h\"" + NL + "" + NL + "/*******************************************************************************" + NL + "**                      Global Macro Definitions                              **" + NL + "*******************************************************************************/" + NL + "/*********************************************************/" + NL + "/* Main PLL Clock Configuration */" + NL + "/*********************************************************/" + NL + "/* Main PLL input clock configuration */";
  protected final String TEXT_3 = NL + "#define  CLK001_PLL_CLOCK_INPUT  CLK001_CLOCK_CRYSTAL" + NL + "/*Oscillator mode = External Crystal Mode*/" + NL + "#define CLK001_OSC_HP_MODE  0x0UL";
  protected final String TEXT_4 = NL + "#define  CLK001_PLL_CLOCK_INPUT  CLK001_CLOCK_EXT_CLOCK" + NL + "/*Oscillator mode = External Input Clock Mode*/" + NL + "#define CLK001_OSC_HP_MODE  0x2UL";
  protected final String TEXT_5 = NL + "#define  CLK001_PLL_CLOCK_INPUT  CLK001_CLOCK_BACK_UP_CLOCK" + NL + "/*Oscillator mode = External Crystal Mode*/" + NL + "#define CLK001_OSC_HP_MODE  0x0UL";
  protected final String TEXT_6 = NL + "/* MAIN PLL setup parameters */  ";
  protected final String TEXT_7 = NL + "#define   CLK001_PLL_K1DIV        ";
  protected final String TEXT_8 = "UL" + NL + "#define   CLK001_PLL_K2DIV        ";
  protected final String TEXT_9 = "UL      " + NL + "#define   CLK001_PLL_PDIV         ";
  protected final String TEXT_10 = "UL    " + NL + "#define   CLK001_PLL_NDIV         ";
  protected final String TEXT_11 = "UL  " + NL + "#define   CLK001_PLL_K2DIV_STEP_1    19UL  /*PLL output is 24Mhz*/  " + NL + "#define   CLK001_PLL_K2DIV_STEP_2    7UL  /*PLL output to 60Mhz*/  " + NL + "#define   CLK001_PLL_K2DIV_STEP_3    4UL  /*PLL output to 96Mhz*/  ";
  protected final String TEXT_12 = NL + "#define   CLK001_PLL_K1DIV     1UL    " + NL + "#define   CLK001_PLL_K2DIV     3UL      " + NL + "#define   CLK001_PLL_PDIV      1UL    " + NL + "#define   CLK001_PLL_NDIV      79UL  " + NL + "#define   CLK001_PLL_K2DIV_STEP_1    19UL  /*PLL output is 24Mhz*/  " + NL + "#define   CLK001_PLL_K2DIV_STEP_2    7UL  /*PLL output to 60Mhz*/  " + NL + "#define   CLK001_PLL_K2DIV_STEP_3    4UL  /*PLL output to 96Mhz*/  ";
  protected final String TEXT_13 = NL + "/*PLL mode configuration*/";
  protected final String TEXT_14 = NL + "#define CLK001_CLOCK_PLL_MODE CLK001_CLOCK_PLL_NORMAL";
  protected final String TEXT_15 = NL + "#define CLK001_CLOCK_PLL_MODE CLK001_CLOCK_PLL_PRESCALER";
  protected final String TEXT_16 = NL + "/* Register bit field mask to check if Oscillator is usable */" + NL + "#define CLK001_PLLSTAT_OSC_USABLE_MASK       (SCU_PLL_PLLSTAT_PLLHV_Msk | \\" + NL + "                                              SCU_PLL_PLLSTAT_PLLLV_Msk | \\" + NL + "                                              SCU_PLL_PLLSTAT_PLLSP_Msk)" + NL + "/*values for Main PLL frequency stepping*/" + NL + "#define CLK001_PLL_FREQ_STEP1               (24U * 1000U * 1000U)" + NL + "#define CLK001_PLL_FREQ_STEP2               (60U * 1000U * 1000U)" + NL + "#define CLK001_PLL_FREQ_STEP3               (90U * 1000U * 1000U)" + NL + "" + NL + "/*********************************************************/" + NL + "/* USB PLL Clock Configuration */" + NL + "/*********************************************************/" + NL + "/* USB PLL setup parameters */" + NL + "#define   CLK001_USBPLL_PDIV      ";
  protected final String TEXT_17 = "UL" + NL + "#define   CLK001_USBPLL_NDIV      ";
  protected final String TEXT_18 = "UL" + NL + "#define   CLK001_USBDIV           ";
  protected final String TEXT_19 = "UL" + NL + "" + NL + "/*********************************************************/" + NL + "/* Standby Clock Configuration */" + NL + "/*********************************************************/" + NL + "/*Standby clock source configuration*/";
  protected final String TEXT_20 = NL + "#define  CLK001_STANDBY_CLOCK  CLK001_HIB_CLOCK_OSCULP";
  protected final String TEXT_21 = NL + "#define  CLK001_STANDBY_CLOCK  CLK001_HIB_CLOCK_FOSI";
  protected final String TEXT_22 = NL + NL + "/*********************************************************/" + NL + "/* Backup Clock Configuration */" + NL + "/*********************************************************/" + NL + "/*Back up clock trimming option*/";
  protected final String TEXT_23 = NL + "#define CLK001_TRIM_OPTION CLK001_CLOCK_TRIM_AUTOMATIC";
  protected final String TEXT_24 = NL + "#define CLK001_TRIM_OPTION CLK001_CLOCK_TRIM_FACTORY";
  protected final String TEXT_25 = NL + "/*back up clock frequency*/" + NL + "#define  CLK001_CLOCK_BACK_UP                24000000UL" + NL + "" + NL + "/*********************************************************/" + NL + "/* System Clock Configuration */" + NL + "/*********************************************************/" + NL + "/*System clock source configuration*/";
  protected final String TEXT_26 = NL + "#define CLK001_CLOCK_SYS_SRC CLK001_CLOCK_SRC_PLL ";
  protected final String TEXT_27 = NL + "#define CLK001_CLOCK_SYS_SRC CLK001_CLOCK_SRC_BACKUP ";
  protected final String TEXT_28 = NL + "/* system clock frequency */" + NL + "#define CLK001_CLOCK_FSYS                    ";
  protected final String TEXT_29 = "UL" + NL + "" + NL + "/**************************************************************/" + NL + "/* External Oscillator or External Clock Source Configuration */" + NL + "/**************************************************************/" + NL + "/*crystal or digital clock input frequency*/";
  protected final String TEXT_30 = NL + "#define  CLK001_CLOCK_CRYSTAL_FREQUENCY      ";
  protected final String TEXT_31 = "UL     ";
  protected final String TEXT_32 = NL + "#define  CLK001_CLOCK_CRYSTAL_FREQUENCY      ";
  protected final String TEXT_33 = "UL ";
  protected final String TEXT_34 = " " + NL + "#define  CLK001_CLOCK_CRYSTAL_FREQUENCY      ";
  protected final String TEXT_35 = "UL ";
  protected final String TEXT_36 = NL + NL + "/**********************************************************/" + NL + "/* Macros for Internal, External and System clock Signals */" + NL + "/**********************************************************/";
  protected final String TEXT_37 = NL + "#define CLK001_OSC_ULP_USED 1";
  protected final String TEXT_38 = " " + NL + "#define CLK001_EXTCLKOUT_EN 1";
  protected final String TEXT_39 = "     " + NL + "#define CLK001_USBCLK_EN 1";
  protected final String TEXT_40 = NL + "#define CLK001_CCUCLK_EN 1";
  protected final String TEXT_41 = NL + "#define CLK001_EBUCLK_EN 1";
  protected final String TEXT_42 = NL + "#define CLK001_MMCCLK_EN 1";
  protected final String TEXT_43 = " " + NL + "#define CLK001_WDTCLK_EN 1";
  protected final String TEXT_44 = " " + NL + "#define CLK001_RTCCLK_EN 1";
  protected final String TEXT_45 = NL + NL + "/*********************************************************/" + NL + "/* WDT Clock Configuration */" + NL + "/*********************************************************/" + NL + "/*Reference frequency for system oscillator watch dog - 2.5 MHz*/" + NL + "#define  CLK001_SOSCWDG_FREF                 2500000U";
  protected final String TEXT_46 = NL + "#define CLK001_WDT_CLKSRC CLK001_WDTCLK_BACKUP";
  protected final String TEXT_47 = NL + "#define CLK001_WDT_CLKSRC CLK001_WDTCLK_STANDBY";
  protected final String TEXT_48 = NL + "#define CLK001_WDT_CLKSRC CLK001_WDTCLK_PLL";
  protected final String TEXT_49 = NL + NL + "/*********************************************************/" + NL + "/* RTC Clock Configuration */" + NL + "/*********************************************************/";
  protected final String TEXT_50 = NL + "#define CLK001_RTC_CLKSRC CLK001_RTC_CLOCK_OSCULP";
  protected final String TEXT_51 = NL + "#define CLK001_RTC_CLKSRC CLK001_RTC_CLOCK_FOSI";
  protected final String TEXT_52 = NL + NL + "/*********************************************************/" + NL + "/* Clock Divider Configuration */" + NL + "/*********************************************************/";
  protected final String TEXT_53 = NL + "#define CLK001_PBCLKDIV_EN 1 /* Peripheral Bus Clock Divider Enable */";
  protected final String TEXT_54 = NL + "#define CLK001_CPUCLKDIV_EN 1 /* CPU Clock Divider Enable */";
  protected final String TEXT_55 = NL + "#define CLK001_CCUCLKDIV_EN 1 /* CCU Clock Divider Enable */";
  protected final String TEXT_56 = NL + "/* WDT Clock Divider Value */" + NL + "#ifdef CLK001_WDTCLK_EN" + NL + "  #define CLK001_WDTCLKDIV ";
  protected final String TEXT_57 = "UL" + NL + "#endif" + NL + "/* EBU Clock Divider Value */" + NL + "#ifdef CLK001_EBUCLK_EN" + NL + "  #define CLK001_EBU_CLKDIV ";
  protected final String TEXT_58 = "UL" + NL + "#endif" + NL + "" + NL + "/*********************************************************/" + NL + "/* External Clock Configuration */" + NL + "/*********************************************************/" + NL + "/* External Clock Selection */";
  protected final String TEXT_59 = NL + "#define CLK001_EXTCLK_SEL          CLK001_EXTCLK_SYSTEM_CLOCK";
  protected final String TEXT_60 = NL + "#define CLK001_EXTCLK_SEL          CLK001_EXTCLK_USB_CLOCK";
  protected final String TEXT_61 = NL + "#define CLK001_EXTCLK_SEL          CLK001_EXTCLK_PLL_CLOCK";
  protected final String TEXT_62 = NL + "/* External Clock PLL Divider */";
  protected final String TEXT_63 = NL + "#define CLK001_EXTCLK_PLLDIV ";
  protected final String TEXT_64 = "UL" + NL;
  protected final String TEXT_65 = NL + "/* External Clock Pad Driver Mode */" + NL + "#define CLK001_EXTCLK_PORT_REG     PORT";
  protected final String TEXT_66 = "->PDR";
  protected final String TEXT_67 = NL + "#define CLK001_EXTCLK_PAD_MASK     PORT";
  protected final String TEXT_68 = "_PDR";
  protected final String TEXT_69 = "_PD";
  protected final String TEXT_70 = "_Msk" + NL + "#define CLK001_EXTCLK_PAD_POS      PORT";
  protected final String TEXT_71 = "_PDR";
  protected final String TEXT_72 = "_PD";
  protected final String TEXT_73 = "_Pos" + NL + "#define CLK001_EXTCLK_PDR_VAL      ";
  protected final String TEXT_74 = NL + NL + "/* Support for C++ codebase */" + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif   " + NL + "" + NL + "#endif /* CLK001_CONF_H_ */" + NL + "" + NL + "/*CODE_BLOCK_END*/";
  protected final String TEXT_75 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/clk001/0";
     String MappedUri = null; 
     int Is44Device = -1; 
     int Is42Device = -1; 
     int Is45Device = -1; 
     int IsUSBAvailble = -1; 
     int IsMMCAvailble = -1; 
     Is44Device = ((app.getSoftwareId().substring(0,2).compareTo("44")==0)?1:0); 
     Is42Device = ((app.getSoftwareId().substring(0,2).compareTo("42")==0)?1:0); 
     Is45Device = ((app.getSoftwareId().substring(0,2).compareTo("45")==0)?1:0); 
     IsUSBAvailble = ((Integer.parseInt(app.getSoftwareId().substring(app.getSoftwareId().lastIndexOf(".")-1, app.getSoftwareId().lastIndexOf(".")))<4)?1:0); 
     IsMMCAvailble = ((Integer.parseInt(app.getSoftwareId().substring(app.getSoftwareId().lastIndexOf(".")-1, app.getSoftwareId().lastIndexOf(".")))<4)?1:0); 
    stringBuffer.append(TEXT_2);
    if((app.getIntegerValue(AppBaseuri + "/clk001_erwPLLClkSource/0")==1)){
    stringBuffer.append(TEXT_3);
    }else if((app.getIntegerValue(AppBaseuri + "/clk001_erwPLLClkSource/1")==1)){
    stringBuffer.append(TEXT_4);
    }else{
    stringBuffer.append(TEXT_5);
    }
    stringBuffer.append(TEXT_6);
     MappedUri = app.getMappedUri(AppBaseuri +  "/pll"); 
     if((MappedUri != null) && (MappedUri != "")) { 
    int PDIV = app.getIntegerValue(AppBaseuri + "/pll/pllcon1/pdiv");
    int NDIV = app.getIntegerValue(AppBaseuri + "/pll/pllcon1/ndiv");
    int K2DIV =app.getIntegerValue(AppBaseuri + "/pll/pllcon1/k2div");
    int K1DIV =app.getIntegerValue(AppBaseuri + "/pll/pllcon1/k1div");
    stringBuffer.append(TEXT_7);
    stringBuffer.append(K1DIV - 1);
    stringBuffer.append(TEXT_8);
    stringBuffer.append(K2DIV - 1);
    stringBuffer.append(TEXT_9);
    stringBuffer.append(PDIV - 1);
    stringBuffer.append(TEXT_10);
    stringBuffer.append(NDIV - 1);
    stringBuffer.append(TEXT_11);
    } else{
    stringBuffer.append(TEXT_12);
    }
    stringBuffer.append(TEXT_13);
    if((app.getIntegerValue(AppBaseuri + "/clk001_erwoperatingmode/0")==1)){
    stringBuffer.append(TEXT_14);
    }else{
    stringBuffer.append(TEXT_15);
    }
    stringBuffer.append(TEXT_16);
    stringBuffer.append((app.getIntegerValue(AppBaseuri + "/clk001_irusbpllpdiv")-1));
    stringBuffer.append(TEXT_17);
    stringBuffer.append((app.getIntegerValue(AppBaseuri + "/clk001_irusbpllndiv")-1));
    stringBuffer.append(TEXT_18);
    stringBuffer.append((app.getIntegerValue(AppBaseuri + "/clk001_erwUSBClkDivider")-1));
    stringBuffer.append(TEXT_19);
    if((app.getIntegerValue(AppBaseuri + "/CLK001_clksourceconf/1")==1)||(app.getIntegerValue(AppBaseuri + "/CLK001_clksourceconf/2")==1)){
    stringBuffer.append(TEXT_20);
    }else if((app.getIntegerValue(AppBaseuri + "/CLK001_clksourceconf/0")==1)||(app.getIntegerValue(AppBaseuri + "/CLK001_clksourceconf/2")==1)){
    stringBuffer.append(TEXT_21);
    }
    stringBuffer.append(TEXT_22);
    if((app.getIntegerValue(AppBaseuri + "/CLK001_clksourceconf/1")==1)||(app.getIntegerValue(AppBaseuri + "/CLK001_clksourceconf/0")==1)){
    stringBuffer.append(TEXT_23);
    }else{
    stringBuffer.append(TEXT_24);
    }
    stringBuffer.append(TEXT_25);
    if((app.getIntegerValue(AppBaseuri + "/clk001_erwSystemClockSource/0")==1)){
    stringBuffer.append(TEXT_26);
    }else{
    stringBuffer.append(TEXT_27);
    }
    stringBuffer.append(TEXT_28);
    stringBuffer.append((app.getIntegerValue(AppBaseuri + "/clk001_iroActualFreqSystem")*1000000));
    stringBuffer.append(TEXT_29);
    if((app.getIntegerValue(AppBaseuri + "/clk001_erwPLLClkSource/0")==1)){
    stringBuffer.append(TEXT_30);
    stringBuffer.append((app.getIntegerValue(AppBaseuri + "/clk001_irwExtOscRefFreq")*1000000));
    stringBuffer.append(TEXT_31);
    }else if((app.getIntegerValue(AppBaseuri + "/clk001_erwPLLClkSource/1")==1)){
    stringBuffer.append(TEXT_32);
    stringBuffer.append((app.getIntegerValue(AppBaseuri + "/clk001_irwDigInputRefFreq")*1000000));
    stringBuffer.append(TEXT_33);
    }else{
    stringBuffer.append(TEXT_34);
    stringBuffer.append((app.getIntegerValue(AppBaseuri + "/clk001_irwExtOscRefFreq")*1000000));
    stringBuffer.append(TEXT_35);
    }
    stringBuffer.append(TEXT_36);
    if ((app.getIntegerValue(AppBaseuri + "/CLK001_clksourceconf/1") ==1)||
(app.getIntegerValue(AppBaseuri + "/clk001_erwSTDBYClkSource/0") ==1) ||
(app.getIntegerValue(AppBaseuri + "/clk001_erwRTCClkSource/0") ==1))
{
    stringBuffer.append(TEXT_37);
    }
     if ((app.getIntegerValue(AppBaseuri + "/clk001_erwEnableExtClk/0") ==1) && (IsUSBAvailble==1)){
    stringBuffer.append(TEXT_38);
    }
    if (app.getIntegerValue(AppBaseuri + "/clk001_erwUSBClkEnable/0") ==1){
    stringBuffer.append(TEXT_39);
    }
    if (app.getIntegerValue(AppBaseuri + "/clk001_erwCCUClkEnable/0") ==1){
    stringBuffer.append(TEXT_40);
    }
    if (Is45Device==1){
    if (app.getIntegerValue(AppBaseuri + "/clk001_erwEBUClkEnable/0") ==1){
    stringBuffer.append(TEXT_41);
    }
    if ((app.getIntegerValue(AppBaseuri + "/clk001_erwMMCClkEnable/0") ==1) && (IsMMCAvailble == 1)){
    stringBuffer.append(TEXT_42);
    }
    }
    if (app.getIntegerValue(AppBaseuri + "/clk001_erwWDTClkEnable/0") ==1){
    stringBuffer.append(TEXT_43);
    }
    if (app.getIntegerValue(AppBaseuri + "/clk001_erwEnableRTC/0") ==1){
    stringBuffer.append(TEXT_44);
    }
    stringBuffer.append(TEXT_45);
    if(app.getIntegerValue(AppBaseuri + "/clk001_erwWDTClkSource/0") ==1) {
    stringBuffer.append(TEXT_46);
    } else if(app.getIntegerValue(AppBaseuri + "/clk001_erwWDTClkSource/1") ==1) {
    stringBuffer.append(TEXT_47);
    } else if(app.getIntegerValue(AppBaseuri + "/clk001_erwWDTClkSource/2") ==1) {
    stringBuffer.append(TEXT_48);
    }
    stringBuffer.append(TEXT_49);
    if (app.getIntegerValue(AppBaseuri + "/clk001_erwRTCClkSource/0") ==1) {
    stringBuffer.append(TEXT_50);
    } else if (app.getIntegerValue(AppBaseuri + "/clk001_erwRTCClkSource/1") ==1) {
    stringBuffer.append(TEXT_51);
    }
    stringBuffer.append(TEXT_52);
    if (app.getIntegerValue(AppBaseuri + "/clk001_erwPBClkDivider/0") ==1)
{
    stringBuffer.append(TEXT_53);
    }
    if (app.getIntegerValue(AppBaseuri + "/clk001_erwCPUClkDivider/0") ==1)
{
    stringBuffer.append(TEXT_54);
    }
    if (app.getIntegerValue(AppBaseuri + "/clk001_erwCCUClkDIV/0") ==1)
{
    stringBuffer.append(TEXT_55);
    }
    stringBuffer.append(TEXT_56);
    stringBuffer.append((app.getIntegerValue(AppBaseuri + "/clk001_erwWDTClkDIV")-1));
    stringBuffer.append(TEXT_57);
    stringBuffer.append((app.getIntegerValue(AppBaseuri + "/clk001_erwEBUClkDivider")-1));
    stringBuffer.append(TEXT_58);
     int ExtClkSel = app.getIntegerValue(AppBaseuri + "/rgextclk/extclkcr/ecksel"); 
     if(ExtClkSel == 0) { 
    stringBuffer.append(TEXT_59);
     } else if(ExtClkSel == 2) { 
    stringBuffer.append(TEXT_60);
     } else if(ExtClkSel == 3) { 
    stringBuffer.append(TEXT_61);
     } 
    stringBuffer.append(TEXT_62);
    int PLLClkDiv = app.getIntegerValue(AppBaseuri + "/clk001_erwExtClkPLLDiv") -1;
    stringBuffer.append(TEXT_63);
    stringBuffer.append( PLLClkDiv );
    stringBuffer.append(TEXT_64);
     String pinUri = app.getMappedUri(AppBaseuri + "/clk_extpin"); 
     if ((pinUri != null) && (pinUri.trim() != "")) { 
     String portNo = pinUri.substring(pinUri.indexOf("port/p/")+7,pinUri.indexOf("/pad/")); 
     String pinNo = pinUri.substring(pinUri.indexOf("/pad/")+5,pinUri.length()); 
     int PDR_PD1 = app.getIntegerValue(AppBaseuri + "/clk_extpin/pdr_pd");    
     int Pin = Integer.parseInt(pinNo);
     int RegNo = 0; 
     if(Pin < 8) {
        RegNo = 0; 
      } 
      else {
        RegNo = 1; 
      }
    stringBuffer.append(TEXT_65);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_66);
    stringBuffer.append(RegNo);
    stringBuffer.append(TEXT_67);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_68);
    stringBuffer.append(RegNo);
    stringBuffer.append(TEXT_69);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_70);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_71);
    stringBuffer.append(RegNo);
    stringBuffer.append(TEXT_72);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_73);
    stringBuffer.append(PDR_PD1);
    }
    stringBuffer.append(TEXT_74);
    stringBuffer.append(TEXT_75);
    return stringBuffer.toString();
  }
}
