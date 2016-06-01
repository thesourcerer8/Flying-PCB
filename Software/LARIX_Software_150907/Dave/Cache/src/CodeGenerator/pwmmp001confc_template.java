package CodeGenerator;

import java.util.*;
import java.text.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class pwmmp001confc_template
{
  protected static String nl;
  public static synchronized pwmmp001confc_template create(String lineSeparator)
  {
    nl = lineSeparator;
    pwmmp001confc_template result = new pwmmp001confc_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[PWMMP001Conf.c]*/" + NL + "" + NL + "/*******************************************************************************" + NL + " Copyright (c) 2013, Infineon Technologies AG                                 **" + NL + " All rights reserved.                                                         **" + NL + "                                                                              **" + NL + " Redistribution and use in source and binary forms, with or without           **" + NL + " modification,are permitted provided that the following conditions are met:   **" + NL + "                                                                              **" + NL + " *Redistributions of source code must retain the above copyright notice,      **" + NL + " this list of conditions and the following disclaimer.                        **" + NL + " *Redistributions in binary form must reproduce the above copyright notice,   **" + NL + " this list of conditions and the following disclaimer in the documentation    **" + NL + " and/or other materials provided with the distribution.                       **" + NL + " *Neither the name of the copyright holders nor the names of its contributors **" + NL + " may be used to endorse or promote products derived from this software without**" + NL + " specific prior written permission.                                           **" + NL + "                                                                              **" + NL + " THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\"  **" + NL + " AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **" + NL + " IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **" + NL + " ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **" + NL + " LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **" + NL + " CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **" + NL + " SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **" + NL + " INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **" + NL + " CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **" + NL + " ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **" + NL + " POSSIBILITY OF SUCH DAMAGE.                                                  **" + NL + "                                                                              **" + NL + " To improve the quality of the software, users are encouraged to share        **" + NL + " modifications, enhancements or bug fixes with Infineon Technologies AG       **" + NL + " dave@infineon.com).                                                          **" + NL + "                                                                              **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC4000/XMC1000 Series                                 **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : DAVE App Developer                                              **" + NL + "**                                                                            **" + NL + "** MAY BE CHANGED BY USER [yes/Yes]: Yes                                      **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : Apr 25, 2013                                           **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "**                       Author(s) Identity                                   **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "** Initials     Name                                                          **" + NL + "** ---------------------------------------------------------------------------**" + NL + "** KS           DAVE App Developer                                            **" + NL + "*******************************************************************************/";
  protected final String TEXT_2 = NL + "/**" + NL + " * @file  PWMMP001_Conf.c" + NL + " * @App Version PWMMP001 <";
  protected final String TEXT_3 = ">" + NL + " * @brief This file contains App parameter data as per GUI configurations" + NL + " */" + NL + "/* Revision History" + NL + " * 01 Jan 2013   v1.0.10   taken as base version" + NL + " * 25 Apr 2013   v1.0.12   Trap value affecting is updated" + NL + " */" + NL + "" + NL + "#include <DAVE3.h>" + NL;
  protected final String TEXT_4 = NL;
  protected final String TEXT_5 = "  ";
  protected final String TEXT_6 = " ";
  protected final String TEXT_7 = NL;
  protected final String TEXT_8 = NL + NL + "CCU8PWMLIB_DynamicHandleType CCU8PWMLIB_DynamicHandle";
  protected final String TEXT_9 = " =" + NL + "{" + NL + "  .State = CCU8PWMLIB_UNINITIALIZED" + NL + "};" + NL + "" + NL + "const CCU8PWMLIB_HandleType CCU8PWMLIB_Handle";
  protected final String TEXT_10 = " =" + NL + "{" + NL + "    .kTimerMode= 0U," + NL + "    .CompareMode= CCU8PWMLIB_ASYMMETRIC," + NL + "    .CountingMode= CCU8PWMLIB_CENTER_ALIGNED," + NL + "    " + NL + "    .kPassiveState0= ";
  protected final String TEXT_11 = "U," + NL + "    .kPassiveState1= ";
  protected final String TEXT_12 = "U," + NL + "    .kPassiveLevel0= ";
  protected final String TEXT_13 = "U," + NL + "    .kPassiveLevel1= ";
  protected final String TEXT_14 = "U," + NL + "" + NL + "    .kExtStartTrig = 1,";
  protected final String TEXT_15 = NL + "    .kExtStopTrig = 0U,";
  protected final String TEXT_16 = NL + "    .kExtStopTrig = 1U,";
  protected final String TEXT_17 = NL + "    .kStartEdge =  CCU8PWMLIB_RISINGEDGE,";
  protected final String TEXT_18 = NL + "    .kStartEdge =  CCU8PWMLIB_RISINGEDGE,";
  protected final String TEXT_19 = NL + "    .kStartEdge =  CCU8PWMLIB_FALLINGEDGE,";
  protected final String TEXT_20 = NL + "    .kStartEdge =  CCU8PWMLIB_BOTHEDGES,";
  protected final String TEXT_21 = NL + "    .kStopEdge =  CCU8PWMLIB_NOTRIGGER,";
  protected final String TEXT_22 = NL + "    .kStopEdge =  CCU8PWMLIB_RISINGEDGE,";
  protected final String TEXT_23 = NL + "    .kStopEdge =  CCU8PWMLIB_FALLINGEDGE,";
  protected final String TEXT_24 = NL + "    .kStopEdge =  CCU8PWMLIB_BOTHEDGES,";
  protected final String TEXT_25 = NL + "    .ExtStartConfig = CCU8PWMLIB_CLEAR_START_TIMER,";
  protected final String TEXT_26 = NL + "    .ExtStartConfig = CCU8PWMLIB_START_TIMER,";
  protected final String TEXT_27 = NL + "    .ExtStartConfig =  CCU8PWMLIB_CLEAR_START_TIMER,";
  protected final String TEXT_28 = NL + "    .ExtStopConfig = CCU8PWMLIB_STOP_TIMER,";
  protected final String TEXT_29 = NL + "    .ExtStopConfig = CCU8PWMLIB_CLEAR_TIMER,";
  protected final String TEXT_30 = NL + "    .ExtStopConfig =  CCU8PWMLIB_CLEAR_STOP_TIMER,";
  protected final String TEXT_31 = NL + "    .kTrapEnable= ";
  protected final String TEXT_32 = "U," + NL + "    .kTrapSync= ";
  protected final String TEXT_33 = "U," + NL + "    .kTrapExitControl= ";
  protected final String TEXT_34 = "U," + NL + "    .kTrapLevel= ";
  protected final String TEXT_35 = "U," + NL + "    " + NL + "    .kResolution = (float)";
  protected final String TEXT_36 = "," + NL + "    .kCCUPrescalar= ";
  protected final String TEXT_37 = "U," + NL + "    .kTimerConcatenation= 0U," + NL + "    .kCompareValue1= ";
  protected final String TEXT_38 = "U, " + NL + "    .kCompareValue2 = ";
  protected final String TEXT_39 = "U," + NL + "    .kPeriodVal= ";
  protected final String TEXT_40 = "U," + NL + "    " + NL + "    .kFallingDeadTime = ";
  protected final String TEXT_41 = "U," + NL + "    .kRisingDeadTime= ";
  protected final String TEXT_42 = "U," + NL + "    .kDeadTimePrescalar= ";
  protected final String TEXT_43 = "U," + NL + "    .DeadTimeConf= ";
  protected final String TEXT_44 = " CCU8PWMLIB_DISABLE, ";
  protected final String TEXT_45 = " CCU8PWMLIB_ENABLEDIRECTOUTPUT, ";
  protected final String TEXT_46 = " CCU8PWMLIB_ENABLEINVERTEDOUTPUT, ";
  protected final String TEXT_47 = " CCU8PWMLIB_ENABLE, ";
  protected final String TEXT_48 = NL + "    " + NL + "    .kDitherSetting= ";
  protected final String TEXT_49 = "U," + NL + "    .kDitherCompare = ";
  protected final String TEXT_50 = "U,  " + NL + "" + NL + "    .ShadowTransfer= 0U," + NL + "    .ShadowTransferMask= 0x00U," + NL + "  " + NL + "    .Start= 0U," + NL + "    .StartMask= 0U,  " + NL + "        " + NL + "    .FirstSlice= CCU8PWMLIB_SLICE";
  protected final String TEXT_51 = "," + NL + "    .SecondSlice= CCU8PWMLIB_SLICE0," + NL + "    .CC8yKernRegsPtr= (CCU8_GLOBAL_TypeDef*) CCU8";
  protected final String TEXT_52 = "_BASE," + NL + "    .CC8yRegsPtr= CCU8";
  protected final String TEXT_53 = "_CC8";
  protected final String TEXT_54 = "," + NL + "    .CC8yRegs1Ptr= CCU8";
  protected final String TEXT_55 = "_CC8";
  protected final String TEXT_56 = "," + NL + "    .DynamicHandleType= &CCU8PWMLIB_DynamicHandle";
  protected final String TEXT_57 = "," + NL + "    .StartControl = 0U," + NL + "    .InterruptControl = 0x";
  protected final String TEXT_58 = "U," + NL + "    .SetCompareFuncPtr = &";
  protected final String TEXT_59 = "," + NL + "    .SetDutyFuncPtr = &";
  protected final String TEXT_60 = "," + NL + "};" + NL + "" + NL + "CCU8PWMLIB_DynamicHandleType CCU8PWMLIB_DynamicHandle";
  protected final String TEXT_61 = " =" + NL + "{" + NL + "  .State = CCU8PWMLIB_UNINITIALIZED" + NL + "};" + NL + "const CCU8PWMLIB_HandleType CCU8PWMLIB_Handle";
  protected final String TEXT_62 = " =" + NL + "{" + NL + "    .kTimerMode= 0U," + NL + "    .CompareMode= CCU8PWMLIB_ASYMMETRIC," + NL + "    .CountingMode= CCU8PWMLIB_CENTER_ALIGNED," + NL + "    " + NL + "    .kPassiveState0= ";
  protected final String TEXT_63 = "U," + NL + "    .kPassiveState1= ";
  protected final String TEXT_64 = "U," + NL + "    .kPassiveLevel0= ";
  protected final String TEXT_65 = "U," + NL + "    .kPassiveLevel1= ";
  protected final String TEXT_66 = "U," + NL + "" + NL + "    .kExtStartTrig = 1U,";
  protected final String TEXT_67 = NL + "    .kExtStopTrig = 0U,";
  protected final String TEXT_68 = NL + "    .kExtStopTrig = 1U,";
  protected final String TEXT_69 = NL + "    .kStartEdge =  CCU8PWMLIB_RISINGEDGE,";
  protected final String TEXT_70 = NL + "    .kStartEdge =  CCU8PWMLIB_RISINGEDGE,";
  protected final String TEXT_71 = NL + "    .kStartEdge =  CCU8PWMLIB_FALLINGEDGE,";
  protected final String TEXT_72 = NL + "    .kStartEdge =  CCU8PWMLIB_BOTHEDGES,";
  protected final String TEXT_73 = NL + "    .kStopEdge =  CCU8PWMLIB_NOTRIGGER,";
  protected final String TEXT_74 = NL + "    .kStopEdge =  CCU8PWMLIB_RISINGEDGE,";
  protected final String TEXT_75 = NL + "    .kStopEdge =  CCU8PWMLIB_FALLINGEDGE,";
  protected final String TEXT_76 = NL + "    .kStopEdge =  CCU8PWMLIB_BOTHEDGES,";
  protected final String TEXT_77 = NL + "    .ExtStartConfig = CCU8PWMLIB_CLEAR_START_TIMER,";
  protected final String TEXT_78 = NL + "    .ExtStartConfig = CCU8PWMLIB_START_TIMER,";
  protected final String TEXT_79 = NL + "    .ExtStartConfig =  CCU8PWMLIB_CLEAR_START_TIMER,";
  protected final String TEXT_80 = NL + "    .ExtStopConfig = CCU8PWMLIB_STOP_TIMER,";
  protected final String TEXT_81 = NL + "    .ExtStopConfig = CCU8PWMLIB_CLEAR_TIMER,";
  protected final String TEXT_82 = NL + "    .ExtStopConfig =  CCU8PWMLIB_CLEAR_STOP_TIMER,";
  protected final String TEXT_83 = NL + "    " + NL + "    .kTrapEnable= ";
  protected final String TEXT_84 = "U," + NL + "    .kTrapSync= ";
  protected final String TEXT_85 = "U," + NL + "    .kTrapExitControl= ";
  protected final String TEXT_86 = "U," + NL + "    .kTrapLevel= ";
  protected final String TEXT_87 = "U," + NL + "    " + NL + "    .kResolution = (float)";
  protected final String TEXT_88 = "," + NL + "    .kCCUPrescalar= ";
  protected final String TEXT_89 = "U," + NL + "    .kTimerConcatenation= 0U," + NL + "    .kCompareValue1= ";
  protected final String TEXT_90 = "U, " + NL + "    .kCompareValue2 = ";
  protected final String TEXT_91 = "U," + NL + "    .kPeriodVal= ";
  protected final String TEXT_92 = "U," + NL + "    " + NL + "    .kFallingDeadTime = ";
  protected final String TEXT_93 = "U," + NL + "    .kRisingDeadTime= ";
  protected final String TEXT_94 = "U," + NL + "    .kDeadTimePrescalar= ";
  protected final String TEXT_95 = "U," + NL + "    .DeadTimeConf= ";
  protected final String TEXT_96 = " CCU8PWMLIB_DISABLE, ";
  protected final String TEXT_97 = " CCU8PWMLIB_ENABLEDIRECTOUTPUT, ";
  protected final String TEXT_98 = " CCU8PWMLIB_ENABLEINVERTEDOUTPUT, ";
  protected final String TEXT_99 = " CCU8PWMLIB_ENABLE, ";
  protected final String TEXT_100 = NL + "    " + NL + "    .kDitherSetting= ";
  protected final String TEXT_101 = "U," + NL + "    .kDitherCompare = ";
  protected final String TEXT_102 = "U,  " + NL + "" + NL + "    .ShadowTransfer= ";
  protected final String TEXT_103 = " 1U ";
  protected final String TEXT_104 = " 0U ";
  protected final String TEXT_105 = "," + NL + "    .ShadowTransferMask= ";
  protected final String TEXT_106 = " ";
  protected final String TEXT_107 = "U ";
  protected final String TEXT_108 = " 0x00U ";
  protected final String TEXT_109 = "," + NL + "  " + NL + "    .Start= ";
  protected final String TEXT_110 = " 1U ";
  protected final String TEXT_111 = " 0U ";
  protected final String TEXT_112 = "," + NL + "    .StartMask= ";
  protected final String TEXT_113 = " ";
  protected final String TEXT_114 = "U ";
  protected final String TEXT_115 = " 0x00U ";
  protected final String TEXT_116 = "," + NL + "        " + NL + "    .FirstSlice= CCU8PWMLIB_SLICE";
  protected final String TEXT_117 = "," + NL + "    .SecondSlice= CCU8PWMLIB_SLICE0," + NL + "    .CC8yKernRegsPtr= (CCU8_GLOBAL_TypeDef*) CCU8";
  protected final String TEXT_118 = "_BASE," + NL + "    .CC8yRegsPtr= CCU8";
  protected final String TEXT_119 = "_CC8";
  protected final String TEXT_120 = "," + NL + "    .CC8yRegs1Ptr= CCU8";
  protected final String TEXT_121 = "_CC8";
  protected final String TEXT_122 = "," + NL + "    .DynamicHandleType= &CCU8PWMLIB_DynamicHandle";
  protected final String TEXT_123 = "," + NL + "    .StartControl = 0U," + NL + "    .InterruptControl = 0x";
  protected final String TEXT_124 = "U," + NL + "    .SetCompareFuncPtr = &";
  protected final String TEXT_125 = "," + NL + "    .SetDutyFuncPtr = &";
  protected final String TEXT_126 = "," + NL + "};" + NL;
  protected final String TEXT_127 = NL + NL + "CCU8PWMLIB_DynamicHandleType CCU8PWMLIB_DynamicHandle";
  protected final String TEXT_128 = " =" + NL + "{" + NL + "  .State = CCU8PWMLIB_UNINITIALIZED" + NL + "};" + NL + "" + NL + "const CCU8PWMLIB_HandleType CCU8PWMLIB_Handle";
  protected final String TEXT_129 = " =" + NL + "{" + NL + "    .kTimerMode= 0U," + NL + "    .CompareMode= CCU8PWMLIB_ASYMMETRIC," + NL + "    .CountingMode= CCU8PWMLIB_CENTER_ALIGNED," + NL + "    " + NL + "    .kPassiveState0= ";
  protected final String TEXT_130 = "U," + NL + "    .kPassiveState1= ";
  protected final String TEXT_131 = "U," + NL + "    .kPassiveLevel0= ";
  protected final String TEXT_132 = "U," + NL + "    .kPassiveLevel1= ";
  protected final String TEXT_133 = "U," + NL + "    " + NL + "    .kExtStartTrig = 1U,";
  protected final String TEXT_134 = NL + "    .kExtStopTrig = 0U,";
  protected final String TEXT_135 = NL + "    .kExtStopTrig = 1U,";
  protected final String TEXT_136 = NL + "    .kStartEdge =  CCU8PWMLIB_RISINGEDGE,";
  protected final String TEXT_137 = NL + "    .kStartEdge =  CCU8PWMLIB_RISINGEDGE,";
  protected final String TEXT_138 = NL + "    .kStartEdge =  CCU8PWMLIB_FALLINGEDGE,";
  protected final String TEXT_139 = NL + "    .kStartEdge =  CCU8PWMLIB_BOTHEDGES,";
  protected final String TEXT_140 = NL + "    .kStopEdge =  CCU8PWMLIB_NOTRIGGER,";
  protected final String TEXT_141 = NL + "    .kStopEdge =  CCU8PWMLIB_RISINGEDGE,";
  protected final String TEXT_142 = NL + "    .kStopEdge =  CCU8PWMLIB_FALLINGEDGE,";
  protected final String TEXT_143 = NL + "    .kStopEdge =  CCU8PWMLIB_BOTHEDGES,";
  protected final String TEXT_144 = NL + "    .ExtStartConfig = CCU8PWMLIB_CLEAR_START_TIMER,";
  protected final String TEXT_145 = NL + "    .ExtStartConfig = CCU8PWMLIB_START_TIMER,";
  protected final String TEXT_146 = NL + "    .ExtStartConfig =  CCU8PWMLIB_CLEAR_START_TIMER,";
  protected final String TEXT_147 = NL + "    .ExtStopConfig = CCU8PWMLIB_STOP_TIMER,";
  protected final String TEXT_148 = NL + "    .ExtStopConfig = CCU8PWMLIB_CLEAR_TIMER,";
  protected final String TEXT_149 = NL + "    .ExtStopConfig =  CCU8PWMLIB_CLEAR_STOP_TIMER,";
  protected final String TEXT_150 = NL + NL + "    .kTrapEnable= ";
  protected final String TEXT_151 = "U," + NL + "    .kTrapSync= ";
  protected final String TEXT_152 = "U," + NL + "    .kTrapExitControl= ";
  protected final String TEXT_153 = "U," + NL + "    .kTrapLevel= ";
  protected final String TEXT_154 = "U," + NL + "    " + NL + "    .kResolution = (float)";
  protected final String TEXT_155 = "," + NL + "    .kCCUPrescalar= ";
  protected final String TEXT_156 = "U," + NL + "    .kTimerConcatenation= 0U," + NL + "    .kCompareValue1= ";
  protected final String TEXT_157 = "U, " + NL + "    .kCompareValue2 = ";
  protected final String TEXT_158 = "U," + NL + "    .kPeriodVal= ";
  protected final String TEXT_159 = "U," + NL + "    " + NL + "    .kFallingDeadTime = ";
  protected final String TEXT_160 = "U," + NL + "    .kRisingDeadTime= ";
  protected final String TEXT_161 = "U," + NL + "    .kDeadTimePrescalar= ";
  protected final String TEXT_162 = "U," + NL + "    .DeadTimeConf= ";
  protected final String TEXT_163 = " CCU8PWMLIB_DISABLE, ";
  protected final String TEXT_164 = " CCU8PWMLIB_ENABLEDIRECTOUTPUT, ";
  protected final String TEXT_165 = " CCU8PWMLIB_ENABLEINVERTEDOUTPUT, ";
  protected final String TEXT_166 = " CCU8PWMLIB_ENABLE, ";
  protected final String TEXT_167 = NL + "    " + NL + "    .kDitherSetting= ";
  protected final String TEXT_168 = "U," + NL + "    .kDitherCompare = ";
  protected final String TEXT_169 = "U,  " + NL + "" + NL + "    .ShadowTransfer= ";
  protected final String TEXT_170 = " 1U ";
  protected final String TEXT_171 = " 0U ";
  protected final String TEXT_172 = "," + NL + "    .ShadowTransferMask= ";
  protected final String TEXT_173 = " ";
  protected final String TEXT_174 = "U ";
  protected final String TEXT_175 = " 0x00U ";
  protected final String TEXT_176 = "," + NL + "  " + NL + "    .Start= ";
  protected final String TEXT_177 = " 1U ";
  protected final String TEXT_178 = " 0U ";
  protected final String TEXT_179 = "," + NL + "    .StartMask= ";
  protected final String TEXT_180 = " ";
  protected final String TEXT_181 = "U ";
  protected final String TEXT_182 = " 0x00U ";
  protected final String TEXT_183 = "," + NL + "        " + NL + "    .FirstSlice= CCU8PWMLIB_SLICE";
  protected final String TEXT_184 = "," + NL + "    .SecondSlice= CCU8PWMLIB_SLICE0," + NL + "    .CC8yKernRegsPtr= (CCU8_GLOBAL_TypeDef*) CCU8";
  protected final String TEXT_185 = "_BASE," + NL + "    .CC8yRegsPtr= CCU8";
  protected final String TEXT_186 = "_CC8";
  protected final String TEXT_187 = "," + NL + "    .CC8yRegs1Ptr= CCU8";
  protected final String TEXT_188 = "_CC8";
  protected final String TEXT_189 = "," + NL + "    .DynamicHandleType= &CCU8PWMLIB_DynamicHandle";
  protected final String TEXT_190 = "," + NL + "    .StartControl = 0U," + NL + "    .InterruptControl = 0x";
  protected final String TEXT_191 = "U," + NL + "    .SetCompareFuncPtr = &";
  protected final String TEXT_192 = "," + NL + "    .SetDutyFuncPtr = &";
  protected final String TEXT_193 = "," + NL + "};";
  protected final String TEXT_194 = NL;
  protected final String TEXT_195 = NL + "CCU8PWMLIB_DynamicHandleType CCU8PWMLIB_DynamicHandle";
  protected final String TEXT_196 = " =" + NL + "{" + NL + "  .State = CCU8PWMLIB_UNINITIALIZED" + NL + "};" + NL + "" + NL + "const CCU8PWMLIB_HandleType CCU8PWMLIB_Handle";
  protected final String TEXT_197 = " =" + NL + "{" + NL + "    .kTimerMode= 0U," + NL + "    .CompareMode= CCU8PWMLIB_ASYMMETRIC," + NL + "    .CountingMode= CCU8PWMLIB_CENTER_ALIGNED," + NL + "    " + NL + "    .kPassiveState0= ";
  protected final String TEXT_198 = "U," + NL + "    .kPassiveState1= ";
  protected final String TEXT_199 = "U," + NL + "    .kPassiveLevel0= ";
  protected final String TEXT_200 = "U," + NL + "    .kPassiveLevel1= ";
  protected final String TEXT_201 = "U," + NL + "" + NL + "    .kExtStartTrig = 1U,";
  protected final String TEXT_202 = NL + "    .kExtStopTrig = 0U,";
  protected final String TEXT_203 = NL + "    .kExtStopTrig = 1U,";
  protected final String TEXT_204 = NL + "    .kStartEdge =  CCU8PWMLIB_RISINGEDGE,";
  protected final String TEXT_205 = NL + "    .kStartEdge =  CCU8PWMLIB_RISINGEDGE,";
  protected final String TEXT_206 = NL + "    .kStartEdge =  CCU8PWMLIB_FALLINGEDGE,";
  protected final String TEXT_207 = NL + "    .kStartEdge =  CCU8PWMLIB_BOTHEDGES,";
  protected final String TEXT_208 = NL + "    .kStopEdge =  CCU8PWMLIB_NOTRIGGER,";
  protected final String TEXT_209 = NL + "    .kStopEdge =  CCU8PWMLIB_RISINGEDGE,";
  protected final String TEXT_210 = NL + "    .kStopEdge =  CCU8PWMLIB_FALLINGEDGE,";
  protected final String TEXT_211 = NL + "    .kStopEdge =  CCU8PWMLIB_BOTHEDGES,";
  protected final String TEXT_212 = NL + "    .ExtStartConfig = CCU8PWMLIB_CLEAR_START_TIMER,";
  protected final String TEXT_213 = NL + "    .ExtStartConfig = CCU8PWMLIB_START_TIMER,";
  protected final String TEXT_214 = NL + "    .ExtStartConfig =  CCU8PWMLIB_CLEAR_START_TIMER,";
  protected final String TEXT_215 = NL + "    .ExtStopConfig = CCU8PWMLIB_STOP_TIMER,";
  protected final String TEXT_216 = NL + "    .ExtStopConfig = CCU8PWMLIB_CLEAR_TIMER,";
  protected final String TEXT_217 = NL + "    .ExtStopConfig =  CCU8PWMLIB_CLEAR_STOP_TIMER,";
  protected final String TEXT_218 = NL + NL + "    .kTrapEnable= ";
  protected final String TEXT_219 = "U," + NL + "    .kTrapSync= ";
  protected final String TEXT_220 = "U," + NL + "    .kTrapExitControl= ";
  protected final String TEXT_221 = "U," + NL + "    .kTrapLevel= ";
  protected final String TEXT_222 = "U," + NL + "    " + NL + "    .kResolution = (float)";
  protected final String TEXT_223 = "," + NL + "    .kCCUPrescalar= ";
  protected final String TEXT_224 = "U," + NL + "    .kTimerConcatenation= 0u," + NL + "    .kCompareValue1= ";
  protected final String TEXT_225 = "U, " + NL + "    .kCompareValue2 = ";
  protected final String TEXT_226 = "U," + NL + "    .kPeriodVal= ";
  protected final String TEXT_227 = "U," + NL + "    " + NL + "    .kFallingDeadTime = ";
  protected final String TEXT_228 = "U," + NL + "    .kRisingDeadTime= ";
  protected final String TEXT_229 = "U," + NL + "    .kDeadTimePrescalar= ";
  protected final String TEXT_230 = "U," + NL + "    .DeadTimeConf= ";
  protected final String TEXT_231 = " CCU8PWMLIB_DISABLE, ";
  protected final String TEXT_232 = " CCU8PWMLIB_ENABLEDIRECTOUTPUT, ";
  protected final String TEXT_233 = " CCU8PWMLIB_ENABLEINVERTEDOUTPUT, ";
  protected final String TEXT_234 = " CCU8PWMLIB_ENABLE, ";
  protected final String TEXT_235 = NL + "    " + NL + "    .kDitherSetting= ";
  protected final String TEXT_236 = "U," + NL + "    .kDitherCompare = ";
  protected final String TEXT_237 = "U,  " + NL + "" + NL + "    .ShadowTransfer= ";
  protected final String TEXT_238 = " 1U ";
  protected final String TEXT_239 = " 0U ";
  protected final String TEXT_240 = "," + NL + "    .ShadowTransferMask= ";
  protected final String TEXT_241 = " ";
  protected final String TEXT_242 = "U ";
  protected final String TEXT_243 = " 0x00U ";
  protected final String TEXT_244 = "," + NL + "  " + NL + "    .Start= ";
  protected final String TEXT_245 = " 1U ";
  protected final String TEXT_246 = " 0U ";
  protected final String TEXT_247 = "," + NL + "    .StartMask= ";
  protected final String TEXT_248 = " ";
  protected final String TEXT_249 = "U ";
  protected final String TEXT_250 = " 0x00U ";
  protected final String TEXT_251 = ",  " + NL + "        " + NL + "    .FirstSlice= CCU8PWMLIB_SLICE";
  protected final String TEXT_252 = "," + NL + "    .SecondSlice= CCU8PWMLIB_SLICE0," + NL + "    .CC8yKernRegsPtr= (CCU8_GLOBAL_TypeDef*) CCU8";
  protected final String TEXT_253 = "_BASE," + NL + "    .CC8yRegsPtr= CCU8";
  protected final String TEXT_254 = "_CC8";
  protected final String TEXT_255 = "," + NL + "    .CC8yRegs1Ptr= CCU8";
  protected final String TEXT_256 = "_CC8";
  protected final String TEXT_257 = "," + NL + "    .DynamicHandleType= &CCU8PWMLIB_DynamicHandle";
  protected final String TEXT_258 = "," + NL + "    .StartControl = 0U," + NL + "    .InterruptControl = 0x";
  protected final String TEXT_259 = "U," + NL + "    .SetCompareFuncPtr = &";
  protected final String TEXT_260 = "," + NL + "    .SetDutyFuncPtr = &";
  protected final String TEXT_261 = "," + NL + "};";
  protected final String TEXT_262 = NL + NL + "PWMMP001_DynamicHandleType PWMMP001_DynamicHandle";
  protected final String TEXT_263 = " =" + NL + "{" + NL + "  .State = PWMMP001_UNINITIALIZED" + NL + "};" + NL + "" + NL + "" + NL + "const PWMMP001_HandleType PWMMP001_Handle";
  protected final String TEXT_264 = " =" + NL + "{" + NL + "  .SCUSyncStart = ";
  protected final String TEXT_265 = "U," + NL + "  .kMultiChanModeSupport= ";
  protected final String TEXT_266 = "U," + NL + "  .kNumPhases= ";
  protected final String TEXT_267 = "U," + NL + "  .kModuleNo = PWMMP001_CCU8";
  protected final String TEXT_268 = "," + NL + "  .StartControl = ";
  protected final String TEXT_269 = "U," + NL + "  .PhaseHandlePtr=" + NL + "  {" + NL + "    &CCU8PWMLIB_Handle";
  protected final String TEXT_270 = "," + NL + "    &CCU8PWMLIB_Handle";
  protected final String TEXT_271 = ",";
  protected final String TEXT_272 = NL + "    &CCU8PWMLIB_Handle";
  protected final String TEXT_273 = ",";
  protected final String TEXT_274 = NL + "    NULL,";
  protected final String TEXT_275 = "        ";
  protected final String TEXT_276 = NL + "    &CCU8PWMLIB_Handle";
  protected final String TEXT_277 = ",";
  protected final String TEXT_278 = NL + "    NULL,";
  protected final String TEXT_279 = NL + "  }," + NL + "  .CCU8KernRegsPtr = (CCU8_GLOBAL_TypeDef*) CCU8";
  protected final String TEXT_280 = "_BASE," + NL + "  .DynamicHandle = &PWMMP001_DynamicHandle";
  protected final String TEXT_281 = NL + "}; " + NL;
  protected final String TEXT_282 = NL + NL + NL + "/**" + NL + " * @}" + NL + " */" + NL + " " + NL + "/*CODE_BLOCK_END*/";
  protected final String TEXT_283 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/pwmmp001/"; 
    stringBuffer.append(TEXT_2);
    stringBuffer.append(app.getAppVersion(AppBaseuri));
    stringBuffer.append(TEXT_3);
     String kernelUri = null; 
     String Phase1Uri = null; 
     String Phase2Uri = null; 
     String Phase3Uri = null; 
     String Phase4Uri = null; 
     String Phase1 = null; 
     String Phase2 = null; 
     String Phase3 = null; 
     String Phase4 = null; 
     int PhaseNo = 0; 
     int shadow = 0; 
     String kernelNo = null; 
     String appInst  = null; 
    stringBuffer.append(TEXT_4);
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/pwmmp001/"));
for (String appIns : appsList ) {
		appInst = appIns.substring(appIns.lastIndexOf("/")+1);
     PhaseNo = app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_irphases"); 
     Phase1Uri = app.getMappedUri(AppBaseuri + appInst +"/phase1"); 
     if ((Phase1Uri != null) && (Phase1Uri.trim() != "")) { 
     kernelNo = app.getUriSegment(Phase1Uri,4);
     Phase1 = Phase1Uri.substring(Phase1Uri.length() -1); 
    }
     Phase2Uri = app.getMappedUri(AppBaseuri + appInst +"/phase2"); 
     if ((Phase2Uri != null) && (Phase2Uri.trim() != "")) { 
     Phase2 = Phase2Uri.substring(Phase2Uri.length() -1); 
    }
     if (PhaseNo == 3 || PhaseNo == 4) {
     Phase3Uri = app.getMappedUri(AppBaseuri + appInst +"/phase3"); 
     if ((Phase3Uri != null) && (Phase3Uri.trim() != "")) { 
     Phase3 = Phase3Uri.substring(Phase3Uri.length() -1); 
    }
    }
     if (PhaseNo == 4) {
     Phase4Uri = app.getMappedUri(AppBaseuri + appInst +"/phase4"); 
     if ((Phase4Uri != null) && (Phase4Uri.trim() != "")) { 
     Phase4 = Phase4Uri.substring(Phase4Uri.length() -1); 
    }
    }
     int ph1 = Integer.valueOf(Phase1); 
     int ph2 = Integer.valueOf(Phase2); 
     int ph_3 = 0; 
     int ph4 = 0; 
     int interrupt1 = 0;
  interrupt1 = app.getIntegerValue(AppBaseuri + appInst + "/phase1/inte") | (0x0000073F); 
      interrupt1 = interrupt1 & ((app.getIntegerValue(AppBaseuri + appInst + "/phase1/inte/cmd1e") << 3) | (app.getIntegerValue(AppBaseuri + appInst + "/phase1/inte/cmu1e") << 2) | app.getIntegerValue(AppBaseuri + appInst + "/phase1/inte/pme") 
  |(app.getIntegerValue(AppBaseuri + appInst + "/phase1/inte/e1ae") << 9) |(app.getIntegerValue(AppBaseuri + appInst + "/phase1/inte/e2ae") << 10)
  |(app.getIntegerValue(AppBaseuri + appInst + "/phase1/inte/e0ae") << 8));
     int interrupt2 = 0; 
 interrupt2 = app.getIntegerValue(AppBaseuri + appInst + "/phase2/inte") | (0x0000073F); 
     interrupt2 = interrupt1 & ((app.getIntegerValue(AppBaseuri + appInst + "/phase2/inte/cmd1e") << 3) | (app.getIntegerValue(AppBaseuri + appInst + "/phase2/inte/cmu1e") << 2) | app.getIntegerValue(AppBaseuri + appInst + "/phase2/inte/pme") 
  |(app.getIntegerValue(AppBaseuri + appInst + "/phase2/inte/e1ae") << 9) |(app.getIntegerValue(AppBaseuri + appInst + "/phase2/inte/e2ae") << 10)
  |(app.getIntegerValue(AppBaseuri + appInst + "/phase2/inte/e0ae") << 8));
     int interrupt3 = 0; 
 interrupt3 = app.getIntegerValue(AppBaseuri + appInst + "/phase3/inte") | (0x0000073F); 
     interrupt3 = interrupt3 & ((app.getIntegerValue(AppBaseuri + appInst + "/phase3/inte/cmd1e") << 3)|(app.getIntegerValue(AppBaseuri + appInst + "/phase3/inte/cmu1e") << 2) | app.getIntegerValue(AppBaseuri + appInst + "/phase3/inte/pme") 
|(app.getIntegerValue(AppBaseuri + appInst + "/phase3/inte/e1ae") << 9) |(app.getIntegerValue(AppBaseuri + appInst + "/phase3/inte/e2ae") << 10)
|(app.getIntegerValue(AppBaseuri + appInst + "/phase3/inte/e0ae") << 8));
    stringBuffer.append(TEXT_5);
     int interrupt4 = 0;
 interrupt4 = app.getIntegerValue(AppBaseuri + appInst + "/phase4/inte") | (0x0000073F); 
     interrupt4 = interrupt4 & ((app.getIntegerValue(AppBaseuri + appInst + "/phase4/inte/cmd1e") << 3)|(app.getIntegerValue(AppBaseuri + appInst + "/phase4/inte/cmu1e") << 2) | app.getIntegerValue(AppBaseuri + appInst + "/phase4/inte/pme") 
  |(app.getIntegerValue(AppBaseuri + appInst + "/phase4/inte/e1ae") << 9) |(app.getIntegerValue(AppBaseuri + appInst + "/phase4/inte/e2ae") << 10)
  |(app.getIntegerValue(AppBaseuri + appInst + "/phase4/inte/e0ae") << 8));
    stringBuffer.append(TEXT_6);
    
String SetDutyCycle = "CCU8PWMLIB_SetDutyCenterAlignAsymmetric";
String SetCompare = "CCU8PWMLIB_SetCompareAsymmetric"; 

    stringBuffer.append(TEXT_7);
    DecimalFormat df = new DecimalFormat("0.000");
    stringBuffer.append(TEXT_8);
    stringBuffer.append(Phase1);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_9);
    stringBuffer.append(Phase1);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_10);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/chc/ocs1") );
    stringBuffer.append(TEXT_11);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/chc/ocs2") );
    stringBuffer.append(TEXT_12);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/psl/psl11") );
    stringBuffer.append(TEXT_13);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/psl/psl12") );
    stringBuffer.append(TEXT_14);
     if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstopedge/0")==1)
     { 
    stringBuffer.append(TEXT_15);
     } 
     else 
     { 
    stringBuffer.append(TEXT_16);
     } 
     if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstartedge/0")== 1)
     { 
    stringBuffer.append(TEXT_17);
     } 
     else 
     { 
     if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstartedge/1")== 1)
     { 
    stringBuffer.append(TEXT_18);
     } 
     else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstartedge/2")== 1)
     { 
    stringBuffer.append(TEXT_19);
     } 
     else 
     { 
    stringBuffer.append(TEXT_20);
     } 
     } 
     if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstopedge/0")== 1)
     { 
    stringBuffer.append(TEXT_21);
     } 
     else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstopedge/1")== 1)
     { 
    stringBuffer.append(TEXT_22);
     } 
     else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstopedge/2")== 1)
     { 
    stringBuffer.append(TEXT_23);
     } 
     else 
     { 
    stringBuffer.append(TEXT_24);
     } 
     if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstartedge/0")== 1)
     { 
    stringBuffer.append(TEXT_25);
     } 
     else 
     { 
     if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstartconf/0")== 1)
     { 
    stringBuffer.append(TEXT_26);
     } 
     else 
     { 
    stringBuffer.append(TEXT_27);
     } 
     } 
     if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstopconf/0")== 1)
     { 
    stringBuffer.append(TEXT_28);
     } 
     else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstartedge/2")== 1)
     { 
    stringBuffer.append(TEXT_29);
     } 
     else 
     { 
    stringBuffer.append(TEXT_30);
     } 
    stringBuffer.append(TEXT_31);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwenabletrap/0") );
    stringBuffer.append(TEXT_32);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwtrapexittime/0") );
    stringBuffer.append(TEXT_33);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/tc/trpsw") );
    stringBuffer.append(TEXT_34);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/ins/ev2lm") );
    stringBuffer.append(TEXT_35);
    stringBuffer.append( app.getFormattedDoubleValue((AppBaseuri + appInst + "/pwmmp001_irselresolution"),"0.000"));
    stringBuffer.append(TEXT_36);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/PWMMP001_irSelprescalar") );
    stringBuffer.append(TEXT_37);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_irwph1compareval1")  );
    stringBuffer.append(TEXT_38);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_irwph1compareval2")  );
    stringBuffer.append(TEXT_39);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_irperiodreg")  );
    stringBuffer.append(TEXT_40);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_irwselFallDeadTimereg"));
    stringBuffer.append(TEXT_41);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_irwselRiseDeadTimereg"));
    stringBuffer.append(TEXT_42);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_irseldeadtimeprescalar"));
    stringBuffer.append(TEXT_43);
    if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwDeadTimeConf/0") ==1){
    stringBuffer.append(TEXT_44);
    }
    else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwDeadTimeConf/1") ==1 ){
    stringBuffer.append(TEXT_45);
    }
    else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwDeadTimeConf/2") ==1 ){
    stringBuffer.append(TEXT_46);
    }
    else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwDeadTimeConf/3") ==1 ){
    stringBuffer.append(TEXT_47);
    }
    
    stringBuffer.append(TEXT_48);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/tc/dithe"));
    stringBuffer.append(TEXT_49);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/dits/dcvs"));
    stringBuffer.append(TEXT_50);
    stringBuffer.append(Phase1);
    stringBuffer.append(TEXT_51);
    stringBuffer.append( kernelNo);
    stringBuffer.append(TEXT_52);
    stringBuffer.append( kernelNo);
    stringBuffer.append(TEXT_53);
    stringBuffer.append(Phase1);
    stringBuffer.append(TEXT_54);
    stringBuffer.append( kernelNo);
    stringBuffer.append(TEXT_55);
    stringBuffer.append(Phase1);
    stringBuffer.append(TEXT_56);
    stringBuffer.append(Phase1);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_57);
    stringBuffer.append( Integer.toHexString(interrupt1) );
    stringBuffer.append(TEXT_58);
    stringBuffer.append( SetCompare);
    stringBuffer.append(TEXT_59);
    stringBuffer.append( SetDutyCycle);
    stringBuffer.append(TEXT_60);
    stringBuffer.append(Phase2);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_61);
    stringBuffer.append(Phase2);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_62);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/chc/ocs1") );
    stringBuffer.append(TEXT_63);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/chc/ocs2") );
    stringBuffer.append(TEXT_64);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/psl/psl11") );
    stringBuffer.append(TEXT_65);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/psl/psl12") );
    stringBuffer.append(TEXT_66);
     if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstopedge/0")==1)
     { 
    stringBuffer.append(TEXT_67);
     } 
     else 
     { 
    stringBuffer.append(TEXT_68);
     } 
     if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstartedge/0")== 1)
     { 
    stringBuffer.append(TEXT_69);
     } 
     else 
     { 
     if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstartedge/1")== 1)
     { 
    stringBuffer.append(TEXT_70);
     } 
     else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstartedge/2")== 1)
     { 
    stringBuffer.append(TEXT_71);
     } 
     else 
     { 
    stringBuffer.append(TEXT_72);
     } 
     } 
     if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstopedge/0")== 1)
     { 
    stringBuffer.append(TEXT_73);
     } 
     else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstopedge/1")== 1)
     { 
    stringBuffer.append(TEXT_74);
     } 
     else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstopedge/2")== 1)
     { 
    stringBuffer.append(TEXT_75);
     } 
     else 
     { 
    stringBuffer.append(TEXT_76);
     } 
     if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstartedge/0")== 1)
     { 
    stringBuffer.append(TEXT_77);
     } 
     else 
     { 
     if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstartconf/0")== 1)
     { 
    stringBuffer.append(TEXT_78);
     } 
     else 
     { 
    stringBuffer.append(TEXT_79);
     } 
     } 
     if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstopconf/0")== 1)
     { 
    stringBuffer.append(TEXT_80);
     } 
     else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstartedge/2")== 1)
     { 
    stringBuffer.append(TEXT_81);
     } 
     else 
     { 
    stringBuffer.append(TEXT_82);
     } 
    stringBuffer.append(TEXT_83);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwenabletrap/0") );
    stringBuffer.append(TEXT_84);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwtrapexittime/0") );
    stringBuffer.append(TEXT_85);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/tc/trpsw") );
    stringBuffer.append(TEXT_86);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/ins/ev2lm") );
    stringBuffer.append(TEXT_87);
    stringBuffer.append( app.getFormattedDoubleValue((AppBaseuri + appInst + "/pwmmp001_irselresolution"),"0.000"));
    stringBuffer.append(TEXT_88);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/PWMMP001_irSelprescalar") );
    stringBuffer.append(TEXT_89);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_irwph2compareval1")  );
    stringBuffer.append(TEXT_90);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_irwph2compareval2")  );
    stringBuffer.append(TEXT_91);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_irperiodreg")  );
    stringBuffer.append(TEXT_92);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_irwselFallDeadTimereg"));
    stringBuffer.append(TEXT_93);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_irwselRiseDeadTimereg"));
    stringBuffer.append(TEXT_94);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_irseldeadtimeprescalar"));
    stringBuffer.append(TEXT_95);
    if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwDeadTimeConf/0") ==1){
    stringBuffer.append(TEXT_96);
    }
    else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwDeadTimeConf/1") ==1 ){
    stringBuffer.append(TEXT_97);
    }
    else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwDeadTimeConf/2") ==1 ){
    stringBuffer.append(TEXT_98);
    }
    else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwDeadTimeConf/3") ==1 ){
    stringBuffer.append(TEXT_99);
    }
    
    stringBuffer.append(TEXT_100);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/tc/dithe"));
    stringBuffer.append(TEXT_101);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/dits/dcvs"));
    stringBuffer.append(TEXT_102);
    if (PhaseNo == 2){
    stringBuffer.append(TEXT_103);
    }else{
    stringBuffer.append(TEXT_104);
    }
    stringBuffer.append(TEXT_105);
    if (PhaseNo == 2){shadow = (1 << (4*ph1)) | (1 << (4 * ph2));
    stringBuffer.append(TEXT_106);
    stringBuffer.append( shadow);
    stringBuffer.append(TEXT_107);
    } else { 
    stringBuffer.append(TEXT_108);
    }
    stringBuffer.append(TEXT_109);
    if (PhaseNo == 2){
    stringBuffer.append(TEXT_110);
    }else{
    stringBuffer.append(TEXT_111);
    }
    stringBuffer.append(TEXT_112);
    if (PhaseNo == 2){shadow = (1 << ph1) | (1 << ph2);
    stringBuffer.append(TEXT_113);
    stringBuffer.append( shadow);
    stringBuffer.append(TEXT_114);
    } else { 
    stringBuffer.append(TEXT_115);
    }
    stringBuffer.append(TEXT_116);
    stringBuffer.append(Phase2);
    stringBuffer.append(TEXT_117);
    stringBuffer.append( kernelNo);
    stringBuffer.append(TEXT_118);
    stringBuffer.append( kernelNo);
    stringBuffer.append(TEXT_119);
    stringBuffer.append(Phase2);
    stringBuffer.append(TEXT_120);
    stringBuffer.append( kernelNo);
    stringBuffer.append(TEXT_121);
    stringBuffer.append(Phase2);
    stringBuffer.append(TEXT_122);
    stringBuffer.append(Phase2);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_123);
    stringBuffer.append( Integer.toHexString(interrupt2) );
    stringBuffer.append(TEXT_124);
    stringBuffer.append( SetCompare);
    stringBuffer.append(TEXT_125);
    stringBuffer.append( SetDutyCycle);
    stringBuffer.append(TEXT_126);
    if (PhaseNo == 3 || PhaseNo == 4){
     ph_3 = Integer.valueOf(Phase3); 
    stringBuffer.append(TEXT_127);
    stringBuffer.append(Phase3);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_128);
    stringBuffer.append(Phase3);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_129);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/chc/ocs1") );
    stringBuffer.append(TEXT_130);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/chc/ocs2") );
    stringBuffer.append(TEXT_131);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/psl/psl11") );
    stringBuffer.append(TEXT_132);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/psl/psl12") );
    stringBuffer.append(TEXT_133);
     if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstopedge/0")==1)
     { 
    stringBuffer.append(TEXT_134);
     } 
     else 
     { 
    stringBuffer.append(TEXT_135);
     } 
     if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstartedge/0")== 1)
     { 
    stringBuffer.append(TEXT_136);
     } 
     else 
     { 
     if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstartedge/1")== 1)
     { 
    stringBuffer.append(TEXT_137);
     } 
     else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstartedge/2")== 1)
     { 
    stringBuffer.append(TEXT_138);
     } 
     else 
     { 
    stringBuffer.append(TEXT_139);
     } 
     } 
     if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstopedge/0")== 1)
     { 
    stringBuffer.append(TEXT_140);
     } 
     else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstopedge/1")== 1)
     { 
    stringBuffer.append(TEXT_141);
     } 
     else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstopedge/2")== 1)
     { 
    stringBuffer.append(TEXT_142);
     } 
     else 
     { 
    stringBuffer.append(TEXT_143);
     } 
     if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstartedge/0")== 1)
     { 
    stringBuffer.append(TEXT_144);
     } 
     else 
     { 
     if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstartconf/0")== 1)
     { 
    stringBuffer.append(TEXT_145);
     } 
     else 
     { 
    stringBuffer.append(TEXT_146);
     } 
     } 
     if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstopconf/0")== 1)
     { 
    stringBuffer.append(TEXT_147);
     } 
     else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstartedge/2")== 1)
     { 
    stringBuffer.append(TEXT_148);
     } 
     else 
     { 
    stringBuffer.append(TEXT_149);
     } 
    stringBuffer.append(TEXT_150);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwenabletrap/0") );
    stringBuffer.append(TEXT_151);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwtrapexittime/0") );
    stringBuffer.append(TEXT_152);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/tc/trpsw") );
    stringBuffer.append(TEXT_153);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/ins/ev2lm") );
    stringBuffer.append(TEXT_154);
    stringBuffer.append( app.getFormattedDoubleValue((AppBaseuri + appInst + "/pwmmp001_irselresolution"),"0.000"));
    stringBuffer.append(TEXT_155);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/PWMMP001_irSelprescalar") );
    stringBuffer.append(TEXT_156);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_irwph3compareval1")  );
    stringBuffer.append(TEXT_157);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_irwph3compareval2")  );
    stringBuffer.append(TEXT_158);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_irperiodreg")  );
    stringBuffer.append(TEXT_159);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_irwselFallDeadTimereg"));
    stringBuffer.append(TEXT_160);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_irwselRiseDeadTimereg"));
    stringBuffer.append(TEXT_161);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_irseldeadtimeprescalar"));
    stringBuffer.append(TEXT_162);
    if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwDeadTimeConf/0") ==1){
    stringBuffer.append(TEXT_163);
    }
    else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwDeadTimeConf/1") ==1 ){
    stringBuffer.append(TEXT_164);
    }
    else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwDeadTimeConf/2") ==1 ){
    stringBuffer.append(TEXT_165);
    }
    else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwDeadTimeConf/3") ==1 ){
    stringBuffer.append(TEXT_166);
    }
    
    stringBuffer.append(TEXT_167);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/tc/dithe"));
    stringBuffer.append(TEXT_168);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/dits/dcvs"));
    stringBuffer.append(TEXT_169);
    if (PhaseNo == 3){
    stringBuffer.append(TEXT_170);
    }else{
    stringBuffer.append(TEXT_171);
    }
    stringBuffer.append(TEXT_172);
    if (PhaseNo == 3){shadow = (1 << (4*ph1)) | (1 << (4 * ph2)) | (1 << (4 * ph_3));
    stringBuffer.append(TEXT_173);
    stringBuffer.append( shadow);
    stringBuffer.append(TEXT_174);
    } else { 
    stringBuffer.append(TEXT_175);
    }
    stringBuffer.append(TEXT_176);
    if (PhaseNo == 3){
    stringBuffer.append(TEXT_177);
    }else{
    stringBuffer.append(TEXT_178);
    }
    stringBuffer.append(TEXT_179);
    if (PhaseNo == 3){shadow = (1 << ph1) | (1 << ph2) | (1 << ph_3);
    stringBuffer.append(TEXT_180);
    stringBuffer.append( shadow);
    stringBuffer.append(TEXT_181);
    } else { 
    stringBuffer.append(TEXT_182);
    }
    stringBuffer.append(TEXT_183);
    stringBuffer.append(Phase3);
    stringBuffer.append(TEXT_184);
    stringBuffer.append( kernelNo);
    stringBuffer.append(TEXT_185);
    stringBuffer.append( kernelNo);
    stringBuffer.append(TEXT_186);
    stringBuffer.append(Phase3);
    stringBuffer.append(TEXT_187);
    stringBuffer.append( kernelNo);
    stringBuffer.append(TEXT_188);
    stringBuffer.append(Phase3);
    stringBuffer.append(TEXT_189);
    stringBuffer.append(Phase3);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_190);
    stringBuffer.append( Integer.toHexString(interrupt3) );
    stringBuffer.append(TEXT_191);
    stringBuffer.append( SetCompare);
    stringBuffer.append(TEXT_192);
    stringBuffer.append( SetDutyCycle);
    stringBuffer.append(TEXT_193);
     } 
    stringBuffer.append(TEXT_194);
    if (PhaseNo == 4){
     ph4 = Integer.valueOf(Phase4); 
    stringBuffer.append(TEXT_195);
    stringBuffer.append(Phase4);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_196);
    stringBuffer.append(Phase4);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_197);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/chc/ocs1") );
    stringBuffer.append(TEXT_198);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/chc/ocs2") );
    stringBuffer.append(TEXT_199);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/psl/psl11") );
    stringBuffer.append(TEXT_200);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/psl/psl12") );
    stringBuffer.append(TEXT_201);
     if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstopedge/0")==1)
     { 
    stringBuffer.append(TEXT_202);
     } 
     else 
     { 
    stringBuffer.append(TEXT_203);
     } 
     if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstartedge/0")== 1)
     { 
    stringBuffer.append(TEXT_204);
     } 
     else 
     { 
     if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstartedge/1")== 1)
     { 
    stringBuffer.append(TEXT_205);
     } 
     else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstartedge/2")== 1)
     { 
    stringBuffer.append(TEXT_206);
     } 
     else 
     { 
    stringBuffer.append(TEXT_207);
     } 
     } 
     if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstopedge/0")== 1)
     { 
    stringBuffer.append(TEXT_208);
     } 
     else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstopedge/1")== 1)
     { 
    stringBuffer.append(TEXT_209);
     } 
     else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstopedge/2")== 1)
     { 
    stringBuffer.append(TEXT_210);
     } 
     else 
     { 
    stringBuffer.append(TEXT_211);
     } 
     if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstartedge/0")== 1)
     { 
    stringBuffer.append(TEXT_212);
     } 
     else 
     { 
     if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstartconf/0")== 1)
     { 
    stringBuffer.append(TEXT_213);
     } 
     else 
     { 
    stringBuffer.append(TEXT_214);
     } 
     } 
     if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstopconf/0")== 1)
     { 
    stringBuffer.append(TEXT_215);
     } 
     else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstartedge/2")== 1)
     { 
    stringBuffer.append(TEXT_216);
     } 
     else 
     { 
    stringBuffer.append(TEXT_217);
     } 
    stringBuffer.append(TEXT_218);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwenabletrap/0") );
    stringBuffer.append(TEXT_219);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwtrapexittime/0") );
    stringBuffer.append(TEXT_220);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/tc/trpsw") );
    stringBuffer.append(TEXT_221);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/ins/ev2lm") );
    stringBuffer.append(TEXT_222);
    stringBuffer.append( app.getFormattedDoubleValue((AppBaseuri + appInst + "/pwmmp001_irselresolution"),"0.000"));
    stringBuffer.append(TEXT_223);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/PWMMP001_irSelprescalar") );
    stringBuffer.append(TEXT_224);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_irwph4compareval1")  );
    stringBuffer.append(TEXT_225);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_irwph4compareval2")  );
    stringBuffer.append(TEXT_226);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_irperiodreg")  );
    stringBuffer.append(TEXT_227);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_irwselFallDeadTimereg"));
    stringBuffer.append(TEXT_228);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_irwselRiseDeadTimereg"));
    stringBuffer.append(TEXT_229);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_irseldeadtimeprescalar"));
    stringBuffer.append(TEXT_230);
    if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwDeadTimeConf/0") ==1){
    stringBuffer.append(TEXT_231);
    }
    else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwDeadTimeConf/1") ==1 ){
    stringBuffer.append(TEXT_232);
    }
    else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwDeadTimeConf/2") ==1 ){
    stringBuffer.append(TEXT_233);
    }
    else if(app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwDeadTimeConf/3") ==1 ){
    stringBuffer.append(TEXT_234);
    }
    
    stringBuffer.append(TEXT_235);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/tc/dithe"));
    stringBuffer.append(TEXT_236);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/phase1/dits/dcvs"));
    stringBuffer.append(TEXT_237);
    if(PhaseNo == 4){
    stringBuffer.append(TEXT_238);
    }else{
    stringBuffer.append(TEXT_239);
    }
    stringBuffer.append(TEXT_240);
    if (PhaseNo == 4){shadow = (1 << (4*ph1)) | (1 << (4 * ph2)) | (1 << (4 * ph_3)) | (1 << (4*ph4));
    stringBuffer.append(TEXT_241);
    stringBuffer.append( shadow);
    stringBuffer.append(TEXT_242);
    } else { 
    stringBuffer.append(TEXT_243);
    }
    stringBuffer.append(TEXT_244);
    if (PhaseNo == 4){
    stringBuffer.append(TEXT_245);
    }else{
    stringBuffer.append(TEXT_246);
    }
    stringBuffer.append(TEXT_247);
    if (PhaseNo == 4){shadow = (1 << ph1) | (1 << ph2) | (1 << ph_3) | (1 << ph4);
    stringBuffer.append(TEXT_248);
    stringBuffer.append( shadow);
    stringBuffer.append(TEXT_249);
    } else { 
    stringBuffer.append(TEXT_250);
    }
    stringBuffer.append(TEXT_251);
    stringBuffer.append(Phase4);
    stringBuffer.append(TEXT_252);
    stringBuffer.append( kernelNo);
    stringBuffer.append(TEXT_253);
    stringBuffer.append( kernelNo);
    stringBuffer.append(TEXT_254);
    stringBuffer.append(Phase4);
    stringBuffer.append(TEXT_255);
    stringBuffer.append( kernelNo);
    stringBuffer.append(TEXT_256);
    stringBuffer.append(Phase4);
    stringBuffer.append(TEXT_257);
    stringBuffer.append(Phase4);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_258);
    stringBuffer.append( Integer.toHexString(interrupt4) );
    stringBuffer.append(TEXT_259);
    stringBuffer.append( SetCompare);
    stringBuffer.append(TEXT_260);
    stringBuffer.append( SetDutyCycle);
    stringBuffer.append(TEXT_261);
     } 
    stringBuffer.append(TEXT_262);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_263);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_264);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstartedge/0"));
    stringBuffer.append(TEXT_265);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwmultichannelsupport/0") );
    stringBuffer.append(TEXT_266);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_irphases"));
    stringBuffer.append(TEXT_267);
    stringBuffer.append( kernelNo);
    stringBuffer.append(TEXT_268);
    stringBuffer.append( app.getIntegerValue(AppBaseuri + appInst + "/pwmmp001_erwstart/0") );
    stringBuffer.append(TEXT_269);
    stringBuffer.append(Phase1);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_270);
    stringBuffer.append(Phase2);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_271);
     if (PhaseNo == 3 || PhaseNo == 4) {
    stringBuffer.append(TEXT_272);
    stringBuffer.append(Phase3);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_273);
    } else {
    stringBuffer.append(TEXT_274);
    }
    stringBuffer.append(TEXT_275);
     if (PhaseNo == 4) {
    stringBuffer.append(TEXT_276);
    stringBuffer.append(Phase4);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_277);
    } else {
    stringBuffer.append(TEXT_278);
    }
    stringBuffer.append(TEXT_279);
    stringBuffer.append( kernelNo);
    stringBuffer.append(TEXT_280);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_281);
    }
    stringBuffer.append(TEXT_282);
    stringBuffer.append(TEXT_283);
    return stringBuffer.toString();
  }
}
