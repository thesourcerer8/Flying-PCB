package CodeGenerator;

import java.util.*;
import java.text.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class pwmsp003confc_template
{
  protected static String nl;
  public static synchronized pwmsp003confc_template create(String lineSeparator)
  {
    nl = lineSeparator;
    pwmsp003confc_template result = new pwmsp003confc_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[pwmsp003_Conf.c]*/" + NL + "" + NL + "/*******************************************************************************" + NL + " Copyright (c) 2013, Infineon Technologies AG                                 **" + NL + " All rights reserved.                                                         **" + NL + "                                                                              **" + NL + " Redistribution and use in source and binary forms, with or without           **" + NL + " modification,are permitted provided that the following conditions are met:   **" + NL + "                                                                              **" + NL + " *Redistributions of source code must retain the above copyright notice,      **" + NL + " this list of conditions and the following disclaimer.                        **" + NL + " *Redistributions in binary form must reproduce the above copyright notice,   **" + NL + " this list of conditions and the following disclaimer in the documentation    **" + NL + " and/or other materials provided with the distribution.                       **" + NL + " *Neither the name of the copyright holders nor the names of its contributors **" + NL + " may be used to endorse or promote products derived from this software without**" + NL + " specific prior written permission.                                           **" + NL + "                                                                              **" + NL + " THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\"  **" + NL + " AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **" + NL + " IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **" + NL + " ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **" + NL + " LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **" + NL + " CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **" + NL + " SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **" + NL + " INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **" + NL + " CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **" + NL + " ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **" + NL + " POSSIBILITY OF SUCH DAMAGE.                                                  **" + NL + "                                                                              **" + NL + " To improve the quality of the software, users are encouraged to share        **" + NL + " modifications, enhancements or bug fixes with Infineon Technologies AG       **" + NL + " dave@infineon.com).                                                          **" + NL + "                                                                              **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC4000/XMC1000 Series                                 **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** NOTE     : Any changes made to this file will be overwritten during Code   **" + NL + "**            generation                                                      **" + NL + "**                                                                            **" + NL + "********************************************************************************" + NL + "** VERSION HISTORY:" + NL + "********************************************************************************" + NL + "** v1.0.0, 26 Nov 2013,  SSAM: Initial version" + NL + "*******************************************************************************/" + NL + "/**" + NL + " * @file  PWMSP003_Conf.c" + NL + " *" + NL + " * @brief This file contains App parameter data as per GUI configurations" + NL + " */" + NL;
  protected final String TEXT_2 = NL + NL + "#include \"../../inc/PWMSP003/PWMSP003.h\"" + NL + "" + NL + "extern void PWMSP003_lSetDutyCenterAlign(const void* HandlePtr,float Duty);" + NL + "extern void PWMSP003_lSetDutyEdgeAlign(const void* HandlePtr,float Duty);" + NL + "extern void PWMSP003_lSetCompareCenterAlign(const void* HandlePtr,uint32_t Compare);" + NL + "extern void PWMSP003_lSetCompareEdgeAlign(const void* HandlePtr,uint32_t Compare);" + NL;
  protected final String TEXT_3 = NL;
  protected final String TEXT_4 = NL;
  protected final String TEXT_5 = NL;
  protected final String TEXT_6 = NL + NL + "PWMSP003_DynamicDataType PWMSP003_DynamicData";
  protected final String TEXT_7 = " =" + NL + "{" + NL + "  .StateType = PWMSP003_UNINITIALIZED" + NL + "};" + NL + "" + NL + "const PWMSP003_HandleType PWMSP003_Handle";
  protected final String TEXT_8 = " =" + NL + "{" + NL + "  .StartControl = ";
  protected final String TEXT_9 = "U,";
  protected final String TEXT_10 = NL + "  .CountingModeType = PWMSP003_EDGE_ALIGNED,";
  protected final String TEXT_11 = NL + "  .CountingModeType = PWMSP003_CENTER_ALIGNED,";
  protected final String TEXT_12 = NL + "  .kCountDirection = ";
  protected final String TEXT_13 = "U," + NL + "  .kPassiveLevel = ";
  protected final String TEXT_14 = "U," + NL + "  .kTimerMode = ";
  protected final String TEXT_15 = "U," + NL + "" + NL + "  .kResolution = (float)";
  protected final String TEXT_16 = "," + NL + "  .kCCUPrescaler= ";
  protected final String TEXT_17 = "U," + NL + "  .kCompareValue = ";
  protected final String TEXT_18 = "U," + NL + "  .kPeriodVal = ";
  protected final String TEXT_19 = "U," + NL + "  .kMaxPeriodVal= 65535U," + NL + "" + NL + "  .kPrescalerMode = ";
  protected final String TEXT_20 = "U," + NL + "  .kFloatingPrescalepcmpvalue = ";
  protected final String TEXT_21 = "U," + NL + "" + NL + "  .kEvent0Function =";
  protected final String TEXT_22 = " PWMSP003_NO_FUNCTION,";
  protected final String TEXT_23 = " PWMSP003_EXTERNAL_START,";
  protected final String TEXT_24 = " PWMSP003_EXTERNAL_STOP,";
  protected final String TEXT_25 = " PWMSP003_EXTERNAL_MODULATION,";
  protected final String TEXT_26 = " PWMSP003_EXTERNAL_COUNT_DIRECTION,";
  protected final String TEXT_27 = " PWMSP003_EXTERNAL_GATING,";
  protected final String TEXT_28 = " PWMSP003_EXTERNAL_LOAD,";
  protected final String TEXT_29 = " PWMSP003_EXTERNAL_COUNT,";
  protected final String TEXT_30 = NL + "  .kEvent1Function =";
  protected final String TEXT_31 = " PWMSP003_NO_FUNCTION,";
  protected final String TEXT_32 = " PWMSP003_EXTERNAL_START,";
  protected final String TEXT_33 = " PWMSP003_EXTERNAL_STOP,";
  protected final String TEXT_34 = " PWMSP003_EXTERNAL_MODULATION,";
  protected final String TEXT_35 = " PWMSP003_EXTERNAL_COUNT_DIRECTION,";
  protected final String TEXT_36 = " PWMSP003_EXTERNAL_GATING,";
  protected final String TEXT_37 = " PWMSP003_EXTERNAL_LOAD,";
  protected final String TEXT_38 = " PWMSP003_EXTERNAL_COUNT,";
  protected final String TEXT_39 = " PWMSP003_EXTERNAL_OVERRIDE,";
  protected final String TEXT_40 = NL + "  .kEvent2Function =";
  protected final String TEXT_41 = " PWMSP003_NO_FUNCTION,";
  protected final String TEXT_42 = " PWMSP003_EXTERNAL_START,";
  protected final String TEXT_43 = " PWMSP003_EXTERNAL_STOP,";
  protected final String TEXT_44 = " PWMSP003_EXTERNAL_MODULATION,";
  protected final String TEXT_45 = " PWMSP003_EXTERNAL_COUNT_DIRECTION,";
  protected final String TEXT_46 = " PWMSP003_EXTERNAL_GATING,";
  protected final String TEXT_47 = " PWMSP003_EXTERNAL_LOAD,";
  protected final String TEXT_48 = " PWMSP003_EXTERNAL_COUNT,";
  protected final String TEXT_49 = " PWMSP003_EXTERNAL_OVERRIDE,";
  protected final String TEXT_50 = " PWMSP003_EXTERNAL_TRAP,";
  protected final String TEXT_51 = NL + NL + "  .kStartEvent =";
  protected final String TEXT_52 = " PWMSP003_EVENT_0,";
  protected final String TEXT_53 = " PWMSP003_EVENT_1,";
  protected final String TEXT_54 = " PWMSP003_EVENT_2,";
  protected final String TEXT_55 = " PWMSP003_NO_EVENT,";
  protected final String TEXT_56 = NL + "  .kStopEvent =";
  protected final String TEXT_57 = " PWMSP003_EVENT_0,";
  protected final String TEXT_58 = " PWMSP003_EVENT_1,";
  protected final String TEXT_59 = " PWMSP003_EVENT_2,";
  protected final String TEXT_60 = " PWMSP003_NO_EVENT,";
  protected final String TEXT_61 = NL + "  .kModulationEvent =";
  protected final String TEXT_62 = " PWMSP003_EVENT_0,";
  protected final String TEXT_63 = " PWMSP003_EVENT_1,";
  protected final String TEXT_64 = " PWMSP003_EVENT_2,";
  protected final String TEXT_65 = " PWMSP003_NO_EVENT,";
  protected final String TEXT_66 = NL + "  .kCountDirEvent =";
  protected final String TEXT_67 = " PWMSP003_EVENT_0,";
  protected final String TEXT_68 = " PWMSP003_EVENT_1,";
  protected final String TEXT_69 = " PWMSP003_EVENT_2,";
  protected final String TEXT_70 = " PWMSP003_NO_EVENT,";
  protected final String TEXT_71 = NL + "  .kGatingEvent =";
  protected final String TEXT_72 = " PWMSP003_EVENT_0,";
  protected final String TEXT_73 = " PWMSP003_EVENT_1,";
  protected final String TEXT_74 = " PWMSP003_EVENT_2,";
  protected final String TEXT_75 = " PWMSP003_NO_EVENT,";
  protected final String TEXT_76 = NL + "  .kLoadEvent =";
  protected final String TEXT_77 = " PWMSP003_EVENT_0,";
  protected final String TEXT_78 = " PWMSP003_EVENT_1,";
  protected final String TEXT_79 = " PWMSP003_EVENT_2,";
  protected final String TEXT_80 = " PWMSP003_NO_EVENT,";
  protected final String TEXT_81 = NL + "  .kCountEvent =";
  protected final String TEXT_82 = " PWMSP003_EVENT_0,";
  protected final String TEXT_83 = " PWMSP003_EVENT_1,";
  protected final String TEXT_84 = " PWMSP003_EVENT_2,";
  protected final String TEXT_85 = " PWMSP003_NO_EVENT,";
  protected final String TEXT_86 = NL + NL + "  /** Override event should be mapped in both Event1 and Event2 for TRIGGER and" + NL + "   *  VALUE respectively. Else Override function cannot be performed properly." + NL + "   */" + NL + "  .kOverrideEvent =";
  protected final String TEXT_87 = " PWMSP003_EVENT_1,";
  protected final String TEXT_88 = " PWMSP003_NO_EVENT,";
  protected final String TEXT_89 = NL + "  .kTraptEvent =";
  protected final String TEXT_90 = " PWMSP003_EVENT_2,";
  protected final String TEXT_91 = " PWMSP003_NO_EVENT,";
  protected final String TEXT_92 = NL + NL + "  .kEvent0_lpfconfig =";
  protected final String TEXT_93 = " PWMSP003_LPF_DISABLED,";
  protected final String TEXT_94 = " PWMSP003_LPF_3_CLOCKS,";
  protected final String TEXT_95 = " PWMSP003_LPF_5_CLOCKS,";
  protected final String TEXT_96 = " PWMSP003_LPF_7_CLOCKS,";
  protected final String TEXT_97 = NL + "  .kEvent1_lpfconfig =";
  protected final String TEXT_98 = " PWMSP003_LPF_DISABLED,";
  protected final String TEXT_99 = " PWMSP003_LPF_3_CLOCKS,";
  protected final String TEXT_100 = " PWMSP003_LPF_5_CLOCKS,";
  protected final String TEXT_101 = " PWMSP003_LPF_7_CLOCKS,";
  protected final String TEXT_102 = NL + "  .kEvent2_lpfconfig =";
  protected final String TEXT_103 = " PWMSP003_LPF_DISABLED,";
  protected final String TEXT_104 = " PWMSP003_LPF_3_CLOCKS,";
  protected final String TEXT_105 = " PWMSP003_LPF_5_CLOCKS,";
  protected final String TEXT_106 = " PWMSP003_LPF_7_CLOCKS,";
  protected final String TEXT_107 = NL + NL + "  .kExtStartTrig = ";
  protected final String TEXT_108 = " 0U, ";
  protected final String TEXT_109 = " 1U, ";
  protected final String TEXT_110 = NL + "  .kExtStopTrig = ";
  protected final String TEXT_111 = " 0U, ";
  protected final String TEXT_112 = " 1U, ";
  protected final String TEXT_113 = NL;
  protected final String TEXT_114 = NL + "  .kStartEdge = PWMSP003_NO_TRIGGER,";
  protected final String TEXT_115 = NL + "  .kStartEdge = PWMSP003_RISING_EDGE,";
  protected final String TEXT_116 = NL + "  .kStartEdge = PWMSP003_FALLING_EDGE,";
  protected final String TEXT_117 = NL + "  .kStartEdge = PWMSP003_BOTH_EDGES,";
  protected final String TEXT_118 = NL + "  .kStopEdge = PWMSP003_NO_TRIGGER,";
  protected final String TEXT_119 = NL + "  .kStopEdge = PWMSP003_RISING_EDGE,";
  protected final String TEXT_120 = NL + "  .kStopEdge = PWMSP003_FALLING_EDGE,";
  protected final String TEXT_121 = NL + "  .kStopEdge = PWMSP003_BOTH_EDGES,";
  protected final String TEXT_122 = NL;
  protected final String TEXT_123 = NL + "  .ExtStartConfigType = PWMSP003_START_TIMER,";
  protected final String TEXT_124 = NL + "  .ExtStartConfigType = PWMSP003_CLEAR_START_TIMER,";
  protected final String TEXT_125 = NL + "  .ExtStopConfigType = PWMSP003_STOP_TIMER,";
  protected final String TEXT_126 = NL + "  .ExtStopConfigType = PWMSP003_CLEAR_TIMER,";
  protected final String TEXT_127 = NL + "  .ExtStopConfigType = PWMSP003_CLEAR_STOP_TIMER,";
  protected final String TEXT_128 = NL + NL + "  .kTrapEnable = ";
  protected final String TEXT_129 = "U," + NL + "  .kTrapLevel = ";
  protected final String TEXT_130 = "U," + NL + "  .kTrapSync = ";
  protected final String TEXT_131 = "U," + NL + "  .kTrapExitControl = ";
  protected final String TEXT_132 = "U," + NL + "" + NL + "  .kModulationActiveLevel = ";
  protected final String TEXT_133 = "U," + NL + "  .kModulationMode = ";
  protected final String TEXT_134 = "U," + NL + "  .kModulationSync = ";
  protected final String TEXT_135 = "U," + NL + "" + NL + "  .kCntDirActiveLevel = ";
  protected final String TEXT_136 = "U," + NL + "" + NL + "  .kGateEventActiveLevel = ";
  protected final String TEXT_137 = "U," + NL;
  protected final String TEXT_138 = NL + "  .kCountEventEdge = PWMSP003_NO_TRIGGER,";
  protected final String TEXT_139 = NL + "  .kCountEventEdge = PWMSP003_RISING_EDGE,";
  protected final String TEXT_140 = NL + "  .kCountEventEdge = PWMSP003_FALLING_EDGE,";
  protected final String TEXT_141 = NL + "  .kCountEventEdge = PWMSP003_BOTH_EDGES,";
  protected final String TEXT_142 = NL;
  protected final String TEXT_143 = NL + "  .kLoadEventEdge = PWMSP003_NO_TRIGGER,";
  protected final String TEXT_144 = NL + "  .kLoadEventEdge = PWMSP003_RISING_EDGE,";
  protected final String TEXT_145 = NL + "  .kLoadEventEdge = PWMSP003_FALLING_EDGE,";
  protected final String TEXT_146 = NL + "  .kLoadEventEdge = PWMSP003_BOTH_EDGES,";
  protected final String TEXT_147 = NL;
  protected final String TEXT_148 = NL + "  .kOverrideTriggerEdge = PWMSP003_NO_TRIGGER,";
  protected final String TEXT_149 = NL + "  .kOverrideTriggerEdge = PWMSP003_RISING_EDGE,";
  protected final String TEXT_150 = NL + "  .kOverrideTriggerEdge = PWMSP003_FALLING_EDGE,";
  protected final String TEXT_151 = NL + "  .kOverrideTriggerEdge = PWMSP003_BOTH_EDGES,";
  protected final String TEXT_152 = NL + NL + "  .kOverrideActiveLevel = ";
  protected final String TEXT_153 = "U," + NL + "" + NL + "  .kMCMode = ";
  protected final String TEXT_154 = "U," + NL + "  .kMCModeShadowRequest = ";
  protected final String TEXT_155 = "U,";
  protected final String TEXT_156 = NL + "  .kMCModeShadowConfig = ";
  protected final String TEXT_157 = "U,";
  protected final String TEXT_158 = NL + "  .kMCModeShadowConfig = ";
  protected final String TEXT_159 = "U,  ";
  protected final String TEXT_160 = NL + "  .kDitherSetting = ";
  protected final String TEXT_161 = "U," + NL + "  .kDitherCompare = ";
  protected final String TEXT_162 = "U," + NL + "" + NL + "  .kOutputEnable = ";
  protected final String TEXT_163 = "U," + NL + "  .kOutputChar = ";
  protected final String TEXT_164 = "U," + NL + "  .kOutPadclass = ";
  protected final String TEXT_165 = "U," + NL + "  .kOutDriverMode = ";
  protected final String TEXT_166 = "U," + NL + "" + NL + "  .Slice = PWMSP003_SLICE";
  protected final String TEXT_167 = "," + NL + "  .CC4yKernRegsPtr = (CCU4_GLOBAL_TypeDef*) CCU4";
  protected final String TEXT_168 = "_BASE," + NL + "  .CC4yRegsPtr = (CCU4_CC4_TypeDef*)CCU4";
  protected final String TEXT_169 = "_CC4";
  protected final String TEXT_170 = "," + NL + "" + NL + "  .DynamicDataType = &PWMSP003_DynamicData";
  protected final String TEXT_171 = "," + NL + "  .InterruptControl = 0x";
  protected final String TEXT_172 = "U," + NL + "  .SetCompareFuncPtr = ";
  protected final String TEXT_173 = "," + NL + "  .SetDutyFuncPtr = ";
  protected final String TEXT_174 = NL + "};" + NL;
  protected final String TEXT_175 = NL + "//This app is not mapped to any CCU4 slice.";
  protected final String TEXT_176 = NL + NL + "const PWMSP003_HandleType * PWMSP003_HandleArr[PWMSP003_NUM_INSTANCES] =" + NL + "{";
  protected final String TEXT_177 = NL + "   &PWMSP003_Handle";
  protected final String TEXT_178 = ",";
  protected final String TEXT_179 = NL + "};" + NL + "" + NL + "/*CODE_BLOCK_END*/" + NL;
  protected final String TEXT_180 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/pwmsp003/"; 
    stringBuffer.append(TEXT_2);
     String SliceUri = null; 
     String Slice1Uri = null; 
     String kernelNo = null; 
     String sliceNo = null; 
     String slice1No = null; 
    stringBuffer.append(TEXT_3);
     String appInst  = null; 
    stringBuffer.append(TEXT_4);
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/pwmsp003/"));
for (String appIns : appsList ) {
    appInst = appIns.substring(appIns.lastIndexOf("/")+1);
    stringBuffer.append(TEXT_5);
     SliceUri = app.getMappedUri(AppBaseuri + appInst +"/slice"); 
     if ((SliceUri != null) && (SliceUri.trim() != "")) { 
     kernelNo = SliceUri.substring(SliceUri.indexOf("/ccu4")+6,SliceUri.indexOf("/cc4/")); 
     sliceNo = SliceUri.substring(SliceUri.length() -1); 
     int interrupt = app.getIntegerValue(AppBaseuri + appInst + "/slice/inte/pme")
| (app.getIntegerValue(AppBaseuri + appInst + "/slice/inte/ome") << 1)
| (app.getIntegerValue(AppBaseuri + appInst + "/slice/inte/cmue") << 2)
| (app.getIntegerValue(AppBaseuri + appInst + "/slice/inte/cmde") << 3)
| (app.getIntegerValue(AppBaseuri + appInst + "/slice/inte/e0ae") << 8)
| (app.getIntegerValue(AppBaseuri + appInst + "/slice/inte/e1ae") << 9)
| (app.getIntegerValue(AppBaseuri + appInst + "/slice/inte/e2ae") << 10);
     String SetDutyCycle = null;
String SetCompare = null;
int countingmode = app.getIntegerValue(AppBaseuri + appInst + "/slice/tc/tcm");
if(countingmode == 0){
  SetDutyCycle = "PWMSP003_lSetDutyEdgeAlign";
  SetCompare = "PWMSP003_lSetCompareEdgeAlign";
}
else if (countingmode == 1){
  SetDutyCycle = "PWMSP003_lSetDutyCenterAlign";
  SetCompare = "PWMSP003_lSetCompareCenterAlign";
}

    stringBuffer.append(TEXT_6);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_7);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_8);
    stringBuffer.append(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_erwstart/0"));
    stringBuffer.append(TEXT_9);
    if(app.getIntegerValue(AppBaseuri + appInst + "/slice/tc/tcm")==0)
    {
    stringBuffer.append(TEXT_10);
    }
    else
    {
    stringBuffer.append(TEXT_11);
    }
    stringBuffer.append(TEXT_12);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/slice/tcst/cdir"));
    stringBuffer.append(TEXT_13);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/slice/psl/psl") );
    stringBuffer.append(TEXT_14);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/slice/tc/tssm"));
    stringBuffer.append(TEXT_15);
    stringBuffer.append( app.getFormattedDoubleValue((AppBaseuri + appInst + "/pwmsp003_irselresolution"),"0.000"));
    stringBuffer.append(TEXT_16);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_irSelprescaler") );
    stringBuffer.append(TEXT_17);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_ircompareval"));
    stringBuffer.append(TEXT_18);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_irperiodval"));
    stringBuffer.append(TEXT_19);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/slice/tc/fpe"));
    stringBuffer.append(TEXT_20);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/slice/fpcs/pcmp"));
    stringBuffer.append(TEXT_21);
    if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent0selection") == 0){
    stringBuffer.append(TEXT_22);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent0selection") == 1){
    stringBuffer.append(TEXT_23);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent0selection") == 2){
    stringBuffer.append(TEXT_24);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent0selection") == 3){
    stringBuffer.append(TEXT_25);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent0selection") == 4){
    stringBuffer.append(TEXT_26);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent0selection") == 5){
    stringBuffer.append(TEXT_27);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent0selection") == 6){
    stringBuffer.append(TEXT_28);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent0selection") == 7){
    stringBuffer.append(TEXT_29);
    }
    stringBuffer.append(TEXT_30);
    if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent1selection") == 0){
    stringBuffer.append(TEXT_31);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent1selection") == 1){
    stringBuffer.append(TEXT_32);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent1selection") == 2){
    stringBuffer.append(TEXT_33);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent1selection") == 3){
    stringBuffer.append(TEXT_34);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent1selection") == 4){
    stringBuffer.append(TEXT_35);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent1selection") == 5){
    stringBuffer.append(TEXT_36);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent1selection") == 6){
    stringBuffer.append(TEXT_37);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent1selection") == 7){
    stringBuffer.append(TEXT_38);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent1selection") == 8){
    stringBuffer.append(TEXT_39);
    }
    stringBuffer.append(TEXT_40);
    if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent2selection") == 0){
    stringBuffer.append(TEXT_41);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent2selection") == 1){
    stringBuffer.append(TEXT_42);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent2selection") == 2){
    stringBuffer.append(TEXT_43);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent2selection") == 3){
    stringBuffer.append(TEXT_44);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent2selection") == 4){
    stringBuffer.append(TEXT_45);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent2selection") == 5){
    stringBuffer.append(TEXT_46);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent2selection") == 6){
    stringBuffer.append(TEXT_47);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent2selection") == 7){
    stringBuffer.append(TEXT_48);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent2selection") == 8){
    stringBuffer.append(TEXT_49);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent2selection") == 9){
    stringBuffer.append(TEXT_50);
    }
    stringBuffer.append(TEXT_51);
    if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent0selection") == 1){
    stringBuffer.append(TEXT_52);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent1selection") == 1){
    stringBuffer.append(TEXT_53);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent2selection") == 1){
    stringBuffer.append(TEXT_54);
    }else{
    stringBuffer.append(TEXT_55);
    }
    stringBuffer.append(TEXT_56);
    if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent0selection") == 2){
    stringBuffer.append(TEXT_57);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent1selection") == 2){
    stringBuffer.append(TEXT_58);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent2selection") == 2){
    stringBuffer.append(TEXT_59);
    }else{
    stringBuffer.append(TEXT_60);
    }
    stringBuffer.append(TEXT_61);
    if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent0selection") == 3){
    stringBuffer.append(TEXT_62);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent1selection") == 3){
    stringBuffer.append(TEXT_63);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent2selection") == 3){
    stringBuffer.append(TEXT_64);
    }else{
    stringBuffer.append(TEXT_65);
    }
    stringBuffer.append(TEXT_66);
    if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent0selection") == 4){
    stringBuffer.append(TEXT_67);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent1selection") == 4){
    stringBuffer.append(TEXT_68);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent2selection") == 4){
    stringBuffer.append(TEXT_69);
    }else{
    stringBuffer.append(TEXT_70);
    }
    stringBuffer.append(TEXT_71);
    if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent0selection") == 5){
    stringBuffer.append(TEXT_72);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent1selection") == 5){
    stringBuffer.append(TEXT_73);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent2selection") == 5){
    stringBuffer.append(TEXT_74);
    }else{
    stringBuffer.append(TEXT_75);
    }
    stringBuffer.append(TEXT_76);
    if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent0selection") == 6){
    stringBuffer.append(TEXT_77);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent1selection") == 6){
    stringBuffer.append(TEXT_78);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent2selection") == 6){
    stringBuffer.append(TEXT_79);
    }else{
    stringBuffer.append(TEXT_80);
    }
    stringBuffer.append(TEXT_81);
    if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent0selection") == 7){
    stringBuffer.append(TEXT_82);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent1selection") == 7){
    stringBuffer.append(TEXT_83);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent2selection") == 7){
    stringBuffer.append(TEXT_84);
    }else{
    stringBuffer.append(TEXT_85);
    }
    stringBuffer.append(TEXT_86);
    if((app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent1selection") == 8)
                    && (app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent2selection") == 8)){
    stringBuffer.append(TEXT_87);
    }else{
    stringBuffer.append(TEXT_88);
    }
    stringBuffer.append(TEXT_89);
    if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempevent2selection") == 9){
    stringBuffer.append(TEXT_90);
    }else{
    stringBuffer.append(TEXT_91);
    }
    stringBuffer.append(TEXT_92);
    if(app.getIntegerValue(AppBaseuri + appInst + "/slice/ins/lpf0m") == 0){
    stringBuffer.append(TEXT_93);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/slice/ins/lpf0m") == 1){
    stringBuffer.append(TEXT_94);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/slice/ins/lpf0m") == 2){
    stringBuffer.append(TEXT_95);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/slice/ins/lpf0m") == 3){
    stringBuffer.append(TEXT_96);
    }
    stringBuffer.append(TEXT_97);
    if(app.getIntegerValue(AppBaseuri + appInst + "/slice/ins/lpf1m") == 0){
    stringBuffer.append(TEXT_98);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/slice/ins/lpf1m") == 1){
    stringBuffer.append(TEXT_99);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/slice/ins/lpf1m") == 2){
    stringBuffer.append(TEXT_100);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/slice/ins/lpf1m") == 3){
    stringBuffer.append(TEXT_101);
    }
    stringBuffer.append(TEXT_102);
    if(app.getIntegerValue(AppBaseuri + appInst + "/slice/ins/lpf2m") == 0){
    stringBuffer.append(TEXT_103);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/slice/ins/lpf2m") == 1){
    stringBuffer.append(TEXT_104);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/slice/ins/lpf2m") == 2){
    stringBuffer.append(TEXT_105);
    }else if(app.getIntegerValue(AppBaseuri + appInst + "/slice/ins/lpf2m") == 3){
    stringBuffer.append(TEXT_106);
    }
    stringBuffer.append(TEXT_107);
    if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_erwstartedge/0") ==1){
    stringBuffer.append(TEXT_108);
    }else{
    stringBuffer.append(TEXT_109);
    }
    stringBuffer.append(TEXT_110);
    if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_erwstopedge/0") == 1){
    stringBuffer.append(TEXT_111);
    }else{
    stringBuffer.append(TEXT_112);
    }
    stringBuffer.append(TEXT_113);
    if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempextstrttriggeredge") == 0) {
    stringBuffer.append(TEXT_114);
     } else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempextstrttriggeredge") == 1 ) {
    stringBuffer.append(TEXT_115);
     } else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempextstrttriggeredge")==2) {
    stringBuffer.append(TEXT_116);
     } else { 
    stringBuffer.append(TEXT_117);
     } 
    if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempextstoptriggeredge") == 0) {
    stringBuffer.append(TEXT_118);
     } else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempextstoptriggeredge") == 1 ) {
    stringBuffer.append(TEXT_119);
     } else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempextstoptriggeredge")==2) {
    stringBuffer.append(TEXT_120);
     } else { 
    stringBuffer.append(TEXT_121);
     } 
    stringBuffer.append(TEXT_122);
    if(app.getIntegerValue(AppBaseuri + appInst + "/slice/tc/strm") == 0) {
    stringBuffer.append(TEXT_123);
     } else { 
    stringBuffer.append(TEXT_124);
     } 
    if(app.getIntegerValue(AppBaseuri + appInst + "/slice/tc/endm") == 0) {
    stringBuffer.append(TEXT_125);
     } else if(app.getIntegerValue(AppBaseuri + appInst + "/slice/tc/endm") == 1) {
    stringBuffer.append(TEXT_126);
     } else { 
    stringBuffer.append(TEXT_127);
     } 
    stringBuffer.append(TEXT_128);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/slice/tc/trape") );
    stringBuffer.append(TEXT_129);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_temptraplevel") );
    stringBuffer.append(TEXT_130);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/slice/tc/trpse") );
    stringBuffer.append(TEXT_131);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/slice/tc/trpsw") );
    stringBuffer.append(TEXT_132);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempextmodactivelvl") );
    stringBuffer.append(TEXT_133);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/slice/tc/emt") );
    stringBuffer.append(TEXT_134);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/slice/tc/ems") );
    stringBuffer.append(TEXT_135);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempcntdir") );
    stringBuffer.append(TEXT_136);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempextgateactivelvl") );
    stringBuffer.append(TEXT_137);
    if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempextcnttriggeredge") == 0) {
    stringBuffer.append(TEXT_138);
     } else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempextcnttriggeredge") == 1 ) {
    stringBuffer.append(TEXT_139);
     } else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempextcnttriggeredge")==2) {
    stringBuffer.append(TEXT_140);
     } else { 
    stringBuffer.append(TEXT_141);
     } 
    stringBuffer.append(TEXT_142);
    if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempextloadtriggeredge") == 0) {
    stringBuffer.append(TEXT_143);
     } else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempextloadtriggeredge") == 1 ) {
    stringBuffer.append(TEXT_144);
     } else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempextloadtriggeredge")==2) {
    stringBuffer.append(TEXT_145);
     } else { 
    stringBuffer.append(TEXT_146);
     } 
    stringBuffer.append(TEXT_147);
    if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempextoverridetriggeredge") == 0) {
    stringBuffer.append(TEXT_148);
     } else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempextoverridetriggeredge") == 1 ) {
    stringBuffer.append(TEXT_149);
     } else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempextoverridetriggeredge")==2) {
    stringBuffer.append(TEXT_150);
     } else { 
    stringBuffer.append(TEXT_151);
     } 
    stringBuffer.append(TEXT_152);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempextoverridevalactivelvl") );
    stringBuffer.append(TEXT_153);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/slice/tc/mcme") );
    stringBuffer.append(TEXT_154);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempmcmshadowtransfer") );
    stringBuffer.append(TEXT_155);
    if(app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempmcmshadowtransconf") == 2) {
    stringBuffer.append(TEXT_156);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempmcmshadowtransconf")+1 );
    stringBuffer.append(TEXT_157);
     } else { 
    stringBuffer.append(TEXT_158);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_tempmcmshadowtransconf") );
    stringBuffer.append(TEXT_159);
     } 
    stringBuffer.append(TEXT_160);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/slice/tc/dithe"));
    stringBuffer.append(TEXT_161);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/slice/dits/dcvs"));
    stringBuffer.append(TEXT_162);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_directoutputpadenabledummy"));
    stringBuffer.append(TEXT_163);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_directoutputpadchardummy"));
    stringBuffer.append(TEXT_164);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmsp003_directoutputpadclassdummy"));
    stringBuffer.append(TEXT_165);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pin_directoutput/pdr_pd"));
    stringBuffer.append(TEXT_166);
    stringBuffer.append(sliceNo);
    stringBuffer.append(TEXT_167);
    stringBuffer.append( kernelNo);
    stringBuffer.append(TEXT_168);
    stringBuffer.append( kernelNo);
    stringBuffer.append(TEXT_169);
    stringBuffer.append(sliceNo);
    stringBuffer.append(TEXT_170);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_171);
    stringBuffer.append( Integer.toHexString(interrupt) );
    stringBuffer.append(TEXT_172);
    stringBuffer.append( SetCompare);
    stringBuffer.append(TEXT_173);
    stringBuffer.append( SetDutyCycle);
    stringBuffer.append(TEXT_174);
    }else {
    stringBuffer.append(TEXT_175);
    }}
    stringBuffer.append(TEXT_176);
     int instance = 0; 
     for (String appIns : appsList ) { 
     appInst = appIns.substring(appIns.lastIndexOf("/")+1);
     instance++; 
    }
     String lastAppInstance = null; 
     for (int index = 0;  index < (instance); index++) {  
    stringBuffer.append(TEXT_177);
    stringBuffer.append(index);
     if(index+1 != (instance)) {
    stringBuffer.append(TEXT_178);
    } 
    }
    stringBuffer.append(TEXT_179);
    stringBuffer.append(TEXT_180);
    return stringBuffer.toString();
  }
}
