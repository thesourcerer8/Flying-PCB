package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class pwmmp001c_template
{
  protected static String nl;
  public static synchronized pwmmp001c_template create(String lineSeparator)
  {
    nl = lineSeparator;
    pwmmp001c_template result = new pwmmp001c_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[PWMMP001.c]*/" + NL + "" + NL + "/*******************************************************************************" + NL + " Copyright (c) 2014, Infineon Technologies AG                                 **" + NL + " All rights reserved.                                                         **" + NL + "                                                                              **" + NL + " Redistribution and use in source and binary forms, with or without           **" + NL + " modification,are permitted provided that the following conditions are met:   **" + NL + "                                                                              **" + NL + " *Redistributions of source code must retain the above copyright notice,      **" + NL + " this list of conditions and the following disclaimer.                        **" + NL + " *Redistributions in binary form must reproduce the above copyright notice,   **" + NL + " this list of conditions and the following disclaimer in the documentation    **" + NL + " and/or other materials provided with the distribution.                       **" + NL + " *Neither the name of the copyright holders nor the names of its contributors **" + NL + " may be used to endorse or promote products derived from this software without**" + NL + " specific prior written permission.                                           **" + NL + "                                                                              **" + NL + " THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\"  **" + NL + " AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **" + NL + " IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **" + NL + " ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **" + NL + " LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **" + NL + " CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **" + NL + " SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **" + NL + " INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **" + NL + " CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **" + NL + " ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **" + NL + " POSSIBILITY OF SUCH DAMAGE.                                                  **" + NL + "                                                                              **" + NL + " To improve the quality of the software, users are encouraged to share        **" + NL + " modifications, enhancements or bug fixes with Infineon Technologies AG       **" + NL + " dave@infineon.com).                                                          **" + NL + "                                                                              **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC4000/XMC1000 Series                                 **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : DAVE App Developer                                              **" + NL + "**                                                                            **" + NL + "** MAY BE CHANGED BY USER [yes/no]: Yes                                       **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : Feb 17, 2014                                           **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "**                       Author(s) Identity                                   **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "** Initials     Name                                                          **" + NL + "** ---------------------------------------------------------------------------**" + NL + "** KS           DAVE App Developer                                            **" + NL + "*******************************************************************************/" + NL + "" + NL + "/**" + NL + " * @file  PWMMP001.c" + NL + " *" + NL + " * @brief This file contains implementations of all Public functions" + NL + " *        of PWMMP001 APP." + NL + " *        This is the Multiphase PWM app and can generate 2, 3 or 4 phase PWM as" + NL + " *        per user configuration. " + NL + " *        It works in centre-aligned asymmetric mode and supports simultaneous" + NL + " *        start of the phases." + NL + " *        User can connect the interrupts of the last slice to the NVIC002 app " + NL + " *        and write their own interrupt handler to achieve synchronous duty update" + NL + " *        and for error handling." + NL + " *" + NL + " */" + NL + "/* Revision History" + NL + " * 01 Jan 2013   v1.0.10   taken as base version" + NL + " * 25 Apr 2013   v1.0.12   Constrains for PDR register generation are added" + NL + " *                         Redundant spaces are removed & Spell corrections done." + NL + " * 17 Feb 2014   v1.0.20   1.Error codes are added in various functions, that " + NL + " *                           can be logged with DBG002 App.                        " + NL + " */" + NL + "" + NL + "/*******************************************************************************" + NL + "**                      Include Files                                         **" + NL + "*******************************************************************************/" + NL + "#include <DAVE3.h>" + NL + "#include \"../../inc/PWMMP001/PWMMP001.h\"" + NL + "#include \"../../inc/LIBS/CCU8PWMLIB.h\"" + NL + "#include \"../../inc/CCU8GLOBAL/CCU8GLOBAL.h\"" + NL + "" + NL + "/**" + NL + " * @cond INTERNAL_DOCS" + NL + " */" + NL + "#define APP_GID DBG002_GID_PWMMP001" + NL + "" + NL + "#define PWMMP001_STATUS_LEN 4U" + NL;
  protected final String TEXT_2 = NL;
  protected final String TEXT_3 = "  " + NL + "/*****************************************************************************" + NL + "              DUMMY DEFINITIONS OF DEBUG LOG MACROS" + NL + "*****************************************************************************/" + NL + "/*These definitions are included here to avoid compilation errors," + NL + " since the DBG002 app is not part of the project. All the macros are defined" + NL + " as empty*/ " + NL + "#ifndef _DBG002_H_" + NL + "" + NL + "#define DBG002_RegisterCallBack(A,B,C)" + NL + "#define DBG002_I(e) " + NL + "#define DBG002_IG(e,g) " + NL + "#define DBG002_IH(e,h) " + NL + "#define DBG002_IP(e,p) " + NL + "#define DBG002_IGH(e,g,h) " + NL + "#define DBG002_IGP(e,g,p) " + NL + "#define DBG002_IHP(e,h,p) " + NL + "#define DBG002_IGHP(e,g,h,p) " + NL + "#define DBG002_N(e) " + NL + "#define DBG002_NG(e,g) " + NL + "#define DBG002_NH(e,h) " + NL + "#define DBG002_NP(e,p) " + NL + "#define DBG002_NGH(e,g,h) " + NL + "#define DBG002_NGP(e,g,p) " + NL + "#define DBG002_NHP(e,h,p) " + NL + "#define DBG002_NGHP(e,g,h,p) " + NL + "#define DBG002_ID(e) " + NL + "#define DBG002_IS(e) " + NL + "#define DBG002_ISG(e,g) " + NL + "#define DBG002_SAFETY_CRITICAL(groupid,messageid,length,value)" + NL + "#define DBG002_CRITICAL(groupid,messageid,length,value)" + NL + "#define DBG002_INFO(groupid,messageid,length,value)" + NL + "#define DBG002_WARNING(groupid,messageid,length,value)" + NL + "#define DBG002_INFO(groupid,messageid,length,value)" + NL + "#define DBG002_TRACE(groupid,messageid,length,value)" + NL + "#define DBG002_FUNCTION_ENTRY(GID, Status) " + NL + "#define DBG002_FUNCTION_EXIT(GID, Status) " + NL + "#define DBG002_MESSAGEID_LITERAL " + NL + "" + NL + "#endif/* End of definitions of dummy Debug Log macros*/";
  protected final String TEXT_4 = NL + NL + "/**" + NL + " * @brief This function is used to initialize the APP." + NL + " * It will configure CCU8_CCy slice registers with the selected PWM parameters." + NL + " * @param[in]   HandlePtr Pointer to PWMMP001_HandleType structure" + NL + " * @return status_t\\n" + NL + " * DAVEApp_SUCCESS: if function is successful\\n" + NL + " * PWMMP001_OPER_NOT_ALLOWED_ERROR: If this function is called in the state" + NL + " * other than PWMMP001_UNINITIALIZED." + NL + " */" + NL + "status_t PWMMP001_lInit(const PWMMP001_HandleType* HandlePtr);" + NL + "" + NL + "/*******************************************************************************" + NL + "**                 Function definitions                                       **" + NL + "*******************************************************************************/";
  protected final String TEXT_5 = NL + NL + "///";
  protected final String TEXT_6 = "   ";
  protected final String TEXT_7 = NL;
  protected final String TEXT_8 = NL + NL + "/**" + NL + " * This function initializes all instances of the PWMMP001 App." + NL + " */" + NL + "void PWMMP001_Init(void)" + NL + "{" + NL + "  status_t Status;" + NL + "  /*Clock initialization - if it is not already done by DAVE3.h */";
  protected final String TEXT_9 = NL + "  CLK002_Init();";
  protected final String TEXT_10 = NL + "  CLK001_Init();";
  protected final String TEXT_11 = NL + "  /* CCU8 global init to start the prescalar and de-assert the module */" + NL + "  CCU8GLOBAL_Init();";
  protected final String TEXT_12 = NL + "  Status = PWMMP001_lInit(&PWMMP001_Handle";
  protected final String TEXT_13 = ");" + NL + "  if(Status == (uint32_t)DAVEApp_SUCCESS)" + NL + "  {" + NL + "    if (PWMMP001_Handle";
  protected final String TEXT_14 = ".StartControl == (uint8_t)SET)" + NL + "    {" + NL + "      Status = PWMMP001_Start(&PWMMP001_Handle";
  protected final String TEXT_15 = ");" + NL + "      DBG002_N(Status != DAVEApp_SUCCESS);" + NL + "    }" + NL + "  }" + NL + "  else" + NL + "  {" + NL + "    DBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "  }";
  protected final String TEXT_16 = "\t  " + NL + "\t  ";
  protected final String TEXT_17 = "      " + NL + "    /* Configuration of Phase 1 Direct Output Pin ";
  protected final String TEXT_18 = ".";
  protected final String TEXT_19 = " based on User configuration */";
  protected final String TEXT_20 = NL + "  PORT";
  protected final String TEXT_21 = "->PDR0  &= (~((uint32_t)PORT";
  protected final String TEXT_22 = "_PDR0_PD";
  protected final String TEXT_23 = "_Msk));" + NL + "  PORT";
  protected final String TEXT_24 = "->PDR0  |= (((uint32_t)";
  protected final String TEXT_25 = "U << (uint32_t)PORT";
  protected final String TEXT_26 = "_PDR0_PD";
  protected final String TEXT_27 = "_Pos) & \\" + NL + "\t\t\t\t\t\t   (uint32_t)PORT";
  protected final String TEXT_28 = "_PDR0_PD";
  protected final String TEXT_29 = "_Msk);";
  protected final String TEXT_30 = NL + "  PORT";
  protected final String TEXT_31 = "->PDR1 &= (~((uint32_t)PORT";
  protected final String TEXT_32 = "_PDR1_PD";
  protected final String TEXT_33 = "_Msk));" + NL + "  PORT";
  protected final String TEXT_34 = "->PDR1 |= (((uint32_t)";
  protected final String TEXT_35 = "U << (uint32_t)PORT";
  protected final String TEXT_36 = "_PDR1_PD";
  protected final String TEXT_37 = "_Pos) & \\" + NL + "                               (uint32_t)PORT";
  protected final String TEXT_38 = "_PDR1_PD";
  protected final String TEXT_39 = "_Msk);";
  protected final String TEXT_40 = NL + "  PORT";
  protected final String TEXT_41 = "->IOCR0  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_42 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_43 = "->IOCR0  |= (((uint32_t)";
  protected final String TEXT_44 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_45 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_46 = "_PO_Msk);";
  protected final String TEXT_47 = NL + "  PORT";
  protected final String TEXT_48 = "->IOCR4  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_49 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_50 = "->IOCR4  |= (((uint32_t)";
  protected final String TEXT_51 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_52 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_53 = "_PO_Msk);";
  protected final String TEXT_54 = NL + "  PORT";
  protected final String TEXT_55 = "->IOCR8  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_56 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_57 = "->IOCR8  |= (((uint32_t)";
  protected final String TEXT_58 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_59 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_60 = "_PO_Msk);";
  protected final String TEXT_61 = NL + "  PORT";
  protected final String TEXT_62 = "->IOCR12  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_63 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_64 = "->IOCR12  |= (((uint32_t)";
  protected final String TEXT_65 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_66 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_67 = "_PO_Msk);";
  protected final String TEXT_68 = " ";
  protected final String TEXT_69 = "  " + NL + "    /* Configuration of Phase 1 Inverted Output Pin ";
  protected final String TEXT_70 = ".";
  protected final String TEXT_71 = " based on User configuration */";
  protected final String TEXT_72 = NL + "  PORT";
  protected final String TEXT_73 = "->PDR0  &= (~((uint32_t)PORT";
  protected final String TEXT_74 = "_PDR0_PD";
  protected final String TEXT_75 = "_Msk));" + NL + "  PORT";
  protected final String TEXT_76 = "->PDR0  |= (((uint32_t)";
  protected final String TEXT_77 = "U << (uint32_t)PORT";
  protected final String TEXT_78 = "_PDR0_PD";
  protected final String TEXT_79 = "_Pos) & \\" + NL + "                             (uint32_t)PORT";
  protected final String TEXT_80 = "_PDR0_PD";
  protected final String TEXT_81 = "_Msk);";
  protected final String TEXT_82 = NL + "  PORT";
  protected final String TEXT_83 = "->PDR1 &= (~((uint32_t)PORT";
  protected final String TEXT_84 = "_PDR1_PD";
  protected final String TEXT_85 = "_Msk));" + NL + "  PORT";
  protected final String TEXT_86 = "->PDR1 |= (((uint32_t)";
  protected final String TEXT_87 = "U << (uint32_t)PORT";
  protected final String TEXT_88 = "_PDR1_PD";
  protected final String TEXT_89 = "_Pos) & \\" + NL + "                             (uint32_t)PORT";
  protected final String TEXT_90 = "_PDR1_PD";
  protected final String TEXT_91 = "_Msk);";
  protected final String TEXT_92 = NL + "  PORT";
  protected final String TEXT_93 = "->IOCR0  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_94 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_95 = "->IOCR0  |= (((uint32_t)";
  protected final String TEXT_96 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_97 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_98 = "_PO_Msk);";
  protected final String TEXT_99 = NL + "  PORT";
  protected final String TEXT_100 = "->IOCR4  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_101 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_102 = "->IOCR4  |= (((uint32_t)";
  protected final String TEXT_103 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_104 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_105 = "_PO_Msk);";
  protected final String TEXT_106 = NL + "  PORT";
  protected final String TEXT_107 = "->IOCR8  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_108 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_109 = "->IOCR8  |= (((uint32_t)";
  protected final String TEXT_110 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_111 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_112 = "_PO_Msk);";
  protected final String TEXT_113 = NL + "  PORT";
  protected final String TEXT_114 = "->IOCR12  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_115 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_116 = "->IOCR12  |= (((uint32_t)";
  protected final String TEXT_117 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_118 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_119 = "_PO_Msk);";
  protected final String TEXT_120 = NL + "    /* Configuration of Phase 2 Direct Output Pin ";
  protected final String TEXT_121 = ".";
  protected final String TEXT_122 = " based on User configuration */";
  protected final String TEXT_123 = NL + "  PORT";
  protected final String TEXT_124 = "->PDR0  &= (~(PORT";
  protected final String TEXT_125 = "_PDR0_PD";
  protected final String TEXT_126 = "_Msk));" + NL + "  PORT";
  protected final String TEXT_127 = "->PDR0  |= ((";
  protected final String TEXT_128 = " << PORT";
  protected final String TEXT_129 = "_PDR0_PD";
  protected final String TEXT_130 = "_Pos) & \\" + NL + "                             PORT";
  protected final String TEXT_131 = "_PDR0_PD";
  protected final String TEXT_132 = "_Msk);";
  protected final String TEXT_133 = NL + "  PORT";
  protected final String TEXT_134 = "->PDR1 &= (~(PORT";
  protected final String TEXT_135 = "_PDR1_PD";
  protected final String TEXT_136 = "_Msk));" + NL + "  PORT";
  protected final String TEXT_137 = "->PDR1 |= ((";
  protected final String TEXT_138 = " << PORT";
  protected final String TEXT_139 = "_PDR1_PD";
  protected final String TEXT_140 = "_Pos) & \\" + NL + "                             PORT";
  protected final String TEXT_141 = "_PDR1_PD";
  protected final String TEXT_142 = "_Msk);";
  protected final String TEXT_143 = NL + "  PORT";
  protected final String TEXT_144 = "->IOCR0  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_145 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_146 = "->IOCR0  |= (((uint32_t)";
  protected final String TEXT_147 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_148 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_149 = "_PO_Msk);";
  protected final String TEXT_150 = NL + "  PORT";
  protected final String TEXT_151 = "->IOCR4  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_152 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_153 = "->IOCR4  |= (((uint32_t)";
  protected final String TEXT_154 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_155 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_156 = "_PO_Msk);";
  protected final String TEXT_157 = NL + "  PORT";
  protected final String TEXT_158 = "->IOCR8  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_159 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_160 = "->IOCR8  |= (((uint32_t)";
  protected final String TEXT_161 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_162 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_163 = "_PO_Msk);";
  protected final String TEXT_164 = NL + "  PORT";
  protected final String TEXT_165 = "->IOCR12  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_166 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_167 = "->IOCR12  |= (((uint32_t)";
  protected final String TEXT_168 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_169 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_170 = "_PO_Msk);";
  protected final String TEXT_171 = NL + "    /* Configuration of Phase 2 Inverted Output Pin ";
  protected final String TEXT_172 = ".";
  protected final String TEXT_173 = " based on User configuration */";
  protected final String TEXT_174 = NL + "  PORT";
  protected final String TEXT_175 = "->PDR0  &= (~(PORT";
  protected final String TEXT_176 = "_PDR0_PD";
  protected final String TEXT_177 = "_Msk));" + NL + "  PORT";
  protected final String TEXT_178 = "->PDR0  |= ((";
  protected final String TEXT_179 = " << PORT";
  protected final String TEXT_180 = "_PDR0_PD";
  protected final String TEXT_181 = "_Pos) & \\" + NL + "                             PORT";
  protected final String TEXT_182 = "_PDR0_PD";
  protected final String TEXT_183 = "_Msk);";
  protected final String TEXT_184 = NL + "  PORT";
  protected final String TEXT_185 = "->PDR1 &= (~(PORT";
  protected final String TEXT_186 = "_PDR1_PD";
  protected final String TEXT_187 = "_Msk));" + NL + "  PORT";
  protected final String TEXT_188 = "->PDR1 |= ((";
  protected final String TEXT_189 = " << PORT";
  protected final String TEXT_190 = "_PDR1_PD";
  protected final String TEXT_191 = "_Pos) & \\" + NL + "                             PORT";
  protected final String TEXT_192 = "_PDR1_PD";
  protected final String TEXT_193 = "_Msk);";
  protected final String TEXT_194 = NL + "  PORT";
  protected final String TEXT_195 = "->IOCR0  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_196 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_197 = "->IOCR0  |= (((uint32_t)";
  protected final String TEXT_198 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_199 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_200 = "_PO_Msk);";
  protected final String TEXT_201 = NL + "  PORT";
  protected final String TEXT_202 = "->IOCR4  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_203 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_204 = "->IOCR4  |= (((uint32_t)";
  protected final String TEXT_205 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_206 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_207 = "_PO_Msk);";
  protected final String TEXT_208 = NL + "  PORT";
  protected final String TEXT_209 = "->IOCR8  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_210 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_211 = "->IOCR8  |= (((uint32_t)";
  protected final String TEXT_212 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_213 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_214 = "_PO_Msk);";
  protected final String TEXT_215 = NL + "  PORT";
  protected final String TEXT_216 = "->IOCR12  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_217 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_218 = "->IOCR12  |= (((uint32_t)";
  protected final String TEXT_219 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_220 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_221 = "_PO_Msk);";
  protected final String TEXT_222 = NL + "    /* Configuration of Phase 3 Direct Output Pin ";
  protected final String TEXT_223 = ".";
  protected final String TEXT_224 = " based on User configuration */";
  protected final String TEXT_225 = NL + "  PORT";
  protected final String TEXT_226 = "->PDR0  &= (~(PORT";
  protected final String TEXT_227 = "_PDR0_PD";
  protected final String TEXT_228 = "_Msk));" + NL + "  PORT";
  protected final String TEXT_229 = "->PDR0  |= ((";
  protected final String TEXT_230 = " << PORT";
  protected final String TEXT_231 = "_PDR0_PD";
  protected final String TEXT_232 = "_Pos) & \\" + NL + "                             PORT";
  protected final String TEXT_233 = "_PDR0_PD";
  protected final String TEXT_234 = "_Msk);";
  protected final String TEXT_235 = NL + "  PORT";
  protected final String TEXT_236 = "->PDR1 &= (~(PORT";
  protected final String TEXT_237 = "_PDR1_PD";
  protected final String TEXT_238 = "_Msk));" + NL + "  PORT";
  protected final String TEXT_239 = "->PDR1 |= ((";
  protected final String TEXT_240 = " << PORT";
  protected final String TEXT_241 = "_PDR1_PD";
  protected final String TEXT_242 = "_Pos) & \\" + NL + "                             PORT";
  protected final String TEXT_243 = "_PDR1_PD";
  protected final String TEXT_244 = "_Msk);";
  protected final String TEXT_245 = NL + "  PORT";
  protected final String TEXT_246 = "->IOCR0  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_247 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_248 = "->IOCR0  |= (((uint32_t)";
  protected final String TEXT_249 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_250 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_251 = "_PO_Msk);";
  protected final String TEXT_252 = NL + "  PORT";
  protected final String TEXT_253 = "->IOCR4  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_254 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_255 = "->IOCR4  |= (((uint32_t)";
  protected final String TEXT_256 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_257 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_258 = "_PO_Msk);";
  protected final String TEXT_259 = NL + "  PORT";
  protected final String TEXT_260 = "->IOCR8  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_261 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_262 = "->IOCR8  |= (((uint32_t)";
  protected final String TEXT_263 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_264 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_265 = "_PO_Msk);";
  protected final String TEXT_266 = NL + "  PORT";
  protected final String TEXT_267 = "->IOCR12  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_268 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_269 = "->IOCR12  |= (((uint32_t)";
  protected final String TEXT_270 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_271 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_272 = "_PO_Msk);";
  protected final String TEXT_273 = NL + "    /* Configuration of Phase 3 Inverted Output Pin ";
  protected final String TEXT_274 = ".";
  protected final String TEXT_275 = " based on User configuration */";
  protected final String TEXT_276 = NL + "  PORT";
  protected final String TEXT_277 = "->PDR0  &= (~(PORT";
  protected final String TEXT_278 = "_PDR0_PD";
  protected final String TEXT_279 = "_Msk));" + NL + "  PORT";
  protected final String TEXT_280 = "->PDR0  |= ((";
  protected final String TEXT_281 = " << PORT";
  protected final String TEXT_282 = "_PDR0_PD";
  protected final String TEXT_283 = "_Pos) & \\" + NL + "                             PORT";
  protected final String TEXT_284 = "_PDR0_PD";
  protected final String TEXT_285 = "_Msk);";
  protected final String TEXT_286 = NL + "  PORT";
  protected final String TEXT_287 = "->PDR1 &= (~(PORT";
  protected final String TEXT_288 = "_PDR1_PD";
  protected final String TEXT_289 = "_Msk));" + NL + "  PORT";
  protected final String TEXT_290 = "->PDR1 |= ((";
  protected final String TEXT_291 = " << PORT";
  protected final String TEXT_292 = "_PDR1_PD";
  protected final String TEXT_293 = "_Pos) & \\" + NL + "                             PORT";
  protected final String TEXT_294 = "_PDR1_PD";
  protected final String TEXT_295 = "_Msk);";
  protected final String TEXT_296 = NL + "  PORT";
  protected final String TEXT_297 = "->IOCR0  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_298 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_299 = "->IOCR0  |= (((uint32_t)";
  protected final String TEXT_300 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_301 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_302 = "_PO_Msk);";
  protected final String TEXT_303 = NL + "  PORT";
  protected final String TEXT_304 = "->IOCR4  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_305 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_306 = "->IOCR4  |= (((uint32_t)";
  protected final String TEXT_307 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_308 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_309 = "_PO_Msk);";
  protected final String TEXT_310 = NL + "  PORT";
  protected final String TEXT_311 = "->IOCR8  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_312 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_313 = "->IOCR8  |= (((uint32_t)";
  protected final String TEXT_314 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_315 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_316 = "_PO_Msk);";
  protected final String TEXT_317 = NL + "  PORT";
  protected final String TEXT_318 = "->IOCR12  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_319 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_320 = "->IOCR12  |= (((uint32_t)";
  protected final String TEXT_321 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_322 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_323 = "_PO_Msk);";
  protected final String TEXT_324 = NL + "    /* Configuration of Phase 4 Direct Output Pin ";
  protected final String TEXT_325 = ".";
  protected final String TEXT_326 = " based on User configuration */";
  protected final String TEXT_327 = NL + "  PORT";
  protected final String TEXT_328 = "->PDR0  &= (~(PORT";
  protected final String TEXT_329 = "_PDR0_PD";
  protected final String TEXT_330 = "_Msk));" + NL + "  PORT";
  protected final String TEXT_331 = "->PDR0  |= ((";
  protected final String TEXT_332 = " << PORT";
  protected final String TEXT_333 = "_PDR0_PD";
  protected final String TEXT_334 = "_Pos) & \\" + NL + "                             PORT";
  protected final String TEXT_335 = "_PDR0_PD";
  protected final String TEXT_336 = "_Msk);";
  protected final String TEXT_337 = NL + "  PORT";
  protected final String TEXT_338 = "->PDR1 &= (~(PORT";
  protected final String TEXT_339 = "_PDR1_PD";
  protected final String TEXT_340 = "_Msk));" + NL + "  PORT";
  protected final String TEXT_341 = "->PDR1 |= ((";
  protected final String TEXT_342 = " << PORT";
  protected final String TEXT_343 = "_PDR1_PD";
  protected final String TEXT_344 = "_Pos) & \\" + NL + "                             PORT";
  protected final String TEXT_345 = "_PDR1_PD";
  protected final String TEXT_346 = "_Msk);";
  protected final String TEXT_347 = NL + "  PORT";
  protected final String TEXT_348 = "->IOCR0  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_349 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_350 = "->IOCR0  |= (((uint32_t)";
  protected final String TEXT_351 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_352 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_353 = "_PO_Msk);";
  protected final String TEXT_354 = NL + "  PORT";
  protected final String TEXT_355 = "->IOCR4  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_356 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_357 = "->IOCR4  |= (((uint32_t)";
  protected final String TEXT_358 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_359 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_360 = "_PO_Msk);";
  protected final String TEXT_361 = NL + "  PORT";
  protected final String TEXT_362 = "->IOCR8  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_363 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_364 = "->IOCR8  |= (((uint32_t)";
  protected final String TEXT_365 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_366 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_367 = "_PO_Msk);";
  protected final String TEXT_368 = NL + "  PORT";
  protected final String TEXT_369 = "->IOCR12  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_370 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_371 = "->IOCR12  |= (((uint32_t)";
  protected final String TEXT_372 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_373 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_374 = "_PO_Msk);";
  protected final String TEXT_375 = NL + "    /* Configuration of Phase 4 Inverted Output Pin ";
  protected final String TEXT_376 = ".";
  protected final String TEXT_377 = " based on User configuration */";
  protected final String TEXT_378 = NL + "  PORT";
  protected final String TEXT_379 = "->PDR0  &= (~(PORT";
  protected final String TEXT_380 = "_PDR0_PD";
  protected final String TEXT_381 = "_Msk));" + NL + "  PORT";
  protected final String TEXT_382 = "->PDR0  |= ((";
  protected final String TEXT_383 = " << PORT";
  protected final String TEXT_384 = "_PDR0_PD";
  protected final String TEXT_385 = "_Pos) & \\" + NL + "                             PORT";
  protected final String TEXT_386 = "_PDR0_PD";
  protected final String TEXT_387 = "_Msk);";
  protected final String TEXT_388 = NL + "  PORT";
  protected final String TEXT_389 = "->PDR1 &= (~(PORT";
  protected final String TEXT_390 = "_PDR1_PD";
  protected final String TEXT_391 = "_Msk));" + NL + "  PORT";
  protected final String TEXT_392 = "->PDR1 |= ((";
  protected final String TEXT_393 = " << PORT";
  protected final String TEXT_394 = "_PDR1_PD";
  protected final String TEXT_395 = "_Pos) & \\" + NL + "                             PORT";
  protected final String TEXT_396 = "_PDR1_PD";
  protected final String TEXT_397 = "_Msk);";
  protected final String TEXT_398 = NL + "  PORT";
  protected final String TEXT_399 = "->IOCR0  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_400 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_401 = "->IOCR0  |= (((uint32_t)";
  protected final String TEXT_402 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_403 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_404 = "_PO_Msk);";
  protected final String TEXT_405 = NL + "  PORT";
  protected final String TEXT_406 = "->IOCR4  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_407 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_408 = "->IOCR4  |= (((uint32_t)";
  protected final String TEXT_409 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_410 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_411 = "_PO_Msk);";
  protected final String TEXT_412 = NL + "  PORT";
  protected final String TEXT_413 = "->IOCR8  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_414 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_415 = "->IOCR8  |= (((uint32_t)";
  protected final String TEXT_416 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_417 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_418 = "_PO_Msk);";
  protected final String TEXT_419 = NL + "  PORT";
  protected final String TEXT_420 = "->IOCR12  &= (~((uint32_t)PORT_IOCR_PC";
  protected final String TEXT_421 = "_PO_Msk));" + NL + "  PORT";
  protected final String TEXT_422 = "->IOCR12  |= (((uint32_t)";
  protected final String TEXT_423 = "U << (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_424 = "_PO_Pos) & \\" + NL + "                               (uint32_t)PORT_IOCR_PC";
  protected final String TEXT_425 = "_PO_Msk);";
  protected final String TEXT_426 = NL + "}" + NL + "" + NL + "/**" + NL + " * This function initializes all instances of the PWMMP001 app and changes state to INITIALIZED." + NL + " */" + NL + "/*<<<DD_PWMMP001_API_1>>>*/" + NL + "status_t PWMMP001_lInit(const PWMMP001_HandleType* HandlePtr)" + NL + "{" + NL + "  status_t Status = (uint32_t)PWMMP001_OPER_NOT_ALLOWED_ERROR;" + NL + "  uint8_t PhaseNumber = 0U;" + NL + "  DBG002_FUNCTION_ENTRY(DBG002_GID_PWMMP001, (uint32_t)PWMMP001_FUNCTION_ENTRY);" + NL + "  do" + NL + "  {" + NL + "/*<<<DD_PWMMP001_API_1_1>>>*/" + NL + "    if (HandlePtr->DynamicHandle->State != PWMMP001_UNINITIALIZED)" + NL + "    {" + NL + "      break;" + NL + "    }" + NL + "/*<<<DD_PWMMP001_API_1_1>>>*/" + NL + "    do" + NL + "    {" + NL + "      Status = CCU8PWMLIB_Init(HandlePtr->PhaseHandlePtr[PhaseNumber]);" + NL + "      /* Enable multi channel mode */" + NL + "      if (HandlePtr->kMultiChanModeSupport == 1U)" + NL + "      {" + NL + "        SET_BIT(HandlePtr->PhaseHandlePtr[PhaseNumber]->CC8yRegsPtr->TC," + NL + "              CCU8_CC8_TC_MCME1_Pos);" + NL + "        HandlePtr->PhaseHandlePtr[PhaseNumber]->CC8yKernRegsPtr->GCTRL |= " + NL + "          (uint32_t)1U << ((uint32_t)HandlePtr->PhaseHandlePtr[PhaseNumber]->FirstSlice + (uint32_t)10U);" + NL + "      }" + NL + "      PhaseNumber++;" + NL + "    } while ((PhaseNumber < HandlePtr->kNumPhases) && (HandlePtr->PhaseHandlePtr[PhaseNumber] != NULL));" + NL + "" + NL + "    HandlePtr->DynamicHandle->State = PWMMP001_INITIALIZED;" + NL + "    Status = (uint32_t)DAVEApp_SUCCESS;" + NL + "  } while (0);" + NL + "  if (Status != (uint32_t)DAVEApp_SUCCESS)" + NL + "  {" + NL + "\tDBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "  }" + NL + "  DBG002_FUNCTION_EXIT(DBG002_GID_PWMMP001, (uint32_t)PWMMP001_FUNCTION_EXIT);" + NL + "  return Status;" + NL + "}" + NL + "" + NL + "/*<<<DD_PWMMP001_API_2>>>*/" + NL + "/**" + NL + " * This function de-initializes the PWMMP001 app. " + NL + " */" + NL + "status_t PWMMP001_Deinit(const PWMMP001_HandleType* HandlePtr)" + NL + "{" + NL + "  status_t Status = (uint32_t)PWMMP001_OPER_NOT_ALLOWED_ERROR;" + NL + "  uint8_t PhaseNumber = 0U;" + NL + "" + NL + "/*<<<DD_PWMMP001_API_2_1>>>*/" + NL + "    if (HandlePtr->DynamicHandle->State == PWMMP001_UNINITIALIZED)" + NL + "    {" + NL + "      DBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "    }" + NL + "/*<<<DD_PWMMP001_API_2_2>>>*/" + NL + "    else" + NL + "    {" + NL + "      do" + NL + "      {" + NL + "        Status = CCU8PWMLIB_Deinit(HandlePtr->PhaseHandlePtr[PhaseNumber]);" + NL + "        PhaseNumber++;" + NL + "      } while ( (PhaseNumber < HandlePtr->kNumPhases) && (HandlePtr->PhaseHandlePtr[PhaseNumber] != NULL));      " + NL + "      HandlePtr->DynamicHandle->State = PWMMP001_UNINITIALIZED;" + NL + "      Status = (uint32_t)DAVEApp_SUCCESS;" + NL + "    }" + NL + "  DBG002_FUNCTION_EXIT(DBG002_GID_PWMMP001, (uint32_t)PWMMP001_FUNCTION_EXIT);" + NL + "  return Status;" + NL + "}" + NL + "/*" + NL + " * This will clear the respective CCU8 module bit in the CCUCON register." + NL + " */" + NL + "void PWMMP001_DisableGlobalStart(const PWMMP001_HandleType* HandlePtr)" + NL + "{" + NL + "  CLR_BIT(SCU_GENERAL->CCUCON, (((uint32_t)HandlePtr->kModuleNo + 8U)));" + NL + "}" + NL + "/*" + NL + " * This will set the respective CCU8 module bit in the CCUCON register." + NL + " */" + NL + "void PWMMP001_EnableGlobalStart(const PWMMP001_HandleType* HandlePtr)    " + NL + "{" + NL + "\tSET_BIT(SCU_GENERAL->CCUCON,(((uint32_t)HandlePtr->kModuleNo + 8U)));" + NL + "}" + NL + "" + NL + "/*<<<DD_PWMMP001_API_3>>>*/" + NL + "/** " + NL + " * This function starts the PWMMP001 App. " + NL + " * It enables the interrupts and clears" + NL + " * IDLE mode of the CCU8 slices by calling CCU8PWMLIB_Start API." + NL + " * It sets the CCUCON bit to 1 for simultaneous start of the slices." + NL + " */" + NL + "status_t PWMMP001_Start(const PWMMP001_HandleType* HandlePtr)" + NL + "{" + NL + "  status_t Status = (uint32_t)PWMMP001_OPER_NOT_ALLOWED_ERROR;" + NL + "  uint8_t PhaseNumber = (uint8_t)0;" + NL + "  DBG002_FUNCTION_ENTRY(DBG002_GID_PWMMP001, (uint32_t)PWMMP001_FUNCTION_ENTRY);" + NL + "" + NL + "/*<<<DD_PWMMP001_API_3_1>>>*/" + NL + "  if ((HandlePtr->DynamicHandle->State != PWMMP001_INITIALIZED) &&" + NL + "      (HandlePtr->DynamicHandle->State != PWMMP001_STOPPED))" + NL + "  {" + NL + "\tDBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "  }" + NL + "  else" + NL + "  {" + NL + "    if(HandlePtr->SCUSyncStart == 0U)" + NL + "    {" + NL + "      do" + NL + "      {" + NL + "        Status = CCU8PWMLIB_Start(HandlePtr->PhaseHandlePtr[PhaseNumber]);" + NL + "        PhaseNumber++;" + NL + "      } while ((PhaseNumber < HandlePtr->kNumPhases) &&" + NL + "               (Status == (uint32_t)DAVEApp_SUCCESS)&& (HandlePtr->PhaseHandlePtr[PhaseNumber] != NULL));" + NL + "    }" + NL + "    else" + NL + "    {" + NL + "      PWMMP001_DisableGlobalStart(HandlePtr);" + NL + "      do" + NL + "      {" + NL + "        Status = CCU8PWMLIB_EnableExtStart(HandlePtr->PhaseHandlePtr[PhaseNumber]);" + NL + "        Status = CCU8PWMLIB_Start(HandlePtr->PhaseHandlePtr[PhaseNumber]);" + NL + "        PhaseNumber++;" + NL + "      } while ((PhaseNumber < HandlePtr->kNumPhases) &&" + NL + "               (Status == (uint32_t)DAVEApp_SUCCESS)&& (HandlePtr->PhaseHandlePtr[PhaseNumber] != NULL));" + NL + "" + NL + "      /*<<<DD_PWMMP001_API_3_2>>>*/" + NL + "      /* Set the CCUCON register bit and then immediately reset to " + NL + "       * avoid spurious start" + NL + "       */ " + NL + "      PWMMP001_EnableGlobalStart(HandlePtr);" + NL + "      PWMMP001_DisableGlobalStart(HandlePtr);" + NL + "      PhaseNumber = 0U;" + NL + "      /* Disable External start feature to avoid spurious restarting of the slices */" + NL + "      do" + NL + "      {" + NL + "        Status = CCU8PWMLIB_DisableExtStart(HandlePtr->PhaseHandlePtr[PhaseNumber]);" + NL + "        PhaseNumber++;" + NL + "      } while ((PhaseNumber < HandlePtr->kNumPhases) &&" + NL + "               (Status == (uint32_t)DAVEApp_SUCCESS)&& (HandlePtr->PhaseHandlePtr[PhaseNumber] != NULL));" + NL + "    }" + NL + "    HandlePtr->DynamicHandle->State = PWMMP001_RUNNING;" + NL + "    Status = (uint32_t)DAVEApp_SUCCESS;" + NL + "  }" + NL + "  DBG002_FUNCTION_EXIT(DBG002_GID_PWMMP001, (uint32_t)PWMMP001_FUNCTION_EXIT);" + NL + "  return Status;" + NL + "}" + NL + "" + NL + "/*<<<DD_PWMMP001_API_4>>>*/" + NL + "/**" + NL + " * This function stops the PWMMP001 app. " + NL + " * It clears all the interrupts, clears the RUN bit of the required slices by" + NL + " * calling CCU8PWMLIB_Stop API." + NL + " */" + NL + "status_t PWMMP001_Stop(const PWMMP001_HandleType* HandlePtr)" + NL + "{" + NL + "  status_t Status = (uint32_t)PWMMP001_OPER_NOT_ALLOWED_ERROR;" + NL + "  uint8_t PhaseNumber = (uint8_t)0;" + NL + "  DBG002_FUNCTION_ENTRY(DBG002_GID_PWMMP001, (uint32_t)PWMMP001_FUNCTION_ENTRY);" + NL + "" + NL + "/*<<<DD_PWMMP001_API_4_1>>>*/" + NL + "  if ((HandlePtr->DynamicHandle->State != PWMMP001_RUNNING))" + NL + "  {" + NL + "\tDBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "  }" + NL + "  else" + NL + "  {" + NL + "    do" + NL + "    {" + NL + "      Status = CCU8PWMLIB_Stop(HandlePtr->PhaseHandlePtr[PhaseNumber]);" + NL + "      PhaseNumber++;" + NL + "    } while ((PhaseNumber < HandlePtr->kNumPhases) &&" + NL + "             (Status == (uint32_t)DAVEApp_SUCCESS)&& (HandlePtr->PhaseHandlePtr[PhaseNumber] != NULL));" + NL + "" + NL + "/*<<<DD_PWMMP001_API_4_2>>>*/" + NL + "    HandlePtr->DynamicHandle->State = PWMMP001_STOPPED;" + NL + "    Status = (uint32_t)DAVEApp_SUCCESS;" + NL + "  }" + NL + "  DBG002_FUNCTION_EXIT(DBG002_GID_PWMMP001, (uint32_t)PWMMP001_FUNCTION_EXIT);" + NL + "  return Status;" + NL + "}" + NL + "" + NL + "/*<<<DD_PWMMP001_API_15>>>*/" + NL + "/**" + NL + " * This function changes the duty cycle of the PWM waveforms. Duty cycle is given " + NL + " * in terms of the compare register 1 value and compare register 2 value." + NL + " */" + NL + "status_t PWMMP001_SetCompare" + NL + "(" + NL + "  const PWMMP001_HandleType* HandlePtr," + NL + "  const PWMMP001_DutyCycleType* DutyCyclePtr" + NL + ")" + NL + "{" + NL + "  status_t Status = (uint32_t)PWMMP001_OPER_NOT_ALLOWED_ERROR;" + NL + "  uint8_t PhaseNumber = (uint8_t)0;" + NL + "  uint8_t Index = (uint8_t)0;" + NL + "  DBG002_FUNCTION_ENTRY(DBG002_GID_PWMMP001, (uint32_t)PWMMP001_FUNCTION_ENTRY);" + NL + "" + NL + "  do" + NL + "  {" + NL + "/*<<<DD_PWMMP001_API_15_1>>>*/" + NL + "    if ((HandlePtr->DynamicHandle->State == PWMMP001_UNINITIALIZED))" + NL + "    {" + NL + "      break;" + NL + "    }" + NL + "/*<<<DD_PWMMP001_API_15_2>>>*/" + NL + "/*<<<DD_PWMMP001_API_15_3>>>*/" + NL + "/*Call CCU8PWMLIB_SetCompare() API from CCU8_PWMSinglePhaseDT_CCU8PWMLIB*/" + NL + "    PhaseNumber  = 0U;" + NL + "    do" + NL + "    {" + NL + "      Status = CCU8PWMLIB_SetCompare(" + NL + "               HandlePtr->PhaseHandlePtr[PhaseNumber]," + NL + "               DutyCyclePtr->CompReg[Index]," + NL + "               DutyCyclePtr->CompReg[Index+1U]" + NL + "              );" + NL + "      Index = Index + 2U;" + NL + "      PhaseNumber++;" + NL + "    } while ((PhaseNumber < HandlePtr->kNumPhases) &&" + NL + "             (Status == (uint32_t)DAVEApp_SUCCESS)&& (HandlePtr->PhaseHandlePtr[PhaseNumber] != NULL));" + NL + "  } while (0);" + NL + "  if (Status != (uint32_t)DAVEApp_SUCCESS)" + NL + "  {" + NL + "\tDBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "  }" + NL + "  DBG002_FUNCTION_EXIT(DBG002_GID_PWMMP001, (uint32_t)PWMMP001_FUNCTION_EXIT);" + NL + "  return Status;" + NL + "}" + NL + "" + NL + "/*<<<DD_PWMMP001_API_5>>>*/" + NL + "/**" + NL + " * This function changes the duty cycle of the PWM waveforms. Duty cycle is given " + NL + " * in terms of the % duty cycle value, offset and the sign of the offset." + NL + " * Offset is needed to get the asymmetric waveform where ON time is shifted with respect" + NL + " * to central line." + NL + " */" + NL + "status_t PWMMP001_SetDutyCycle" + NL + "(" + NL + "  const PWMMP001_HandleType* HandlePtr," + NL + "  const PWMMP001_DutyCycleType* DutyCyclePtr" + NL + ")" + NL + "{" + NL + "  status_t Status = (uint32_t)PWMMP001_OPER_NOT_ALLOWED_ERROR;" + NL + "  uint8_t PhaseNumber = (uint8_t)0;" + NL + "  DBG002_FUNCTION_ENTRY(DBG002_GID_PWMMP001, (uint32_t)PWMMP001_FUNCTION_ENTRY);" + NL + "" + NL + "  if(HandlePtr->DynamicHandle->State != PWMMP001_UNINITIALIZED)" + NL + "  {" + NL + "    /*<<<DD_PWMMP001_API_5_1>>>*/" + NL + "    /*<<<DD_PWMMP001_API_5_2>>>*/" + NL + "    for (PhaseNumber = 0U; PhaseNumber < HandlePtr->kNumPhases; ++PhaseNumber)" + NL + "    {" + NL + "      /* check if duty cycle is within 0 to 100 */" + NL + "      if ((DutyCyclePtr->DutyCycle[PhaseNumber] > (float)100.0) ||" + NL + "          (DutyCyclePtr->DutyCycle[PhaseNumber] < (float)0.0))" + NL + "      {" + NL + "        Status  = (uint32_t)PWMMP001_INVALID_PARAM_ERROR;" + NL + "        break;" + NL + "      }" + NL + "    }" + NL + "    if (Status != (uint32_t)PWMMP001_INVALID_PARAM_ERROR)" + NL + "    {" + NL + "" + NL + "      /*<<<DD_PWMMP001_API_5_3>>>*/" + NL + "      /*Call CCU8PWMLIB_SetDutyCycle() API from CCU8_PWMSinglePhaseDT_CCU8PWMLIB*/" + NL + "      PhaseNumber  = 0U;" + NL + "      do" + NL + "      {" + NL + "        Status = CCU8PWMLIB_SetDutyCenterAlignAsymmetric(" + NL + "                 (const void*)HandlePtr->PhaseHandlePtr[PhaseNumber]," + NL + "                 DutyCyclePtr->DutyCycle[PhaseNumber]," + NL + "                 DutyCyclePtr->Offset[PhaseNumber]," + NL + "                 DutyCyclePtr->Sign[PhaseNumber]);" + NL + "                 PhaseNumber++;" + NL + "      } while ((PhaseNumber < HandlePtr->kNumPhases) &&" + NL + "               (Status == (uint32_t)DAVEApp_SUCCESS)&& (HandlePtr->PhaseHandlePtr[PhaseNumber] != NULL));" + NL + "    }" + NL + "  }" + NL + "" + NL + "  if (Status != (uint32_t)DAVEApp_SUCCESS)" + NL + "  {" + NL + "\tDBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "  }" + NL + "  DBG002_FUNCTION_EXIT(DBG002_GID_PWMMP001, (uint32_t)PWMMP001_FUNCTION_EXIT);" + NL + "  return Status;" + NL + "}" + NL + "" + NL + "" + NL + "/**" + NL + " * This function changes the PWM frequency and duty cycle. " + NL + " * " + NL + " */" + NL + "status_t PWMMP001_SetPwmFreqAndDutyCycle" + NL + "(" + NL + "  const PWMMP001_HandleType* HandlePtr," + NL + "  float PwmFreq," + NL + "  const PWMMP001_DutyCycleType* DutyCyclePtr" + NL + ")" + NL + "{" + NL + "  status_t Status = (uint32_t)PWMMP001_OPER_NOT_ALLOWED_ERROR;" + NL + "  uint8_t PhaseNumber = (uint8_t)0;" + NL + "  DBG002_FUNCTION_ENTRY(DBG002_GID_PWMMP001, (uint32_t)PWMMP001_FUNCTION_ENTRY);" + NL + "" + NL + "  if(HandlePtr->DynamicHandle->State != PWMMP001_UNINITIALIZED)" + NL + "  {" + NL + "    /*<<<DD_PWMMP001_API_16_1>>>*/" + NL + "    /*<<<DD_PWMMP001_API_16_2>>>*/" + NL + "    /* check if frequency is not zero */" + NL + "    if (PwmFreq == (float)RESET)" + NL + "    {" + NL + "      Status = (uint32_t)PWMMP001_INVALID_PARAM_ERROR;" + NL + "    }" + NL + "    else" + NL + "    {" + NL + "      /*<<<DD_PWMMP001_API_16_2>>>*/" + NL + "      for (PhaseNumber = 0U; PhaseNumber < HandlePtr->kNumPhases; ++PhaseNumber)" + NL + "      {" + NL + "        /* check if duty cycle is within 0 to 100 */" + NL + "        if ((DutyCyclePtr->DutyCycle[PhaseNumber] > (float)100.0) ||" + NL + "            (DutyCyclePtr->DutyCycle[PhaseNumber] < (float)0.0))" + NL + "        {" + NL + "          Status  = (uint32_t)PWMMP001_INVALID_PARAM_ERROR;" + NL + "          break;" + NL + "        }" + NL + "      }" + NL + "      if (Status != (uint32_t)PWMMP001_INVALID_PARAM_ERROR)" + NL + "      {" + NL + "        PhaseNumber  = 0U;" + NL + "    /*<<<DD_PWMMP001_API_16_3>>>*/" + NL + "        do" + NL + "        {" + NL + "          Status = CCU8PWMLIB_SetPwmFreqAndDutyCycle(" + NL + "                      HandlePtr->PhaseHandlePtr[PhaseNumber]," + NL + "                      PwmFreq," + NL + "                      DutyCyclePtr->DutyCycle[PhaseNumber]," + NL + "                      DutyCyclePtr->Offset[PhaseNumber]," + NL + "                      DutyCyclePtr->Sign[PhaseNumber]" + NL + "                      );" + NL + "                      PhaseNumber++;" + NL + "        } while ((PhaseNumber < HandlePtr->kNumPhases) &&" + NL + "                 (Status == (uint32_t)DAVEApp_SUCCESS)&& (HandlePtr->PhaseHandlePtr[PhaseNumber] != NULL));" + NL + "      }" + NL + "    }" + NL + "  }" + NL + "  if (Status != (uint32_t)DAVEApp_SUCCESS)" + NL + "  {" + NL + "\tDBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "  }" + NL + "  DBG002_FUNCTION_EXIT(DBG002_GID_PWMMP001, (uint32_t)PWMMP001_FUNCTION_EXIT);" + NL + "  return Status;" + NL + "}" + NL + "" + NL + "/*<<<DD_PWMMP001_API_16>>>*/" + NL + "/**" + NL + " * This function changes the PWM frequency. Frequency is given in hertz." + NL + " * " + NL + " */" + NL + "status_t PWMMP001_SetPwmFreq" + NL + "(" + NL + "  const PWMMP001_HandleType* HandlePtr," + NL + "  float PwmFreq" + NL + ")" + NL + "{" + NL + "  status_t Status = (uint32_t)PWMMP001_OPER_NOT_ALLOWED_ERROR;" + NL + "  uint8_t PhaseNumber = (uint8_t)0;" + NL + "  DBG002_FUNCTION_ENTRY(DBG002_GID_PWMMP001, (uint32_t)PWMMP001_FUNCTION_ENTRY);" + NL + "" + NL + "  if ((HandlePtr->DynamicHandle->State != PWMMP001_UNINITIALIZED))" + NL + "  {" + NL + "    /*<<<DD_PWMMP001_API_16_1>>>*/" + NL + "    " + NL + "    /*<<<DD_PWMMP001_API_16_2>>>*/" + NL + "    /* check if frequency is not zero */" + NL + "    if (PwmFreq == (float)0.0)" + NL + "    {" + NL + "      Status = (uint32_t)PWMMP001_INVALID_PARAM_ERROR;" + NL + "    }" + NL + "    else" + NL + "    {" + NL + "      /*<<<DD_PWMMP001_API_16_3>>>*/" + NL + "      do" + NL + "      {" + NL + "        Status = CCU8PWMLIB_SetPwmFreq(HandlePtr->PhaseHandlePtr[PhaseNumber]," + NL + "                 PwmFreq);" + NL + "        PhaseNumber++;" + NL + "      } while ((PhaseNumber < HandlePtr->kNumPhases) &&" + NL + "               (Status == (uint32_t)DAVEApp_SUCCESS)&& (HandlePtr->PhaseHandlePtr[PhaseNumber] != NULL));" + NL + "    }" + NL + "  }" + NL + "  if (Status != (uint32_t)DAVEApp_SUCCESS)" + NL + "  {" + NL + "\tDBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "  }" + NL + "  DBG002_FUNCTION_EXIT(DBG002_GID_PWMMP001, (uint32_t)PWMMP001_FUNCTION_EXIT);" + NL + "  return Status;" + NL + "}" + NL + "" + NL + "/**" + NL;
  protected final String TEXT_427 = " * This function changes the PWM frequency and duty cycle. " + NL + " * Frequency is given in terms of the period register value" + NL + " * and duty cycle in terms of the compare register value." + NL + " *  " + NL + " */" + NL + "status_t PWMMP001_SetPeriodAndCompare" + NL + "(" + NL + "  const PWMMP001_HandleType* HandlePtr," + NL + "  uint32_t PwmFreq," + NL + "  const PWMMP001_DutyCycleType* DutyCyclePtr" + NL + ")" + NL + "{" + NL + "  status_t Status = (uint32_t)PWMMP001_OPER_NOT_ALLOWED_ERROR;" + NL + "  uint8_t PhaseNumber = (uint8_t)0;" + NL + "  uint8_t Index = (uint8_t)0;" + NL + "  DBG002_FUNCTION_ENTRY(DBG002_GID_PWMMP001, (uint32_t)PWMMP001_FUNCTION_ENTRY);" + NL + "" + NL + "  if(HandlePtr->DynamicHandle->State != PWMMP001_UNINITIALIZED)" + NL + "  {" + NL + "" + NL + "    /*<<<DD_PWMMP001_API_6_2>>>*/" + NL + "    if ((PwmFreq > (uint32_t)PWMMP001_MAXVAL) || (PwmFreq == (uint32_t)RESET))" + NL + "    {" + NL + "      Status = (uint32_t)PWMMP001_INVALID_PARAM_ERROR;" + NL + "    }" + NL + "    else" + NL + "    {" + NL + "      do" + NL + "      {" + NL + "        Status = CCU8PWMLIB_SetPeriodAndCompare(" + NL + "                      HandlePtr->PhaseHandlePtr[PhaseNumber]," + NL + "                      PwmFreq," + NL + "                      DutyCyclePtr->CompReg[Index]," + NL + "                      DutyCyclePtr->CompReg[Index+1U]" + NL + "                      );" + NL + "        Index = Index + 2U; " + NL + "        PhaseNumber++;" + NL + "        /*HandlePtr->DynamicHandle->PeriodReg = PwmFreq;*/" + NL + "      } while ((PhaseNumber < HandlePtr->kNumPhases) &&" + NL + "               (Status == (uint32_t)DAVEApp_SUCCESS)&& (HandlePtr->PhaseHandlePtr[PhaseNumber] != NULL));" + NL + "    }" + NL + "  } " + NL + "  if (Status != (uint32_t)DAVEApp_SUCCESS)" + NL + "  {" + NL + "\tDBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "  }" + NL + "  DBG002_FUNCTION_EXIT(DBG002_GID_PWMMP001, (uint32_t)PWMMP001_FUNCTION_EXIT);" + NL + "  return Status;" + NL + "}" + NL + "" + NL + "" + NL + "/*<<<DD_PWMMP001_API_6>>>*/" + NL + "/**" + NL + " * This function changes the PWM frequency. Frequency is given in terms of the" + NL + " * period register value." + NL + " */" + NL + "status_t PWMMP001_SetPeriod" + NL + "(" + NL + "  const PWMMP001_HandleType* HandlePtr," + NL + "  uint32_t PwmFreq" + NL + ")" + NL + "{" + NL + "  status_t Status = (uint32_t)PWMMP001_OPER_NOT_ALLOWED_ERROR;" + NL + "  uint8_t PhaseNumber = (uint8_t)0;" + NL + "  DBG002_FUNCTION_ENTRY(DBG002_GID_PWMMP001, (uint32_t)PWMMP001_FUNCTION_ENTRY);" + NL + "" + NL + "  if(HandlePtr->DynamicHandle->State != PWMMP001_UNINITIALIZED)" + NL + "  {" + NL + "/*<<<DD_PWMMP001_API_6_2>>>*/" + NL + "    if ((PwmFreq > (uint32_t)PWMMP001_MAXVAL) || (PwmFreq == (uint32_t)RESET))" + NL + "    {" + NL + "      Status = (uint32_t)PWMMP001_INVALID_PARAM_ERROR;" + NL + "    }" + NL + "    else" + NL + "    {" + NL + "" + NL + "      /*<<<DD_PWMMP001_API_6_3>>>*/" + NL + "      do" + NL + "      {" + NL + "        Status = CCU8PWMLIB_SetPeriod(HandlePtr->PhaseHandlePtr[PhaseNumber]," + NL + "                 PwmFreq);" + NL + "        PhaseNumber++;" + NL + "        /*HandlePtr->DynamicHandle->PeriodReg = PwmFreq;*/" + NL + "      } while ((PhaseNumber < HandlePtr->kNumPhases) &&" + NL + "               (Status == (uint32_t)DAVEApp_SUCCESS)&& (HandlePtr->PhaseHandlePtr[PhaseNumber] != NULL));" + NL + "    }" + NL + "  }" + NL + "  if (Status != (uint32_t)DAVEApp_SUCCESS)" + NL + "  {" + NL + "\tDBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "  }" + NL + "  DBG002_FUNCTION_EXIT(DBG002_GID_PWMMP001, (uint32_t)PWMMP001_FUNCTION_EXIT);" + NL + "  return Status;" + NL + "}" + NL + "" + NL + "/*<<<DD_PWMMP001_API_7>>>*/" + NL + "/**" + NL + " * This function loads the CCU8 timer with the given value when timer is not running." + NL + " */" + NL + "status_t PWMMP001_SetTimerVal" + NL + "(" + NL + "  const PWMMP001_HandleType* HandlePtr," + NL + "  uint32_t TimerVal" + NL + ")" + NL + "{" + NL + "  status_t Status = (uint32_t)PWMMP001_OPER_NOT_ALLOWED_ERROR;" + NL + "  uint8_t PhaseNumber = (uint8_t)0;" + NL + "  DBG002_FUNCTION_ENTRY(DBG002_GID_PWMMP001, (uint32_t)PWMMP001_FUNCTION_ENTRY);" + NL + "" + NL + "/*<<<DD_PWMMP001_API_7_1>>>*/" + NL + "  if ((HandlePtr->DynamicHandle->State == PWMMP001_RUNNING) ||" + NL + "      (HandlePtr->DynamicHandle->State == PWMMP001_UNINITIALIZED))" + NL + "  {" + NL + "\tDBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "  }" + NL + "/*<<<DD_PWMMP001_API_7_2>>>*/" + NL + "  else" + NL + "  {" + NL + "    do" + NL + "    {" + NL + "      Status = CCU8PWMLIB_SetTimerVal(HandlePtr->PhaseHandlePtr[PhaseNumber], TimerVal);" + NL + "      PhaseNumber++;" + NL + "    }while ((PhaseNumber < HandlePtr->kNumPhases) &&" + NL + "        (Status == (uint32_t)DAVEApp_SUCCESS)&& (HandlePtr->PhaseHandlePtr[PhaseNumber] != NULL));" + NL + "" + NL + "    if (Status != (uint32_t)DAVEApp_SUCCESS)" + NL + "    {" + NL + "      DBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "    }" + NL + "  }" + NL + "" + NL + "  DBG002_FUNCTION_EXIT(DBG002_GID_PWMMP001, (uint32_t)PWMMP001_FUNCTION_EXIT);" + NL + "  return Status;" + NL + "}" + NL + "" + NL + "/*<<<DD_PWMMP001_API_8>>>*/" + NL + "/** " + NL + " * This function reads the timer status - RUNNING or IDLE." + NL + " */" + NL + "status_t PWMMP001_GetTimerStatus" + NL + "(" + NL + "  const PWMMP001_HandleType* HandlePtr," + NL + "  uint32_t * TimerStatusPtr" + NL + ")" + NL + "{" + NL + "  status_t Status = (uint32_t)PWMMP001_OPER_NOT_ALLOWED_ERROR;" + NL + "  uint8_t PhaseNumber = (uint8_t)0;" + NL + "  uint32_t LocalTimerStatusPtr = (uint32_t)0;" + NL + "  DBG002_FUNCTION_ENTRY(DBG002_GID_PWMMP001, (uint32_t)PWMMP001_FUNCTION_ENTRY);" + NL + "" + NL + "/*<<<DD_PWMMP001_API_8_1>>>*/" + NL + "  if ((HandlePtr->DynamicHandle->State == PWMMP001_UNINITIALIZED))" + NL + "  {" + NL + "\tDBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "  }" + NL + "/*<<<DD_PWMMP001_API_8_2>>>*/" + NL + "  else" + NL + "  {" + NL + "    do" + NL + "    {" + NL + "      if (HandlePtr->PhaseHandlePtr[PhaseNumber] != NULL)" + NL + "      {" + NL + "      /* Read the timer status of all the phases. */  " + NL + "        Status = CCU8PWMLIB_GetTimerStatus(" + NL + "                 HandlePtr->PhaseHandlePtr[PhaseNumber]," + NL + "                 &LocalTimerStatusPtr);" + NL + "        *TimerStatusPtr = LocalTimerStatusPtr;" + NL + "      }" + NL + "      else" + NL + "      {" + NL + "        Status = (uint32_t)PWMMP001_INVALID_PARAM_ERROR;" + NL + "        DBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "        break;" + NL + "      }" + NL + "      PhaseNumber++;" + NL + "    } while ((PhaseNumber < HandlePtr->kNumPhases) &&" + NL + "             (Status == (uint32_t)DAVEApp_SUCCESS)&& (HandlePtr->PhaseHandlePtr[PhaseNumber] != NULL));" + NL + "  }" + NL + "  return Status;" + NL + "}" + NL + "" + NL + "/*<<<DD_PWMMP001_API_9>>>*/" + NL + "/**" + NL + " * This function reads the period register, compare register and " + NL + " * timer register value." + NL + " */" + NL + "status_t PWMMP001_GetTimerRegsVal" + NL + "(" + NL + "  const PWMMP001_HandleType * HandlePtr," + NL + "  CCU8PWMLIB_TimerRegsType * const*TimerRegsPtr" + NL + ")" + NL + "{" + NL + "  status_t Status = (uint32_t)PWMMP001_OPER_NOT_ALLOWED_ERROR;" + NL + "  uint8_t PhaseNumber = (uint8_t)0;" + NL + "  DBG002_FUNCTION_ENTRY(DBG002_GID_PWMMP001, (uint32_t)PWMMP001_FUNCTION_ENTRY);" + NL + "" + NL + "/*<<<DD_PWMMP001_API_9_1>>>*/" + NL + "  if ((HandlePtr->DynamicHandle->State == PWMMP001_UNINITIALIZED))" + NL + "  {" + NL + "\tDBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "  }" + NL + "  else" + NL + "  {" + NL + "/*<<<DD_PWMMP001_API_9_2>>>*/" + NL + "    do" + NL + "    {" + NL + "      if (HandlePtr->PhaseHandlePtr[PhaseNumber] != NULL)" + NL + "      {" + NL + "        Status = CCU8PWMLIB_GetTimerRegsVal(" + NL + "                                      HandlePtr->PhaseHandlePtr[PhaseNumber]," + NL + "                                      TimerRegsPtr[PhaseNumber]);" + NL + "      }" + NL + "      else" + NL + "      {" + NL + "        Status = (uint32_t)PWMMP001_INVALID_PARAM_ERROR;" + NL + "        DBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "        break;" + NL + "      }" + NL + "      PhaseNumber++;" + NL + "    } while ((PhaseNumber < HandlePtr->kNumPhases) &&" + NL + "             (Status == (uint32_t)DAVEApp_SUCCESS)&& (HandlePtr->PhaseHandlePtr[PhaseNumber] != NULL));" + NL + "  }" + NL + "  DBG002_FUNCTION_EXIT(DBG002_GID_PWMMP001, (uint32_t)PWMMP001_FUNCTION_EXIT);" + NL + "  return Status;" + NL + "}" + NL + "" + NL + "/*<<<DD_PWMMP001_API_10>>>*/" + NL + "/**" + NL + " * This function initiates the shadow transfer for the period and compare register" + NL + " */" + NL + "status_t PWMMP001_SWRequestShadowTransfer" + NL + "(" + NL + "  const PWMMP001_HandleType* HandlePtr" + NL + ")" + NL + "{" + NL + "  status_t Status = (uint32_t)PWMMP001_OPER_NOT_ALLOWED_ERROR;" + NL + "" + NL + "  DBG002_FUNCTION_ENTRY(DBG002_GID_PWMMP001, (uint32_t)PWMMP001_FUNCTION_ENTRY);" + NL + "" + NL + "/*<<<DD_PWMMP001_API_10_1>>>*/" + NL + "  if ((HandlePtr->DynamicHandle->State == PWMMP001_UNINITIALIZED))" + NL + "  {" + NL + "\tDBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "  }" + NL + "" + NL + "/*<<<DD_PWMMP001_API_10_2>>>*/" + NL + "  else" + NL + "  {" + NL + "    /* Call the last phase shadow transfer API which will initiate" + NL + "     * shadow transfer for all the phases to ensure concurrent update." + NL + "     */" + NL + "    Status = CCU8PWMLIB_SWRequestShadowTransfer" + NL + "        (HandlePtr->PhaseHandlePtr[HandlePtr->kNumPhases - 1U]);" + NL + "  }" + NL + "" + NL + "  DBG002_FUNCTION_EXIT(DBG002_GID_PWMMP001, (uint32_t)PWMMP001_FUNCTION_EXIT);" + NL + "  return Status;" + NL + "}" + NL + "" + NL + "/*<<<DD_PWMMP001_API_15>>>*/" + NL + "/**" + NL + " * This function reads the period register value which will be needed to " + NL + " * find out the compare register values to get the required duty cycle." + NL + " */" + NL + "status_t PWMMP001_GetPeriodReg" + NL + "(" + NL + "  const PWMMP001_HandleType * HandlePtr," + NL + "  uint32_t * PeriodRegPtr" + NL + ")" + NL + "{" + NL + "  status_t Status = (uint32_t)PWMMP001_OPER_NOT_ALLOWED_ERROR;" + NL + "  uint32_t LocalPeriod = 0U;" + NL + "  DBG002_FUNCTION_ENTRY(DBG002_GID_PWMMP001, (uint32_t)PWMMP001_FUNCTION_ENTRY);" + NL + "" + NL + "/*<<<DD_PWMMP001_API_15_1>>>*/" + NL + "  if ((HandlePtr->DynamicHandle->State == PWMMP001_UNINITIALIZED))" + NL + "  {" + NL + "\tDBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "  }" + NL + "/*<<<DD_PWMMP001_API_15_2>>>*/" + NL + "  else" + NL + "  {" + NL + "    Status = CCU8PWMLIB_GetPeriodReg(HandlePtr->PhaseHandlePtr[0], &LocalPeriod);" + NL + "    *PeriodRegPtr = LocalPeriod;" + NL + "  }" + NL + "" + NL + "  DBG002_FUNCTION_EXIT(DBG002_GID_PWMMP001, (uint32_t)PWMMP001_FUNCTION_EXIT);" + NL + "  return Status;" + NL + "}" + NL + "" + NL + "/*<<<DD_PWMMP001_API_13>>>*/" + NL + "/**" + NL + " * This function clears the trap state of all the phases if exit control " + NL + " * from trap state is SW exit." + NL + " */" + NL + "status_t PWMMP001_ResetTrapFlag" + NL + "(" + NL + "  const PWMMP001_HandleType* HandlePtr" + NL + ")" + NL + "{" + NL + "  status_t Status = (uint32_t)PWMMP001_OPER_NOT_ALLOWED_ERROR;" + NL + "  uint8_t PhaseNumber = (uint8_t)0;" + NL + "  DBG002_FUNCTION_ENTRY(DBG002_GID_PWMMP001, (uint32_t)PWMMP001_FUNCTION_ENTRY);" + NL + "" + NL + "/*<<<DD_PWMMP001_API_13_1>>>*/" + NL + "  if ((HandlePtr->DynamicHandle->State == PWMMP001_RUNNING) ||" + NL + "      (HandlePtr->DynamicHandle->State == PWMMP001_INITIALIZED))" + NL + "  {" + NL + "\tDBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "  }" + NL + "/*<<<DD_PWMMP001_API_13_2>>>*/" + NL + "  else" + NL + "  {" + NL + "    do" + NL + "    {" + NL + "      Status = CCU8PWMLIB_ResetTrapFlag(" + NL + "                      HandlePtr->PhaseHandlePtr[PhaseNumber]);" + NL + "      PhaseNumber++;" + NL + "    } while((PhaseNumber < HandlePtr->kNumPhases) &&" + NL + "            (Status == (uint32_t)DAVEApp_SUCCESS)&& (HandlePtr->PhaseHandlePtr[PhaseNumber] != NULL));" + NL + "" + NL + "    if (Status != (uint32_t)DAVEApp_SUCCESS)" + NL + "    {" + NL + "      DBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "    }" + NL + "  }" + NL + "  DBG002_FUNCTION_EXIT(DBG002_GID_PWMMP001, (uint32_t)PWMMP001_FUNCTION_EXIT);" + NL + "  return Status;" + NL + "}" + NL + "" + NL + "/**" + NL + " * This function sets the enable event bit for the event given in the argument." + NL + " */" + NL + "status_t PWMMP001_EnableEvent" + NL + "(" + NL + "     const PWMMP001_HandleType * HandlePtr," + NL + "     const PWMMP001_PhaseType PhaseNo," + NL + "     const PWMMP001_EventNameType Event" + NL + ")" + NL + " {" + NL + "   status_t Status =(uint32_t) PWMMP001_OPER_NOT_ALLOWED_ERROR;" + NL + "   DBG002_FUNCTION_ENTRY(DBG002_GID_PWMMP001, PWMMP001_FUNCTION_ENTRY);" + NL + "" + NL + "   if (HandlePtr->DynamicHandle->State == PWMMP001_UNINITIALIZED)" + NL + "   {" + NL + "     Status = (uint32_t) PWMMP001_OPER_NOT_ALLOWED_ERROR;" + NL + "     DBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "   }" + NL + "   else if(HandlePtr->PhaseHandlePtr[(uint32_t)PhaseNo -1U] == NULL)" + NL + "   {" + NL + "\t Status = (uint32_t) PWMMP001_INVALID_PARAM_ERROR;" + NL + "\t DBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "   }   " + NL + "   else" + NL + "   {" + NL + "      Status = CCU8PWMLIB_EnableEvent(" + NL + "          HandlePtr->PhaseHandlePtr[(uint32_t)PhaseNo -1U], " + NL + "          (CCU8PWMLIB_EventNameType)Event);" + NL + "   }" + NL + "   DBG002_FUNCTION_EXIT(DBG002_GID_PWMMP001, PWMMP001_FUNCTION_EXIT);" + NL + "   return (Status);" + NL + " }" + NL + "" + NL + " /**" + NL + "  * This function clears the enable event bit for the event given in the argument." + NL + "  */" + NL + "status_t PWMMP001_DisableEvent" + NL + "(" + NL + "    const PWMMP001_HandleType * HandlePtr," + NL + "    const PWMMP001_PhaseType PhaseNo," + NL + "    const PWMMP001_EventNameType Event" + NL + ")" + NL + "{" + NL + "  status_t Status = (uint32_t) PWMMP001_OPER_NOT_ALLOWED_ERROR;" + NL + "  DBG002_FUNCTION_ENTRY(DBG002_GID_PWMMP001, PWMMP001_FUNCTION_ENTRY);" + NL + "" + NL + "  if (HandlePtr->DynamicHandle->State == PWMMP001_UNINITIALIZED)" + NL + "  {" + NL + "    Status = (uint32_t) PWMMP001_OPER_NOT_ALLOWED_ERROR;" + NL + "    DBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "  }" + NL + "  else if(HandlePtr->PhaseHandlePtr[(uint32_t)PhaseNo -1U] == NULL)" + NL + "  {" + NL + "\t Status = (uint32_t) PWMMP001_INVALID_PARAM_ERROR;" + NL + "\t DBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "  }  " + NL + "  else" + NL + "  {" + NL + "    Status = CCU8PWMLIB_DisableEvent( " + NL + "        HandlePtr->PhaseHandlePtr[(uint32_t)PhaseNo -1U], " + NL + "        (CCU8PWMLIB_EventNameType)Event);" + NL + "  }" + NL + "  DBG002_FUNCTION_EXIT(DBG002_GID_PWMMP001, PWMMP001_FUNCTION_EXIT);" + NL + "  return (Status);" + NL + "}" + NL + "" + NL + "/**" + NL + " * This function clears the interrupt by software." + NL + " */" + NL + "status_t PWMMP001_ClearPendingEvent" + NL + "(" + NL;
  protected final String TEXT_428 = "    const PWMMP001_HandleType * HandlePtr," + NL + "    const PWMMP001_PhaseType PhaseNo," + NL + "    const PWMMP001_EventNameType Event" + NL + ")" + NL + "{" + NL + "  status_t Status = (uint32_t) PWMMP001_OPER_NOT_ALLOWED_ERROR;" + NL + "  DBG002_FUNCTION_ENTRY(DBG002_GID_PWMMP001, PWMMP001_FUNCTION_ENTRY);" + NL + "" + NL + "  if (HandlePtr->DynamicHandle->State == PWMMP001_UNINITIALIZED)" + NL + "  {" + NL + "    Status = (uint32_t) PWMMP001_OPER_NOT_ALLOWED_ERROR;" + NL + "    DBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "  }" + NL + "  else if(HandlePtr->PhaseHandlePtr[(uint32_t)PhaseNo -1U] == NULL)" + NL + "  {" + NL + "\t Status = (uint32_t) PWMMP001_INVALID_PARAM_ERROR;" + NL + "\t DBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "  }" + NL + "  else" + NL + "  {" + NL + "    Status = CCU8PWMLIB_ClearPendingEvent(" + NL + "        HandlePtr->PhaseHandlePtr[(uint32_t)PhaseNo -1U], " + NL + "         (CCU8PWMLIB_EventNameType)Event);" + NL + "  }" + NL + "  DBG002_FUNCTION_EXIT(DBG002_GID_PWMMP001, PWMMP001_FUNCTION_EXIT);" + NL + "  return (Status);" + NL + "}" + NL + "" + NL + "/**" + NL + " * This function sets the interrupt by software Interrupt pulse is generated" + NL + " * if source is enabled." + NL + " */" + NL + "status_t PWMMP001_SetPendingEvent" + NL + "(" + NL + "    const PWMMP001_HandleType * HandlePtr," + NL + "    const PWMMP001_PhaseType PhaseNo," + NL + "    const PWMMP001_EventNameType Event" + NL + ")" + NL + "{" + NL + "  status_t Status = (uint32_t) PWMMP001_OPER_NOT_ALLOWED_ERROR;" + NL + "  DBG002_FUNCTION_ENTRY(DBG002_GID_PWMMP001, PWMMP001_FUNCTION_ENTRY);" + NL + "" + NL + "  if (HandlePtr->DynamicHandle->State == PWMMP001_UNINITIALIZED)" + NL + "  {" + NL + "    Status = (uint32_t) PWMMP001_OPER_NOT_ALLOWED_ERROR;" + NL + "    DBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "  }" + NL + "  else if(HandlePtr->PhaseHandlePtr[(uint32_t)PhaseNo -1U] == NULL)" + NL + "  {" + NL + "\t Status = (uint32_t) PWMMP001_INVALID_PARAM_ERROR;" + NL + "\t DBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "  }" + NL + "  else" + NL + "  {" + NL + "    Status = CCU8PWMLIB_SetPendingEvent(" + NL + "                 HandlePtr->PhaseHandlePtr[(uint32_t)PhaseNo -1U], " + NL + "                 (CCU8PWMLIB_EventNameType)Event);" + NL + "  }" + NL + "  DBG002_FUNCTION_EXIT(DBG002_GID_PWMMP001, PWMMP001_FUNCTION_EXIT);" + NL + "  return (Status);" + NL + "}" + NL + "" + NL + "/**" + NL + " * This function checks whether given interrupt is set" + NL + " */" + NL + "status_t PWMMP001_GetPendingEvent" + NL + "(" + NL + "    const PWMMP001_HandleType * HandlePtr," + NL + "    const PWMMP001_PhaseType PhaseNo," + NL + "    const PWMMP001_EventNameType Event," + NL + "    uint8_t* EvtStatus" + NL + ")" + NL + "{" + NL + "  status_t Status = (uint32_t) PWMMP001_OPER_NOT_ALLOWED_ERROR;" + NL + "  DBG002_FUNCTION_ENTRY(DBG002_GID_PWMMP001, PWMMP001_FUNCTION_ENTRY);" + NL + "" + NL + "  if (HandlePtr->DynamicHandle->State == PWMMP001_UNINITIALIZED)" + NL + "  {" + NL + "    Status = (uint32_t) PWMMP001_OPER_NOT_ALLOWED_ERROR;" + NL + "    DBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "  }" + NL + "  else if(HandlePtr->PhaseHandlePtr[(uint32_t)PhaseNo -1U] == NULL)" + NL + "  {" + NL + "\t Status = (uint32_t) PWMMP001_INVALID_PARAM_ERROR;" + NL + "\t DBG002_INFO(APP_GID, DBG002_MESSAGEID_LITERAL, PWMMP001_STATUS_LEN, &Status);" + NL + "  }" + NL + "  else" + NL + "  {" + NL + "    Status = CCU8PWMLIB_GetPendingEvent(" + NL + "                 HandlePtr->PhaseHandlePtr[(uint32_t)PhaseNo -1U], " + NL + "                 (CCU8PWMLIB_EventNameType)Event, EvtStatus);" + NL + "  }" + NL + "  DBG002_FUNCTION_EXIT(DBG002_GID_PWMMP001, PWMMP001_FUNCTION_EXIT);" + NL + "  return (Status);" + NL + "}" + NL + "" + NL + "/**" + NL + " * @endcond" + NL + " */" + NL + "/*CODE_BLOCK_END*/" + NL;
  protected final String TEXT_429 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String TempApps = null;
   String MyAppName = null;
   ArrayList<String> apps;
   String TempLowerApps = null; 
   boolean DBGApp = false;   
   apps=(ArrayList<String>)(app.getApps());
        for (int k = 0; k < apps.size(); k++) {
              TempApps = apps.get(k);
//            if(app.isAppInitProvider(apps.get(k)) == true) {
              MyAppName = TempApps.substring(TempApps.indexOf("/app/") + 5, TempApps.lastIndexOf("/"));
              TempLowerApps = MyAppName.toLowerCase();
              if (TempLowerApps.equalsIgnoreCase("dbg002")) {DBGApp = true;}   
//   }  
  } 
    stringBuffer.append(TEXT_2);
     if (!DBGApp) { 
    stringBuffer.append(TEXT_3);
     } 
    stringBuffer.append(TEXT_4);
     String AppBaseuri = "app/pwmmp001/"; 
     String appInst  = null; 
    stringBuffer.append(TEXT_5);
     String P ;
     String pinUri ;
     String portNo ;
     String pinNo ;
    stringBuffer.append(TEXT_6);
     int PDR_PD1 ;
     int Pin ;
     int PDR_PO ;
    stringBuffer.append(TEXT_7);
     int Is1xDevice = -1; 
     Is1xDevice = ((app.getSoftwareId().substring(0,1).compareTo("1")==0)?1:0); 
    stringBuffer.append(TEXT_8);
    if (Is1xDevice==1){
    stringBuffer.append(TEXT_9);
    }else {
    stringBuffer.append(TEXT_10);
    }
    stringBuffer.append(TEXT_11);
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/pwmmp001/")); 
     for (String appIns : appsList ) { 
     appInst = appIns.substring(appIns.lastIndexOf("/")+1);
    stringBuffer.append(TEXT_12);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_13);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_14);
    stringBuffer.append( appInst);
    stringBuffer.append(TEXT_15);
     if(app.getIntegerValue(AppBaseuri + appInst +"/pwmmp001_erwphase1pad0padenable/0")==1)
     { 
     pinUri = app.getMappedUri(AppBaseuri + appInst +"/phase1_directout"); 
     if ((pinUri != null) && (pinUri.trim() != "")) 
     { 
    stringBuffer.append(TEXT_16);
     portNo = pinUri.substring(pinUri.indexOf("port/p/")+7,pinUri.indexOf("/pad/")); 
     pinNo = pinUri.substring(pinUri.indexOf("/pad/")+5,pinUri.length()); 
     PDR_PD1 = app.getIntegerValue(AppBaseuri + appInst +"/phase1_directout/pdr_pd"); 
     PDR_PO = app.getIntegerValue(AppBaseuri + appInst +"/pwmmp001_erwphase1pad0char/1");
     Pin = Integer.parseInt(pinNo);
     if (Is1xDevice==0) { 
    stringBuffer.append(TEXT_17);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_18);
    stringBuffer.append(pinNo);
    stringBuffer.append(TEXT_19);
     if(Pin < 8) 
     { 
    stringBuffer.append(TEXT_20);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_21);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_22);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_23);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_24);
    stringBuffer.append(PDR_PD1);
    stringBuffer.append(TEXT_25);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_26);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_27);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_28);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_29);
     } else { 
    stringBuffer.append(TEXT_30);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_31);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_32);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_33);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_34);
    stringBuffer.append(PDR_PD1);
    stringBuffer.append(TEXT_35);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_36);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_37);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_38);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_39);
     } 
     } 
     if(Pin < 4) 
     { 
    stringBuffer.append(TEXT_40);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_41);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_42);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_43);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_44);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_45);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_46);
     } else  if(Pin < 8){ 
    stringBuffer.append(TEXT_47);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_48);
    stringBuffer.append(Pin - 4);
    stringBuffer.append(TEXT_49);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_50);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_51);
    stringBuffer.append(Pin -4);
    stringBuffer.append(TEXT_52);
    stringBuffer.append(Pin -4 );
    stringBuffer.append(TEXT_53);
     } else  if(Pin < 12){ 
    stringBuffer.append(TEXT_54);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_55);
    stringBuffer.append(Pin - 8);
    stringBuffer.append(TEXT_56);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_57);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_58);
    stringBuffer.append(Pin -8);
    stringBuffer.append(TEXT_59);
    stringBuffer.append(Pin - 8 );
    stringBuffer.append(TEXT_60);
     } else { 
    stringBuffer.append(TEXT_61);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_62);
    stringBuffer.append(Pin - 12);
    stringBuffer.append(TEXT_63);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_64);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_65);
    stringBuffer.append(Pin -12);
    stringBuffer.append(TEXT_66);
    stringBuffer.append(Pin - 12 );
    stringBuffer.append(TEXT_67);
     } 
     } 
     } 
    stringBuffer.append(TEXT_68);
     if(app.getIntegerValue(AppBaseuri + appInst +"/pwmmp001_erwphase1pad1padenable/0")==1)
     { 
     pinUri = app.getMappedUri(AppBaseuri + appInst +"/phase1_invertedout"); 
     if ((pinUri != null) && (pinUri.trim() != "")) 
     { 
     portNo = pinUri.substring(pinUri.indexOf("port/p/")+7,pinUri.indexOf("/pad/")); 
     pinNo = pinUri.substring(pinUri.indexOf("/pad/")+5,pinUri.length()); 
     PDR_PD1 = app.getIntegerValue(AppBaseuri + appInst +"/phase1_invertedout/pdr_pd"); 
     PDR_PO = app.getIntegerValue(AppBaseuri + appInst +"/pwmmp001_erwphase1pad1char/1");
     Pin = Integer.parseInt(pinNo);
     if (Is1xDevice==0) { 
    stringBuffer.append(TEXT_69);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_70);
    stringBuffer.append(pinNo);
    stringBuffer.append(TEXT_71);
     if(Pin < 8) 
     { 
    stringBuffer.append(TEXT_72);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_73);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_74);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_75);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_76);
    stringBuffer.append(PDR_PD1);
    stringBuffer.append(TEXT_77);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_78);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_79);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_80);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_81);
     } else { 
    stringBuffer.append(TEXT_82);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_83);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_84);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_85);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_86);
    stringBuffer.append(PDR_PD1);
    stringBuffer.append(TEXT_87);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_88);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_89);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_90);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_91);
     } 
     } 
     if(Pin < 4) 
     { 
    stringBuffer.append(TEXT_92);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_93);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_94);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_95);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_96);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_97);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_98);
     } else  if(Pin < 8){ 
    stringBuffer.append(TEXT_99);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_100);
    stringBuffer.append(Pin - 4);
    stringBuffer.append(TEXT_101);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_102);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_103);
    stringBuffer.append(Pin -4);
    stringBuffer.append(TEXT_104);
    stringBuffer.append(Pin -4 );
    stringBuffer.append(TEXT_105);
     } else  if(Pin < 12){ 
    stringBuffer.append(TEXT_106);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_107);
    stringBuffer.append(Pin - 8);
    stringBuffer.append(TEXT_108);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_109);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_110);
    stringBuffer.append(Pin -8);
    stringBuffer.append(TEXT_111);
    stringBuffer.append(Pin - 8 );
    stringBuffer.append(TEXT_112);
     } else { 
    stringBuffer.append(TEXT_113);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_114);
    stringBuffer.append(Pin - 12);
    stringBuffer.append(TEXT_115);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_116);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_117);
    stringBuffer.append(Pin -12);
    stringBuffer.append(TEXT_118);
    stringBuffer.append(Pin - 12 );
    stringBuffer.append(TEXT_119);
     } 
     } 
     } 
     if(app.getIntegerValue(AppBaseuri + appInst +"/pwmmp001_erwphase2pad0padenable/0")==1)
     { 
     pinUri = app.getMappedUri(AppBaseuri + appInst +"/phase2_directout"); 
     if ((pinUri != null) && (pinUri.trim() != "")) 
     { 
     portNo = pinUri.substring(pinUri.indexOf("port/p/")+7,pinUri.indexOf("/pad/")); 
     pinNo = pinUri.substring(pinUri.indexOf("/pad/")+5,pinUri.length()); 
     PDR_PD1 = app.getIntegerValue(AppBaseuri + appInst +"/phase2_directout/pdr_pd"); 
     PDR_PO = app.getIntegerValue(AppBaseuri + appInst +"/pwmmp001_erwphase2pad0char/1");
     Pin = Integer.parseInt(pinNo);
     if (Is1xDevice==0) { 
    stringBuffer.append(TEXT_120);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_121);
    stringBuffer.append(pinNo);
    stringBuffer.append(TEXT_122);
     if(Pin < 8) 
     { 
    stringBuffer.append(TEXT_123);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_124);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_125);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_126);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_127);
    stringBuffer.append(PDR_PD1);
    stringBuffer.append(TEXT_128);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_129);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_130);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_131);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_132);
     } else { 
    stringBuffer.append(TEXT_133);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_134);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_135);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_136);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_137);
    stringBuffer.append(PDR_PD1);
    stringBuffer.append(TEXT_138);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_139);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_140);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_141);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_142);
     } 
     } 
     if(Pin < 4) 
     { 
    stringBuffer.append(TEXT_143);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_144);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_145);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_146);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_147);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_148);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_149);
     } else  if(Pin < 8){ 
    stringBuffer.append(TEXT_150);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_151);
    stringBuffer.append(Pin - 4);
    stringBuffer.append(TEXT_152);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_153);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_154);
    stringBuffer.append(Pin -4);
    stringBuffer.append(TEXT_155);
    stringBuffer.append(Pin -4 );
    stringBuffer.append(TEXT_156);
     } else  if(Pin < 12){ 
    stringBuffer.append(TEXT_157);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_158);
    stringBuffer.append(Pin - 8);
    stringBuffer.append(TEXT_159);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_160);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_161);
    stringBuffer.append(Pin -8);
    stringBuffer.append(TEXT_162);
    stringBuffer.append(Pin - 8 );
    stringBuffer.append(TEXT_163);
     } else { 
    stringBuffer.append(TEXT_164);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_165);
    stringBuffer.append(Pin - 12);
    stringBuffer.append(TEXT_166);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_167);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_168);
    stringBuffer.append(Pin -12);
    stringBuffer.append(TEXT_169);
    stringBuffer.append(Pin - 12 );
    stringBuffer.append(TEXT_170);
     } 
     } 
     } 
     if(app.getIntegerValue(AppBaseuri + appInst +"/pwmmp001_erwphase2pad1padenable/0")==1)
     { 
     pinUri = app.getMappedUri(AppBaseuri + appInst +"/phase2_invertedout"); 
     if ((pinUri != null) && (pinUri.trim() != "")) 
     { 
     portNo = pinUri.substring(pinUri.indexOf("port/p/")+7,pinUri.indexOf("/pad/")); 
     pinNo = pinUri.substring(pinUri.indexOf("/pad/")+5,pinUri.length()); 
     PDR_PD1 = app.getIntegerValue(AppBaseuri + appInst +"/phase2_invertedout/pdr_pd"); 
     PDR_PO = app.getIntegerValue(AppBaseuri + appInst +"/pwmmp001_erwphase2pad1char/1");
     Pin = Integer.parseInt(pinNo);
     if (Is1xDevice==0) { 
    stringBuffer.append(TEXT_171);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_172);
    stringBuffer.append(pinNo);
    stringBuffer.append(TEXT_173);
     if(Pin < 8) 
     { 
    stringBuffer.append(TEXT_174);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_175);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_176);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_177);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_178);
    stringBuffer.append(PDR_PD1);
    stringBuffer.append(TEXT_179);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_180);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_181);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_182);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_183);
     } else { 
    stringBuffer.append(TEXT_184);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_185);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_186);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_187);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_188);
    stringBuffer.append(PDR_PD1);
    stringBuffer.append(TEXT_189);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_190);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_191);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_192);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_193);
     } 
     } 
     if(Pin < 4) 
     { 
    stringBuffer.append(TEXT_194);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_195);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_196);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_197);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_198);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_199);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_200);
     } else  if(Pin < 8){ 
    stringBuffer.append(TEXT_201);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_202);
    stringBuffer.append(Pin - 4);
    stringBuffer.append(TEXT_203);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_204);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_205);
    stringBuffer.append(Pin -4);
    stringBuffer.append(TEXT_206);
    stringBuffer.append(Pin -4 );
    stringBuffer.append(TEXT_207);
     } else  if(Pin < 12){ 
    stringBuffer.append(TEXT_208);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_209);
    stringBuffer.append(Pin - 8);
    stringBuffer.append(TEXT_210);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_211);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_212);
    stringBuffer.append(Pin -8);
    stringBuffer.append(TEXT_213);
    stringBuffer.append(Pin - 8 );
    stringBuffer.append(TEXT_214);
     } else { 
    stringBuffer.append(TEXT_215);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_216);
    stringBuffer.append(Pin - 12);
    stringBuffer.append(TEXT_217);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_218);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_219);
    stringBuffer.append(Pin -12);
    stringBuffer.append(TEXT_220);
    stringBuffer.append(Pin - 12 );
    stringBuffer.append(TEXT_221);
     } 
     } 
     } 
     if(app.getIntegerValue(AppBaseuri + appInst +"/pwmmp001_erwphase3pad0padenable/0")==1)
     { 
     pinUri = app.getMappedUri(AppBaseuri + appInst +"/phase3_directout"); 
     if ((pinUri != null) && (pinUri.trim() != "")) 
     { 
     portNo = pinUri.substring(pinUri.indexOf("port/p/")+7,pinUri.indexOf("/pad/")); 
     pinNo = pinUri.substring(pinUri.indexOf("/pad/")+5,pinUri.length()); 
     PDR_PD1 = app.getIntegerValue(AppBaseuri + appInst +"/phase3_directout/pdr_pd"); 
     PDR_PO = app.getIntegerValue(AppBaseuri + appInst +"/pwmmp001_erwphase3pad0char/1");
     Pin = Integer.parseInt(pinNo);
     if (Is1xDevice==0) { 
    stringBuffer.append(TEXT_222);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_223);
    stringBuffer.append(pinNo);
    stringBuffer.append(TEXT_224);
     if(Pin < 8) 
     { 
    stringBuffer.append(TEXT_225);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_226);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_227);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_228);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_229);
    stringBuffer.append(PDR_PD1);
    stringBuffer.append(TEXT_230);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_231);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_232);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_233);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_234);
     } else { 
    stringBuffer.append(TEXT_235);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_236);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_237);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_238);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_239);
    stringBuffer.append(PDR_PD1);
    stringBuffer.append(TEXT_240);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_241);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_242);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_243);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_244);
     } 
     } 
     if(Pin < 4) 
     { 
    stringBuffer.append(TEXT_245);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_246);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_247);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_248);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_249);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_250);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_251);
     } else  if(Pin < 8){ 
    stringBuffer.append(TEXT_252);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_253);
    stringBuffer.append(Pin - 4);
    stringBuffer.append(TEXT_254);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_255);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_256);
    stringBuffer.append(Pin -4);
    stringBuffer.append(TEXT_257);
    stringBuffer.append(Pin -4 );
    stringBuffer.append(TEXT_258);
     } else  if(Pin < 12){ 
    stringBuffer.append(TEXT_259);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_260);
    stringBuffer.append(Pin - 8);
    stringBuffer.append(TEXT_261);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_262);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_263);
    stringBuffer.append(Pin -8);
    stringBuffer.append(TEXT_264);
    stringBuffer.append(Pin - 8 );
    stringBuffer.append(TEXT_265);
     } else { 
    stringBuffer.append(TEXT_266);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_267);
    stringBuffer.append(Pin - 12);
    stringBuffer.append(TEXT_268);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_269);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_270);
    stringBuffer.append(Pin -12);
    stringBuffer.append(TEXT_271);
    stringBuffer.append(Pin - 12 );
    stringBuffer.append(TEXT_272);
     } 
     } 
     } 
     if(app.getIntegerValue(AppBaseuri + appInst +"/pwmmp001_erwphase3pad1padenable/0")==1)
     { 
     pinUri = app.getMappedUri(AppBaseuri + appInst +"/phase3_invertedout"); 
     if ((pinUri != null) && (pinUri.trim() != "")) 
     { 
     portNo = pinUri.substring(pinUri.indexOf("port/p/")+7,pinUri.indexOf("/pad/")); 
     pinNo = pinUri.substring(pinUri.indexOf("/pad/")+5,pinUri.length()); 
     PDR_PD1 = app.getIntegerValue(AppBaseuri + appInst +"/phase3_invertedout/pdr_pd"); 
     PDR_PO = app.getIntegerValue(AppBaseuri + appInst +"/pwmmp001_erwphase3pad1char/1");
     Pin = Integer.parseInt(pinNo);
     if (Is1xDevice==0) { 
    stringBuffer.append(TEXT_273);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_274);
    stringBuffer.append(pinNo);
    stringBuffer.append(TEXT_275);
     if(Pin < 8) 
     { 
    stringBuffer.append(TEXT_276);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_277);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_278);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_279);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_280);
    stringBuffer.append(PDR_PD1);
    stringBuffer.append(TEXT_281);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_282);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_283);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_284);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_285);
     } else { 
    stringBuffer.append(TEXT_286);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_287);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_288);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_289);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_290);
    stringBuffer.append(PDR_PD1);
    stringBuffer.append(TEXT_291);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_292);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_293);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_294);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_295);
     } 
     } 
     if(Pin < 4) 
     { 
    stringBuffer.append(TEXT_296);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_297);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_298);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_299);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_300);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_301);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_302);
     } else  if(Pin < 8){ 
    stringBuffer.append(TEXT_303);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_304);
    stringBuffer.append(Pin - 4);
    stringBuffer.append(TEXT_305);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_306);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_307);
    stringBuffer.append(Pin -4);
    stringBuffer.append(TEXT_308);
    stringBuffer.append(Pin -4 );
    stringBuffer.append(TEXT_309);
     } else  if(Pin < 12){ 
    stringBuffer.append(TEXT_310);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_311);
    stringBuffer.append(Pin - 8);
    stringBuffer.append(TEXT_312);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_313);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_314);
    stringBuffer.append(Pin -8);
    stringBuffer.append(TEXT_315);
    stringBuffer.append(Pin - 8 );
    stringBuffer.append(TEXT_316);
     } else { 
    stringBuffer.append(TEXT_317);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_318);
    stringBuffer.append(Pin - 12);
    stringBuffer.append(TEXT_319);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_320);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_321);
    stringBuffer.append(Pin -12);
    stringBuffer.append(TEXT_322);
    stringBuffer.append(Pin - 12 );
    stringBuffer.append(TEXT_323);
     } 
     } 
     } 
     if(app.getIntegerValue(AppBaseuri + appInst +"/pwmmp001_erwphase4pad0padenable/0")==1)
     { 
     pinUri = app.getMappedUri(AppBaseuri + appInst +"/phase4_directout"); 
     if ((pinUri != null) && (pinUri.trim() != "")) 
     { 
     portNo = pinUri.substring(pinUri.indexOf("port/p/")+7,pinUri.indexOf("/pad/")); 
     pinNo = pinUri.substring(pinUri.indexOf("/pad/")+5,pinUri.length()); 
     PDR_PD1 = app.getIntegerValue(AppBaseuri + appInst +"/phase4_directout/pdr_pd"); 
     PDR_PO = app.getIntegerValue(AppBaseuri + appInst +"/pwmmp001_erwphase4pad0char/1");
     Pin = Integer.parseInt(pinNo);
     if (Is1xDevice==0) { 
    stringBuffer.append(TEXT_324);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_325);
    stringBuffer.append(pinNo);
    stringBuffer.append(TEXT_326);
     if(Pin < 8) 
     { 
    stringBuffer.append(TEXT_327);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_328);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_329);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_330);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_331);
    stringBuffer.append(PDR_PD1);
    stringBuffer.append(TEXT_332);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_333);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_334);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_335);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_336);
     } else { 
    stringBuffer.append(TEXT_337);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_338);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_339);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_340);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_341);
    stringBuffer.append(PDR_PD1);
    stringBuffer.append(TEXT_342);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_343);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_344);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_345);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_346);
     } 
     } 
     if(Pin < 4) 
     { 
    stringBuffer.append(TEXT_347);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_348);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_349);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_350);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_351);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_352);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_353);
     } else  if(Pin < 8){ 
    stringBuffer.append(TEXT_354);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_355);
    stringBuffer.append(Pin - 4);
    stringBuffer.append(TEXT_356);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_357);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_358);
    stringBuffer.append(Pin -4);
    stringBuffer.append(TEXT_359);
    stringBuffer.append(Pin -4 );
    stringBuffer.append(TEXT_360);
     } else  if(Pin < 12){ 
    stringBuffer.append(TEXT_361);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_362);
    stringBuffer.append(Pin - 8);
    stringBuffer.append(TEXT_363);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_364);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_365);
    stringBuffer.append(Pin -8);
    stringBuffer.append(TEXT_366);
    stringBuffer.append(Pin - 8 );
    stringBuffer.append(TEXT_367);
     } else { 
    stringBuffer.append(TEXT_368);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_369);
    stringBuffer.append(Pin - 12);
    stringBuffer.append(TEXT_370);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_371);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_372);
    stringBuffer.append(Pin -12);
    stringBuffer.append(TEXT_373);
    stringBuffer.append(Pin - 12 );
    stringBuffer.append(TEXT_374);
     } 
     } 
     } 
     if(app.getIntegerValue(AppBaseuri + appInst +"/pwmmp001_erwphase4pad1padenable/0")==1)
     { 
     pinUri = app.getMappedUri(AppBaseuri + appInst +"/phase4_invertedout"); 
     if ((pinUri != null) && (pinUri.trim() != "")) 
     { 
     portNo = pinUri.substring(pinUri.indexOf("port/p/")+7,pinUri.indexOf("/pad/")); 
     pinNo = pinUri.substring(pinUri.indexOf("/pad/")+5,pinUri.length()); 
     PDR_PD1 = app.getIntegerValue(AppBaseuri + appInst +"/phase4_invertedout/pdr_pd"); 
     PDR_PO = app.getIntegerValue(AppBaseuri + appInst +"/pwmmp001_erwphase4pad1char/1");
     Pin = Integer.parseInt(pinNo);
     if (Is1xDevice==0) { 
    stringBuffer.append(TEXT_375);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_376);
    stringBuffer.append(pinNo);
    stringBuffer.append(TEXT_377);
     if(Pin < 8) 
     { 
    stringBuffer.append(TEXT_378);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_379);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_380);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_381);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_382);
    stringBuffer.append(PDR_PD1);
    stringBuffer.append(TEXT_383);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_384);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_385);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_386);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_387);
     } else { 
    stringBuffer.append(TEXT_388);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_389);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_390);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_391);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_392);
    stringBuffer.append(PDR_PD1);
    stringBuffer.append(TEXT_393);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_394);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_395);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_396);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_397);
     } 
     } 
     if(Pin < 4) 
     { 
    stringBuffer.append(TEXT_398);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_399);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_400);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_401);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_402);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_403);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_404);
     } else  if(Pin < 8){ 
    stringBuffer.append(TEXT_405);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_406);
    stringBuffer.append(Pin - 4);
    stringBuffer.append(TEXT_407);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_408);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_409);
    stringBuffer.append(Pin -4);
    stringBuffer.append(TEXT_410);
    stringBuffer.append(Pin -4 );
    stringBuffer.append(TEXT_411);
     } else  if(Pin < 12){ 
    stringBuffer.append(TEXT_412);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_413);
    stringBuffer.append(Pin - 8);
    stringBuffer.append(TEXT_414);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_415);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_416);
    stringBuffer.append(Pin -8);
    stringBuffer.append(TEXT_417);
    stringBuffer.append(Pin - 8 );
    stringBuffer.append(TEXT_418);
     } else { 
    stringBuffer.append(TEXT_419);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_420);
    stringBuffer.append(Pin - 12);
    stringBuffer.append(TEXT_421);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_422);
    stringBuffer.append(PDR_PO);
    stringBuffer.append(TEXT_423);
    stringBuffer.append(Pin -12);
    stringBuffer.append(TEXT_424);
    stringBuffer.append(Pin - 12 );
    stringBuffer.append(TEXT_425);
     } 
     } 
     } 
    }
    stringBuffer.append(TEXT_426);
    stringBuffer.append(TEXT_427);
    stringBuffer.append(TEXT_428);
    stringBuffer.append(TEXT_429);
    return stringBuffer.toString();
  }
}
