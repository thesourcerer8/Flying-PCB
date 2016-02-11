package CodeGenerator;

import java.util.*;
import java.text.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class clkval_sswh_template
{
  protected static String nl;
  public static synchronized clkval_sswh_template create(String lineSeparator)
  {
    nl = lineSeparator;
    clkval_sswh_template result = new clkval_sswh_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = "";
  protected final String TEXT_2 = NL;
  protected final String TEXT_3 = NL;
  protected final String TEXT_4 = NL + NL + "/******************************************************************************" + NL + " *" + NL + " * Copyright (C) 2013 Infineon Technologies AG. All rights reserved." + NL + " *" + NL + " * Infineon Technologies AG (Infineon) is supplying this software for use with" + NL + " * Infineon's microcontrollers." + NL + " * This file can be freely distributed within development tools that are" + NL + " * supporting such microcontrollers." + NL + " *" + NL + " * THIS SOFTWARE IS PROVIDED \"AS IS\".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED" + NL + " * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF" + NL + " * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE." + NL + " * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL," + NL + " * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER." + NL + " *" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC1xxx Series                                         **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** MAY BE CHANGED BY USER [Yes/No]: Yes                                       **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : Oct 30, 2013                                           **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "**                       Author(s) Identity                                   **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "** Initials     Name                                                          **" + NL + "** ---------------------------------------------------------------------------**" + NL + "** Yogesh       App Developer                                                 **" + NL + "*******************************************************************************/" + NL + "/* Revision History" + NL + " *****************************************************************************" + NL + " *Date           Version   Remarks" + NL + " * 18 Jan 2013   v1.0.0    Initial Version" + NL + " * 04 Sep 2013   v1.0.4    Added support for XMC1201, XMC1202, XMC1301 devices" + NL + " *" + NL + " *" + NL + "*/" + NL + "/**" + NL + " * @file CLKVAL_SSW.h" + NL + " *" + NL + " * @brief  Header file for Clock App" + NL + " *" + NL + " */" + NL + "" + NL + "#ifndef CLKVAL_SSW_H_" + NL + "#define CLKVAL_SSW_H_" + NL + "" + NL + "/* Support for C++ codebase */" + NL + "#ifdef __cplusplus" + NL + "extern \"C\" {" + NL + "#endif" + NL + "" + NL + "/*******************************************************************************" + NL + "**                           Include Files                                    **" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "**                      Global Macro Definitions                              **" + NL + "*******************************************************************************/" + NL + "" + NL + "/**" + NL + " * @ingroup CLK002_publicparam" + NL + " * @{" + NL + " */" + NL + "" + NL + "" + NL + "/**" + NL + " * @}" + NL + " */" + NL + "" + NL + "/*******************************************************************************" + NL + "**                      Global Macro Definitions                              **" + NL + "*******************************************************************************/" + NL + "/*System Software Data, used during Startup*/";
  protected final String TEXT_5 = NL + NL + "#define   CLK002_SSW_PCLKSEL            (";
  protected final String TEXT_6 = ")" + NL + "#define   CLK002_SSW_IDIV               (";
  protected final String TEXT_7 = ")      " + NL + "#define   CLK002_SSW_FDIV               (";
  protected final String TEXT_8 = ")    " + NL + "#define   CLK002_SSW_RTCCLKSEL          (";
  protected final String TEXT_9 = ")" + NL + "" + NL + "#define   CLKVAL1_SSW        ((CLK002_SSW_PCLKSEL<<SCU_CLK_CLKCR_PCLKSEL_Pos)&\\" + NL + "                             SCU_CLK_CLKCR_PCLKSEL_Msk)|\\" + NL + "                             ((CLK002_SSW_IDIV<<SCU_CLK_CLKCR_IDIV_Pos)&\\" + NL + "                             SCU_CLK_CLKCR_IDIV_Msk)|\\" + NL + "                             ((CLK002_SSW_FDIV<<SCU_CLK_CLKCR_FDIV_Pos)&\\" + NL + "                             SCU_CLK_CLKCR_FDIV_Msk)|\\" + NL + "                             ((CLK002_SSW_RTCCLKSEL<<\\" + NL + "                             SCU_CLK_CLKCR_RTCCLKSEL_Pos)&\\" + NL + "                             SCU_CLK_CLKCR_RTCCLKSEL_Msk)" + NL;
  protected final String TEXT_10 = NL + NL + "#define    CLK002_CGAT_VADCSHS          (";
  protected final String TEXT_11 = ")" + NL + "#define    CLK002_CGAT_CCU8             (";
  protected final String TEXT_12 = ")" + NL + "#define    CLK002_CGAT_CCU4             (";
  protected final String TEXT_13 = ")" + NL + "#define    CLK002_CGAT_USIC             (";
  protected final String TEXT_14 = ")" + NL + "#define    CLK002_CGAT_BCCU             (";
  protected final String TEXT_15 = ")" + NL + "#define    CLK002_CGAT_LEDTS0           (";
  protected final String TEXT_16 = ")" + NL + "#define    CLK002_CGAT_LEDTS1           (";
  protected final String TEXT_17 = ")" + NL + "#define    CLK002_CGAT_POSIF            (";
  protected final String TEXT_18 = ")" + NL + "#define    CLK002_CGAT_MATH             (";
  protected final String TEXT_19 = ")" + NL + "#define    CLK002_CGAT_WDT              (";
  protected final String TEXT_20 = ")" + NL + "#define    CLK002_CGAT_RTC              (";
  protected final String TEXT_21 = ")" + NL;
  protected final String TEXT_22 = NL + "#define    CLKVAL2_SSW     (CLK002_CGAT_VADCSHS<<SCU_CLK_CGATCLR0_VADC_Pos) |\\" + NL + "                           (CLK002_CGAT_CCU4<<SCU_CLK_CGATCLR0_CCU40_Pos)|\\" + NL + "                           (CLK002_CGAT_USIC<<SCU_CLK_CGATCLR0_USIC0_Pos)|\\" + NL + "                           (CLK002_CGAT_WDT<<SCU_CLK_CGATCLR0_WDT_Pos)|\\" + NL + "                           (CLK002_CGAT_RTC<<SCU_CLK_CGATCLR0_RTC_Pos)" + NL + NL;
  protected final String TEXT_23 = NL + "#define    CLKVAL2_SSW     (CLK002_CGAT_VADCSHS<<SCU_CLK_CGATCLR0_VADC_Pos) |\\" + NL + "                           (CLK002_CGAT_CCU4<<SCU_CLK_CGATCLR0_CCU40_Pos)|\\" + NL + "                           (CLK002_CGAT_USIC<<SCU_CLK_CGATCLR0_USIC0_Pos)|\\" + NL + "                           (CLK002_CGAT_BCCU<<SCU_CLK_CGATCLR0_BCCU0_Pos)|\\" + NL + "                           (CLK002_CGAT_LEDTS0<<SCU_CLK_CGATCLR0_LEDTS0_Pos)|\\" + NL + "                           (CLK002_CGAT_LEDTS1<<SCU_CLK_CGATCLR0_LEDTS1_Pos)|\\" + NL + "                           (CLK002_CGAT_WDT<<SCU_CLK_CGATCLR0_WDT_Pos)|\\" + NL + "                           (CLK002_CGAT_RTC<<SCU_CLK_CGATCLR0_RTC_Pos)" + NL + NL;
  protected final String TEXT_24 = NL + "#define    CLKVAL2_SSW     (CLK002_CGAT_VADCSHS<<SCU_CLK_CGATCLR0_VADC_Pos) |\\" + NL + "                           (CLK002_CGAT_CCU8<<SCU_CLK_CGATCLR0_CCU80_Pos)|\\" + NL + "                           (CLK002_CGAT_CCU4<<SCU_CLK_CGATCLR0_CCU40_Pos)|\\" + NL + "                           (CLK002_CGAT_USIC<<SCU_CLK_CGATCLR0_USIC0_Pos)|\\" + NL + "                           (CLK002_CGAT_BCCU<<SCU_CLK_CGATCLR0_BCCU0_Pos)|\\" + NL + "                           (CLK002_CGAT_POSIF<<SCU_CLK_CGATCLR0_POSIF0_Pos)|\\" + NL + "                           (CLK002_CGAT_MATH<<SCU_CLK_CGATCLR0_MATH_Pos)|\\" + NL + "                           (CLK002_CGAT_WDT<<SCU_CLK_CGATCLR0_WDT_Pos)|\\" + NL + "                           (CLK002_CGAT_RTC<<SCU_CLK_CGATCLR0_RTC_Pos)" + NL;
  protected final String TEXT_25 = NL + NL + "    " + NL + "        " + NL + "" + NL + "" + NL + "/*******************************************************************************" + NL + "**                      Global Type Definitions                               **" + NL + "*******************************************************************************/" + NL + "/*******************************************************************************" + NL + "** FUNCTION PROTOTYPES                                                        **" + NL + "*******************************************************************************/" + NL + "/* Support for C++ codebase */" + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif   " + NL + "" + NL + "#endif /* CLKVAL_SSW_H_ */" + NL + "" + NL + "/*CODE_BLOCK_END*/" + NL;
  protected final String TEXT_26 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/clk002/0";
     String MappedUri = null; 
    stringBuffer.append(TEXT_2);
     int Is11Device = -1; 
     int Is12Device = -1; 
     int Is13Device = -1; 
    stringBuffer.append(TEXT_3);
     Is11Device = ((app.getSoftwareId().substring(0,2).compareTo("11")==0)?1:0); 
     Is12Device = ((app.getSoftwareId().substring(0,2).compareTo("12")==0)?1:0); 
     Is13Device = ((app.getSoftwareId().substring(0,2).compareTo("13")==0)?1:0); 
    stringBuffer.append(TEXT_4);
    int SSWpclksel1 = app.getIntegerValue(AppBaseuri + "/SSWpclksel");
    int SSWidiv1 = app.getIntegerValue(AppBaseuri + "/SSWidiv");
    int SSWfdiv1 =app.getIntegerValue(AppBaseuri + "/SSWfdiv");
    int SSWrtcclksel1 =app.getIntegerValue(AppBaseuri + "/SSWrtcclksel");
    stringBuffer.append(TEXT_5);
    stringBuffer.append(SSWpclksel1);
    stringBuffer.append(TEXT_6);
    stringBuffer.append(SSWidiv1);
    stringBuffer.append(TEXT_7);
    stringBuffer.append(SSWfdiv1);
    stringBuffer.append(TEXT_8);
    stringBuffer.append(SSWrtcclksel1);
    stringBuffer.append(TEXT_9);
    int CGAT_VADCSHS = app.getIntegerValue(AppBaseuri + "/clkgating_vadcshs/cgat_clr");
    int CGAT_CCU8    = app.getIntegerValue(AppBaseuri + "/clkgating_ccu8/cgat_clr");
    int CGAT_CCU4    = app.getIntegerValue(AppBaseuri + "/clkgating_ccu4/cgat_clr");
    int CGAT_USIC    = app.getIntegerValue(AppBaseuri + "/clkgating_usic/cgat_clr");
    int CGAT_BCCU    = app.getIntegerValue(AppBaseuri + "/clkgating_bccu/cgat_clr");
    int CGAT_LEDTS0  = app.getIntegerValue(AppBaseuri + "/clkgating_ledts0/cgat_clr");
    int CGAT_LEDTS1  = app.getIntegerValue(AppBaseuri + "/clkgating_ledts1/cgat_clr");
    int CGAT_POSIF   = app.getIntegerValue(AppBaseuri + "/clkgating_posif/cgat_clr");
    int CGAT_MATH    = app.getIntegerValue(AppBaseuri + "/clkgating_math/cgat_clr");
    int CGAT_WDT     = app.getIntegerValue(AppBaseuri + "/clkgating_wdt/cgat_clr");
    int CGAT_RTC     = app.getIntegerValue(AppBaseuri + "/clkgating_rtc/cgat_clr");
    stringBuffer.append(TEXT_10);
    stringBuffer.append(CGAT_VADCSHS);
    stringBuffer.append(TEXT_11);
    stringBuffer.append(CGAT_CCU8);
    stringBuffer.append(TEXT_12);
    stringBuffer.append(CGAT_CCU4);
    stringBuffer.append(TEXT_13);
    stringBuffer.append(CGAT_USIC);
    stringBuffer.append(TEXT_14);
    stringBuffer.append(CGAT_BCCU);
    stringBuffer.append(TEXT_15);
    stringBuffer.append(CGAT_LEDTS0);
    stringBuffer.append(TEXT_16);
    stringBuffer.append(CGAT_LEDTS1);
    stringBuffer.append(TEXT_17);
    stringBuffer.append(CGAT_POSIF);
    stringBuffer.append(TEXT_18);
    stringBuffer.append(CGAT_MATH);
    stringBuffer.append(TEXT_19);
    stringBuffer.append(CGAT_WDT);
    stringBuffer.append(TEXT_20);
    stringBuffer.append(CGAT_RTC);
    stringBuffer.append(TEXT_21);
     if(Is11Device == 1){
    stringBuffer.append(TEXT_22);
    } else if (Is12Device==1){
    stringBuffer.append(TEXT_23);
    } else if (Is13Device==1){
    stringBuffer.append(TEXT_24);
    }
    stringBuffer.append(TEXT_25);
    stringBuffer.append(TEXT_26);
    return stringBuffer.toString();
  }
}
