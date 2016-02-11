package CodeGenerator;

import java.util.*;
import java.text.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class pwmsp001confc_template
{
  protected static String nl;
  public static synchronized pwmsp001confc_template create(String lineSeparator)
  {
    nl = lineSeparator;
    pwmsp001confc_template result = new pwmsp001confc_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[pwmsp001Conf.c]*/" + NL + "" + NL + "/*******************************************************************************" + NL + " Copyright (c) 2014, Infineon Technologies AG                                 **" + NL + " All rights reserved.                                                         **" + NL + "                                                                              **" + NL + " Redistribution and use in source and binary forms, with or without           **" + NL + " modification,are permitted provided that the following conditions are met:   **" + NL + "                                                                              **" + NL + " *Redistributions of source code must retain the above copyright notice,      **" + NL + " this list of conditions and the following disclaimer.                        **" + NL + " *Redistributions in binary form must reproduce the above copyright notice,   **" + NL + " this list of conditions and the following disclaimer in the documentation    **" + NL + " and/or other materials provided with the distribution.                       **" + NL + " *Neither the name of the copyright holders nor the names of its contributors **" + NL + " may be used to endorse or promote products derived from this software without**" + NL + " specific prior written permission.                                           **" + NL + "                                                                              **" + NL + " THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\"  **" + NL + " AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **" + NL + " IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **" + NL + " ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **" + NL + " LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **" + NL + " CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **" + NL + " SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **" + NL + " INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **" + NL + " CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **" + NL + " ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **" + NL + " POSSIBILITY OF SUCH DAMAGE.                                                  **" + NL + "                                                                              **" + NL + " To improve the quality of the software, users are encouraged to share        **" + NL + " modifications, enhancements or bug fixes with Infineon Technologies AG       **" + NL + " dave@infineon.com).                                                          **" + NL + "                                                                              **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC4000/XMC1000 Series                                 **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** MAY BE CHANGED BY USER [yes/no]: Yes                                       **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : April 28, 2014                                         **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "/*******************************************************************************/";
  protected final String TEXT_2 = NL + "/**" + NL + " * @file  PWMSP001_Conf.c" + NL + " * @App Version PWMSP001 <";
  protected final String TEXT_3 = ">" + NL + " * @brief This file contains App parameter data as per GUI configurations" + NL + " */" + NL + "/* Revision History\t\t\t\t\t " + NL + " * 21 Nov 2012   v1.0.16   coding guidelines" + NL + " * 28 Apr 2014   v1.0.34   During Timer Concatenation Period and compare values" + NL + " *                         are read from UI parameters defined for registers " + NL + " *                         individually.  " + NL + " */" + NL + "/*******************************************************************************" + NL + "**                       Author(s) Identity                                   **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "** Initials     Name                                                          **" + NL + "** ---------------------------------------------------------------------------**" + NL + "** KS           App Developer                                                 **" + NL + "*******************************************************************************/" + NL + "" + NL + "#include <DAVE3.h>" + NL + "" + NL + "extern void PWMSP001_lSetDutyCenterAlign(const void* HandlePtr,float Duty);" + NL + "extern void PWMSP001_lSetDutyEdgeAlign(const void* HandlePtr,float Duty);" + NL + "extern void PWMSP001_lSetDutyEdgeAlignTimerConcat(const void* HandlePtr,float Duty);" + NL + "extern void PWMSP001_lSetCompareCenterAlign(const void* HandlePtr,uint32_t Compare);" + NL + "extern void PWMSP001_lSetCompareEdgeAlign(const void* HandlePtr,uint32_t Compare);" + NL + "extern void PWMSP001_lSetCompareEdgeAlignTimerConcat(const void* HandlePtr,uint32_t Compare);" + NL;
  protected final String TEXT_4 = "  " + NL + "PWMSP001_DynamicDataType PWMSP001_DynamicData";
  protected final String TEXT_5 = " =" + NL + "{" + NL + "  .StateType = PWMSP001_UNINITIALIZED" + NL + "};" + NL + "" + NL + "const PWMSP001_HandleType PWMSP001_Handle";
  protected final String TEXT_6 = " =" + NL + "{" + NL + "  .kTimerMode= ";
  protected final String TEXT_7 = "U,";
  protected final String TEXT_8 = NL + "  .CountingModeType = PWMSP001_EDGE_ALIGNED,";
  protected final String TEXT_9 = NL + "  .CountingModeType = PWMSP001_CENTER_ALIGNED,";
  protected final String TEXT_10 = NL + "  .kPassiveLevel= ";
  protected final String TEXT_11 = "U," + NL + "  .kExtStartTrig= ";
  protected final String TEXT_12 = " 0U, ";
  protected final String TEXT_13 = " 1U, ";
  protected final String TEXT_14 = NL + "  .kExtStopTrig= ";
  protected final String TEXT_15 = " 0U, ";
  protected final String TEXT_16 = " 1U, ";
  protected final String TEXT_17 = NL + "  .kStartEdge = PWMSP001_NO_TRIGGER,";
  protected final String TEXT_18 = NL + "  .kStartEdge = PWMSP001_RISING_EDGE,";
  protected final String TEXT_19 = NL + "  .kStartEdge = PWMSP001_FALLING_EDGE,";
  protected final String TEXT_20 = NL + "  .kStartEdge = PWMSP001_BOTH_EDGES,";
  protected final String TEXT_21 = NL + "  .kStopEdge = PWMSP001_NO_TRIGGER,";
  protected final String TEXT_22 = NL + "  .kStopEdge = PWMSP001_RISING_EDGE,";
  protected final String TEXT_23 = NL + "  .kStopEdge = PWMSP001_FALLING_EDGE,";
  protected final String TEXT_24 = NL + "  .kStopEdge = PWMSP001_BOTH_EDGES,";
  protected final String TEXT_25 = NL + "  .ExtStartConfigType = PWMSP001_START_TIMER,";
  protected final String TEXT_26 = NL + "  .ExtStartConfigType = PWMSP001_CLEAR_START_TIMER,";
  protected final String TEXT_27 = NL + "  .ExtStopConfigType = PWMSP001_STOP_TIMER,";
  protected final String TEXT_28 = NL + "  .ExtStopConfigType = PWMSP001_CLEAR_TIMER,";
  protected final String TEXT_29 = NL + "  .ExtStopConfigType = PWMSP001_CLEAR_STOP_TIMER,";
  protected final String TEXT_30 = NL + "  .kTrapEnable= ";
  protected final String TEXT_31 = "U," + NL + "  .kTrapSync= ";
  protected final String TEXT_32 = "U," + NL + "  .kTrapExitControl= ";
  protected final String TEXT_33 = "U," + NL + "  .kTrapLevel= ";
  protected final String TEXT_34 = "U," + NL + "  " + NL + "  .kResolution = (float)";
  protected final String TEXT_35 = "," + NL + "  .kCCUPrescalar= ";
  protected final String TEXT_36 = "U," + NL + "  .kTimerConcatenation = ";
  protected final String TEXT_37 = "U," + NL + "   /*During timer concatenation, 32-bit period and compare values from UI are " + NL + "   taken. From this value lower 16-bit is loaded into the lower timer and higer 16-bit to higher timer.*/" + NL + "  .kCompareValue = ";
  protected final String TEXT_38 = "U," + NL + "  .kPeriodVal = ";
  protected final String TEXT_39 = "U," + NL + "  .kMaxPeriodVal= 65535U," + NL + "  .kDitherSetting= ";
  protected final String TEXT_40 = "U," + NL + "  .kDitherCompare = ";
  protected final String TEXT_41 = "U,  " + NL + "  .FirstSlice= ";
  protected final String TEXT_42 = " PWMSP001_SLICE";
  protected final String TEXT_43 = " ";
  protected final String TEXT_44 = " PWMSP001_SLICE";
  protected final String TEXT_45 = " ";
  protected final String TEXT_46 = "," + NL + "  .SecondSlice= PWMSP001_SLICE";
  protected final String TEXT_47 = "," + NL + "  .CC4yKernRegsPtr= (CCU4_GLOBAL_TypeDef*) CCU4";
  protected final String TEXT_48 = "_BASE," + NL + "  .CC4yRegsPtr= ";
  protected final String TEXT_49 = "(CCU4_CC4_TypeDef*)CCU4";
  protected final String TEXT_50 = "_CC4";
  protected final String TEXT_51 = " ";
  protected final String TEXT_52 = "(CCU4_CC4_TypeDef*)CCU4";
  protected final String TEXT_53 = "_CC4";
  protected final String TEXT_54 = "," + NL + "  .CC4yRegs1Ptr= (CCU4_CC4_TypeDef*)CCU4";
  protected final String TEXT_55 = "_CC4";
  protected final String TEXT_56 = "," + NL + "  .DynamicDataType= &PWMSP001_DynamicData";
  protected final String TEXT_57 = "," + NL + "  .StartControl = ";
  protected final String TEXT_58 = "U," + NL + "  .InterruptControl = 0x";
  protected final String TEXT_59 = "U," + NL + "  .SetCompareFuncPtr = ";
  protected final String TEXT_60 = "," + NL + "  .SetDutyFuncPtr = ";
  protected final String TEXT_61 = "," + NL + "};  " + NL + "  ";
  protected final String TEXT_62 = NL + "//This app is not mapped to any CCU4 slice.";
  protected final String TEXT_63 = NL + "/*CODE_BLOCK_END*/" + NL;
  protected final String TEXT_64 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/pwmsp001/"; 
    stringBuffer.append(TEXT_2);
    stringBuffer.append(app.getAppVersion(AppBaseuri));
    stringBuffer.append(TEXT_3);
     String SliceUri = null; 
     String Slice1Uri = null; 
     String kernelNo = null; 
     String sliceNo = null; 
     String slice1No = null; 
     String appInst  = null; 
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/pwmsp001/"));
for (String appIns : appsList ) {
    appInst = appIns.substring(appIns.lastIndexOf("/")+1);
     SliceUri = app.getMappedUri(AppBaseuri + appInst +"/slice"); 
     if ((SliceUri != null) && (SliceUri.trim() != "")) { 
     kernelNo = SliceUri.substring(SliceUri.indexOf("/ccu4")+6,SliceUri.indexOf("/cc4/")); 
     sliceNo = SliceUri.substring(SliceUri.length() -1); 
     Slice1Uri = app.getMappedUri(AppBaseuri + appInst +"/slice1"); 
     if ((Slice1Uri != null) && (Slice1Uri.trim() != "")) { 
     slice1No = Slice1Uri.substring(Slice1Uri.length() -1); 
    }else{ slice1No = "0"; }
     int interrupt = (app.getIntegerValue(AppBaseuri + appInst + "/pwmsp001_erwcomaprematch/0") << 2) | app.getIntegerValue(AppBaseuri + appInst + "/pwmsp001_erwperiodmatch/0") 
|(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp001_erwextstop/0") << 9) |(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp001_erwtrap/0") << 10)
|(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp001_erwextstart/0") << 8);
     String SetDutyCycle = null;
String SetCompare = null;
int countingmode = app.getIntegerValue(AppBaseuri + appInst + "/slice/tc/tcm");
int timerconcat =  app.getIntegerValue(AppBaseuri + appInst + "/pwmsp001_irtimerconcat");
int period_val = app.getIntegerValue(AppBaseuri + appInst + "/pwmsp001_irperiodval");
int compreg_val = app.getIntegerValue(AppBaseuri + appInst + "/pwmsp001_ircompareval");

if(period_val > 65535 && timerconcat == 1)
{
  period_val = (app.getIntegerValue(AppBaseuri + appInst + "/pwmsp001_irperiodregval1") << 16) | (app.getIntegerValue(AppBaseuri + appInst + "/pwmsp001_irperiodregval0"));
  compreg_val = (app.getIntegerValue(AppBaseuri + appInst + "/pwmsp001_ircompareregval1") << 16 ) | app.getIntegerValue(AppBaseuri + appInst + "/pwmsp001_ircompareregval0");
}
if(countingmode == 0 && timerconcat == 0){
  SetDutyCycle = "PWMSP001_lSetDutyEdgeAlign";
  SetCompare = "PWMSP001_lSetCompareEdgeAlign";
}
else if(countingmode == 0 && timerconcat == 1 ){
  SetDutyCycle = "PWMSP001_lSetDutyEdgeAlignTimerConcat";
  SetCompare = "PWMSP001_lSetCompareEdgeAlignTimerConcat";
}
else if (countingmode == 1){
  SetDutyCycle = "PWMSP001_lSetDutyCenterAlign";
  SetCompare = "PWMSP001_lSetCompareCenterAlign";  
}

    stringBuffer.append(TEXT_4);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_5);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_6);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/slice/tc/tssm"));
    stringBuffer.append(TEXT_7);
    if(app.getIntegerValue(AppBaseuri + appInst + "/slice/tc/tcm")==0)
    {
    stringBuffer.append(TEXT_8);
    }
    else
    {
    stringBuffer.append(TEXT_9);
    }
    stringBuffer.append(TEXT_10);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/slice/psl/psl") );
    stringBuffer.append(TEXT_11);
    if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp001_erwstartedge/0") ==1){
    stringBuffer.append(TEXT_12);
    }else{
    stringBuffer.append(TEXT_13);
    }
    stringBuffer.append(TEXT_14);
    if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp001_erwstopedge/0") == 1){
    stringBuffer.append(TEXT_15);
    }else{
    stringBuffer.append(TEXT_16);
    }
    if(app.getIntegerValue(AppBaseuri + appInst + "/slice/ins/ev0em") == 0) {
    stringBuffer.append(TEXT_17);
     } else if(app.getIntegerValue(AppBaseuri + appInst + "/slice/ins/ev0em") == 1 ) {
    stringBuffer.append(TEXT_18);
     } else if(app.getIntegerValue(AppBaseuri + appInst + "/slice/ins/ev0em")==2) {
    stringBuffer.append(TEXT_19);
     } else { 
    stringBuffer.append(TEXT_20);
     } 
    if(app.getIntegerValue(AppBaseuri + appInst + "/slice/ins/ev1em") == 0) {
    stringBuffer.append(TEXT_21);
     } else if(app.getIntegerValue(AppBaseuri + appInst + "/slice/ins/ev1em") == 1 ) {
    stringBuffer.append(TEXT_22);
     } else if(app.getIntegerValue(AppBaseuri + appInst + "/slice/ins/ev1em")==2) {
    stringBuffer.append(TEXT_23);
     } else { 
    stringBuffer.append(TEXT_24);
     } 
    if(app.getIntegerValue(AppBaseuri + appInst + "/slice/tc/strm") == 0) {
    stringBuffer.append(TEXT_25);
     } else { 
    stringBuffer.append(TEXT_26);
     } 
    if(app.getIntegerValue(AppBaseuri + appInst + "/slice/tc/endm") == 0) {
    stringBuffer.append(TEXT_27);
     } else if(app.getIntegerValue(AppBaseuri + appInst + "/slice/tc/endm") == 1) {
    stringBuffer.append(TEXT_28);
     } else { 
    stringBuffer.append(TEXT_29);
     } 
    stringBuffer.append(TEXT_30);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmsp001_erwenabletrap/0") );
    stringBuffer.append(TEXT_31);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmsp001_erwtrapexittime/0") );
    stringBuffer.append(TEXT_32);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/slice/tc/trpsw") );
    stringBuffer.append(TEXT_33);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/slice/ins/ev2lm") );
    stringBuffer.append(TEXT_34);
    stringBuffer.append( app.getFormattedDoubleValue((AppBaseuri + appInst + "/pwmsp001_irselresolution"),"0.000"));
    stringBuffer.append(TEXT_35);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmsp001_irSelprescalar") );
    stringBuffer.append(TEXT_36);
    stringBuffer.append( timerconcat);
    stringBuffer.append(TEXT_37);
    stringBuffer.append( compreg_val);
    stringBuffer.append(TEXT_38);
    stringBuffer.append( period_val);
    stringBuffer.append(TEXT_39);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/slice/tc/dithe"));
    stringBuffer.append(TEXT_40);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/slice/dits/dcvs"));
    stringBuffer.append(TEXT_41);
     if (timerconcat == 0){ 
    stringBuffer.append(TEXT_42);
    stringBuffer.append(sliceNo);
    stringBuffer.append(TEXT_43);
    } else {
    stringBuffer.append(TEXT_44);
    stringBuffer.append(slice1No);
    stringBuffer.append(TEXT_45);
    }
    stringBuffer.append(TEXT_46);
    stringBuffer.append(sliceNo);
    stringBuffer.append(TEXT_47);
    stringBuffer.append( kernelNo);
    stringBuffer.append(TEXT_48);
     if (timerconcat == 0){ 
    stringBuffer.append(TEXT_49);
    stringBuffer.append( kernelNo);
    stringBuffer.append(TEXT_50);
    stringBuffer.append(sliceNo);
    stringBuffer.append(TEXT_51);
    } else {
    stringBuffer.append(TEXT_52);
    stringBuffer.append( kernelNo);
    stringBuffer.append(TEXT_53);
    stringBuffer.append(slice1No);
    }
    stringBuffer.append(TEXT_54);
    stringBuffer.append( kernelNo);
    stringBuffer.append(TEXT_55);
    stringBuffer.append(sliceNo);
    stringBuffer.append(TEXT_56);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_57);
    stringBuffer.append(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp001_erwstart/0"));
    stringBuffer.append(TEXT_58);
    stringBuffer.append( Integer.toHexString(interrupt) );
    stringBuffer.append(TEXT_59);
    stringBuffer.append( SetCompare);
    stringBuffer.append(TEXT_60);
    stringBuffer.append( SetDutyCycle);
    stringBuffer.append(TEXT_61);
    }else {
    stringBuffer.append(TEXT_62);
    }}
    stringBuffer.append(TEXT_63);
    stringBuffer.append(TEXT_64);
    return stringBuffer.toString();
  }
}
