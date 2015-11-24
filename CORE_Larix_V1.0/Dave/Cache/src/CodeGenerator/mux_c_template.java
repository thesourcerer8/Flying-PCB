package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class mux_c_template
{
  protected static String nl;
  public static synchronized mux_c_template create(String lineSeparator)
  {
    nl = lineSeparator;
    mux_c_template result = new mux_c_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*******************************************************************************" + NL + " Copyright (c) 2014, Infineon Technologies AG                                 **" + NL + " All rights reserved.                                                         **" + NL + "                                                                              **" + NL + " Redistribution and use in source and binary forms, with or without           **" + NL + " modification,are permitted provided that the following conditions are met:   **" + NL + "                                                                              **" + NL + " *Redistributions of source code must retain the above copyright notice,      **" + NL + " this list of conditions and the following disclaimer.                        **" + NL + " *Redistributions in binary form must reproduce the above copyright notice,   **" + NL + " this list of conditions and the following disclaimer in the documentation    **" + NL + " and/or other materials provided with the distribution.                       **" + NL + " *Neither the name of the copyright holders nor the names of its contributors **" + NL + " may be used to endorse or promote products derived from this software without**" + NL + " specific prior written permission.                                           **" + NL + "                                                                              **" + NL + " THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\"  **" + NL + " AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **" + NL + " IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **" + NL + " ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **" + NL + " LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **" + NL + " CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **" + NL + " SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **" + NL + " INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **" + NL + " CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **" + NL + " ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **" + NL + " POSSIBILITY OF SUCH DAMAGE.                                                  **" + NL + "                                                                              **" + NL + " To improve the quality of the software, users are encouraged to share        **" + NL + " modifications, enhancements or bug fixes with Infineon Technologies AG       **" + NL + " dave@infineon.com).                                                          **" + NL + "                                                                              **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon <Microcontroller name, step>                           **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : April 23, 2014                                     **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "/**" + NL + " * @file  MULTIPLEXER.c" + NL + " *" + NL + " * @brief This file contains implementation of DAVE Support function which " + NL + " * uses to configure multiplexer register values." + NL + " * 24 July 2013 v1.0.34 Initial Version" + NL + " * 06 sep 2013 v1.0.36  UART001 : Mux : One instruction for output pins " + NL + " *                      initialisation." + NL + " *                      CAN001 & CAN002 : Avoid twice reset of the INIT bit in " + NL + " *                      Can001_lNodeInit & DAVE_MUX_Init." + NL + " *                      WR_REGHIB Macro definition has been changed." + NL + " * 23 April 2014 v1.0.44 HRPWM MUX configuration supported.                      " + NL + " *                      " + NL + " */" + NL + "" + NL + "/*******************************************************************************" + NL + "**                      Include Files                                         **" + NL + "*******************************************************************************/" + NL + "#include \"../../inc/DAVESupport/DAVE3.h\"" + NL + "" + NL + "/*******************************************************************************" + NL + "**                 Function declarations                                     **" + NL + "*******************************************************************************/" + NL + "/*******************************************************************************" + NL + "** Syntax           : void DAVE_MUX_Init(void)                                **" + NL + "**                                                                            **" + NL + "** Reentrancy       : None                                                    **" + NL + "**                                                                            **" + NL + "** Parameters (in)  : void                                                    **" + NL + "**                                                                            **" + NL + "** Parameters (out) : none                                                    **" + NL + "**                                                                            **" + NL + "** Return value     : none                                                    **" + NL + "**                                                                            **" + NL + "** Description      : This is the Mux configuration                           **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "           " + NL + "void DAVE_MUX_Init(void)" + NL + "{  ";
  protected final String TEXT_2 = NL + "        //********* Capture/Compare Unit 4 (CAPCOM4) CONFIGURATIONS ************************* ";
  protected final String TEXT_3 = NL + "               " + NL + "    // GCTRL: Global Control Register." + NL + "    WR_REG(CCU4";
  protected final String TEXT_4 = "->GCTRL, CCU4_GCTRL_PCIS_Msk, CCU4_GCTRL_PCIS_Pos, ";
  protected final String TEXT_5 = " );";
  protected final String TEXT_6 = NL + "                       " + NL + "    // Configuring CCU4";
  protected final String TEXT_7 = " CC4";
  protected final String TEXT_8 = "INS - Input Selector Configuration";
  protected final String TEXT_9 = NL;
  protected final String TEXT_10 = NL + "    ";
  protected final String TEXT_11 = "                   ";
  protected final String TEXT_12 = NL;
  protected final String TEXT_13 = NL + "    ";
  protected final String TEXT_14 = "                   ";
  protected final String TEXT_15 = NL;
  protected final String TEXT_16 = NL + "    ";
  protected final String TEXT_17 = "                   ";
  protected final String TEXT_18 = NL + "                       " + NL + "    // Configuring CCU4";
  protected final String TEXT_19 = "_CC4";
  protected final String TEXT_20 = "SRS  =  Service Request Selector";
  protected final String TEXT_21 = NL;
  protected final String TEXT_22 = NL + "    ";
  protected final String TEXT_23 = "    ";
  protected final String TEXT_24 = NL;
  protected final String TEXT_25 = NL + "    ";
  protected final String TEXT_26 = "    ";
  protected final String TEXT_27 = NL;
  protected final String TEXT_28 = NL + "    ";
  protected final String TEXT_29 = "    ";
  protected final String TEXT_30 = NL;
  protected final String TEXT_31 = NL + "    ";
  protected final String TEXT_32 = "    ";
  protected final String TEXT_33 = NL;
  protected final String TEXT_34 = NL + "    ";
  protected final String TEXT_35 = "    ";
  protected final String TEXT_36 = NL + "        //********* Capture/Compare Unit 8 (CAPCOM8) CONFIGURATIONS *************************";
  protected final String TEXT_37 = NL + "               " + NL + "    // GCTRL: Global Control Register." + NL + "    WR_REG(CCU8";
  protected final String TEXT_38 = "->GCTRL, CCU8_GCTRL_PCIS_Msk, CCU8_GCTRL_PCIS_Pos, ";
  protected final String TEXT_39 = " );";
  protected final String TEXT_40 = NL + "                      " + NL + "            // Configuring CCU8";
  protected final String TEXT_41 = " CC8";
  protected final String TEXT_42 = "INS - Input Selector Configuration";
  protected final String TEXT_43 = NL;
  protected final String TEXT_44 = NL + "    ";
  protected final String TEXT_45 = "                   ";
  protected final String TEXT_46 = NL;
  protected final String TEXT_47 = NL + "    ";
  protected final String TEXT_48 = "                   ";
  protected final String TEXT_49 = NL;
  protected final String TEXT_50 = NL + "    ";
  protected final String TEXT_51 = "                   ";
  protected final String TEXT_52 = NL + "                       " + NL + "            // Configuring CCU8";
  protected final String TEXT_53 = "_CC8";
  protected final String TEXT_54 = "SRS  =  Service Request Selector";
  protected final String TEXT_55 = NL;
  protected final String TEXT_56 = NL + "            ";
  protected final String TEXT_57 = "    ";
  protected final String TEXT_58 = NL;
  protected final String TEXT_59 = NL + "            ";
  protected final String TEXT_60 = "    ";
  protected final String TEXT_61 = NL;
  protected final String TEXT_62 = NL + "            ";
  protected final String TEXT_63 = "    ";
  protected final String TEXT_64 = NL;
  protected final String TEXT_65 = NL + "            ";
  protected final String TEXT_66 = "    ";
  protected final String TEXT_67 = NL;
  protected final String TEXT_68 = NL + "            ";
  protected final String TEXT_69 = "    ";
  protected final String TEXT_70 = NL;
  protected final String TEXT_71 = NL + "            ";
  protected final String TEXT_72 = "    ";
  protected final String TEXT_73 = NL + "    //********* Ethernet MAC CONFIGURATIONS *************************";
  protected final String TEXT_74 = NL + "                     " + NL + "    // Configuring ETH0_CON  =  Ethernet x Port Control Register";
  protected final String TEXT_75 = NL;
  protected final String TEXT_76 = NL + "    ";
  protected final String TEXT_77 = "                   ";
  protected final String TEXT_78 = NL;
  protected final String TEXT_79 = NL + "    ";
  protected final String TEXT_80 = "                   ";
  protected final String TEXT_81 = NL;
  protected final String TEXT_82 = NL + "    ";
  protected final String TEXT_83 = "                   ";
  protected final String TEXT_84 = NL;
  protected final String TEXT_85 = NL + "    ";
  protected final String TEXT_86 = "                   ";
  protected final String TEXT_87 = NL;
  protected final String TEXT_88 = NL + "    ";
  protected final String TEXT_89 = "                   ";
  protected final String TEXT_90 = NL;
  protected final String TEXT_91 = NL + "    ";
  protected final String TEXT_92 = "                   ";
  protected final String TEXT_93 = NL;
  protected final String TEXT_94 = NL + "    ";
  protected final String TEXT_95 = "                   ";
  protected final String TEXT_96 = NL;
  protected final String TEXT_97 = NL + "    ";
  protected final String TEXT_98 = "                   ";
  protected final String TEXT_99 = NL;
  protected final String TEXT_100 = NL + "    ";
  protected final String TEXT_101 = "                   ";
  protected final String TEXT_102 = NL;
  protected final String TEXT_103 = NL + "    ";
  protected final String TEXT_104 = "                   ";
  protected final String TEXT_105 = NL;
  protected final String TEXT_106 = NL + "    ";
  protected final String TEXT_107 = "                   ";
  protected final String TEXT_108 = NL;
  protected final String TEXT_109 = NL + "    ";
  protected final String TEXT_110 = "                   ";
  protected final String TEXT_111 = NL + "               ";
  protected final String TEXT_112 = NL + "                          " + NL + "    // Demodulator Input Configuration Register ";
  protected final String TEXT_113 = "        " + NL;
  protected final String TEXT_114 = NL + "    ";
  protected final String TEXT_115 = NL + NL + "\t";
  protected final String TEXT_116 = "  ";
  protected final String TEXT_117 = NL + "        " + NL + "\t";
  protected final String TEXT_118 = "                   ";
  protected final String TEXT_119 = NL + "               " + NL + "    // Rectification Configuration Register ";
  protected final String TEXT_120 = "              " + NL + "    WR_REG(DSD_CH";
  protected final String TEXT_121 = "->RECTCFG, DSD_CH_RECTCFG_SSRC_Msk, DSD_CH_RECTCFG_SSRC_Pos, ";
  protected final String TEXT_122 = ");                ";
  protected final String TEXT_123 = NL + "/*" + NL + " * CAN peripheral configuration:" + NL + " */         ";
  protected final String TEXT_124 = " ";
  protected final String TEXT_125 = "            ";
  protected final String TEXT_126 = NL + "    //Node";
  protected final String TEXT_127 = " configuration:    ";
  protected final String TEXT_128 = NL + "    WR_REG(CAN_NODE";
  protected final String TEXT_129 = "->NPCR, CAN_NODE_NPCR_RXSEL_Msk, CAN_NODE_NPCR_RXSEL_Pos, RXD_SIGNAL";
  protected final String TEXT_130 = ");" + NL + "    ";
  protected final String TEXT_131 = " ";
  protected final String TEXT_132 = "            ";
  protected final String TEXT_133 = NL + "    //Node";
  protected final String TEXT_134 = " configuration:" + NL + "    ";
  protected final String TEXT_135 = NL + "    WR_REG(CAN_NODE";
  protected final String TEXT_136 = "->NIPR, CAN_NODE_NIPR_TRINP_Msk, CAN_NODE_NIPR_TRINP_Pos, SRN";
  protected final String TEXT_137 = ");" + NL + "    ";
  protected final String TEXT_138 = " ";
  protected final String TEXT_139 = "            ";
  protected final String TEXT_140 = NL + "    //Node";
  protected final String TEXT_141 = " configuration:" + NL + "    ";
  protected final String TEXT_142 = NL + "    WR_REG(CAN_NODE";
  protected final String TEXT_143 = "->NIPR, CAN_NODE_NIPR_LECINP_Msk, CAN_NODE_NIPR_LECINP_Pos, SRN";
  protected final String TEXT_144 = ");" + NL + "    ";
  protected final String TEXT_145 = " ";
  protected final String TEXT_146 = "            ";
  protected final String TEXT_147 = NL + "    //Node";
  protected final String TEXT_148 = " configuration:" + NL + "    ";
  protected final String TEXT_149 = NL + "    WR_REG(CAN_NODE";
  protected final String TEXT_150 = "->NIPR, CAN_NODE_NIPR_ALINP_Msk, CAN_NODE_NIPR_ALINP_Pos, SRN";
  protected final String TEXT_151 = ");" + NL + "    ";
  protected final String TEXT_152 = " ";
  protected final String TEXT_153 = "            ";
  protected final String TEXT_154 = NL + "    //Node";
  protected final String TEXT_155 = " configuration:" + NL + "    ";
  protected final String TEXT_156 = NL + "    WR_REG(CAN_NODE";
  protected final String TEXT_157 = "->NIPR, CAN_NODE_NIPR_CFCINP_Msk, CAN_NODE_NIPR_CFCINP_Pos, SRN";
  protected final String TEXT_158 = ");" + NL + "    ";
  protected final String TEXT_159 = " ";
  protected final String TEXT_160 = "            ";
  protected final String TEXT_161 = NL + "    //Message object ";
  protected final String TEXT_162 = " configuration:" + NL + "    ";
  protected final String TEXT_163 = NL + "    WR_REG(CAN_MO";
  protected final String TEXT_164 = "->MOIPR, CAN_MO_MOIPR_TXINP_Msk, CAN_MO_MOIPR_TXINP_Pos, SRN";
  protected final String TEXT_165 = ");    ";
  protected final String TEXT_166 = " ";
  protected final String TEXT_167 = "            ";
  protected final String TEXT_168 = NL + "    //Message object ";
  protected final String TEXT_169 = " configuration:" + NL + "    ";
  protected final String TEXT_170 = NL + "    WR_REG(CAN_MO";
  protected final String TEXT_171 = "->MOIPR, CAN_MO_MOIPR_RXINP_Msk, CAN_MO_MOIPR_RXINP_Pos, SRN";
  protected final String TEXT_172 = ");" + NL + "    ";
  protected final String TEXT_173 = NL + "    /* Macros which makes the CAN peripheral to exit from the INITIALISATION mode to NORMAL mode */" + NL + "#ifdef CAN_NODE0_ENABLE" + NL + "    CAN_Handle0_NODE();" + NL + "#endif" + NL + "#ifdef CAN_NODE1_ENABLE    " + NL + "    CAN_Handle1_NODE();" + NL + "#endif    " + NL + "#ifdef CAN_NODE2_ENABLE    " + NL + "    CAN_Handle2_NODE(); " + NL + "#endif ";
  protected final String TEXT_174 = NL + "/*" + NL + " * POSIF0 peripheral configuration:" + NL + " */         ";
  protected final String TEXT_175 = " ";
  protected final String TEXT_176 = "            ";
  protected final String TEXT_177 = NL + "    //POSIF0 configuration:" + NL + "    ";
  protected final String TEXT_178 = NL + "    WR_REG(POSIF0->PCONF, POSIF_PCONF_INSEL0_Msk, POSIF_PCONF_INSEL0_Pos, INSIGNAL";
  protected final String TEXT_179 = ");" + NL + "    ";
  protected final String TEXT_180 = " ";
  protected final String TEXT_181 = "            ";
  protected final String TEXT_182 = NL + "    //POSIF0 configuration:" + NL + "    ";
  protected final String TEXT_183 = NL + "    WR_REG(POSIF0->PCONF, POSIF_PCONF_INSEL1_Msk, POSIF_PCONF_INSEL1_Pos, INSIGNAL";
  protected final String TEXT_184 = ");" + NL + "    ";
  protected final String TEXT_185 = " ";
  protected final String TEXT_186 = "            ";
  protected final String TEXT_187 = NL + "    //POSIF0 configuration:" + NL + "    ";
  protected final String TEXT_188 = NL + "    WR_REG(POSIF0->PCONF, POSIF_PCONF_INSEL2_Msk, POSIF_PCONF_INSEL2_Pos, INSIGNAL";
  protected final String TEXT_189 = ");" + NL + "    ";
  protected final String TEXT_190 = " ";
  protected final String TEXT_191 = "            ";
  protected final String TEXT_192 = NL + "    //POSIF0 configuration:" + NL + "    ";
  protected final String TEXT_193 = NL + "    WR_REG(POSIF0->PCONF, POSIF_PCONF_DSEL_Msk, POSIF_PCONF_DSEL_Pos, INSIGNAL";
  protected final String TEXT_194 = ");" + NL + "    ";
  protected final String TEXT_195 = " ";
  protected final String TEXT_196 = "            ";
  protected final String TEXT_197 = NL + "    //POSIF0 configuration:" + NL + "    ";
  protected final String TEXT_198 = NL + "    WR_REG(POSIF0->PCONF, POSIF_PCONF_EWIS_Msk, POSIF_PCONF_EWIS_Pos, INSIGNAL";
  protected final String TEXT_199 = ");" + NL + "    ";
  protected final String TEXT_200 = " ";
  protected final String TEXT_201 = "            ";
  protected final String TEXT_202 = NL + "    //POSIF0 configuration:" + NL + "    ";
  protected final String TEXT_203 = NL + "    WR_REG(POSIF0->PCONF, POSIF_PCONF_MSETS_Msk, POSIF_PCONF_MSETS_Pos, INSIGNAL";
  protected final String TEXT_204 = ");" + NL + "    ";
  protected final String TEXT_205 = " ";
  protected final String TEXT_206 = "            ";
  protected final String TEXT_207 = NL + "    //POSIF0 configuration:" + NL + "    ";
  protected final String TEXT_208 = NL + "    WR_REG(POSIF0->PCONF, POSIF_PCONF_MSYNS_Msk, POSIF_PCONF_MSYNS_Pos, INSIGNAL";
  protected final String TEXT_209 = ");" + NL + "    ";
  protected final String TEXT_210 = " ";
  protected final String TEXT_211 = "            ";
  protected final String TEXT_212 = NL + "    //POSIF0 configuration:" + NL + "    ";
  protected final String TEXT_213 = NL + "    WR_REG(POSIF0->PFLGE, POSIF_PFLGE_ECHE_Msk, POSIF_PFLGE_ECHE_Pos, SET_";
  protected final String TEXT_214 = ");" + NL + "    ";
  protected final String TEXT_215 = " ";
  protected final String TEXT_216 = "            ";
  protected final String TEXT_217 = NL + "    //POSIF0 configuration:" + NL + "    ";
  protected final String TEXT_218 = NL + "    WR_REG(POSIF0->PFLGE, POSIF_PFLGE_CHESEL_Msk, POSIF_PFLGE_CHESEL_Pos, SR";
  protected final String TEXT_219 = ");" + NL + "    ";
  protected final String TEXT_220 = " ";
  protected final String TEXT_221 = "            ";
  protected final String TEXT_222 = NL + "    //POSIF0 configuration:" + NL + "    ";
  protected final String TEXT_223 = NL + "    WR_REG(POSIF0->PFLGE, POSIF_PFLGE_EWHE_Msk, POSIF_PFLGE_EWHE_Pos, SET_";
  protected final String TEXT_224 = ");" + NL + "    ";
  protected final String TEXT_225 = " ";
  protected final String TEXT_226 = "            ";
  protected final String TEXT_227 = NL + "    //POSIF0 configuration:" + NL + "    ";
  protected final String TEXT_228 = NL + "    WR_REG(POSIF0->PFLGE, POSIF_PFLGE_WHESEL_Msk, POSIF_PFLGE_WHESEL_Pos, SR";
  protected final String TEXT_229 = ");" + NL + "    ";
  protected final String TEXT_230 = " ";
  protected final String TEXT_231 = "            ";
  protected final String TEXT_232 = NL + "    //POSIF0 configuration:" + NL + "    ";
  protected final String TEXT_233 = NL + "    WR_REG(POSIF0->PFLGE, POSIF_PFLGE_EHIE_Msk, POSIF_PFLGE_EHIE_Pos, SET_";
  protected final String TEXT_234 = ");" + NL + "    ";
  protected final String TEXT_235 = " ";
  protected final String TEXT_236 = "            ";
  protected final String TEXT_237 = NL + "    //POSIF0 configuration:" + NL + "    ";
  protected final String TEXT_238 = NL + "    WR_REG(POSIF0->PFLGE, POSIF_PFLGE_HIESEL_Msk, POSIF_PFLGE_HIESEL_Pos, SR";
  protected final String TEXT_239 = ");" + NL + "    ";
  protected final String TEXT_240 = " ";
  protected final String TEXT_241 = "            ";
  protected final String TEXT_242 = NL + "    //POSIF0 configuration:" + NL + "    ";
  protected final String TEXT_243 = NL + "    WR_REG(POSIF0->PFLGE, POSIF_PFLGE_EMST_Msk, POSIF_PFLGE_EMST_Pos, SET_";
  protected final String TEXT_244 = ");" + NL + "    ";
  protected final String TEXT_245 = " ";
  protected final String TEXT_246 = "            ";
  protected final String TEXT_247 = NL + "    //POSIF0 configuration:" + NL + "    ";
  protected final String TEXT_248 = NL + "    WR_REG(POSIF0->PFLGE, POSIF_PFLGE_MSTSEL_Msk, POSIF_PFLGE_MSTSEL_Pos, SR";
  protected final String TEXT_249 = ");" + NL + "    ";
  protected final String TEXT_250 = " ";
  protected final String TEXT_251 = "            ";
  protected final String TEXT_252 = NL + "    //POSIF0 configuration:" + NL + "    ";
  protected final String TEXT_253 = NL + "    WR_REG(POSIF0->PFLGE, POSIF_PFLGE_EINDX_Msk, POSIF_PFLGE_EINDX_Pos, SET_";
  protected final String TEXT_254 = ");" + NL + "    ";
  protected final String TEXT_255 = " ";
  protected final String TEXT_256 = "            ";
  protected final String TEXT_257 = NL + "    //POSIF0 configuration:" + NL + "    ";
  protected final String TEXT_258 = NL + "    WR_REG(POSIF0->PFLGE, POSIF_PFLGE_INDSEL_Msk, POSIF_PFLGE_INDSEL_Pos, SR";
  protected final String TEXT_259 = ");" + NL + "    ";
  protected final String TEXT_260 = " ";
  protected final String TEXT_261 = "            ";
  protected final String TEXT_262 = NL + "    //POSIF0 configuration:" + NL + "    ";
  protected final String TEXT_263 = NL + "    WR_REG(POSIF0->PFLGE, POSIF_PFLGE_EERR_Msk, POSIF_PFLGE_EERR_Pos, SET_";
  protected final String TEXT_264 = ");" + NL + "    ";
  protected final String TEXT_265 = " ";
  protected final String TEXT_266 = "            ";
  protected final String TEXT_267 = NL + "    //POSIF0 configuration:" + NL + "    ";
  protected final String TEXT_268 = NL + "    WR_REG(POSIF0->PFLGE, POSIF_PFLGE_ERRSEL_Msk, POSIF_PFLGE_ERRSEL_Pos, SR";
  protected final String TEXT_269 = ");" + NL + "    ";
  protected final String TEXT_270 = " ";
  protected final String TEXT_271 = "            ";
  protected final String TEXT_272 = NL + "    //POSIF0 configuration:" + NL + "    ";
  protected final String TEXT_273 = NL + "    WR_REG(POSIF0->PFLGE, POSIF_PFLGE_ECNT_Msk, POSIF_PFLGE_ECNT_Pos, SET_";
  protected final String TEXT_274 = ");" + NL + "    ";
  protected final String TEXT_275 = " ";
  protected final String TEXT_276 = "            ";
  protected final String TEXT_277 = NL + "    //POSIF0 configuration:" + NL + "    ";
  protected final String TEXT_278 = NL + "    WR_REG(POSIF0->PFLGE, POSIF_PFLGE_CNTSEL_Msk, POSIF_PFLGE_CNTSEL_Pos, SR";
  protected final String TEXT_279 = ");" + NL + "    ";
  protected final String TEXT_280 = " ";
  protected final String TEXT_281 = "            ";
  protected final String TEXT_282 = NL + "    //POSIF0 configuration:" + NL + "    ";
  protected final String TEXT_283 = NL + "    WR_REG(POSIF0->PFLGE, POSIF_PFLGE_EDIR_Msk, POSIF_PFLGE_EDIR_Pos, SET_";
  protected final String TEXT_284 = ");" + NL + "    ";
  protected final String TEXT_285 = " ";
  protected final String TEXT_286 = "            ";
  protected final String TEXT_287 = NL + "    //POSIF0 configuration:" + NL + "    ";
  protected final String TEXT_288 = NL + "    WR_REG(POSIF0->PFLGE, POSIF_PFLGE_DIRSEL_Msk, POSIF_PFLGE_DIRSEL_Pos, SR";
  protected final String TEXT_289 = ");" + NL + "    ";
  protected final String TEXT_290 = " ";
  protected final String TEXT_291 = "            ";
  protected final String TEXT_292 = NL + "    //POSIF0 configuration:" + NL + "    ";
  protected final String TEXT_293 = NL + "    WR_REG(POSIF0->PFLGE, POSIF_PFLGE_EPCLK_Msk, POSIF_PFLGE_EPCLK_Pos, SET_";
  protected final String TEXT_294 = ");" + NL + "    ";
  protected final String TEXT_295 = " ";
  protected final String TEXT_296 = "            ";
  protected final String TEXT_297 = NL + "    //POSIF0 configuration:" + NL + "    ";
  protected final String TEXT_298 = NL + "    WR_REG(POSIF0->PFLGE, POSIF_PFLGE_PCLSEL_Msk, POSIF_PFLGE_PCLSEL_Pos, SR";
  protected final String TEXT_299 = ");" + NL + "    ";
  protected final String TEXT_300 = NL + NL + "/*" + NL + " * POSIF1 peripheral configuration:" + NL + " */         ";
  protected final String TEXT_301 = " ";
  protected final String TEXT_302 = "            ";
  protected final String TEXT_303 = NL + "    //POSIF1 configuration:" + NL + "    ";
  protected final String TEXT_304 = NL + "    WR_REG(POSIF1->PCONF, POSIF_PCONF_INSEL0_Msk, POSIF_PCONF_INSEL0_Pos, INSIGNAL";
  protected final String TEXT_305 = ");" + NL + "    ";
  protected final String TEXT_306 = " ";
  protected final String TEXT_307 = "            ";
  protected final String TEXT_308 = NL + "    //POSIF1 configuration:" + NL + "    ";
  protected final String TEXT_309 = NL + "    WR_REG(POSIF1->PCONF, POSIF_PCONF_INSEL1_Msk, POSIF_PCONF_INSEL1_Pos, INSIGNAL";
  protected final String TEXT_310 = ");" + NL + "    ";
  protected final String TEXT_311 = " ";
  protected final String TEXT_312 = "            ";
  protected final String TEXT_313 = NL + "    //POSIF1 configuration:" + NL + "    ";
  protected final String TEXT_314 = NL + "    WR_REG(POSIF1->PCONF, POSIF_PCONF_INSEL2_Msk, POSIF_PCONF_INSEL2_Pos, INSIGNAL";
  protected final String TEXT_315 = ");" + NL + "    ";
  protected final String TEXT_316 = " ";
  protected final String TEXT_317 = "            ";
  protected final String TEXT_318 = NL + "    //POSIF1 configuration:" + NL + "    ";
  protected final String TEXT_319 = NL + "    WR_REG(POSIF1->PCONF, POSIF_PCONF_DSEL_Msk, POSIF_PCONF_DSEL_Pos, INSIGNAL";
  protected final String TEXT_320 = ");" + NL + "    ";
  protected final String TEXT_321 = " ";
  protected final String TEXT_322 = "            ";
  protected final String TEXT_323 = NL + "    //POSIF1 configuration:" + NL + "    ";
  protected final String TEXT_324 = NL + "    WR_REG(POSIF1->PCONF, POSIF_PCONF_EWIS_Msk, POSIF_PCONF_EWIS_Pos, INSIGNAL";
  protected final String TEXT_325 = ");" + NL + "    ";
  protected final String TEXT_326 = " ";
  protected final String TEXT_327 = "            ";
  protected final String TEXT_328 = NL + "    //POSIF1 configuration:" + NL + "    ";
  protected final String TEXT_329 = NL + "    WR_REG(POSIF1->PCONF, POSIF_PCONF_MSETS_Msk, POSIF_PCONF_MSETS_Pos, INSIGNAL";
  protected final String TEXT_330 = ");" + NL + "    ";
  protected final String TEXT_331 = " ";
  protected final String TEXT_332 = "            ";
  protected final String TEXT_333 = NL + "    //POSIF1 configuration:" + NL + "    ";
  protected final String TEXT_334 = NL + "    WR_REG(POSIF1->PCONF, POSIF_PCONF_MSYNS_Msk, POSIF_PCONF_MSYNS_Pos, INSIGNAL";
  protected final String TEXT_335 = ");" + NL + "    ";
  protected final String TEXT_336 = " ";
  protected final String TEXT_337 = "            ";
  protected final String TEXT_338 = NL + "    //POSIF1 configuration:" + NL + "    ";
  protected final String TEXT_339 = NL + "    WR_REG(POSIF1->PFLGE, POSIF_PFLGE_ECHE_Msk, POSIF_PFLGE_ECHE_Pos, SET_";
  protected final String TEXT_340 = ");" + NL + "    ";
  protected final String TEXT_341 = " ";
  protected final String TEXT_342 = "            ";
  protected final String TEXT_343 = NL + "    //POSIF1 configuration:" + NL + "    ";
  protected final String TEXT_344 = NL + "    WR_REG(POSIF1->PFLGE, POSIF_PFLGE_CHESEL_Msk, POSIF_PFLGE_CHESEL_Pos, SR";
  protected final String TEXT_345 = ");" + NL + "    ";
  protected final String TEXT_346 = " ";
  protected final String TEXT_347 = "            ";
  protected final String TEXT_348 = NL + "    //POSIF1 configuration:" + NL + "    ";
  protected final String TEXT_349 = NL + "    WR_REG(POSIF1->PFLGE, POSIF_PFLGE_EWHE_Msk, POSIF_PFLGE_EWHE_Pos, SET_";
  protected final String TEXT_350 = ");" + NL + "    ";
  protected final String TEXT_351 = " ";
  protected final String TEXT_352 = "            ";
  protected final String TEXT_353 = NL + "    //POSIF1 configuration:" + NL + "    ";
  protected final String TEXT_354 = NL + "    WR_REG(POSIF1->PFLGE, POSIF_PFLGE_WHESEL_Msk, POSIF_PFLGE_WHESEL_Pos, SR";
  protected final String TEXT_355 = ");" + NL + "    ";
  protected final String TEXT_356 = " ";
  protected final String TEXT_357 = "            ";
  protected final String TEXT_358 = NL + "    //POSIF1 configuration:" + NL + "    ";
  protected final String TEXT_359 = NL + "    WR_REG(POSIF1->PFLGE, POSIF_PFLGE_EHIE_Msk, POSIF_PFLGE_EHIE_Pos, SET_";
  protected final String TEXT_360 = ");" + NL + "    ";
  protected final String TEXT_361 = " ";
  protected final String TEXT_362 = "            ";
  protected final String TEXT_363 = NL + "    //POSIF1 configuration:" + NL + "    ";
  protected final String TEXT_364 = NL + "    WR_REG(POSIF1->PFLGE, POSIF_PFLGE_HIESEL_Msk, POSIF_PFLGE_HIESEL_Pos, SR";
  protected final String TEXT_365 = ");" + NL + "    ";
  protected final String TEXT_366 = " ";
  protected final String TEXT_367 = "            ";
  protected final String TEXT_368 = NL + "    //POSIF1 configuration:" + NL + "    ";
  protected final String TEXT_369 = NL + "    WR_REG(POSIF1->PFLGE, POSIF_PFLGE_EMST_Msk, POSIF_PFLGE_EMST_Pos, SET_";
  protected final String TEXT_370 = ");" + NL + "    ";
  protected final String TEXT_371 = " ";
  protected final String TEXT_372 = "            ";
  protected final String TEXT_373 = NL + "    //POSIF1 configuration:" + NL + "    ";
  protected final String TEXT_374 = NL + "    WR_REG(POSIF1->PFLGE, POSIF_PFLGE_MSTSEL_Msk, POSIF_PFLGE_MSTSEL_Pos, SR";
  protected final String TEXT_375 = ");" + NL + "    ";
  protected final String TEXT_376 = " ";
  protected final String TEXT_377 = "            ";
  protected final String TEXT_378 = NL + "    //POSIF1 configuration:" + NL + "    ";
  protected final String TEXT_379 = NL + "    WR_REG(POSIF1->PFLGE, POSIF_PFLGE_EINDX_Msk, POSIF_PFLGE_EINDX_Pos, SET_";
  protected final String TEXT_380 = ");" + NL + "    ";
  protected final String TEXT_381 = " ";
  protected final String TEXT_382 = "            ";
  protected final String TEXT_383 = NL + "    //POSIF1 configuration:" + NL + "    ";
  protected final String TEXT_384 = NL + "    WR_REG(POSIF1->PFLGE, POSIF_PFLGE_INDSEL_Msk, POSIF_PFLGE_INDSEL_Pos, SR";
  protected final String TEXT_385 = ");" + NL + "    ";
  protected final String TEXT_386 = " ";
  protected final String TEXT_387 = "            ";
  protected final String TEXT_388 = NL + "    //POSIF1 configuration:" + NL + "    ";
  protected final String TEXT_389 = NL + "    WR_REG(POSIF1->PFLGE, POSIF_PFLGE_EERR_Msk, POSIF_PFLGE_EERR_Pos, SET_";
  protected final String TEXT_390 = ");" + NL + "    ";
  protected final String TEXT_391 = " ";
  protected final String TEXT_392 = "            ";
  protected final String TEXT_393 = NL + "    //POSIF1 configuration:" + NL + "    ";
  protected final String TEXT_394 = NL + "    WR_REG(POSIF1->PFLGE, POSIF_PFLGE_ERRSEL_Msk, POSIF_PFLGE_ERRSEL_Pos, SR";
  protected final String TEXT_395 = ");" + NL + "    ";
  protected final String TEXT_396 = " ";
  protected final String TEXT_397 = "            ";
  protected final String TEXT_398 = NL + "    //POSIF1 configuration:" + NL + "    ";
  protected final String TEXT_399 = NL + "    WR_REG(POSIF1->PFLGE, POSIF_PFLGE_ECNT_Msk, POSIF_PFLGE_ECNT_Pos, SET_";
  protected final String TEXT_400 = ");" + NL + "    ";
  protected final String TEXT_401 = " ";
  protected final String TEXT_402 = "            ";
  protected final String TEXT_403 = NL + "    //POSIF1 configuration:" + NL + "    ";
  protected final String TEXT_404 = NL + "    WR_REG(POSIF1->PFLGE, POSIF_PFLGE_CNTSEL_Msk, POSIF_PFLGE_CNTSEL_Pos, SR";
  protected final String TEXT_405 = ");" + NL + "    ";
  protected final String TEXT_406 = " ";
  protected final String TEXT_407 = "            ";
  protected final String TEXT_408 = NL + "    //POSIF1 configuration:" + NL + "    ";
  protected final String TEXT_409 = NL + "    WR_REG(POSIF1->PFLGE, POSIF_PFLGE_EDIR_Msk, POSIF_PFLGE_EDIR_Pos, SET_";
  protected final String TEXT_410 = ");" + NL + "    ";
  protected final String TEXT_411 = " ";
  protected final String TEXT_412 = "            ";
  protected final String TEXT_413 = NL + "    //POSIF1 configuration:" + NL + "    ";
  protected final String TEXT_414 = NL + "    WR_REG(POSIF1->PFLGE, POSIF_PFLGE_DIRSEL_Msk, POSIF_PFLGE_DIRSEL_Pos, SR";
  protected final String TEXT_415 = ");" + NL + "    ";
  protected final String TEXT_416 = " ";
  protected final String TEXT_417 = "            ";
  protected final String TEXT_418 = NL + "    //POSIF1 configuration:" + NL + "    ";
  protected final String TEXT_419 = NL + "    WR_REG(POSIF1->PFLGE, POSIF_PFLGE_EPCLK_Msk, POSIF_PFLGE_EPCLK_Pos, SET_";
  protected final String TEXT_420 = ");" + NL + "    ";
  protected final String TEXT_421 = " ";
  protected final String TEXT_422 = "            ";
  protected final String TEXT_423 = NL + "    //POSIF1 configuration:" + NL + "    ";
  protected final String TEXT_424 = NL + "    WR_REG(POSIF1->PFLGE, POSIF_PFLGE_PCLSEL_Msk, POSIF_PFLGE_PCLSEL_Pos, SR";
  protected final String TEXT_425 = ");" + NL + "    ";
  protected final String TEXT_426 = NL;
  protected final String TEXT_427 = "   \t ";
  protected final String TEXT_428 = NL + " /*        HRPWM Macro definitions     */";
  protected final String TEXT_429 = NL + "       ";
  protected final String TEXT_430 = "                 ";
  protected final String TEXT_431 = NL + "   /* configure of HRPWM";
  protected final String TEXT_432 = "_CSG";
  protected final String TEXT_433 = " External blanking trigger selector */" + NL + "    WR_REG(HRPWM";
  protected final String TEXT_434 = "_CSG";
  protected final String TEXT_435 = "->CC, HRPWM";
  protected final String TEXT_436 = "_CSG";
  protected final String TEXT_437 = "_CC_IBS_Msk, HRPWM";
  protected final String TEXT_438 = "_CSG";
  protected final String TEXT_439 = "_CC_IBS_Pos, ";
  protected final String TEXT_440 = "); \t" + NL + "    \t\t\t  ";
  protected final String TEXT_441 = NL + "   /* configure of HRPWM";
  protected final String TEXT_442 = "_CSG";
  protected final String TEXT_443 = " Clamping control signal selector */" + NL + "    WR_REG(HRPWM";
  protected final String TEXT_444 = "_CSG";
  protected final String TEXT_445 = "->PLC, HRPWM";
  protected final String TEXT_446 = "_CSG";
  protected final String TEXT_447 = "_PLC_IPLS_Msk, HRPWM";
  protected final String TEXT_448 = "_CSG";
  protected final String TEXT_449 = "_PLC_IPLS_Pos, ";
  protected final String TEXT_450 = ");" + NL + "    ";
  protected final String TEXT_451 = "\t\t\t     " + NL + "   /* configure of HRPWM";
  protected final String TEXT_452 = "_CSG";
  protected final String TEXT_453 = " Value Selector input selection */" + NL + "    WR_REG(HRPWM";
  protected final String TEXT_454 = "_CSG";
  protected final String TEXT_455 = "->DCI, HRPWM";
  protected final String TEXT_456 = "_CSG";
  protected final String TEXT_457 = "_DCI_SVIS_Msk, HRPWM";
  protected final String TEXT_458 = "_CSG";
  protected final String TEXT_459 = "_DCI_SVIS_Pos, ";
  protected final String TEXT_460 = ");" + NL + "    ";
  protected final String TEXT_461 = NL + "   /* configure of HRPWM";
  protected final String TEXT_462 = "_CSG";
  protected final String TEXT_463 = " Slope generation start control input selection */" + NL + "    WR_REG(HRPWM";
  protected final String TEXT_464 = "_CSG";
  protected final String TEXT_465 = "->DCI, HRPWM";
  protected final String TEXT_466 = "_CSG";
  protected final String TEXT_467 = "_DCI_STRIS_Msk, HRPWM";
  protected final String TEXT_468 = "_CSG";
  protected final String TEXT_469 = "_DCI_STRIS_Pos, ";
  protected final String TEXT_470 = ");" + NL + "    ";
  protected final String TEXT_471 = NL + "   /* configure of HRPWM";
  protected final String TEXT_472 = "_CSG";
  protected final String TEXT_473 = " Slope generation stop control input selection */" + NL + "    WR_REG(HRPWM";
  protected final String TEXT_474 = "_CSG";
  protected final String TEXT_475 = "->DCI, HRPWM";
  protected final String TEXT_476 = "_CSG";
  protected final String TEXT_477 = "_DCI_STPIS_Msk, HRPWM";
  protected final String TEXT_478 = "_CSG";
  protected final String TEXT_479 = "_DCI_STPIS_Pos, ";
  protected final String TEXT_480 = ");" + NL + "    ";
  protected final String TEXT_481 = NL + "   /* configure of HRPWM";
  protected final String TEXT_482 = "_CSG";
  protected final String TEXT_483 = " External conversion trigger input selection */" + NL + "    WR_REG(HRPWM";
  protected final String TEXT_484 = "_CSG";
  protected final String TEXT_485 = "->DCI, HRPWM";
  protected final String TEXT_486 = "_CSG";
  protected final String TEXT_487 = "_DCI_TRGIS_Msk, HRPWM";
  protected final String TEXT_488 = "_CSG";
  protected final String TEXT_489 = "_DCI_TRGIS_Pos, ";
  protected final String TEXT_490 = ");" + NL + "    ";
  protected final String TEXT_491 = NL + "   /* configure of HRPWM";
  protected final String TEXT_492 = "_CSG";
  protected final String TEXT_493 = " External shadow request enable input selection */" + NL + "    WR_REG(HRPWM";
  protected final String TEXT_494 = "_CSG";
  protected final String TEXT_495 = "->DCI, HRPWM";
  protected final String TEXT_496 = "_CSG";
  protected final String TEXT_497 = "_DCI_STIS_Msk, HRPWM";
  protected final String TEXT_498 = "_CSG";
  protected final String TEXT_499 = "_DCI_STIS_Pos, ";
  protected final String TEXT_500 = ");" + NL + "    ";
  protected final String TEXT_501 = NL + "   /* configure of HRPWM";
  protected final String TEXT_502 = "_CSG";
  protected final String TEXT_503 = " Slope generation clock selection */" + NL + "    WR_REG(HRPWM";
  protected final String TEXT_504 = "_CSG";
  protected final String TEXT_505 = "->DCI, HRPWM";
  protected final String TEXT_506 = "_CSG";
  protected final String TEXT_507 = "_DCI_SCS_Msk, HRPWM";
  protected final String TEXT_508 = "_CSG";
  protected final String TEXT_509 = "_DCI_SCS_Pos, ";
  protected final String TEXT_510 = ");" + NL + "    ";
  protected final String TEXT_511 = NL + "   /* configure of HRPWM";
  protected final String TEXT_512 = "_CSG";
  protected final String TEXT_513 = " Value switch from CSGyDSV1 to CSGyDSV2 interrupt line selection */" + NL + "    WR_REG(HRPWM";
  protected final String TEXT_514 = "_CSG";
  protected final String TEXT_515 = "->SRS, HRPWM";
  protected final String TEXT_516 = "_CSG";
  protected final String TEXT_517 = "_SRS_VLS1S_Msk, HRPWM";
  protected final String TEXT_518 = "_CSG";
  protected final String TEXT_519 = "_SRS_VLS1S_Pos, ";
  protected final String TEXT_520 = ");" + NL + "    ";
  protected final String TEXT_521 = NL + "    /* configure of HRPWM";
  protected final String TEXT_522 = "_CSG";
  protected final String TEXT_523 = " Value switch from CSGyDSV2 to CSGyDSV1 interrupt line selection */" + NL + "    WR_REG(HRPWM";
  protected final String TEXT_524 = "_CSG";
  protected final String TEXT_525 = "->SRS, HRPWM";
  protected final String TEXT_526 = "_CSG";
  protected final String TEXT_527 = "_SRS_VLS2S_Msk, HRPWM";
  protected final String TEXT_528 = "_CSG";
  protected final String TEXT_529 = "_SRS_VLS2S_Pos, ";
  protected final String TEXT_530 = ");" + NL + "    ";
  protected final String TEXT_531 = NL + "   /* configure of HRPWM";
  protected final String TEXT_532 = "_CSG";
  protected final String TEXT_533 = " Conversion trigger interrupt line selection */" + NL + "    WR_REG(HRPWM";
  protected final String TEXT_534 = "_CSG";
  protected final String TEXT_535 = "->SRS, HRPWM";
  protected final String TEXT_536 = "_CSG";
  protected final String TEXT_537 = "_SRS_TRLS_Msk, HRPWM";
  protected final String TEXT_538 = "_CSG";
  protected final String TEXT_539 = "_SRS_TRLS_Pos, ";
  protected final String TEXT_540 = ");" + NL + "    ";
  protected final String TEXT_541 = NL + "   /* configure of HRPWM";
  protected final String TEXT_542 = "_CSG";
  protected final String TEXT_543 = " Start/Stop trigger interrupt line selection */" + NL + "    WR_REG(HRPWM";
  protected final String TEXT_544 = "_CSG";
  protected final String TEXT_545 = "->SRS, HRPWM";
  protected final String TEXT_546 = "_CSG";
  protected final String TEXT_547 = "_SRS_SSLS_Msk, HRPWM";
  protected final String TEXT_548 = "_CSG";
  protected final String TEXT_549 = "_SRS_SSLS_Pos, ";
  protected final String TEXT_550 = ");" + NL + "    ";
  protected final String TEXT_551 = NL + "    /* configure of HRPWM";
  protected final String TEXT_552 = "_CSG";
  protected final String TEXT_553 = " Shadow transfer done interrupt line selection */" + NL + "    WR_REG(HRPWM";
  protected final String TEXT_554 = "_CSG";
  protected final String TEXT_555 = "->SRS, HRPWM";
  protected final String TEXT_556 = "_CSG";
  protected final String TEXT_557 = "_SRS_STLS_Msk, HRPWM";
  protected final String TEXT_558 = "_CSG";
  protected final String TEXT_559 = "_SRS_STLS_Pos, ";
  protected final String TEXT_560 = ");" + NL + "    ";
  protected final String TEXT_561 = NL + "   /* configure of HRPWM";
  protected final String TEXT_562 = "_CSG";
  protected final String TEXT_563 = " Comparator rise/fall interrupt line selection */" + NL + "    WR_REG(HRPWM";
  protected final String TEXT_564 = "_CSG";
  protected final String TEXT_565 = "->SRS, HRPWM";
  protected final String TEXT_566 = "_CSG";
  protected final String TEXT_567 = "_SRS_CRFLS_Msk, HRPWM";
  protected final String TEXT_568 = "_CSG";
  protected final String TEXT_569 = "_SRS_CRFLS_Pos, ";
  protected final String TEXT_570 = ");" + NL + "    ";
  protected final String TEXT_571 = NL + "   /* configure of HRPWM";
  protected final String TEXT_572 = "_CSG";
  protected final String TEXT_573 = " Comparator clamped state interrupt line selection */" + NL + "    WR_REG(HRPWM";
  protected final String TEXT_574 = "_CSG";
  protected final String TEXT_575 = "->SRS, HRPWM";
  protected final String TEXT_576 = "_CSG";
  protected final String TEXT_577 = "_SRS_CSLS_Msk, HRPWM";
  protected final String TEXT_578 = "_CSG";
  protected final String TEXT_579 = "_SRS_CSLS_Pos, ";
  protected final String TEXT_580 = ");" + NL + "    ";
  protected final String TEXT_581 = "  ";
  protected final String TEXT_582 = "                   ";
  protected final String TEXT_583 = NL + "   /* configure of HRPWM";
  protected final String TEXT_584 = "_HRC";
  protected final String TEXT_585 = " Source selector 0 comparator set configuration */" + NL + "    WR_REG(HRPWM";
  protected final String TEXT_586 = "_HRC";
  protected final String TEXT_587 = "->GSEL, HRPWM";
  protected final String TEXT_588 = "_HRC";
  protected final String TEXT_589 = "_GSEL_C0SS_Msk, HRPWM";
  protected final String TEXT_590 = "_HRC";
  protected final String TEXT_591 = "_GSEL_C0SS_Pos, ";
  protected final String TEXT_592 = "); \t\t" + NL + "     \t\t  ";
  protected final String TEXT_593 = NL + "   /* configure of HRPWM";
  protected final String TEXT_594 = "_HRC";
  protected final String TEXT_595 = " Source selector 0 set configuration */" + NL + "    WR_REG(HRPWM";
  protected final String TEXT_596 = "_HRC";
  protected final String TEXT_597 = "->GSEL, HRPWM";
  protected final String TEXT_598 = "_HRC";
  protected final String TEXT_599 = "_GSEL_S0M_Msk, HRPWM";
  protected final String TEXT_600 = "_HRC";
  protected final String TEXT_601 = "_GSEL_S0M_Pos, ";
  protected final String TEXT_602 = ");" + NL + "    ";
  protected final String TEXT_603 = "\t\t\t     " + NL + "   /* configure of HRPWM";
  protected final String TEXT_604 = "_HRC";
  protected final String TEXT_605 = " Source Selector 0 Timer connection */" + NL + "    WR_REG(HRPWM";
  protected final String TEXT_606 = "_HRC";
  protected final String TEXT_607 = "->TSEL, HRPWM";
  protected final String TEXT_608 = "_HRC";
  protected final String TEXT_609 = "_TSEL_TSEL0_Msk, HRPWM";
  protected final String TEXT_610 = "_HRC";
  protected final String TEXT_611 = "_TSEL_TSEL0_Pos, ";
  protected final String TEXT_612 = ");" + NL + "    ";
  protected final String TEXT_613 = NL + "   /* configure of HRPWM";
  protected final String TEXT_614 = "_HRC";
  protected final String TEXT_615 = " Source selector 0 clear configuration */" + NL + "    WR_REG(HRPWM";
  protected final String TEXT_616 = "_HRC";
  protected final String TEXT_617 = "->GSEL, HRPWM";
  protected final String TEXT_618 = "_HRC";
  protected final String TEXT_619 = "_GSEL_C0M_Msk, HRPWM";
  protected final String TEXT_620 = "_HRC";
  protected final String TEXT_621 = "_GSEL_C0M_Pos, ";
  protected final String TEXT_622 = ");" + NL + "    ";
  protected final String TEXT_623 = NL + "   /* configure of HRPWM";
  protected final String TEXT_624 = "_HRC";
  protected final String TEXT_625 = " Source selector 0 comparator clear configuration */" + NL + "    WR_REG(HRPWM";
  protected final String TEXT_626 = "_HRC";
  protected final String TEXT_627 = "->GSEL, HRPWM";
  protected final String TEXT_628 = "_HRC";
  protected final String TEXT_629 = "_GSEL_C0CS_Msk, HRPWM";
  protected final String TEXT_630 = "_HRC";
  protected final String TEXT_631 = "_GSEL_C0CS_Pos, ";
  protected final String TEXT_632 = ");" + NL + "    ";
  protected final String TEXT_633 = "    ";
  protected final String TEXT_634 = NL + "   /* configure of HRPWM";
  protected final String TEXT_635 = "_HRC";
  protected final String TEXT_636 = " Source selector 1 comparator set configuration */" + NL + "    WR_REG(HRPWM";
  protected final String TEXT_637 = "_HRC";
  protected final String TEXT_638 = "->GSEL, HRPWM";
  protected final String TEXT_639 = "_HRC";
  protected final String TEXT_640 = "_GSEL_C1SS_Msk, HRPWM";
  protected final String TEXT_641 = "_HRC";
  protected final String TEXT_642 = "_GSEL_C1SS_Pos, ";
  protected final String TEXT_643 = "); \t" + NL + "    \t\t\t  ";
  protected final String TEXT_644 = NL + "   /* configure of HRPWM";
  protected final String TEXT_645 = "_HRC";
  protected final String TEXT_646 = " Source selector 1 set configuration */" + NL + "    WR_REG(HRPWM";
  protected final String TEXT_647 = "_HRC";
  protected final String TEXT_648 = "->GSEL, HRPWM";
  protected final String TEXT_649 = "_HRC";
  protected final String TEXT_650 = "_GSEL_S1M_Msk, HRPWM";
  protected final String TEXT_651 = "_HRC";
  protected final String TEXT_652 = "_GSEL_S1M_Pos, ";
  protected final String TEXT_653 = ");" + NL + "    ";
  protected final String TEXT_654 = "\t\t\t     " + NL + "   /* configure of HRPWM";
  protected final String TEXT_655 = "_HRC";
  protected final String TEXT_656 = " Source Selector 1 Timer connection */" + NL + "    WR_REG(HRPWM";
  protected final String TEXT_657 = "_HRC";
  protected final String TEXT_658 = "->TSEL, HRPWM";
  protected final String TEXT_659 = "_HRC";
  protected final String TEXT_660 = "_TSEL_TSEL1_Msk, HRPWM";
  protected final String TEXT_661 = "_HRC";
  protected final String TEXT_662 = "_TSEL_TSEL1_Pos, ";
  protected final String TEXT_663 = ");" + NL + "    ";
  protected final String TEXT_664 = NL + "   /* configure of HRPWM";
  protected final String TEXT_665 = "_HRC";
  protected final String TEXT_666 = " Source selector 1 clear configuration */" + NL + "    WR_REG(HRPWM";
  protected final String TEXT_667 = "_HRC";
  protected final String TEXT_668 = "->GSEL, HRPWM";
  protected final String TEXT_669 = "_HRC";
  protected final String TEXT_670 = "_GSEL_C1M_Msk, HRPWM";
  protected final String TEXT_671 = "_HRC";
  protected final String TEXT_672 = "_GSEL_C1M_Pos, ";
  protected final String TEXT_673 = ");" + NL + "    ";
  protected final String TEXT_674 = NL + "   /* configure of HRPWM";
  protected final String TEXT_675 = "_HRC";
  protected final String TEXT_676 = " Source selector 1 comparator clear configuration */" + NL + "    WR_REG(HRPWM";
  protected final String TEXT_677 = "_HRC";
  protected final String TEXT_678 = "->GSEL, HRPWM";
  protected final String TEXT_679 = "_HRC";
  protected final String TEXT_680 = "_GSEL_C1CS_Msk, HRPWM";
  protected final String TEXT_681 = "_HRC";
  protected final String TEXT_682 = "_GSEL_C1CS_Pos, ";
  protected final String TEXT_683 = ");" + NL + "    ";
  protected final String TEXT_684 = " ";
  protected final String TEXT_685 = NL;
  protected final String TEXT_686 = "    ";
  protected final String TEXT_687 = "  " + NL + "//********* MODULE USIC CONFIGURATIONS *************************\t        ";
  protected final String TEXT_688 = NL + "   ";
  protected final String TEXT_689 = "     " + NL + "           " + NL + "   /* Disable mode before configuring all USIC registers to avoid unintended edges */   " + NL + "      /* Variable to store the CCR_MODE values for various USIC channels */";
  protected final String TEXT_690 = " " + NL + "      uint32_t UsicCcrMode[6] = {0};" + NL + "      ";
  protected final String TEXT_691 = " ";
  protected final String TEXT_692 = "    " + NL + "    UsicCcrMode[0] |= (uint32_t) RD_REG(USIC0_CH0->CCR, USIC_CH_CCR_MODE_Msk, USIC_CH_CCR_MODE_Pos);" + NL + "    WR_REG(USIC0_CH0->CCR, USIC_CH_CCR_MODE_Msk, USIC_CH_CCR_MODE_Pos,0);  " + NL + "               ";
  protected final String TEXT_693 = "     ";
  protected final String TEXT_694 = "    " + NL + "    UsicCcrMode[1] |= (uint32_t) RD_REG(USIC0_CH1->CCR, USIC_CH_CCR_MODE_Msk, USIC_CH_CCR_MODE_Pos); " + NL + "    WR_REG(USIC0_CH1->CCR, USIC_CH_CCR_MODE_Msk, USIC_CH_CCR_MODE_Pos,0);   " + NL + "             ";
  protected final String TEXT_695 = " ";
  protected final String TEXT_696 = "    " + NL + "    UsicCcrMode[2] |= (uint32_t) RD_REG(USIC1_CH0->CCR, USIC_CH_CCR_MODE_Msk, USIC_CH_CCR_MODE_Pos);   " + NL + "    WR_REG(USIC1_CH0->CCR, USIC_CH_CCR_MODE_Msk, USIC_CH_CCR_MODE_Pos,0);" + NL + "               ";
  protected final String TEXT_697 = " ";
  protected final String TEXT_698 = "    " + NL + "    UsicCcrMode[3] |= (uint32_t) RD_REG(USIC1_CH1->CCR, USIC_CH_CCR_MODE_Msk, USIC_CH_CCR_MODE_Pos); " + NL + "    WR_REG(USIC1_CH1->CCR, USIC_CH_CCR_MODE_Msk, USIC_CH_CCR_MODE_Pos,0);" + NL + "       ";
  protected final String TEXT_699 = "    " + NL + "    UsicCcrMode[4] |= (uint32_t) RD_REG(USIC2_CH0->CCR, USIC_CH_CCR_MODE_Msk, USIC_CH_CCR_MODE_Pos);  " + NL + "    WR_REG(USIC2_CH0->CCR, USIC_CH_CCR_MODE_Msk, USIC_CH_CCR_MODE_Pos,0);" + NL + "    ";
  protected final String TEXT_700 = "    " + NL + "    UsicCcrMode[5] |= (uint32_t) RD_REG(USIC2_CH1->CCR, USIC_CH_CCR_MODE_Msk, USIC_CH_CCR_MODE_Pos);  " + NL + "    WR_REG(USIC2_CH1->CCR, USIC_CH_CCR_MODE_Msk, USIC_CH_CCR_MODE_Pos,0); " + NL + "              ";
  protected final String TEXT_701 = "  " + NL + "      " + NL + "   ";
  protected final String TEXT_702 = " \t\t\t\t\t\t" + NL + "   /*USIC ";
  protected final String TEXT_703 = " Channel ";
  protected final String TEXT_704 = " Mux Related SFR/Bitfields Configurations*/ \t\t\t\t\t\t";
  protected final String TEXT_705 = "         " + NL + " WR_REG(USIC";
  protected final String TEXT_706 = "_CH";
  protected final String TEXT_707 = "->DX0CR, USIC_CH_DX0CR_DSEL_Msk, USIC_CH_DX0CR_DSEL_Pos,";
  protected final String TEXT_708 = "); " + NL + "  ";
  protected final String TEXT_709 = "\t\t\t ";
  protected final String TEXT_710 = "                 " + NL + " WR_REG(USIC";
  protected final String TEXT_711 = "_CH";
  protected final String TEXT_712 = "->DX1CR, USIC_CH_DX1CR_DSEL_Msk, USIC_CH_DX1CR_DSEL_Pos,";
  protected final String TEXT_713 = ");  " + NL + " ";
  protected final String TEXT_714 = " \t\t\t\t\t ";
  protected final String TEXT_715 = "   " + NL + " WR_REG(USIC";
  protected final String TEXT_716 = "_CH";
  protected final String TEXT_717 = "->DX2CR, USIC_CH_DX2CR_DSEL_Msk, USIC_CH_DX2CR_DSEL_Pos,";
  protected final String TEXT_718 = ");  " + NL + " ";
  protected final String TEXT_719 = "\t\t\t\t";
  protected final String TEXT_720 = "   " + NL + " WR_REG(USIC";
  protected final String TEXT_721 = "_CH";
  protected final String TEXT_722 = "->DX3CR, USIC_CH_DX3CR_DSEL_Msk, USIC_CH_DX3CR_DSEL_Pos,";
  protected final String TEXT_723 = ");" + NL + "   ";
  protected final String TEXT_724 = " \t\t\t\t";
  protected final String TEXT_725 = "   " + NL + " WR_REG(USIC";
  protected final String TEXT_726 = "_CH";
  protected final String TEXT_727 = "->DX4CR, USIC_CH_DX4CR_DSEL_Msk, USIC_CH_DX4CR_DSEL_Pos,";
  protected final String TEXT_728 = "); " + NL + "  ";
  protected final String TEXT_729 = " \t\t      ";
  protected final String TEXT_730 = "   " + NL + " WR_REG(USIC";
  protected final String TEXT_731 = "_CH";
  protected final String TEXT_732 = "->DX5CR, USIC_CH_DX5CR_DSEL_Msk, USIC_CH_DX5CR_DSEL_Pos,";
  protected final String TEXT_733 = ");  " + NL + " ";
  protected final String TEXT_734 = " \t\t\t\t             ";
  protected final String TEXT_735 = "   " + NL + " //Hardware port control is enabled.                 " + NL + " WR_REG(USIC";
  protected final String TEXT_736 = "_CH";
  protected final String TEXT_737 = "->CCR, USIC_CH_CCR_HPCEN_Msk, USIC_CH_CCR_HPCEN_Pos,";
  protected final String TEXT_738 = ");" + NL + "   ";
  protected final String TEXT_739 = " \t\t\t\t ";
  protected final String TEXT_740 = "   " + NL + " //Transmit shift event event is enabled.                " + NL + " WR_REG(USIC";
  protected final String TEXT_741 = "_CH";
  protected final String TEXT_742 = "->CCR, USIC_CH_CCR_TSIEN_Msk, USIC_CH_CCR_TSIEN_Pos,";
  protected final String TEXT_743 = ");  " + NL + " ";
  protected final String TEXT_744 = " \t\t\t\t\t   ";
  protected final String TEXT_745 = "   " + NL + " //Transmit buffer event event is enabled.                       " + NL + " WR_REG(USIC";
  protected final String TEXT_746 = "_CH";
  protected final String TEXT_747 = "->CCR, USIC_CH_CCR_TBIEN_Msk, USIC_CH_CCR_TBIEN_Pos,";
  protected final String TEXT_748 = ");  " + NL + " ";
  protected final String TEXT_749 = " \t\t\t\t\t";
  protected final String TEXT_750 = "   " + NL + " //Receive start event event is enabled.                    " + NL + " WR_REG(USIC";
  protected final String TEXT_751 = "_CH";
  protected final String TEXT_752 = "->CCR, USIC_CH_CCR_RSIEN_Msk, USIC_CH_CCR_RSIEN_Pos,";
  protected final String TEXT_753 = "); " + NL + "  ";
  protected final String TEXT_754 = " \t\t\t\t\t   ";
  protected final String TEXT_755 = "   " + NL + " //Receive event event is enabled.                " + NL + " WR_REG(USIC";
  protected final String TEXT_756 = "_CH";
  protected final String TEXT_757 = "->CCR, USIC_CH_CCR_RIEN_Msk, USIC_CH_CCR_RIEN_Pos,";
  protected final String TEXT_758 = "); " + NL + "  ";
  protected final String TEXT_759 = "\t\t\t\t ";
  protected final String TEXT_760 = "   " + NL + " //Alternative receive event event is enabled.              " + NL + " WR_REG(USIC";
  protected final String TEXT_761 = "_CH";
  protected final String TEXT_762 = "->CCR, USIC_CH_CCR_AIEN_Msk, USIC_CH_CCR_AIEN_Pos,";
  protected final String TEXT_763 = ");  " + NL + " ";
  protected final String TEXT_764 = " \t\t\t\t\t";
  protected final String TEXT_765 = "   " + NL + " //Data lost event event is enabled.                 " + NL + " WR_REG(USIC";
  protected final String TEXT_766 = "_CH";
  protected final String TEXT_767 = "->CCR, USIC_CH_CCR_DLIEN_Msk, USIC_CH_CCR_DLIEN_Pos,";
  protected final String TEXT_768 = "); " + NL + "  ";
  protected final String TEXT_769 = " \t\t\t\t ";
  protected final String TEXT_770 = "   " + NL + " //Baud rate generator event is enabled.                " + NL + " WR_REG(USIC";
  protected final String TEXT_771 = "_CH";
  protected final String TEXT_772 = "->CCR, USIC_CH_CCR_BRGIEN_Msk, USIC_CH_CCR_BRGIEN_Pos,";
  protected final String TEXT_773 = ");  " + NL + " ";
  protected final String TEXT_774 = "\t\t\t\t      ";
  protected final String TEXT_775 = "   " + NL + " //Standard transmit buffer event is enabled.                 " + NL + " WR_REG(USIC";
  protected final String TEXT_776 = "_CH";
  protected final String TEXT_777 = "->TBCTR, USIC_CH_TBCTR_STBIEN_Msk, USIC_CH_TBCTR_STBIEN_Pos,";
  protected final String TEXT_778 = ");" + NL + "   ";
  protected final String TEXT_779 = " \t\t\t\t ";
  protected final String TEXT_780 = "   " + NL + " //Transmit buffer error event is enabled.                   " + NL + " WR_REG(USIC";
  protected final String TEXT_781 = "_CH";
  protected final String TEXT_782 = "->TBCTR, USIC_CH_TBCTR_TBERIEN_Msk, USIC_CH_TBCTR_TBERIEN_Pos,";
  protected final String TEXT_783 = ");  " + NL + " ";
  protected final String TEXT_784 = " \t\t\t\t\t";
  protected final String TEXT_785 = "    " + NL + " //Standard receive buffer event is enabled.                 " + NL + " WR_REG(USIC";
  protected final String TEXT_786 = "_CH";
  protected final String TEXT_787 = "->RBCTR, USIC_CH_RBCTR_SRBIEN_Msk, USIC_CH_RBCTR_SRBIEN_Pos,";
  protected final String TEXT_788 = ");  " + NL + " ";
  protected final String TEXT_789 = "\t\t\t\t\t ";
  protected final String TEXT_790 = "   " + NL + " //Receive buffer error event is enabled.                 " + NL + " WR_REG(USIC";
  protected final String TEXT_791 = "_CH";
  protected final String TEXT_792 = "->RBCTR, USIC_CH_RBCTR_RBERIEN_Msk, USIC_CH_RBCTR_RBERIEN_Pos,";
  protected final String TEXT_793 = "); " + NL + "  ";
  protected final String TEXT_794 = "\t\t\t\t";
  protected final String TEXT_795 = "   " + NL + " //Alternative receive buffer event is enabled.           " + NL + " WR_REG(USIC";
  protected final String TEXT_796 = "_CH";
  protected final String TEXT_797 = "->RBCTR, USIC_CH_RBCTR_ARBIEN_Msk, USIC_CH_RBCTR_ARBIEN_Pos,";
  protected final String TEXT_798 = "); " + NL + "  ";
  protected final String TEXT_799 = "\t\t\t\t\t";
  protected final String TEXT_800 = "   " + NL + " //Interrupt node ";
  protected final String TEXT_801 = " is selected for Transmit shift event                " + NL + " WR_REG(USIC";
  protected final String TEXT_802 = "_CH";
  protected final String TEXT_803 = "->INPR, USIC_CH_INPR_TSINP_Msk, USIC_CH_INPR_TSINP_Pos,";
  protected final String TEXT_804 = ");  " + NL + " ";
  protected final String TEXT_805 = " \t\t\t\t\t ";
  protected final String TEXT_806 = "   " + NL + " //Interrupt node ";
  protected final String TEXT_807 = " is selected for Transmit buffer event                 " + NL + " WR_REG(USIC";
  protected final String TEXT_808 = "_CH";
  protected final String TEXT_809 = "->INPR, USIC_CH_INPR_TBINP_Msk, USIC_CH_INPR_TBINP_Pos,";
  protected final String TEXT_810 = ");  " + NL + " ";
  protected final String TEXT_811 = "\t\t\t\t\t ";
  protected final String TEXT_812 = "   " + NL + " //Interrupt node ";
  protected final String TEXT_813 = " is selected for Receive event               " + NL + " WR_REG(USIC";
  protected final String TEXT_814 = "_CH";
  protected final String TEXT_815 = "->INPR, USIC_CH_INPR_RINP_Msk, USIC_CH_INPR_RINP_Pos,";
  protected final String TEXT_816 = ");  " + NL + " ";
  protected final String TEXT_817 = " \t\t\t\t";
  protected final String TEXT_818 = "   " + NL + " //Interrupt node ";
  protected final String TEXT_819 = " is selected for Alternative receive event              " + NL + " WR_REG(USIC";
  protected final String TEXT_820 = "_CH";
  protected final String TEXT_821 = "->INPR, USIC_CH_INPR_AINP_Msk, USIC_CH_INPR_AINP_Pos,";
  protected final String TEXT_822 = ");  " + NL + " ";
  protected final String TEXT_823 = "\t\t\t\t\t      ";
  protected final String TEXT_824 = "   " + NL + " //Interrupt node ";
  protected final String TEXT_825 = " is selected for Protocol specific event             " + NL + " WR_REG(USIC";
  protected final String TEXT_826 = "_CH";
  protected final String TEXT_827 = "->INPR, USIC_CH_INPR_PINP_Msk, USIC_CH_INPR_PINP_Pos,";
  protected final String TEXT_828 = ");  " + NL + " ";
  protected final String TEXT_829 = "\t\t\t\t\t             ";
  protected final String TEXT_830 = "   " + NL + " //Interrupt node ";
  protected final String TEXT_831 = " is selected for Standard transmit buffer event                " + NL + " WR_REG(USIC";
  protected final String TEXT_832 = "_CH";
  protected final String TEXT_833 = "->TBCTR, USIC_CH_TBCTR_STBINP_Msk, USIC_CH_TBCTR_STBINP_Pos,";
  protected final String TEXT_834 = ");" + NL + "   ";
  protected final String TEXT_835 = " \t\t\t\t\t";
  protected final String TEXT_836 = "   " + NL + " //Interrupt node ";
  protected final String TEXT_837 = " is selected for Alternative transmit buffer event                " + NL + " WR_REG(USIC";
  protected final String TEXT_838 = "_CH";
  protected final String TEXT_839 = "->TBCTR, USIC_CH_TBCTR_ATBINP_Msk, USIC_CH_TBCTR_ATBINP_Pos,";
  protected final String TEXT_840 = "); " + NL + "  ";
  protected final String TEXT_841 = "  \t\t\t\t\t\t    ";
  protected final String TEXT_842 = "   " + NL + " //Interrupt node ";
  protected final String TEXT_843 = " is selected for Standard receive buffer event                 " + NL + " WR_REG(USIC";
  protected final String TEXT_844 = "_CH";
  protected final String TEXT_845 = "->RBCTR, USIC_CH_RBCTR_SRBINP_Msk, USIC_CH_RBCTR_SRBINP_Pos,";
  protected final String TEXT_846 = ");  " + NL + " ";
  protected final String TEXT_847 = "\t\t\t\t\t     ";
  protected final String TEXT_848 = "   " + NL + " //Interrupt node ";
  protected final String TEXT_849 = " is selected for Alternative receive buffer event            " + NL + " WR_REG(USIC";
  protected final String TEXT_850 = "_CH";
  protected final String TEXT_851 = "->RBCTR, USIC_CH_RBCTR_ARBINP_Msk, USIC_CH_RBCTR_ARBINP_Pos,";
  protected final String TEXT_852 = ");  " + NL + " ";
  protected final String TEXT_853 = " " + NL;
  protected final String TEXT_854 = " ";
  protected final String TEXT_855 = "    ";
  protected final String TEXT_856 = "   ";
  protected final String TEXT_857 = " ";
  protected final String TEXT_858 = "    ";
  protected final String TEXT_859 = " ";
  protected final String TEXT_860 = "  ";
  protected final String TEXT_861 = " " + NL + "   // Data Pointer & Buffer Size for Transmitter Buffer Control  " + NL + " WR_REG(USIC";
  protected final String TEXT_862 = "_CH";
  protected final String TEXT_863 = "->TBCTR, USIC_CH_TBCTR_DPTRSIZE_Msk, USIC_CH_TBCTR_DPTRSIZE_Pos,0x0";
  protected final String TEXT_864 = ");\t\t/*    DPTR = ";
  protected final String TEXT_865 = ",  SIZE = ";
  protected final String TEXT_866 = " */ " + NL;
  protected final String TEXT_867 = " ";
  protected final String TEXT_868 = " ";
  protected final String TEXT_869 = " ";
  protected final String TEXT_870 = " ";
  protected final String TEXT_871 = "  ";
  protected final String TEXT_872 = " ";
  protected final String TEXT_873 = " ";
  protected final String TEXT_874 = "  ";
  protected final String TEXT_875 = " " + NL + "  // Data Pointer & Buffer Size for Receiver Buffer Control  " + NL + " WR_REG(USIC";
  protected final String TEXT_876 = "_CH";
  protected final String TEXT_877 = "->RBCTR, USIC_CH_RBCTR_DPTRSIZE_Msk, USIC_CH_RBCTR_DPTRSIZE_Pos,0x0";
  protected final String TEXT_878 = ");\t\t/*    DPTR = ";
  protected final String TEXT_879 = ",  SIZE = ";
  protected final String TEXT_880 = " */ " + NL;
  protected final String TEXT_881 = "  ";
  protected final String TEXT_882 = " " + NL + "  " + NL + "  /* Enable mode after configuring all USIC registers to avoid unintended edges */  " + NL + "       ";
  protected final String TEXT_883 = "     " + NL + "   WR_REG(USIC0_CH0->CCR, USIC_CH_CCR_MODE_Msk, USIC_CH_CCR_MODE_Pos,UsicCcrMode[0]); " + NL + "   ";
  protected final String TEXT_884 = "     ";
  protected final String TEXT_885 = " " + NL + "   WR_REG(USIC0_CH1->CCR, USIC_CH_CCR_MODE_Msk, USIC_CH_CCR_MODE_Pos,UsicCcrMode[1]);   " + NL + "            ";
  protected final String TEXT_886 = " ";
  protected final String TEXT_887 = " " + NL + "   WR_REG(USIC1_CH0->CCR, USIC_CH_CCR_MODE_Msk, USIC_CH_CCR_MODE_Pos,UsicCcrMode[2]);" + NL + "              ";
  protected final String TEXT_888 = " ";
  protected final String TEXT_889 = "   " + NL + "   WR_REG(USIC1_CH1->CCR, USIC_CH_CCR_MODE_Msk, USIC_CH_CCR_MODE_Pos,UsicCcrMode[3]);" + NL + "      ";
  protected final String TEXT_890 = "  " + NL + "   WR_REG(USIC2_CH0->CCR, USIC_CH_CCR_MODE_Msk, USIC_CH_CCR_MODE_Pos,UsicCcrMode[4]);" + NL + "   ";
  protected final String TEXT_891 = "   " + NL + "   WR_REG(USIC2_CH1->CCR, USIC_CH_CCR_MODE_Msk, USIC_CH_CCR_MODE_Pos,UsicCcrMode[5]); " + NL + "             ";
  protected final String TEXT_892 = " ";
  protected final String TEXT_893 = "       ";
  protected final String TEXT_894 = "\t    " + NL + "  //********* MODULE DLR CONFIGURATIONS *************************\t     ";
  protected final String TEXT_895 = " ";
  protected final String TEXT_896 = "   ";
  protected final String TEXT_897 = "         ";
  protected final String TEXT_898 = " ";
  protected final String TEXT_899 = "    ";
  protected final String TEXT_900 = "      \t\t\t\t" + NL + "  /*DLR Line ";
  protected final String TEXT_901 = " Mux Related SFR/Bitfields Configurations*/     \t\t\t\t";
  protected final String TEXT_902 = "  " + NL + " WR_REG(DLR->SRSEL";
  protected final String TEXT_903 = ", DLR_SRSEL";
  protected final String TEXT_904 = "_RS";
  protected final String TEXT_905 = "_Msk, DLR_SRSEL";
  protected final String TEXT_906 = "_RS";
  protected final String TEXT_907 = "_Pos,";
  protected final String TEXT_908 = "); " + NL;
  protected final String TEXT_909 = "  ";
  protected final String TEXT_910 = " \t         ";
  protected final String TEXT_911 = " \t         ";
  protected final String TEXT_912 = NL + "    ";
  protected final String TEXT_913 = "           ";
  protected final String TEXT_914 = "  \t          ";
  protected final String TEXT_915 = " ";
  protected final String TEXT_916 = " " + NL + "  //********* MODULE DMA";
  protected final String TEXT_917 = " CONFIGURATIONS ************************* \t\t\t\t\t";
  protected final String TEXT_918 = "\t\t\t\t\t";
  protected final String TEXT_919 = "   ";
  protected final String TEXT_920 = " ";
  protected final String TEXT_921 = " ";
  protected final String TEXT_922 = " ";
  protected final String TEXT_923 = " ";
  protected final String TEXT_924 = " \t\t\t\t\t       ";
  protected final String TEXT_925 = "   ";
  protected final String TEXT_926 = " ";
  protected final String TEXT_927 = "  ";
  protected final String TEXT_928 = " " + NL + "  /*DMA ";
  protected final String TEXT_929 = " Channel ";
  protected final String TEXT_930 = " Mux Related SFR/Bitfields Configurations*/" + NL;
  protected final String TEXT_931 = " " + NL + "\t";
  protected final String TEXT_932 = "            " + NL + "  WR_REG(GPDMA";
  protected final String TEXT_933 = "_CH";
  protected final String TEXT_934 = "->CFGL, GPDMA";
  protected final String TEXT_935 = "_CH_CFGL_HS_SEL_SRC_Msk, GPDMA";
  protected final String TEXT_936 = "_CH_CFGL_HS_SEL_SRC_Pos,";
  protected final String TEXT_937 = "); " + NL;
  protected final String TEXT_938 = " ";
  protected final String TEXT_939 = " ";
  protected final String TEXT_940 = " " + NL + "  WR_REG(GPDMA";
  protected final String TEXT_941 = "_CH";
  protected final String TEXT_942 = "->CFGL, GPDMA";
  protected final String TEXT_943 = "_CH_CFGL_HS_SEL_DST_Msk, GPDMA";
  protected final String TEXT_944 = "_CH_CFGL_HS_SEL_DST_Pos,";
  protected final String TEXT_945 = ");" + NL;
  protected final String TEXT_946 = " ";
  protected final String TEXT_947 = "      " + NL + "  WR_REG(GPDMA";
  protected final String TEXT_948 = "_CH";
  protected final String TEXT_949 = "->CFGH, GPDMA";
  protected final String TEXT_950 = "_CH_CFGH_SRC_PER_Msk, GPDMA";
  protected final String TEXT_951 = "_CH_CFGH_SRC_PER_Pos,";
  protected final String TEXT_952 = ");" + NL;
  protected final String TEXT_953 = " ";
  protected final String TEXT_954 = "     " + NL + "  WR_REG(GPDMA";
  protected final String TEXT_955 = "_CH";
  protected final String TEXT_956 = "->CFGH, GPDMA";
  protected final String TEXT_957 = "_CH_CFGH_DEST_PER_Msk, GPDMA";
  protected final String TEXT_958 = "_CH_CFGH_DEST_PER_Pos,";
  protected final String TEXT_959 = ");" + NL;
  protected final String TEXT_960 = " ";
  protected final String TEXT_961 = "  \t\t\t\t  \t" + NL + "\t     ";
  protected final String TEXT_962 = "    ";
  protected final String TEXT_963 = "               ";
  protected final String TEXT_964 = NL + "                  /*VADC GROUP";
  protected final String TEXT_965 = " Mux Related SFR/Bitfields Configurations*/  ";
  protected final String TEXT_966 = "\t\t\t\t\t\t      ";
  protected final String TEXT_967 = " ";
  protected final String TEXT_968 = "                        ";
  protected final String TEXT_969 = "        " + NL + "  WR_REG(VADC_G";
  protected final String TEXT_970 = "->QCTRL0, VADC_G_QCTRL0_XTWC_XTSEL_Msk, VADC_G_QCTRL0_XTSEL_Pos, \\" + NL + "   (((((VADC_G";
  protected final String TEXT_971 = "->QCTRL0) & VADC_G_QCTRL0_XTMODE_Msk) | VADC_G_QCTRL0_XTWC_Msk) >> VADC_G_QCTRL0_XTSEL_Pos) | ";
  protected final String TEXT_972 = "));" + NL + "   ";
  protected final String TEXT_973 = "                    ";
  protected final String TEXT_974 = "\t\t\t\t\t\t      ";
  protected final String TEXT_975 = " ";
  protected final String TEXT_976 = "  ";
  protected final String TEXT_977 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_978 = "->ASCTRL, VADC_G_ASCTRL_XTWC_XTSEL_Msk, VADC_G_ASCTRL_XTSEL_Pos, \\" + NL + "   (((((VADC_G";
  protected final String TEXT_979 = "->ASCTRL) & VADC_G_ASCTRL_XTMODE_Msk) | VADC_G_ASCTRL_XTWC_Msk) >> VADC_G_ASCTRL_XTSEL_Pos) | ";
  protected final String TEXT_980 = "));" + NL + "  ";
  protected final String TEXT_981 = "\t\t\t\t\t\t      ";
  protected final String TEXT_982 = " ";
  protected final String TEXT_983 = "  ";
  protected final String TEXT_984 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_985 = "->QCTRL0, VADC_G_QCTRL0_GTWC_GTSEL_Msk, VADC_G_QCTRL0_GTSEL_Pos, \\" + NL + "   (((VADC_G_QCTRL0_GTWC_Msk) >> VADC_G_QCTRL0_GTSEL_Pos) | ";
  protected final String TEXT_986 = ")); " + NL + "   ";
  protected final String TEXT_987 = "                ";
  protected final String TEXT_988 = "\t\t\t\t\t\t      ";
  protected final String TEXT_989 = " ";
  protected final String TEXT_990 = "  ";
  protected final String TEXT_991 = "   " + NL + "  WR_REG(VADC_G";
  protected final String TEXT_992 = "->ASCTRL, VADC_G_ASCTRL_GTWC_GTSEL_Msk, VADC_G_ASCTRL_GTSEL_Pos, \\" + NL + "   (((VADC_G_ASCTRL_GTWC_Msk) >> VADC_G_ASCTRL_GTSEL_Pos) | ";
  protected final String TEXT_993 = "));  " + NL + "  ";
  protected final String TEXT_994 = "                 ";
  protected final String TEXT_995 = "\t\t\t\t\t\t      ";
  protected final String TEXT_996 = " ";
  protected final String TEXT_997 = "  ";
  protected final String TEXT_998 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_999 = "->SEVNP, VADC_G_SEVNP_SEV0NP_Msk, VADC_G_SEVNP_SEV0NP_Pos,";
  protected final String TEXT_1000 = ");   " + NL + " ";
  protected final String TEXT_1001 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1002 = " ";
  protected final String TEXT_1003 = "  ";
  protected final String TEXT_1004 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_1005 = "->SEVNP, VADC_G_SEVNP_SEV1NP_Msk, VADC_G_SEVNP_SEV1NP_Pos,";
  protected final String TEXT_1006 = "); " + NL + "   ";
  protected final String TEXT_1007 = "                          ";
  protected final String TEXT_1008 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1009 = " ";
  protected final String TEXT_1010 = "  ";
  protected final String TEXT_1011 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_1012 = "->SYNCTR, VADC_G_SYNCTR_STSEL_Msk, VADC_G_SYNCTR_STSEL_Pos,";
  protected final String TEXT_1013 = "); " + NL + "   ";
  protected final String TEXT_1014 = " ";
  protected final String TEXT_1015 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1016 = " ";
  protected final String TEXT_1017 = "  ";
  protected final String TEXT_1018 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_1019 = "->SYNCTR, VADC_G_SYNCTR_EVALR1_Msk, VADC_G_SYNCTR_EVALR1_Pos,";
  protected final String TEXT_1020 = "); " + NL + "   ";
  protected final String TEXT_1021 = " ";
  protected final String TEXT_1022 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1023 = " ";
  protected final String TEXT_1024 = "  ";
  protected final String TEXT_1025 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_1026 = "->SYNCTR, VADC_G_SYNCTR_EVALR2_Msk, VADC_G_SYNCTR_EVALR2_Pos,";
  protected final String TEXT_1027 = "); " + NL + "   ";
  protected final String TEXT_1028 = " ";
  protected final String TEXT_1029 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1030 = " ";
  protected final String TEXT_1031 = "  ";
  protected final String TEXT_1032 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_1033 = "->SYNCTR, VADC_G_SYNCTR_EVALR3_Msk, VADC_G_SYNCTR_EVALR3_Pos,";
  protected final String TEXT_1034 = "); " + NL + "   ";
  protected final String TEXT_1035 = "                           ";
  protected final String TEXT_1036 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1037 = " ";
  protected final String TEXT_1038 = "  ";
  protected final String TEXT_1039 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_1040 = "->ALIAS, VADC_G_ALIAS_ALIAS0_Msk, VADC_G_ALIAS_ALIAS0_Pos,";
  protected final String TEXT_1041 = "); " + NL + "   ";
  protected final String TEXT_1042 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1043 = " ";
  protected final String TEXT_1044 = "  ";
  protected final String TEXT_1045 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_1046 = "->ALIAS, VADC_G_ALIAS_ALIAS1_Msk, VADC_G_ALIAS_ALIAS1_Pos,";
  protected final String TEXT_1047 = "); " + NL + "   ";
  protected final String TEXT_1048 = " " + NL + "" + NL + "\t\t\t\t\t ";
  protected final String TEXT_1049 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1050 = " ";
  protected final String TEXT_1051 = "  ";
  protected final String TEXT_1052 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_1053 = "->CHCTR[0], VADC_G_CHCTR_RESREG_Msk, VADC_G_CHCTR_RESREG_Pos,";
  protected final String TEXT_1054 = "); " + NL + "   ";
  protected final String TEXT_1055 = " ";
  protected final String TEXT_1056 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1057 = " ";
  protected final String TEXT_1058 = "  ";
  protected final String TEXT_1059 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_1060 = "->CHCTR[1], VADC_G_CHCTR_RESREG_Msk, VADC_G_CHCTR_RESREG_Pos,";
  protected final String TEXT_1061 = "); " + NL + "   ";
  protected final String TEXT_1062 = " ";
  protected final String TEXT_1063 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1064 = " ";
  protected final String TEXT_1065 = "  ";
  protected final String TEXT_1066 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_1067 = "->CHCTR[2], VADC_G_CHCTR_RESREG_Msk, VADC_G_CHCTR_RESREG_Pos,";
  protected final String TEXT_1068 = "); " + NL + "   ";
  protected final String TEXT_1069 = " ";
  protected final String TEXT_1070 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1071 = " ";
  protected final String TEXT_1072 = "  ";
  protected final String TEXT_1073 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_1074 = "->CHCTR[3], VADC_G_CHCTR_RESREG_Msk, VADC_G_CHCTR_RESREG_Pos,";
  protected final String TEXT_1075 = "); " + NL + "   ";
  protected final String TEXT_1076 = " ";
  protected final String TEXT_1077 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1078 = " ";
  protected final String TEXT_1079 = "  ";
  protected final String TEXT_1080 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_1081 = "->CHCTR[4], VADC_G_CHCTR_RESREG_Msk, VADC_G_CHCTR_RESREG_Pos,";
  protected final String TEXT_1082 = "); " + NL + "   ";
  protected final String TEXT_1083 = " ";
  protected final String TEXT_1084 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1085 = " ";
  protected final String TEXT_1086 = "  ";
  protected final String TEXT_1087 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_1088 = "->CHCTR[5], VADC_G_CHCTR_RESREG_Msk, VADC_G_CHCTR_RESREG_Pos,";
  protected final String TEXT_1089 = "); " + NL + "   ";
  protected final String TEXT_1090 = " ";
  protected final String TEXT_1091 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1092 = " ";
  protected final String TEXT_1093 = "  ";
  protected final String TEXT_1094 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_1095 = "->CHCTR[6], VADC_G_CHCTR_RESREG_Msk, VADC_G_CHCTR_RESREG_Pos,";
  protected final String TEXT_1096 = "); " + NL + "   ";
  protected final String TEXT_1097 = " ";
  protected final String TEXT_1098 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1099 = " ";
  protected final String TEXT_1100 = "  ";
  protected final String TEXT_1101 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_1102 = "->CHCTR[7], VADC_G_CHCTR_RESREG_Msk, VADC_G_CHCTR_RESREG_Pos,";
  protected final String TEXT_1103 = "); " + NL + "   ";
  protected final String TEXT_1104 = "       " + NL + "                                                                                                                ";
  protected final String TEXT_1105 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1106 = " ";
  protected final String TEXT_1107 = "  ";
  protected final String TEXT_1108 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_1109 = "->CEVNP0, VADC_G_CEVNP0_CEV0NP_Msk, VADC_G_CEVNP0_CEV0NP_Pos,";
  protected final String TEXT_1110 = "); " + NL + "   ";
  protected final String TEXT_1111 = "                   ";
  protected final String TEXT_1112 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1113 = " ";
  protected final String TEXT_1114 = "  ";
  protected final String TEXT_1115 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_1116 = "->CEVNP0, VADC_G_CEVNP0_CEV1NP_Msk, VADC_G_CEVNP0_CEV1NP_Pos,";
  protected final String TEXT_1117 = "); " + NL + "   ";
  protected final String TEXT_1118 = "                 ";
  protected final String TEXT_1119 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1120 = " ";
  protected final String TEXT_1121 = "  ";
  protected final String TEXT_1122 = "      " + NL + "  WR_REG(VADC_G";
  protected final String TEXT_1123 = "->CEVNP0, VADC_G_CEVNP0_CEV2NP_Msk, VADC_G_CEVNP0_CEV2NP_Pos,";
  protected final String TEXT_1124 = "); " + NL + "   ";
  protected final String TEXT_1125 = "                   ";
  protected final String TEXT_1126 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1127 = " ";
  protected final String TEXT_1128 = "  ";
  protected final String TEXT_1129 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_1130 = "->CEVNP0, VADC_G_CEVNP0_CEV3NP_Msk, VADC_G_CEVNP0_CEV3NP_Pos,";
  protected final String TEXT_1131 = "); " + NL + "   ";
  protected final String TEXT_1132 = "                    ";
  protected final String TEXT_1133 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1134 = " ";
  protected final String TEXT_1135 = "  ";
  protected final String TEXT_1136 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_1137 = "->CEVNP0, VADC_G_CEVNP0_CEV4NP_Msk, VADC_G_CEVNP0_CEV4NP_Pos,";
  protected final String TEXT_1138 = "); " + NL + "   ";
  protected final String TEXT_1139 = "                 ";
  protected final String TEXT_1140 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1141 = " ";
  protected final String TEXT_1142 = "  ";
  protected final String TEXT_1143 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_1144 = "->CEVNP0, VADC_G_CEVNP0_CEV5NP_Msk, VADC_G_CEVNP0_CEV5NP_Pos,";
  protected final String TEXT_1145 = "); " + NL + "   ";
  protected final String TEXT_1146 = "                    ";
  protected final String TEXT_1147 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1148 = " ";
  protected final String TEXT_1149 = "  ";
  protected final String TEXT_1150 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_1151 = "->CEVNP0, VADC_G_CEVNP0_CEV6NP_Msk, VADC_G_CEVNP0_CEV6NP_Pos,";
  protected final String TEXT_1152 = "); " + NL + "   ";
  protected final String TEXT_1153 = "                  ";
  protected final String TEXT_1154 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1155 = " ";
  protected final String TEXT_1156 = "  ";
  protected final String TEXT_1157 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_1158 = "->CEVNP0, VADC_G_CEVNP0_CEV7NP_Msk, VADC_G_CEVNP0_CEV7NP_Pos,";
  protected final String TEXT_1159 = "); " + NL + "   ";
  protected final String TEXT_1160 = "                 ";
  protected final String TEXT_1161 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1162 = " ";
  protected final String TEXT_1163 = "  ";
  protected final String TEXT_1164 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_1165 = "->REVNP0, VADC_G_REVNP0_REV0NP_Msk, VADC_G_REVNP0_REV0NP_Pos,";
  protected final String TEXT_1166 = "); " + NL + "   ";
  protected final String TEXT_1167 = "                   ";
  protected final String TEXT_1168 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1169 = " ";
  protected final String TEXT_1170 = "  ";
  protected final String TEXT_1171 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_1172 = "->REVNP0, VADC_G_REVNP0_REV1NP_Msk, VADC_G_REVNP0_REV1NP_Pos,";
  protected final String TEXT_1173 = "); " + NL + "   ";
  protected final String TEXT_1174 = "           ";
  protected final String TEXT_1175 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1176 = " ";
  protected final String TEXT_1177 = "  ";
  protected final String TEXT_1178 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_1179 = "->REVNP0, VADC_G_REVNP0_REV2NP_Msk, VADC_G_REVNP0_REV2NP_Pos,";
  protected final String TEXT_1180 = "); " + NL + "   ";
  protected final String TEXT_1181 = "                ";
  protected final String TEXT_1182 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1183 = " ";
  protected final String TEXT_1184 = "  ";
  protected final String TEXT_1185 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_1186 = "->REVNP0, VADC_G_REVNP0_REV3NP_Msk, VADC_G_REVNP0_REV3NP_Pos,";
  protected final String TEXT_1187 = "); " + NL + "   ";
  protected final String TEXT_1188 = "                ";
  protected final String TEXT_1189 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1190 = " ";
  protected final String TEXT_1191 = "  ";
  protected final String TEXT_1192 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_1193 = "->REVNP0, VADC_G_REVNP0_REV4NP_Msk, VADC_G_REVNP0_REV4NP_Pos,";
  protected final String TEXT_1194 = "); " + NL + "   ";
  protected final String TEXT_1195 = "              ";
  protected final String TEXT_1196 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1197 = " ";
  protected final String TEXT_1198 = "  ";
  protected final String TEXT_1199 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_1200 = "->REVNP0, VADC_G_REVNP0_REV5NP_Msk, VADC_G_REVNP0_REV5NP_Pos,";
  protected final String TEXT_1201 = "); " + NL + "   ";
  protected final String TEXT_1202 = "              ";
  protected final String TEXT_1203 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1204 = " ";
  protected final String TEXT_1205 = "  ";
  protected final String TEXT_1206 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_1207 = "->REVNP0, VADC_G_REVNP0_REV6NP_Msk, VADC_G_REVNP0_REV6NP_Pos,";
  protected final String TEXT_1208 = "); " + NL + "   ";
  protected final String TEXT_1209 = "                 ";
  protected final String TEXT_1210 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1211 = " ";
  protected final String TEXT_1212 = "  ";
  protected final String TEXT_1213 = NL + "  WR_REG(VADC_G";
  protected final String TEXT_1214 = "->REVNP0, VADC_G_REVNP0_REV7NP_Msk, VADC_G_REVNP0_REV7NP_Pos,";
  protected final String TEXT_1215 = "); " + NL + "   ";
  protected final String TEXT_1216 = "                 ";
  protected final String TEXT_1217 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1218 = " ";
  protected final String TEXT_1219 = "  ";
  protected final String TEXT_1220 = "   " + NL + "  WR_REG(VADC_G";
  protected final String TEXT_1221 = "->REVNP1, VADC_G_REVNP1_REV8NP_Msk, VADC_G_REVNP1_REV8NP_Pos,";
  protected final String TEXT_1222 = "); " + NL + "   ";
  protected final String TEXT_1223 = "                                ";
  protected final String TEXT_1224 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1225 = " ";
  protected final String TEXT_1226 = "  ";
  protected final String TEXT_1227 = " " + NL + "  WR_REG(VADC_G";
  protected final String TEXT_1228 = "->REVNP1, VADC_G_REVNP1_REV9NP_Msk, VADC_G_REVNP1_REV9NP_Pos,";
  protected final String TEXT_1229 = "); " + NL + "   ";
  protected final String TEXT_1230 = "                    ";
  protected final String TEXT_1231 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1232 = " ";
  protected final String TEXT_1233 = "  ";
  protected final String TEXT_1234 = "     " + NL + "  WR_REG(VADC_G";
  protected final String TEXT_1235 = "->REVNP1, VADC_G_REVNP1_REV10NP_Msk, VADC_G_REVNP1_REV10NP_Pos,";
  protected final String TEXT_1236 = "); " + NL + "   ";
  protected final String TEXT_1237 = "               ";
  protected final String TEXT_1238 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1239 = " ";
  protected final String TEXT_1240 = "  ";
  protected final String TEXT_1241 = "      " + NL + "  WR_REG(VADC_G";
  protected final String TEXT_1242 = "->REVNP1, VADC_G_REVNP1_REV11NP_Msk, VADC_G_REVNP1_REV11NP_Pos,";
  protected final String TEXT_1243 = "); " + NL + "   ";
  protected final String TEXT_1244 = "                   ";
  protected final String TEXT_1245 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1246 = " ";
  protected final String TEXT_1247 = "  ";
  protected final String TEXT_1248 = "   " + NL + "  WR_REG(VADC_G";
  protected final String TEXT_1249 = "->REVNP1, VADC_G_REVNP1_REV12NP_Msk, VADC_G_REVNP1_REV12NP_Pos,";
  protected final String TEXT_1250 = "); " + NL + "   ";
  protected final String TEXT_1251 = "            ";
  protected final String TEXT_1252 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1253 = " ";
  protected final String TEXT_1254 = "  ";
  protected final String TEXT_1255 = "     " + NL + "  WR_REG(VADC_G";
  protected final String TEXT_1256 = "->REVNP1, VADC_G_REVNP1_REV13NP_Msk, VADC_G_REVNP1_REV13NP_Pos,";
  protected final String TEXT_1257 = "); " + NL + "   ";
  protected final String TEXT_1258 = "                ";
  protected final String TEXT_1259 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1260 = " ";
  protected final String TEXT_1261 = "  ";
  protected final String TEXT_1262 = " " + NL + "  WR_REG(VADC_G";
  protected final String TEXT_1263 = "->REVNP1, VADC_G_REVNP1_REV14NP_Msk, VADC_G_REVNP1_REV14NP_Pos,";
  protected final String TEXT_1264 = "); " + NL + "   ";
  protected final String TEXT_1265 = "              ";
  protected final String TEXT_1266 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1267 = " ";
  protected final String TEXT_1268 = "  ";
  protected final String TEXT_1269 = "      " + NL + "  WR_REG(VADC_G";
  protected final String TEXT_1270 = "->REVNP1, VADC_G_REVNP1_REV15NP_Msk, VADC_G_REVNP1_REV15NP_Pos,";
  protected final String TEXT_1271 = "); " + NL + "   ";
  protected final String TEXT_1272 = "                      ";
  protected final String TEXT_1273 = "  " + NL + "               /*VADC GLOBAL RESULT Mux Related SFR/Bitfields Configurations*/  ";
  protected final String TEXT_1274 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1275 = " ";
  protected final String TEXT_1276 = "  ";
  protected final String TEXT_1277 = " " + NL + "  WR_REG(VADC->GLOBEVNP, VADC_GLOBEVNP_REV0NP_Msk, VADC_GLOBEVNP_REV0NP_Pos,";
  protected final String TEXT_1278 = "); " + NL + "   ";
  protected final String TEXT_1279 = "              ";
  protected final String TEXT_1280 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1281 = " ";
  protected final String TEXT_1282 = "  ";
  protected final String TEXT_1283 = "   " + NL + "  WR_REG(VADC->EMUXSEL, VADC_EMUXSEL_EMUXGRP0_Msk, VADC_EMUXSEL_EMUXGRP0_Pos,";
  protected final String TEXT_1284 = "); " + NL + "   ";
  protected final String TEXT_1285 = "            ";
  protected final String TEXT_1286 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1287 = " ";
  protected final String TEXT_1288 = "  ";
  protected final String TEXT_1289 = "  " + NL + "  WR_REG(VADC->EMUXSEL, VADC_EMUXSEL_EMUXGRP1_Msk, VADC_EMUXSEL_EMUXGRP1_Pos,";
  protected final String TEXT_1290 = "); " + NL + "   ";
  protected final String TEXT_1291 = "                        " + NL + "               /*VADC BACKGROUND Source Mux Related SFR/Bitfields Configurations*/  ";
  protected final String TEXT_1292 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1293 = " ";
  protected final String TEXT_1294 = "  ";
  protected final String TEXT_1295 = "     " + NL + "  WR_REG(VADC->BRSCTRL, VADC_BRSCTRL_XTWC_XTSEL_Msk, VADC_BRSCTRL_XTSEL_Pos, \\" + NL + "   (((((VADC->BRSCTRL) & VADC_BRSCTRL_XTMODE_Msk) | VADC_BRSCTRL_XTWC_Msk) >> VADC_BRSCTRL_XTSEL_Pos) | ";
  protected final String TEXT_1296 = "));" + NL;
  protected final String TEXT_1297 = "         ";
  protected final String TEXT_1298 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1299 = " ";
  protected final String TEXT_1300 = "  ";
  protected final String TEXT_1301 = "    " + NL + "  WR_REG(VADC->BRSCTRL, VADC_BRSCTRL_GTWC_GTSEL_Msk, VADC_BRSCTRL_GTSEL_Pos, \\" + NL + "   (((VADC_BRSCTRL_GTWC_Msk) >> VADC_BRSCTRL_GTSEL_Pos) | ";
  protected final String TEXT_1302 = ")); " + NL;
  protected final String TEXT_1303 = "       ";
  protected final String TEXT_1304 = "\t\t\t\t\t\t      ";
  protected final String TEXT_1305 = " ";
  protected final String TEXT_1306 = "                 ";
  protected final String TEXT_1307 = "  " + NL + "  WR_REG(VADC->GLOBEVNP, VADC_GLOBEVNP_SEV0NP_Msk, VADC_GLOBEVNP_SEV0NP_Pos,";
  protected final String TEXT_1308 = "); " + NL + "   ";
  protected final String TEXT_1309 = "                       ";
  protected final String TEXT_1310 = "   ";
  protected final String TEXT_1311 = "  ";
  protected final String TEXT_1312 = "    ";
  protected final String TEXT_1313 = NL + "       /*        DAC Macro definitions     */               ";
  protected final String TEXT_1314 = NL + "            " + NL + "  WR_REG(DAC->DAC";
  protected final String TEXT_1315 = "CFG1, DAC_DAC";
  protected final String TEXT_1316 = "CFG1_TRIGSEL_Msk, DAC_DAC";
  protected final String TEXT_1317 = "CFG1_TRIGSEL_Pos, VALUE";
  protected final String TEXT_1318 = ");                /*    DAC->DAC";
  protected final String TEXT_1319 = "CFG1_TRIGSEL */";
  protected final String TEXT_1320 = " ";
  protected final String TEXT_1321 = "    ";
  protected final String TEXT_1322 = "    ";
  protected final String TEXT_1323 = NL + "       /*        SCU Macro definitions     */               ";
  protected final String TEXT_1324 = NL + NL + "  WR_REGHIB(SCU_HIBERNATE->HDCR, SCU_HIBERNATE_HDCR_GPI0SEL_Msk, SCU_HIBERNATE_HDCR_GPI0SEL_Pos, VALUE";
  protected final String TEXT_1325 = ",SCU_GENERAL_MIRRSTS_HDCR_Msk);                /*    SCU_HIBERNATE->HDCR_GPI0SEL */        ";
  protected final String TEXT_1326 = NL + "        " + NL + "  WR_REGHIB(SCU_HIBERNATE->HDCR, SCU_HIBERNATE_HDCR_WKUPSEL_Msk, SCU_HIBERNATE_HDCR_WKUPSEL_Pos, VALUE";
  protected final String TEXT_1327 = ",SCU_GENERAL_MIRRSTS_HDCR_Msk);                /*    SCU_HIBERNATE->HDCR_WKUPSEL */";
  protected final String TEXT_1328 = NL + NL + "  WR_REGHIB(SCU_HIBERNATE->HDCR, SCU_HIBERNATE_HDCR_HIBIO";
  protected final String TEXT_1329 = "SEL_OE_Msk, SCU_HIBERNATE_HDCR_HIBIO";
  protected final String TEXT_1330 = "SEL_OE_Pos, PORT_IOCR_OE";
  protected final String TEXT_1331 = ", SCU_GENERAL_MIRRSTS_HDCR_Msk);                /*    SCU_HIBERNATE->HDCR_HIBIO";
  protected final String TEXT_1332 = "SEL_OE */        ";
  protected final String TEXT_1333 = NL + "        " + NL + "  WR_REGHIB(SCU_HIBERNATE->HDCR, SCU_HIBERNATE_HDCR_HIBIO";
  protected final String TEXT_1334 = "SEL_PCR_Msk, SCU_HIBERNATE_HDCR_HIBIO";
  protected final String TEXT_1335 = "SEL_PCR_Pos, PORT_IOCR_PCR";
  protected final String TEXT_1336 = ", SCU_GENERAL_MIRRSTS_HDCR_Msk);                /*    SCU_HIBERNATE->HDCR_HIBIO";
  protected final String TEXT_1337 = "SEL_PCR */";
  protected final String TEXT_1338 = NL + "        " + NL + "  WR_REG(SCU_INTERRUPT->NMIREQEN, SCU_INTERRUPT_NMIREQEN_PRWARN_Msk, SCU_INTERRUPT_NMIREQEN_PRWARN_Pos, VALUE";
  protected final String TEXT_1339 = ");                /*    SCU_INTERRUPT->NMIREQEN_PRWARN */";
  protected final String TEXT_1340 = NL + "            " + NL + "  WR_REG(SCU_INTERRUPT->NMIREQEN, SCU_INTERRUPT_NMIREQEN_PI_Msk, SCU_INTERRUPT_NMIREQEN_PI_Pos, VALUE";
  protected final String TEXT_1341 = ");                /*    SCU_INTERRUPT->NMIREQEN_PI */";
  protected final String TEXT_1342 = NL + "        " + NL + "  WR_REG(SCU_INTERRUPT->NMIREQEN, SCU_INTERRUPT_NMIREQEN_AI_Msk, SCU_INTERRUPT_NMIREQEN_AI_Pos, VALUE";
  protected final String TEXT_1343 = ");                /*    SCU_INTERRUPT->NMIREQEN_AI */";
  protected final String TEXT_1344 = NL + "        " + NL + "  WR_REG(SCU_INTERRUPT->NMIREQEN, SCU_INTERRUPT_NMIREQEN_ERU0";
  protected final String TEXT_1345 = "_Msk, SCU_INTERRUPT_NMIREQEN_ERU0";
  protected final String TEXT_1346 = "_Pos, VALUE";
  protected final String TEXT_1347 = ");                /*    SCU_INTERRUPT->NMIREQEN_ERU0";
  protected final String TEXT_1348 = " */" + NL + "\t\t\t";
  protected final String TEXT_1349 = " ";
  protected final String TEXT_1350 = "    ";
  protected final String TEXT_1351 = NL + "       /*        SCU Macro definitions     */  ";
  protected final String TEXT_1352 = NL + "                  SCU_GENERAL->PASSWD = 0x000000C0UL;" + NL + "  WR_REG(SCU_CLK->CLKCR, SCU_CLK_CLKCR_RTCCLKSEL_Msk, SCU_CLK_CLKCR_RTCCLKSEL_Pos, ";
  protected final String TEXT_1353 = ");                /*    SCU_CLOCK->CLKCR_RTCCLKSEL */" + NL + "                  SCU_GENERAL->PASSWD = 0x000000C3UL;" + NL + "\t\t\t\t";
  protected final String TEXT_1354 = NL + NL + "  WR_REG(COMPARATOR->ANACMP0, COMPARATOR_ANACMP0_ACMP0_SEL_Msk, COMPARATOR_ANACMP0_ACMP0_SEL_Pos, ";
  protected final String TEXT_1355 = ");                /*    COMPARATOR->ANACMP0_ACMP0_SEL */";
  protected final String TEXT_1356 = NL + NL + "  WR_REG(COMPARATOR->ANACMP1, COMPARATOR_ANACMP1_REF_DIV_EN_Msk, COMPARATOR_ANACMP1_REF_DIV_EN_Pos, ";
  protected final String TEXT_1357 = ");                /*    COMPARATOR->ANACMP1_REF_DIV_EN */";
  protected final String TEXT_1358 = NL + NL + "  WR_REG(COMPARATOR->ANACMP2, COMPARATOR_ANACMP2_ACMP2_SEL_Msk, COMPARATOR_ANACMP2_ACMP2_SEL_Pos, ";
  protected final String TEXT_1359 = ");                /*    COMPARATOR->ANACMP2_ACMP2_SEL */";
  protected final String TEXT_1360 = "    ";
  protected final String TEXT_1361 = NL + "/*        LEDTS Macro definitions:         */  ";
  protected final String TEXT_1362 = NL + NL + "  WR_REG(LEDTS1->GLOBCTL, LEDTS_GLOBCTL_CLK_PS_Msk, LEDTS_GLOBCTL_CLK_PS_Pos, 0);                \t\t\t\t\t\t\t\t/*    LEDTS1->GLOBCTL_CLK_PS */" + NL + "  WR_REG(LEDTS1->GLOBCTL, LEDTS_GLOBCTL_ENSYNC_Msk, LEDTS_GLOBCTL_ENSYNC_Pos, ";
  protected final String TEXT_1363 = ");                /*    LEDTS1->GLOBCTL_ENSYNC */";
  protected final String TEXT_1364 = "    ";
  protected final String TEXT_1365 = NL + "/*        BCCU Macro definitions:         */ ";
  protected final String TEXT_1366 = NL + NL + "  WR_REG(BCCU0_CH";
  protected final String TEXT_1367 = "->CHCONFIG, BCCU_CH_CHCONFIG_DSEL_Msk, BCCU_CH_CHCONFIG_DSEL_Pos, ";
  protected final String TEXT_1368 = ");                /*    BCCU_CHCONFIG";
  protected final String TEXT_1369 = "_DSEL */";
  protected final String TEXT_1370 = NL + NL + "  WR_REG(BCCU0->GLOBCON, BCCU_GLOBCON_TRAPIS_Msk, BCCU_GLOBCON_TRAPIS_Pos, ";
  protected final String TEXT_1371 = ");                /*    BCCU_GLOBCON_TRAPIS */";
  protected final String TEXT_1372 = "    ";
  protected final String TEXT_1373 = "  " + NL + "/*        ERU";
  protected final String TEXT_1374 = " Macro definitions:         */  ";
  protected final String TEXT_1375 = NL + NL + "  WR_REG(ERU";
  protected final String TEXT_1376 = "->EXISEL, ERU_EXISEL_EXS";
  protected final String TEXT_1377 = "A_Msk, ERU_EXISEL_EXS";
  protected final String TEXT_1378 = "A_Pos, SIGNAL_ERU_xA";
  protected final String TEXT_1379 = ");                /*    ERU";
  protected final String TEXT_1380 = "_EXISEL_EXS";
  protected final String TEXT_1381 = "A */";
  protected final String TEXT_1382 = NL + NL + "  WR_REG(ERU";
  protected final String TEXT_1383 = "->EXISEL, ERU_EXISEL_EXS";
  protected final String TEXT_1384 = "B_Msk, ERU_EXISEL_EXS";
  protected final String TEXT_1385 = "B_Pos, SIGNAL_ERU_xB";
  protected final String TEXT_1386 = ");                /*    ERU";
  protected final String TEXT_1387 = "_EXISEL_EXS";
  protected final String TEXT_1388 = "B */";
  protected final String TEXT_1389 = NL + NL + "  WR_REG(ERU";
  protected final String TEXT_1390 = "->EXICON[";
  protected final String TEXT_1391 = "], ERU_EXICON_PE_Msk, ERU_EXICON_PE_Pos, SIGNAL_TR";
  protected final String TEXT_1392 = ");                            /*    ERU";
  protected final String TEXT_1393 = "_EXICON[";
  protected final String TEXT_1394 = "]_PE */";
  protected final String TEXT_1395 = NL + NL + "  WR_REG(ERU";
  protected final String TEXT_1396 = "->EXICON[";
  protected final String TEXT_1397 = "], ERU_EXICON_OCS_Msk, ERU_EXICON_OCS_Pos, SIGNAL_TRx";
  protected final String TEXT_1398 = ");                        /*    ERU";
  protected final String TEXT_1399 = "_EXICON[";
  protected final String TEXT_1400 = "]_OCS */";
  protected final String TEXT_1401 = NL + "        " + NL + "  WR_REG(ERU";
  protected final String TEXT_1402 = "->EXOCON[";
  protected final String TEXT_1403 = "], ERU_EXOCON_IPEN";
  protected final String TEXT_1404 = "_Msk, ERU_EXOCON_IPEN";
  protected final String TEXT_1405 = "_Pos, SIGNAL_ERS_ETL_FL";
  protected final String TEXT_1406 = ");            /*    ERU";
  protected final String TEXT_1407 = "_EXOCON[";
  protected final String TEXT_1408 = "]_IPEN";
  protected final String TEXT_1409 = " */";
  protected final String TEXT_1410 = NL + "    " + NL + "  WR_REG(ERU";
  protected final String TEXT_1411 = "->EXOCON[";
  protected final String TEXT_1412 = "], ERU_EXOCON_ISS_Msk, ERU_EXOCON_ISS_Pos, SIGNAL_ERU_OGU_y";
  protected final String TEXT_1413 = ");                    /*    ERU";
  protected final String TEXT_1414 = "_EXOCON[";
  protected final String TEXT_1415 = "]_ISS */";
  protected final String TEXT_1416 = NL + NL + "/*        PORT Macro definitions for IOCR_OE, IOCR_PCR & HWSEL_HW     */               ";
  protected final String TEXT_1417 = NL + "           " + NL + "  WR_REG(PORT";
  protected final String TEXT_1418 = "->PDISC, PORT";
  protected final String TEXT_1419 = "_PDISC_PDIS";
  protected final String TEXT_1420 = "_Msk, PORT";
  protected final String TEXT_1421 = "_PDISC_PDIS";
  protected final String TEXT_1422 = "_Pos, PORT_PDISC_PDIS";
  protected final String TEXT_1423 = ");            /*    P";
  protected final String TEXT_1424 = ".";
  protected final String TEXT_1425 = " : PORT";
  protected final String TEXT_1426 = "_PDISC_PDIS";
  protected final String TEXT_1427 = " */";
  protected final String TEXT_1428 = NL + "           " + NL + "  WR_REG(PORT";
  protected final String TEXT_1429 = "->HWSEL, PORT";
  protected final String TEXT_1430 = "_HWSEL_HW";
  protected final String TEXT_1431 = "_Msk, PORT";
  protected final String TEXT_1432 = "_HWSEL_HW";
  protected final String TEXT_1433 = "_Pos, PORT_HWSEL_HW";
  protected final String TEXT_1434 = ");                    /*    P";
  protected final String TEXT_1435 = ".";
  protected final String TEXT_1436 = " : PORT";
  protected final String TEXT_1437 = "_HWSEL_HW";
  protected final String TEXT_1438 = " */  ";
  protected final String TEXT_1439 = " " + NL + "              " + NL + "  WR_REG(PORT";
  protected final String TEXT_1440 = "->HWSEL, PORT";
  protected final String TEXT_1441 = "_HWSEL_HW";
  protected final String TEXT_1442 = "_Msk, PORT";
  protected final String TEXT_1443 = "_HWSEL_HW";
  protected final String TEXT_1444 = "_Pos, PORT_HWSEL_SW);                    /*    P";
  protected final String TEXT_1445 = ".";
  protected final String TEXT_1446 = " : PORT";
  protected final String TEXT_1447 = "_HWSEL_HW";
  protected final String TEXT_1448 = " */  ";
  protected final String TEXT_1449 = "  " + NL + "                       " + NL + "  /* Masking P0.8, Since Upon reset, the value of PC8 (P0.8) is 00000b. " + NL + "  The startup software (SSW) will change the PC8 value to input pull-up device active, 00010b. */ " + NL + "  WR_REG(PORT";
  protected final String TEXT_1450 = "->IOCR";
  protected final String TEXT_1451 = ", PORT_IOCR_PC";
  protected final String TEXT_1452 = "_PCR_Msk, PORT_IOCR_PC";
  protected final String TEXT_1453 = "_PCR_Pos, PORT_IOCR_PCR0);            /*    P";
  protected final String TEXT_1454 = ".";
  protected final String TEXT_1455 = " : PORT";
  protected final String TEXT_1456 = "_IOCR";
  protected final String TEXT_1457 = "_PC";
  protected final String TEXT_1458 = "_PCR */" + NL + "                     ";
  protected final String TEXT_1459 = "                     ";
  protected final String TEXT_1460 = "  ";
  protected final String TEXT_1461 = NL + "  WR_REG(PORT";
  protected final String TEXT_1462 = "->IOCR";
  protected final String TEXT_1463 = ", 0x";
  protected final String TEXT_1464 = "U, PORT_IOCR_PC";
  protected final String TEXT_1465 = "_PCR_Pos, 0x";
  protected final String TEXT_1466 = "U);                /*P";
  protected final String TEXT_1467 = ".";
  protected final String TEXT_1468 = " : PORT";
  protected final String TEXT_1469 = "_IOCR";
  protected final String TEXT_1470 = "_PC";
  protected final String TEXT_1471 = "_PCR and PORT";
  protected final String TEXT_1472 = "_IOCR";
  protected final String TEXT_1473 = "_PC";
  protected final String TEXT_1474 = "_OE */\t\t\t\t\t   ";
  protected final String TEXT_1475 = NL + "  WR_REG(PORT";
  protected final String TEXT_1476 = "->IOCR";
  protected final String TEXT_1477 = ", PORT_IOCR_PC";
  protected final String TEXT_1478 = "_PCR_Msk, PORT_IOCR_PC";
  protected final String TEXT_1479 = "_PCR_Pos, PORT_IOCR_PCR";
  protected final String TEXT_1480 = ");            /*    P";
  protected final String TEXT_1481 = ".";
  protected final String TEXT_1482 = " : PORT";
  protected final String TEXT_1483 = "_IOCR";
  protected final String TEXT_1484 = "_PC";
  protected final String TEXT_1485 = "_PCR */";
  protected final String TEXT_1486 = NL + "  WR_REG(PORT";
  protected final String TEXT_1487 = "->IOCR";
  protected final String TEXT_1488 = ", PORT_IOCR_PC";
  protected final String TEXT_1489 = "_OE_Msk, PORT_IOCR_PC";
  protected final String TEXT_1490 = "_OE_Pos, PORT_IOCR_OE";
  protected final String TEXT_1491 = ");                /*    P";
  protected final String TEXT_1492 = ".";
  protected final String TEXT_1493 = " : PORT";
  protected final String TEXT_1494 = "_IOCR";
  protected final String TEXT_1495 = "_PC";
  protected final String TEXT_1496 = "_OE */\t\t\t\t\t   ";
  protected final String TEXT_1497 = NL + "\t\t\t\t\t  ";
  protected final String TEXT_1498 = "    ";
  protected final String TEXT_1499 = NL + "}" + NL + "" + NL + "" + NL + "/*******************************************************************************" + NL + "** Syntax           : void DAVE_MUX_PreInit(void)                             **" + NL + "**                                                                            **" + NL + "** Reentrancy       : None                                                    **" + NL + "**                                                                            **" + NL + "** Parameters (in)  : void                                                    **" + NL + "**                                                                            **" + NL + "** Parameters (out) : none                                                    **" + NL + "**                                                                            **" + NL + "** Return value     : none                                                    **" + NL + "**                                                                            **" + NL + "** Description      : This is the Mux configuration                           **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + " " + NL + "void DAVE_MUX_PreInit(void)" + NL + "{";
  protected final String TEXT_1500 = NL + NL + "/*        PORT Macro definitions for IOCR_OE, IOCR_PCR & HWSEL_HW     */               ";
  protected final String TEXT_1501 = NL + "           " + NL + "  WR_REG(PORT";
  protected final String TEXT_1502 = "->PDISC, PORT";
  protected final String TEXT_1503 = "_PDISC_PDIS";
  protected final String TEXT_1504 = "_Msk, PORT";
  protected final String TEXT_1505 = "_PDISC_PDIS";
  protected final String TEXT_1506 = "_Pos, PORT_PDISC_PDIS";
  protected final String TEXT_1507 = ");            /*    P";
  protected final String TEXT_1508 = ".";
  protected final String TEXT_1509 = " : PORT";
  protected final String TEXT_1510 = "_PDISC_PDIS";
  protected final String TEXT_1511 = " */";
  protected final String TEXT_1512 = NL + "           " + NL + "  WR_REG(PORT";
  protected final String TEXT_1513 = "->HWSEL, PORT";
  protected final String TEXT_1514 = "_HWSEL_HW";
  protected final String TEXT_1515 = "_Msk, PORT";
  protected final String TEXT_1516 = "_HWSEL_HW";
  protected final String TEXT_1517 = "_Pos, PORT_HWSEL_HW";
  protected final String TEXT_1518 = ");                    /*    P";
  protected final String TEXT_1519 = ".";
  protected final String TEXT_1520 = " : PORT";
  protected final String TEXT_1521 = "_HWSEL_HW";
  protected final String TEXT_1522 = " */  ";
  protected final String TEXT_1523 = " " + NL + "              " + NL + "  WR_REG(PORT";
  protected final String TEXT_1524 = "->HWSEL, PORT";
  protected final String TEXT_1525 = "_HWSEL_HW";
  protected final String TEXT_1526 = "_Msk, PORT";
  protected final String TEXT_1527 = "_HWSEL_HW";
  protected final String TEXT_1528 = "_Pos, PORT_HWSEL_SW);                    /*    P";
  protected final String TEXT_1529 = ".";
  protected final String TEXT_1530 = " : PORT";
  protected final String TEXT_1531 = "_HWSEL_HW";
  protected final String TEXT_1532 = " */  ";
  protected final String TEXT_1533 = "    ";
  protected final String TEXT_1534 = NL + "}";
  protected final String TEXT_1535 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
     int xmc4Device = -1;
   xmc4Device = ((app.getSoftwareId().substring(0,1).compareTo("4")==0)?1:0);
   int xmc1Device = -1;
   xmc1Device = ((app.getSoftwareId().substring(0,1).compareTo("1")==0)?1:0); 
    stringBuffer.append(TEXT_1);
     String TempPeri = null;
  String MyPeriName = null;
  String MyTempPeriName = null;
  Object MyObj = null;     
 ArrayList<String> peri; 
 peri=(ArrayList<String>)(app.getPeripherals());
 HashMap PeriHashMap = new HashMap();  
     for (int k = 0; k < peri.size(); k++) {
         TempPeri = peri.get(k); 
         if (TempPeri.indexOf("/peripheral/") > 0 ){ MyPeriName = TempPeri.substring(TempPeri.indexOf("/peripheral/") + 1, TempPeri.lastIndexOf("/"));} else 
         if (TempPeri.indexOf("/port/") > 0 ){ MyPeriName = TempPeri.substring(TempPeri.indexOf("/port/") + 1, TempPeri.lastIndexOf("/"));}
         PeriHashMap.put(MyPeriName,k); 
    } 
   Set set = PeriHashMap.entrySet(); 
   Iterator i = set.iterator();
     while(i.hasNext()) { 
     Map.Entry peri_me = (Map.Entry)i.next();  
           MyObj = peri_me.getKey();              
           MyTempPeriName = MyObj.toString(); 
    
           
     //********* Capture/Compare Unit 4 (CAPCOM4) CONFIGURATIONS --- BEGIN ************************* 
     if(MyTempPeriName.compareTo("peripheral/ccu4") == 0) {
         String uriStr_CCU4 = "peripheral/ccu4/"; 
    stringBuffer.append(TEXT_2);
     for (int Module = 0; Module < 4; Module++) { 
               String StrTempCC4Reset = null; 
               String StrTempCC4Actual = null; 
               String uriStrTemp = null;        
               uriStrTemp = uriStr_CCU4+ Module +"/global/gctrl_pcis";
               StrTempCC4Reset = app.getResetValue(uriStrTemp);  StrTempCC4Actual = app.getMuxValue(uriStrTemp);              
               if(StrTempCC4Reset.compareTo(StrTempCC4Actual) < 0) {
    stringBuffer.append(TEXT_3);
    stringBuffer.append(Module);
    stringBuffer.append(TEXT_4);
    stringBuffer.append(StrTempCC4Actual);
    stringBuffer.append(TEXT_5);
     } 
                 for (int Slice = 0; Slice < 4; Slice++) { 
                       String tempStrEv0is = null;                    
                       String tempStrEv1is = null;                    
                       String tempStrEv2is = null;                    
                       String StrTempCC4ActualX = null; 
                       String StrTempCC4ActualY = null; 
                       String StrTempCC4ActualZ = null; 
                       String uriStr_Ev0is = null; 
                       String uriStr_Ev1is = null; 
                       String uriStr_Ev2is = null; 
                       String uriStr_Slice = null; 
                       uriStr_Slice = Integer.toString(Module) +"/cc4/"+ Integer.toString(Slice) +"/cc4"+ Integer.toString(Slice);
                       uriStr_Ev0is = uriStr_CCU4 + uriStr_Slice +"ins_ev0is";
                       StrTempCC4Reset = app.getResetValue(uriStr_Ev0is);
                       StrTempCC4ActualX = app.getMuxValue(uriStr_Ev0is);                   
                       if(StrTempCC4Reset.compareTo(StrTempCC4ActualX) < 0) {
                        tempStrEv0is = "WR_REG(CCU4"+ Integer.toString(Module) +"_CC4"+ Integer.toString(Slice) +"->INS, CCU4_CC4_INS_EV0IS_Msk, CCU4_CC4_INS_EV0IS_Pos, CCU4xINy" + (char)(Integer.parseInt(StrTempCC4ActualX.trim()) + 65) + ");";
                       } 
                       uriStr_Ev1is = uriStr_CCU4 + uriStr_Slice +"ins_ev1is";
                       StrTempCC4Reset = app.getResetValue(uriStr_Ev1is); 
                       StrTempCC4ActualY = app.getMuxValue(uriStr_Ev1is);                   
                       if (StrTempCC4Reset.compareTo(StrTempCC4ActualY) < 0) {
                            tempStrEv1is = "WR_REG(CCU4"+ Integer.toString(Module) +"_CC4"+ Integer.toString(Slice) +"->INS, CCU4_CC4_INS_EV1IS_Msk, CCU4_CC4_INS_EV1IS_Pos, CCU4xINy" + (char)(Integer.parseInt(StrTempCC4ActualY.trim()) + 65) + ");"; 
                       }  
                       uriStr_Ev2is = uriStr_CCU4 + uriStr_Slice +"ins_ev2is";
                       StrTempCC4Reset = app.getResetValue(uriStr_Ev2is);
                       StrTempCC4ActualZ = app.getMuxValue(uriStr_Ev2is);               
                       if (StrTempCC4Reset.compareTo(StrTempCC4ActualZ) < 0) {
                         tempStrEv2is = "WR_REG(CCU4"+ Integer.toString(Module) +"_CC4"+ Integer.toString(Slice) +"->INS, CCU4_CC4_INS_EV2IS_Msk, CCU4_CC4_INS_EV2IS_Pos, CCU4xINy" + (char)(Integer.parseInt(StrTempCC4ActualZ.trim()) + 65) + ");"; 
                       } 
                       if((tempStrEv0is != null) | (tempStrEv1is != null) | (tempStrEv2is != null) ){
    stringBuffer.append(TEXT_6);
    stringBuffer.append(Module);
    stringBuffer.append(TEXT_7);
    stringBuffer.append(Slice);
    stringBuffer.append(TEXT_8);
     if(tempStrEv0is != null){
    stringBuffer.append(TEXT_9);
    stringBuffer.append(TEXT_10);
    stringBuffer.append( tempStrEv0is);
    stringBuffer.append(TEXT_11);
     } 
                           if(tempStrEv1is != null){
    stringBuffer.append(TEXT_12);
    stringBuffer.append(TEXT_13);
    stringBuffer.append( tempStrEv1is);
    stringBuffer.append(TEXT_14);
     } 
                           if(tempStrEv2is != null){
    stringBuffer.append(TEXT_15);
    stringBuffer.append(TEXT_16);
    stringBuffer.append( tempStrEv2is);
    stringBuffer.append(TEXT_17);
     }
                     } 
             }             
                 for (int Slice = 0; Slice < 4; Slice++) { 
                       String tempStr_posr = null;                    
                       String tempStr_cmsr = null;                    
                       String tempStr_e0sr = null;                    
                       String tempStr_e1sr = null;                    
                       String tempStr_e2sr = null;                    
                       String StrTempCC4ActualX = null; 
                       String StrTempCC4ActualY = null; 
                       String StrTempCC4Actual_e0sr = null; 
                       String StrTempCC4Actual_e1sr = null; 
                       String StrTempCC4Actual_e2sr = null; 
                       String uriStr_posr = null; 
                       String uriStr_cmsr = null; 
                       String uriStr_e0sr = null; 
                       String uriStr_e1sr = null; 
                       String uriStr_e2sr = null; 
                       String uriStr_Slice = null; 
                       uriStr_Slice = Integer.toString(Module) +"/cc4/"+ Integer.toString(Slice) +"/cc4"+ Integer.toString(Slice);
                       uriStr_posr = uriStr_CCU4 + uriStr_Slice +"srs_posr"; 
                       StrTempCC4Reset = app.getResetValue(uriStr_posr);
                       StrTempCC4ActualX = app.getMuxValue(uriStr_posr);                
                       if(StrTempCC4Reset.compareTo(StrTempCC4ActualX) < 0) {
                          tempStr_posr = "WR_REG(CCU4"+ Integer.toString(Module) +"_CC4"+ Integer.toString(Slice) +"->SRS, CCU4_CC4_SRS_POSR_Msk, CCU4_CC4_SRS_POSR_Pos, CCU_SR" + StrTempCC4ActualX + ");"; 
                       } 
                       uriStr_cmsr = uriStr_CCU4 + uriStr_Slice +"srs_cmsr";
                       StrTempCC4Reset = app.getResetValue(uriStr_cmsr);
                       StrTempCC4ActualY = app.getMuxValue(uriStr_cmsr);                   
                       if (StrTempCC4Reset.compareTo(StrTempCC4ActualY) < 0) {
                          tempStr_cmsr = "WR_REG(CCU4"+ Integer.toString(Module) +"_CC4"+ Integer.toString(Slice) +"->SRS, CCU4_CC4_SRS_CMSR_Msk, CCU4_CC4_SRS_CMSR_Pos, CCU_SR" + StrTempCC4ActualY + ");"; 
                       } 
                       uriStr_e0sr = uriStr_CCU4 + uriStr_Slice +"srs_e0sr";
                       StrTempCC4Reset = app.getResetValue(uriStr_e0sr);
                       StrTempCC4Actual_e0sr = app.getMuxValue(uriStr_e0sr);                   
                       if (StrTempCC4Reset.compareTo(StrTempCC4Actual_e0sr) < 0) {
                          tempStr_e0sr = "WR_REG(CCU4"+ Integer.toString(Module) +"_CC4"+ Integer.toString(Slice) +"->SRS, CCU4_CC4_SRS_E0SR_Msk, CCU4_CC4_SRS_E0SR_Pos, CCU_SR" + StrTempCC4Actual_e0sr + ");"; 
                       } 
                       uriStr_e1sr = uriStr_CCU4 + uriStr_Slice +"srs_e1sr"; 
                       StrTempCC4Reset = app.getResetValue(uriStr_e1sr);
                       StrTempCC4Actual_e1sr = app.getMuxValue(uriStr_e1sr);                   
                       if (StrTempCC4Reset.compareTo(StrTempCC4Actual_e1sr) < 0) {
                         tempStr_e1sr = "WR_REG(CCU4"+ Integer.toString(Module) +"_CC4"+ Integer.toString(Slice) +"->SRS, CCU4_CC4_SRS_E1SR_Msk, CCU4_CC4_SRS_E1SR_Pos, CCU_SR" + StrTempCC4Actual_e1sr + ");"; 
                       } 
                       uriStr_e2sr = uriStr_CCU4 + uriStr_Slice +"srs_e2sr";
                       StrTempCC4Reset = app.getResetValue(uriStr_e2sr);
                       StrTempCC4Actual_e2sr = app.getMuxValue(uriStr_e2sr);                    
                       if (StrTempCC4Reset.compareTo(StrTempCC4Actual_e2sr) < 0) {
                         tempStr_e2sr = "WR_REG(CCU4"+ Integer.toString(Module) +"_CC4"+ Integer.toString(Slice) +"->SRS, CCU4_CC4_SRS_E2SR_Msk, CCU4_CC4_SRS_E2SR_Pos, CCU_SR" + StrTempCC4Actual_e2sr + ");"; 
                       } 
                       if((tempStr_posr != null)|(tempStr_cmsr != null)|(tempStr_e0sr != null)|(tempStr_e1sr != null)|(tempStr_e2sr != null) ){
    stringBuffer.append(TEXT_18);
    stringBuffer.append(Module);
    stringBuffer.append(TEXT_19);
    stringBuffer.append(Slice);
    stringBuffer.append(TEXT_20);
     if(tempStr_posr != null){
    stringBuffer.append(TEXT_21);
    stringBuffer.append(TEXT_22);
    stringBuffer.append( tempStr_posr);
    stringBuffer.append(TEXT_23);
     } 
                           if(tempStr_cmsr != null){
    stringBuffer.append(TEXT_24);
    stringBuffer.append(TEXT_25);
    stringBuffer.append( tempStr_cmsr);
    stringBuffer.append(TEXT_26);
     } 
                           if(tempStr_e0sr != null){
    stringBuffer.append(TEXT_27);
    stringBuffer.append(TEXT_28);
    stringBuffer.append( tempStr_e0sr);
    stringBuffer.append(TEXT_29);
     }
                           if(tempStr_e1sr != null){
    stringBuffer.append(TEXT_30);
    stringBuffer.append(TEXT_31);
    stringBuffer.append( tempStr_e1sr);
    stringBuffer.append(TEXT_32);
     }
                           if(tempStr_e2sr != null){
    stringBuffer.append(TEXT_33);
    stringBuffer.append(TEXT_34);
    stringBuffer.append( tempStr_e2sr);
    stringBuffer.append(TEXT_35);
     }
                       } 
             } 
         }
     } 
       //********* Capture/Compare Unit 4 (CAPCOM4) CONFIGURATIONS ---  END ************************* 
       
     
    //********* Capture/Compare Unit 8 (CAPCOM8) CONFIGURATIONS BEGIN ************************* 
       if(MyTempPeriName.compareTo("peripheral/ccu8") == 0) {
          String uriStr_CCU8 = "peripheral/ccu8/"; 
    stringBuffer.append(TEXT_36);
     for (int Module = 0; Module < 3; Module++) { 
               String StrTempCC8Reset = null; 
               String StrTempCC8Actual = null; 
               String uriCC8StrTemp = null;        
               uriCC8StrTemp = uriStr_CCU8+ Module +"/global/gctrl_pcis";
               StrTempCC8Reset = app.getResetValue(uriCC8StrTemp);  StrTempCC8Actual = app.getMuxValue(uriCC8StrTemp);              
               if(StrTempCC8Reset.compareTo(StrTempCC8Actual) < 0) {
    stringBuffer.append(TEXT_37);
    stringBuffer.append(Module);
    stringBuffer.append(TEXT_38);
    stringBuffer.append(StrTempCC8Actual);
    stringBuffer.append(TEXT_39);
     } 
                 for (int Slice = 0; Slice < 4; Slice++) { 
                       String tempC8StrEv0is = null; String tempC8StrEv1is = null; String tempC8StrEv2s = null;                   
                       String StrTempCC8ActualEv0is = null; 
                       String StrTempCC8ActualEv1is = null; 
                       String StrTempCC8Actual_ev2s = null; 
                       String uriC8Str_Ev0is = null; String uriC8Str_Ev1is = null; String uriC8Str_ev2s = null;
                       String uriCC8Str_Slice = null; 
                       uriCC8Str_Slice = Integer.toString(Module) +"/cc8/"+ Integer.toString(Slice) +"/";
                       uriC8Str_Ev0is = uriStr_CCU8 + uriCC8Str_Slice +"ins_ev0is";                
                       StrTempCC8Reset = app.getResetValue(uriC8Str_Ev0is);
                       StrTempCC8ActualEv0is = app.getMuxValue(uriC8Str_Ev0is);                   
                       if(StrTempCC8Reset.compareTo(StrTempCC8ActualEv0is) < 0) {
                          tempC8StrEv0is = "WR_REG(CCU8"+ Integer.toString(Module) +"_CC8"+ Integer.toString(Slice) +"->INS, CCU8_CC8_INS_EV0IS_Msk, CCU8_CC8_INS_EV0IS_Pos, CCU8xINy" +  (char)(Integer.parseInt(StrTempCC8ActualEv0is.trim()) + 65)  + ");"; 
                       } 
                       uriC8Str_Ev1is = uriStr_CCU8 + uriCC8Str_Slice +"ins_ev1is";
                       StrTempCC8Reset = app.getResetValue(uriC8Str_Ev1is); 
                       StrTempCC8ActualEv1is = app.getMuxValue(uriC8Str_Ev1is);                   
                       if (StrTempCC8Reset.compareTo(StrTempCC8ActualEv1is) < 0) {
                          tempC8StrEv1is = "WR_REG(CCU8"+ Integer.toString(Module) +"_CC8"+ Integer.toString(Slice) +"->INS, CCU8_CC8_INS_EV1IS_Msk, CCU8_CC8_INS_EV1IS_Pos, CCU8xINy" + (char)(Integer.parseInt(StrTempCC8ActualEv1is.trim()) + 65) + ");"; 
                       }  
                       uriC8Str_ev2s = uriStr_CCU8 + uriCC8Str_Slice +"ins_ev2s";
                       StrTempCC8Reset = app.getResetValue(uriC8Str_ev2s);
                       StrTempCC8Actual_ev2s = app.getMuxValue(uriC8Str_ev2s);               
                       if (StrTempCC8Reset.compareTo(StrTempCC8Actual_ev2s) < 0) {
                         tempC8StrEv2s = "WR_REG(CCU8"+ Integer.toString(Module) +"_CC8"+ Integer.toString(Slice) +"->INS, CCU8_CC8_INS_EV2IS_Msk, CCU8_CC8_INS_EV2IS_Pos, CCU8xINy" + (char)(Integer.parseInt(StrTempCC8Actual_ev2s.trim()) + 65) + ");"; 
                       } 
                      if((tempC8StrEv0is != null) | (tempC8StrEv1is != null) | (tempC8StrEv2s != null) ){
    stringBuffer.append(TEXT_40);
    stringBuffer.append(Module);
    stringBuffer.append(TEXT_41);
    stringBuffer.append(Slice);
    stringBuffer.append(TEXT_42);
     if(tempC8StrEv0is != null){
    stringBuffer.append(TEXT_43);
    stringBuffer.append(TEXT_44);
    stringBuffer.append( tempC8StrEv0is);
    stringBuffer.append(TEXT_45);
     } 
                           if(tempC8StrEv1is != null){
    stringBuffer.append(TEXT_46);
    stringBuffer.append(TEXT_47);
    stringBuffer.append( tempC8StrEv1is);
    stringBuffer.append(TEXT_48);
     } 
                           if(tempC8StrEv2s != null){
    stringBuffer.append(TEXT_49);
    stringBuffer.append(TEXT_50);
    stringBuffer.append( tempC8StrEv2s);
    stringBuffer.append(TEXT_51);
     }  
                        }  
                    }             
                 for (int Slice = 0; Slice < 4; Slice++) { 
                       String tempStr_posr = null;                    
                       String tempStr_cm1sr = null;                    
                       String tempStr_cm2sr = null;                    
                       String tempStr_e0sr = null;                    
                       String tempStr_e1sr = null;                    
                       String tempStr_e2sr = null;                    
                       String StrTempCC8Actual_posr = null; 
                       String StrTempCC8Actual_cm1sr = null; 
                       String StrTempCC8Actual_cm2sr = null; 
                       String StrTempCC8Actual_e0sr = null; 
                       String StrTempCC8Actual_e1sr = null; 
                       String StrTempCC8Actual_e2sr = null; 
                       String uriStr_posr = null; 
                       String uriStr_cm1sr = null; 
                       String uriStr_cm2sr = null; 
                       String uriStr_e0sr = null; 
                       String uriStr_e1sr = null; 
                       String uriStr_e2sr = null; 
                       String uriCC8Str_Slice = null; 
                       uriCC8Str_Slice = Integer.toString(Module) +"/cc8/"+ Integer.toString(Slice) +"/";
                       uriStr_posr = uriStr_CCU8 + uriCC8Str_Slice +"srs_posr"; 
                       StrTempCC8Reset = app.getResetValue(uriStr_posr);
                       StrTempCC8Actual_posr = app.getMuxValue(uriStr_posr);                
                       if(StrTempCC8Reset.compareTo(StrTempCC8Actual_posr) < 0) {
                          tempStr_posr = "WR_REG(CCU8"+ Integer.toString(Module) +"_CC8"+ Integer.toString(Slice) +"->SRS, CCU8_CC8_SRS_POSR_Msk, CCU8_CC8_SRS_POSR_Pos, CCU_SR" + StrTempCC8Actual_posr + ");"; 
                       } 
                       uriStr_cm1sr = uriStr_CCU8 + uriCC8Str_Slice +"srs_cm1sr";
                       StrTempCC8Reset = app.getResetValue(uriStr_cm1sr);
                       StrTempCC8Actual_cm1sr = app.getMuxValue(uriStr_cm1sr);                   
                       if (StrTempCC8Reset.compareTo(StrTempCC8Actual_cm1sr) < 0) {
                          tempStr_cm1sr = "WR_REG(CCU8"+ Integer.toString(Module) +"_CC8"+ Integer.toString(Slice) +"->SRS, CCU8_CC8_SRS_CM1SR_Msk, CCU8_CC8_SRS_CM1SR_Pos, CCU_SR" + StrTempCC8Actual_cm1sr + ");"; 
                       } 
                       uriStr_cm2sr = uriStr_CCU8 + uriCC8Str_Slice +"srs_cm2sr";
                       StrTempCC8Reset = app.getResetValue(uriStr_cm2sr);
                       StrTempCC8Actual_cm2sr = app.getMuxValue(uriStr_cm2sr);                   
                       if (StrTempCC8Reset.compareTo(StrTempCC8Actual_cm2sr) < 0) {
                          tempStr_cm2sr = "WR_REG(CCU8"+ Integer.toString(Module) +"_CC8"+ Integer.toString(Slice) +"->SRS, CCU8_CC8_SRS_CM2SR_Msk, CCU8_CC8_SRS_CM2SR_Pos, CCU_SR" + StrTempCC8Actual_cm2sr + ");"; 
                       } 
                       uriStr_e0sr = uriStr_CCU8 + uriCC8Str_Slice +"srs_e0sr";
                       StrTempCC8Reset = app.getResetValue(uriStr_e0sr);
                       StrTempCC8Actual_e0sr = app.getMuxValue(uriStr_e0sr);                   
                       if (StrTempCC8Reset.compareTo(StrTempCC8Actual_e0sr) < 0) {
                          tempStr_e0sr = "WR_REG(CCU8"+ Integer.toString(Module) +"_CC8"+ Integer.toString(Slice) +"->SRS, CCU8_CC8_SRS_E0SR_Msk, CCU8_CC8_SRS_E0SR_Pos, CCU_SR" + StrTempCC8Actual_e0sr + ");"; 
                       } 
                       uriStr_e1sr = uriStr_CCU8 + uriCC8Str_Slice +"srs_e1sr"; 
                       StrTempCC8Reset = app.getResetValue(uriStr_e1sr);
                       StrTempCC8Actual_e1sr = app.getMuxValue(uriStr_e1sr);                   
                       if (StrTempCC8Reset.compareTo(StrTempCC8Actual_e1sr) < 0) {
                         tempStr_e1sr = "WR_REG(CCU8"+ Integer.toString(Module) +"_CC8"+ Integer.toString(Slice) +"->SRS, CCU8_CC8_SRS_E1SR_Msk, CCU8_CC8_SRS_E1SR_Pos, CCU_SR" + StrTempCC8Actual_e1sr + ");"; 
                       } 
                       uriStr_e2sr = uriStr_CCU8 + uriCC8Str_Slice +"srs_e2sr";
                       StrTempCC8Reset = app.getResetValue(uriStr_e2sr);
                       StrTempCC8Actual_e2sr = app.getMuxValue(uriStr_e2sr);                    
                       if (StrTempCC8Reset.compareTo(StrTempCC8Actual_e2sr) < 0) {
                         tempStr_e2sr = "WR_REG(CCU8"+ Integer.toString(Module) +"_CC8"+ Integer.toString(Slice) +"->SRS, CCU8_CC8_SRS_E2SR_Msk, CCU8_CC8_SRS_E2SR_Pos, CCU_SR" + StrTempCC8Actual_e2sr + ");"; 
                       } 
                       if((tempStr_posr != null)|(tempStr_cm1sr != null)|(tempStr_cm2sr != null)|(tempStr_e0sr != null)|(tempStr_e1sr != null)|(tempStr_e2sr != null) ){
    stringBuffer.append(TEXT_52);
    stringBuffer.append(Module);
    stringBuffer.append(TEXT_53);
    stringBuffer.append(Slice);
    stringBuffer.append(TEXT_54);
     if(tempStr_posr != null){
    stringBuffer.append(TEXT_55);
    stringBuffer.append(TEXT_56);
    stringBuffer.append( tempStr_posr);
    stringBuffer.append(TEXT_57);
     } 
                           if(tempStr_cm1sr != null){
    stringBuffer.append(TEXT_58);
    stringBuffer.append(TEXT_59);
    stringBuffer.append( tempStr_cm1sr);
    stringBuffer.append(TEXT_60);
     } 
                           if(tempStr_cm2sr != null){
    stringBuffer.append(TEXT_61);
    stringBuffer.append(TEXT_62);
    stringBuffer.append( tempStr_cm2sr);
    stringBuffer.append(TEXT_63);
     } 
                           if(tempStr_e0sr != null){
    stringBuffer.append(TEXT_64);
    stringBuffer.append(TEXT_65);
    stringBuffer.append( tempStr_e0sr);
    stringBuffer.append(TEXT_66);
     }
                           if(tempStr_e1sr != null){
    stringBuffer.append(TEXT_67);
    stringBuffer.append(TEXT_68);
    stringBuffer.append( tempStr_e1sr);
    stringBuffer.append(TEXT_69);
     }
                           if(tempStr_e2sr != null){
    stringBuffer.append(TEXT_70);
    stringBuffer.append(TEXT_71);
    stringBuffer.append( tempStr_e2sr);
    stringBuffer.append(TEXT_72);
     }
                       } 
              } 
         }  
     } 
     //-- END OF Capture/Compare Unit 8 (CAPCOM8) CONFIGURATIONS -- 
     
     
      //********* Ethernet MAC CONFIGURATIONS BEGIN ************************* 
      if(MyTempPeriName.compareTo("peripheral/eth") == 0) {
       String uriStr_ETH = "peripheral/eth/0/eth/"; 
    stringBuffer.append(TEXT_73);
     String StrResetETH = null;
                   String StrETHcon_rxd0 = null; String ActETHcon_rxd0 = null; String uriETHcon_rxd0 = null; 
                   String StrETHcon_rxd1 = null; String ActETHcon_rxd1 = null; String uriETHcon_rxd1 = null; 
                   String StrETHcon_rxd2 = null; String ActETHcon_rxd2 = null; String uriETHcon_rxd2 = null; 
                   String StrETHcon_rxd3 = null; String ActETHcon_rxd3 = null; String uriETHcon_rxd3 = null; 
                   String StrETHcon_rmii = null; String ActETHcon_rmii = null; String uriETHcon_rmii = null; 
                   String StrETHcon_crs_dv = null; String ActETHcon_crs_dv = null; String uriETHcon_crs_dv = null; 
                   String StrETHcon_crs = null; String ActETHcon_crs = null; String uriETHcon_crs = null; 
                   String StrETHcon_rxer = null; String ActETHcon_rxer = null; String uriETHcon_rxer = null; 
                   String StrETHcon_col = null; String ActETHcon_col = null; String uriETHcon_col = null; 
                   String StrETHcon_clk_tx = null; String ActETHcon_clk_tx = null; String uriETHcon_clk_tx = null; 
                   String StrETHcon_mdio = null; String ActETHcon_mdio = null; String uriETHcon_mdio = null; 
                   String StrETHcon_infsel = null; String ActETHcon_infsel = null; String uriETHcon_infsel = null;                    

                      uriETHcon_rxd0 = uriStr_ETH +"con_rxd0";
                      StrResetETH = app.getResetValue(uriETHcon_rxd0);
                   ActETHcon_rxd0 = app.getMuxValue(uriETHcon_rxd0);                   
                    if(StrResetETH.compareTo(ActETHcon_rxd0) < 0) 
                    {
                      StrETHcon_rxd0 = "WR_REG(ETH0_CON->CON, ETH_CON_RXD0_Msk, ETH_CON_RXD0_Pos, ETH_RXDx" + (char)(Integer.parseInt(ActETHcon_rxd0.trim()) + 65) + ");"; 
                      } 
                      uriETHcon_rxd1 = uriStr_ETH +"con_rxd1";
                      StrResetETH = app.getResetValue(uriETHcon_rxd1);
                   ActETHcon_rxd1 = app.getMuxValue(uriETHcon_rxd1);                   
                    if(StrResetETH.compareTo(ActETHcon_rxd1) < 0) 
                    {
                      StrETHcon_rxd1 = "WR_REG(ETH0_CON->CON, ETH_CON_RXD1_Msk, ETH_CON_RXD1_Pos, ETH_RXDx" + (char)(Integer.parseInt(ActETHcon_rxd1.trim()) + 65) + ");"; 
                      } 
                      uriETHcon_rxd2 = uriStr_ETH +"con_rxd2";
                      StrResetETH = app.getResetValue(uriETHcon_rxd2);
                   ActETHcon_rxd2 = app.getMuxValue(uriETHcon_rxd2);                   
                    if(StrResetETH.compareTo(ActETHcon_rxd2) < 0) 
                    {
                      StrETHcon_rxd2 = "WR_REG(ETH0_CON->CON, ETH_CON_RXD2_Msk, ETH_CON_RXD2_Pos, ETH_RXDx" + (char)(Integer.parseInt(ActETHcon_rxd2.trim()) + 65) + ");"; 
                      } 
                      uriETHcon_rxd3 = uriStr_ETH +"con_rxd3";
                      StrResetETH = app.getResetValue(uriETHcon_rxd3);
                   ActETHcon_rxd3 = app.getMuxValue(uriETHcon_rxd3);                   
                    if(StrResetETH.compareTo(ActETHcon_rxd3) < 0) 
                    {
                      StrETHcon_rxd3 = "WR_REG(ETH0_CON->CON, ETH_CON_RXD3_Msk, ETH_CON_RXD3_Pos, ETH_RXDx" + (char)(Integer.parseInt(ActETHcon_rxd3.trim()) + 65) + ");"; 
                      } 
                      uriETHcon_rmii = uriStr_ETH +"con_rmii";
                      StrResetETH = app.getResetValue(uriETHcon_rmii);
                   ActETHcon_rmii = app.getMuxValue(uriETHcon_rmii);                   
                    if(StrResetETH.compareTo(ActETHcon_rmii) < 0) 
                    {
                      StrETHcon_rmii = "WR_REG(ETH0_CON->CON, ETH_CON_CLK_RMII_Msk, ETH_CON_CLK_RMII_Pos, ETH_RMII" + (char)(Integer.parseInt(ActETHcon_rmii.trim()) + 65) + ");"; 
                      } 
                      uriETHcon_crs_dv = uriStr_ETH +"con_crs_dv";
                      StrResetETH = app.getResetValue(uriETHcon_crs_dv);
                   ActETHcon_crs_dv = app.getMuxValue(uriETHcon_crs_dv);                   
                    if(StrResetETH.compareTo(ActETHcon_crs_dv) < 0) 
                    {
                      StrETHcon_crs_dv = "WR_REG(ETH0_CON->CON, ETH_CON_CRS_DV_Msk, ETH_CON_CRS_DV_Pos, ETH_CRS_DV" + (char)(Integer.parseInt(ActETHcon_crs_dv.trim()) + 65) + ");"; 
                      } 
                      uriETHcon_crs = uriStr_ETH +"con_crs";
                      StrResetETH = app.getResetValue(uriETHcon_crs);
                   ActETHcon_crs = app.getMuxValue(uriETHcon_crs);                   
                    if(StrResetETH.compareTo(ActETHcon_crs) < 0) 
                    {
                      StrETHcon_crs = "WR_REG(ETH0_CON->CON, ETH_CON_CRS_Msk, ETH_CON_CRS_Pos, ETH_CRS" + (char)(Integer.parseInt(ActETHcon_crs.trim()) + 65) + ");"; 
                      } 
                      uriETHcon_rxer = uriStr_ETH +"con_rxer";
                      StrResetETH = app.getResetValue(uriETHcon_rxer);
                   ActETHcon_rxer = app.getMuxValue(uriETHcon_rxer);                   
                    if(StrResetETH.compareTo(ActETHcon_rxer) < 0) 
                    {
                      StrETHcon_rxer = "WR_REG(ETH0_CON->CON, ETH_CON_RXER_Msk, ETH_CON_RXER_Pos, ETH_RXER" + (char)(Integer.parseInt(ActETHcon_rxer.trim()) + 65) + ");"; 
                      } 
                      uriETHcon_col = uriStr_ETH +"con_col";
                      StrResetETH = app.getResetValue(uriETHcon_col);
                   ActETHcon_col = app.getMuxValue(uriETHcon_col);                   
                    if(StrResetETH.compareTo(ActETHcon_col) < 0) {
                      StrETHcon_col = "WR_REG(ETH0_CON->CON, ETH_CON_COL_Msk, ETH_CON_COL_Pos, ETH_COL" + (char)(Integer.parseInt(ActETHcon_col.trim()) + 65) + ");"; 
                      } 
                      uriETHcon_clk_tx = uriStr_ETH +"con_clk_tx";
                      StrResetETH = app.getResetValue(uriETHcon_clk_tx);
                   ActETHcon_clk_tx = app.getMuxValue(uriETHcon_clk_tx);                   
                    if(StrResetETH.compareTo(ActETHcon_clk_tx) < 0) 
                    {
                      StrETHcon_clk_tx = "WR_REG(ETH0_CON->CON, ETH_CON_CLK_TX_Msk, ETH_CON_CLK_TX_Pos, ETH_CLK_TX" + (char)(Integer.parseInt(ActETHcon_clk_tx.trim()) + 65) + ");"; 
                      } 
                      uriETHcon_mdio = uriStr_ETH +"con_mdio";
                      StrResetETH = app.getResetValue(uriETHcon_mdio);
                   ActETHcon_mdio = app.getMuxValue(uriETHcon_mdio);                   
                    if(StrResetETH.compareTo(ActETHcon_mdio) < 0) 
                    {
                      StrETHcon_mdio = "WR_REG(ETH0_CON->CON, ETH_CON_MDIO_Msk, ETH_CON_MDIO_Pos, ETH_MDIO" + (char)(Integer.parseInt(ActETHcon_mdio.trim()) + 65) + ");"; 
                      } 
                      uriETHcon_infsel = uriStr_ETH +"con_infsel";
                      StrResetETH = app.getResetValue(uriETHcon_infsel);
                   ActETHcon_infsel = app.getMuxValue(uriETHcon_infsel);                   
                    if(StrResetETH.compareTo(ActETHcon_infsel) < 0) 
                    {
                      StrETHcon_infsel = "WR_REG(ETH0_CON->CON, ETH_CON_INFSEL_Msk, ETH_CON_INFSEL_Pos," + ActETHcon_infsel + ");"; 
                      }                       
                    if((StrETHcon_rxd0 != null)|(StrETHcon_rxd1 != null)|(StrETHcon_rxd2 != null)|(StrETHcon_rxd3 != null)
                     |(StrETHcon_rmii != null)|(StrETHcon_crs_dv != null)|(StrETHcon_crs != null)|(StrETHcon_rxer != null)
                     |(StrETHcon_col != null)|(StrETHcon_clk_tx != null)|(StrETHcon_mdio != null)|(StrETHcon_infsel != null)){
    stringBuffer.append(TEXT_74);
     if(StrETHcon_rxd0 != null){
    stringBuffer.append(TEXT_75);
    stringBuffer.append(TEXT_76);
    stringBuffer.append( StrETHcon_rxd0);
    stringBuffer.append(TEXT_77);
     } if(StrETHcon_rxd1 != null){
    stringBuffer.append(TEXT_78);
    stringBuffer.append(TEXT_79);
    stringBuffer.append( StrETHcon_rxd1);
    stringBuffer.append(TEXT_80);
     } if(StrETHcon_rxd2 != null){
    stringBuffer.append(TEXT_81);
    stringBuffer.append(TEXT_82);
    stringBuffer.append( StrETHcon_rxd2);
    stringBuffer.append(TEXT_83);
     } if(StrETHcon_rxd3 != null){
    stringBuffer.append(TEXT_84);
    stringBuffer.append(TEXT_85);
    stringBuffer.append( StrETHcon_rxd3);
    stringBuffer.append(TEXT_86);
     } if(StrETHcon_rmii != null){
    stringBuffer.append(TEXT_87);
    stringBuffer.append(TEXT_88);
    stringBuffer.append( StrETHcon_rmii);
    stringBuffer.append(TEXT_89);
     } if(StrETHcon_crs_dv != null){
    stringBuffer.append(TEXT_90);
    stringBuffer.append(TEXT_91);
    stringBuffer.append( StrETHcon_crs_dv);
    stringBuffer.append(TEXT_92);
     } if(StrETHcon_crs != null){
    stringBuffer.append(TEXT_93);
    stringBuffer.append(TEXT_94);
    stringBuffer.append( StrETHcon_crs);
    stringBuffer.append(TEXT_95);
     } if(StrETHcon_rxer != null){
    stringBuffer.append(TEXT_96);
    stringBuffer.append(TEXT_97);
    stringBuffer.append( StrETHcon_rxer);
    stringBuffer.append(TEXT_98);
     } if(StrETHcon_col != null){
    stringBuffer.append(TEXT_99);
    stringBuffer.append(TEXT_100);
    stringBuffer.append( StrETHcon_col);
    stringBuffer.append(TEXT_101);
     } if(StrETHcon_clk_tx != null){
    stringBuffer.append(TEXT_102);
    stringBuffer.append(TEXT_103);
    stringBuffer.append( StrETHcon_clk_tx);
    stringBuffer.append(TEXT_104);
     } if(StrETHcon_mdio != null){
    stringBuffer.append(TEXT_105);
    stringBuffer.append(TEXT_106);
    stringBuffer.append( StrETHcon_mdio);
    stringBuffer.append(TEXT_107);
     } if(StrETHcon_infsel != null){
    stringBuffer.append(TEXT_108);
    stringBuffer.append(TEXT_109);
    stringBuffer.append( StrETHcon_infsel);
    stringBuffer.append(TEXT_110);
     } 
                   }                   
      } 
      //********* Ethernet MAC CONFIGURATIONS ---  END ************************* 
      
           
     //********* Delta-Sigma Demodulator (DSD) --- BEGIN ************************* 
     if(MyTempPeriName.compareTo("peripheral/dsd") == 0) {
         String uriStr_DSD = "peripheral/dsd/0/Channel/"; 
        //********* Delta-Sigma Demodulator (DSD) CONFIGURATIONS ************************* 
         for (int Ch = 0; Ch < 4; Ch++) { 
               String uriStr_xReg = null; 
			   String StrTempDSDReset = null;
			   String StrTempDSDActualX = null;
			   String temp_dicfg_dsrc = null;
			   String temp_dicfg_dsrc_sel = null;
			   String temp_dicfg_csrc = null;
			   String temp_dicfg_scwc = null;
			   String temp_dicfg_trsel = null;
			   String temp_dicfg_trwc = null;
			   String temp_DIN = null;			   
               uriStr_xReg = uriStr_DSD + Integer.toString(Ch) + "/dicfg_dsrcsel";
               StrTempDSDReset = app.getResetValue(uriStr_xReg);
               StrTempDSDActualX = app.getMuxValue(uriStr_xReg);                   
               if(StrTempDSDReset.compareTo(StrTempDSDActualX) < 0) { 
	              if(StrTempDSDActualX.equals("1")) {
	               	temp_DIN = "A";
               		}
	              else if(StrTempDSDActualX.equals("2")) {
	               	temp_DIN = "B";
	                }               
temp_dicfg_dsrc_sel = "WR_REG(DSD_CH"+ Integer.toString(Ch) +"->DICFG, DSD_CH_DICFG_DSWC_DSRCSEL_Msk, DSD_CH_DICFG_DSRC_Pos, \\\n     ((((DSD_CH"+ Integer.toString(Ch) +"->DICFG) & DSD_CH_DICFG_DSRC_Msk) | (DSD_CH_DICFG_DSWC_Msk | (DINx" + temp_DIN + ")<<1))));";
               } 
               uriStr_xReg = uriStr_DSD + Integer.toString(Ch) + "/dicfg_csrc";
               StrTempDSDReset = app.getResetValue(uriStr_xReg);
               StrTempDSDActualX = app.getMuxValue(uriStr_xReg);                   
               if(StrTempDSDReset.compareTo(StrTempDSDActualX) < 0) { 
	              if(StrTempDSDActualX.equals("1")) {
	               	temp_DIN = "A";
               		}
	              else if(StrTempDSDActualX.equals("2")) {
	               	temp_DIN = "B";
	                }               
	              else if(StrTempDSDActualX.equals("15")) {
	               	temp_DIN = "INTERNAL";
	                }       
temp_dicfg_csrc = "WR_REG(DSD_CH"+ Integer.toString(Ch) +"->DICFG, DSD_CH_DICFG_SCWC_STROBE_CSRC_Msk, DSD_CH_DICFG_CSRC_Pos, \\\n     (((((DSD_CH"+ Integer.toString(Ch) +"->DICFG) & DSD_CH_DICFG_STROBE_Msk) | DSD_CH_DICFG_SCWC_Msk) >> DSD_CH_DICFG_CSRC_Pos) | MCLKx" + temp_DIN + "));";               
               } 
               uriStr_xReg = uriStr_DSD + Integer.toString(Ch) + "/dicfg_trsel";
               StrTempDSDReset = app.getResetValue(uriStr_xReg);
               StrTempDSDActualX = app.getMuxValue(uriStr_xReg);                   
               if(StrTempDSDReset.compareTo(StrTempDSDActualX) < 0){ 
  temp_dicfg_trsel = "WR_REG(DSD_CH"+ Integer.toString(Ch) +"->DICFG, DSD_CH_DICFG_TRWC_TRSEL_Msk, DSD_CH_DICFG_ITRMODE_Pos, \\\n     ((((DSD_CH"+ Integer.toString(Ch) +"->DICFG) & (DSD_CH_DICFG_ITRMODE_Msk|DSD_CH_DICFG_TSTRMODE_Msk))| \\\n     (DSD_CH_DICFG_TRWC_Msk) | (ITRx" + (char)(Integer.parseInt(StrTempDSDActualX.trim()) + 65)  + "  << DSD_CH_DICFG_TRSEL_Pos)) >> DSD_CH_DICFG_ITRMODE_Pos));";

               } 
    stringBuffer.append(TEXT_111);
     if((temp_dicfg_dsrc_sel != null) | (temp_dicfg_csrc != null) | (temp_dicfg_trsel != null) ){
    stringBuffer.append(TEXT_112);
    stringBuffer.append(Ch);
     if(temp_dicfg_dsrc_sel != null){
    stringBuffer.append(TEXT_113);
    stringBuffer.append(TEXT_114);
    stringBuffer.append(temp_dicfg_dsrc_sel);
     } 
     if(temp_dicfg_csrc != null){
    stringBuffer.append(TEXT_115);
    stringBuffer.append( temp_dicfg_csrc);
    stringBuffer.append(TEXT_116);
     } 
     if(temp_dicfg_trsel != null){
    stringBuffer.append(TEXT_117);
    stringBuffer.append( temp_dicfg_trsel);
    stringBuffer.append(TEXT_118);
     } 
     } 
                 uriStr_xReg = uriStr_DSD + Integer.toString(Ch) + "/rectcfg_ssrc";
               StrTempDSDReset = app.getResetValue(uriStr_xReg);
               StrTempDSDActualX = app.getMuxValue(uriStr_xReg);                   
               if(StrTempDSDReset.compareTo(StrTempDSDActualX) < 0) { 
    stringBuffer.append(TEXT_119);
    stringBuffer.append(Ch);
    stringBuffer.append(TEXT_120);
    stringBuffer.append(Ch);
    stringBuffer.append(TEXT_121);
    stringBuffer.append(StrTempDSDActualX);
    stringBuffer.append(TEXT_122);
                  } 
         }             
     } 
       //********* Delta-Sigma Demodulator (DSD) CONFIGURATIONS ---  END ************************* 
       
    
     //********* Multi CAN CONFIGURATIONS --- BEGIN *************************
    if(MyTempPeriName.compareTo("peripheral/can") == 0) {
    stringBuffer.append(TEXT_123);
     String CANuri = null;
     String NODExTypedef = null; 
     String MOxTypedef = null; 
     String RstCANuriMuxVal = null; 
     String ActCANuriMuxVal = null; 
     for (int NodeNr=0; NodeNr<=2; NodeNr++) { 
     CANuri = "peripheral/can/0/node/" + NodeNr + "/npcr_rxsel"; 
     RstCANuriMuxVal = app.getResetValue(CANuri); 
    stringBuffer.append(TEXT_124);
     ActCANuriMuxVal = app.getMuxValue(CANuri); 
     if((ActCANuriMuxVal.compareTo(RstCANuriMuxVal) != 0) && (ActCANuriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_125);
     if (NODExTypedef != "Defined") { 
    stringBuffer.append(TEXT_126);
    stringBuffer.append( NodeNr);
    stringBuffer.append(TEXT_127);
     NODExTypedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_128);
    stringBuffer.append( NodeNr);
    stringBuffer.append(TEXT_129);
    stringBuffer.append( app.getMuxValue(CANuri) );
    stringBuffer.append(TEXT_130);
     } 
     CANuri = "peripheral/can/0/node/" + NodeNr + "/nipr_trinp"; 
     RstCANuriMuxVal = app.getResetValue(CANuri); 
    stringBuffer.append(TEXT_131);
     ActCANuriMuxVal = app.getMuxValue(CANuri); 
     if((ActCANuriMuxVal.compareTo(RstCANuriMuxVal) != 0) && (ActCANuriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_132);
     if (NODExTypedef != "Defined") { 
    stringBuffer.append(TEXT_133);
    stringBuffer.append( NodeNr);
    stringBuffer.append(TEXT_134);
     NODExTypedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_135);
    stringBuffer.append( NodeNr);
    stringBuffer.append(TEXT_136);
    stringBuffer.append( app.getMuxValue(CANuri) );
    stringBuffer.append(TEXT_137);
     } 
     CANuri = "peripheral/can/0/node/" + NodeNr + "/nipr_lecinp"; 
     RstCANuriMuxVal = app.getResetValue(CANuri); 
    stringBuffer.append(TEXT_138);
     ActCANuriMuxVal = app.getMuxValue(CANuri); 
     if((ActCANuriMuxVal.compareTo(RstCANuriMuxVal) != 0) && (ActCANuriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_139);
     if (NODExTypedef != "Defined") { 
    stringBuffer.append(TEXT_140);
    stringBuffer.append( NodeNr);
    stringBuffer.append(TEXT_141);
     NODExTypedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_142);
    stringBuffer.append( NodeNr);
    stringBuffer.append(TEXT_143);
    stringBuffer.append( app.getMuxValue(CANuri) );
    stringBuffer.append(TEXT_144);
     } 
     CANuri = "peripheral/can/0/node/" + NodeNr + "/nipr_alinp"; 
     RstCANuriMuxVal = app.getResetValue(CANuri); 
    stringBuffer.append(TEXT_145);
     ActCANuriMuxVal = app.getMuxValue(CANuri); 
     if((ActCANuriMuxVal.compareTo(RstCANuriMuxVal) != 0) && (ActCANuriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_146);
     if (NODExTypedef != "Defined") { 
    stringBuffer.append(TEXT_147);
    stringBuffer.append( NodeNr);
    stringBuffer.append(TEXT_148);
     NODExTypedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_149);
    stringBuffer.append( NodeNr);
    stringBuffer.append(TEXT_150);
    stringBuffer.append( app.getMuxValue(CANuri) );
    stringBuffer.append(TEXT_151);
     } 
     CANuri = "peripheral/can/0/node/" + NodeNr + "/nipr_cfcinp"; 
     RstCANuriMuxVal = app.getResetValue(CANuri); 
    stringBuffer.append(TEXT_152);
     ActCANuriMuxVal = app.getMuxValue(CANuri); 
     if((ActCANuriMuxVal.compareTo(RstCANuriMuxVal) != 0) && (ActCANuriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_153);
     if (NODExTypedef != "Defined") { 
    stringBuffer.append(TEXT_154);
    stringBuffer.append( NodeNr);
    stringBuffer.append(TEXT_155);
     NODExTypedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_156);
    stringBuffer.append( NodeNr);
    stringBuffer.append(TEXT_157);
    stringBuffer.append( app.getMuxValue(CANuri) );
    stringBuffer.append(TEXT_158);
     } 
     NODExTypedef = null; 
     } 
     for (int MONr=0; MONr<=63; MONr++) { 
     CANuri = "peripheral/can/0/mo/" + MONr + "/moipr_txinp"; 
     RstCANuriMuxVal = app.getResetValue(CANuri); 
    stringBuffer.append(TEXT_159);
     ActCANuriMuxVal = app.getMuxValue(CANuri); 
     if((ActCANuriMuxVal.compareTo(RstCANuriMuxVal) != 0) && (ActCANuriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_160);
     if (MOxTypedef != "Defined") { 
    stringBuffer.append(TEXT_161);
    stringBuffer.append( MONr);
    stringBuffer.append(TEXT_162);
     MOxTypedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_163);
    stringBuffer.append( MONr);
    stringBuffer.append(TEXT_164);
    stringBuffer.append( app.getMuxValue(CANuri) );
    stringBuffer.append(TEXT_165);
     } 
     CANuri = "peripheral/can/0/mo/" + MONr + "/moipr_rxinp"; 
     RstCANuriMuxVal = app.getResetValue(CANuri); 
    stringBuffer.append(TEXT_166);
     ActCANuriMuxVal = app.getMuxValue(CANuri); 
     if((ActCANuriMuxVal.compareTo(RstCANuriMuxVal) != 0) && (ActCANuriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_167);
     if (MOxTypedef != "Defined") { 
    stringBuffer.append(TEXT_168);
    stringBuffer.append( MONr);
    stringBuffer.append(TEXT_169);
     MOxTypedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_170);
    stringBuffer.append( MONr);
    stringBuffer.append(TEXT_171);
    stringBuffer.append( app.getMuxValue(CANuri) );
    stringBuffer.append(TEXT_172);
     } 
     MOxTypedef = null; 
     } 
    stringBuffer.append(TEXT_173);
     } 
     //********* Multi CAN CONFIGURATIONS ---  END ************************* 
     //********* POSIF CONFIGURATIONS --- BEGIN ************************* 
    if(MyTempPeriName.compareTo("peripheral/posif") == 0) {
    stringBuffer.append(TEXT_174);
     String POSIF0uri = null;
     String POSIF0Typedef = null; 
     String RstPOSIF0uriMuxVal = null; 
     String ActPOSIF0uriMuxVal = null; 
     POSIF0uri = "peripheral/Posif/0/Posif/pconf_insel0"; 
     RstPOSIF0uriMuxVal = app.getResetValue(POSIF0uri); 
    stringBuffer.append(TEXT_175);
     ActPOSIF0uriMuxVal = app.getMuxValue(POSIF0uri); 
     if((ActPOSIF0uriMuxVal.compareTo(RstPOSIF0uriMuxVal) != 0) && (ActPOSIF0uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_176);
     if (POSIF0Typedef != "Defined") { 
    stringBuffer.append(TEXT_177);
     POSIF0Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_178);
    stringBuffer.append( app.getMuxValue(POSIF0uri) );
    stringBuffer.append(TEXT_179);
     } 
     POSIF0uri = "peripheral/Posif/0/Posif/pconf_insel1"; 
     RstPOSIF0uriMuxVal = app.getResetValue(POSIF0uri); 
    stringBuffer.append(TEXT_180);
     ActPOSIF0uriMuxVal = app.getMuxValue(POSIF0uri); 
     if((ActPOSIF0uriMuxVal.compareTo(RstPOSIF0uriMuxVal) != 0) && (ActPOSIF0uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_181);
     if (POSIF0Typedef != "Defined") { 
    stringBuffer.append(TEXT_182);
     POSIF0Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_183);
    stringBuffer.append( app.getMuxValue(POSIF0uri) );
    stringBuffer.append(TEXT_184);
     } 
     POSIF0uri = "peripheral/Posif/0/Posif/pconf_insel2"; 
     RstPOSIF0uriMuxVal = app.getResetValue(POSIF0uri); 
    stringBuffer.append(TEXT_185);
     ActPOSIF0uriMuxVal = app.getMuxValue(POSIF0uri); 
     if((ActPOSIF0uriMuxVal.compareTo(RstPOSIF0uriMuxVal) != 0) && (ActPOSIF0uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_186);
     if (POSIF0Typedef != "Defined") { 
    stringBuffer.append(TEXT_187);
     POSIF0Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_188);
    stringBuffer.append( app.getMuxValue(POSIF0uri) );
    stringBuffer.append(TEXT_189);
     } 
     POSIF0uri = "peripheral/Posif/0/Posif/pconf_dsel"; 
     RstPOSIF0uriMuxVal = app.getResetValue(POSIF0uri); 
    stringBuffer.append(TEXT_190);
     ActPOSIF0uriMuxVal = app.getMuxValue(POSIF0uri); 
     if((ActPOSIF0uriMuxVal.compareTo(RstPOSIF0uriMuxVal) != 0) && (ActPOSIF0uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_191);
     if (POSIF0Typedef != "Defined") { 
    stringBuffer.append(TEXT_192);
     POSIF0Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_193);
    stringBuffer.append( app.getMuxValue(POSIF0uri) );
    stringBuffer.append(TEXT_194);
     } 
     POSIF0uri = "peripheral/Posif/0/Posif/pconf_ewis"; 
     RstPOSIF0uriMuxVal = app.getResetValue(POSIF0uri); 
    stringBuffer.append(TEXT_195);
     ActPOSIF0uriMuxVal = app.getMuxValue(POSIF0uri); 
     if((ActPOSIF0uriMuxVal.compareTo(RstPOSIF0uriMuxVal) != 0) && (ActPOSIF0uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_196);
     if (POSIF0Typedef != "Defined") { 
    stringBuffer.append(TEXT_197);
     POSIF0Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_198);
    stringBuffer.append( app.getMuxValue(POSIF0uri) );
    stringBuffer.append(TEXT_199);
     } 
     POSIF0uri = "peripheral/Posif/0/Posif/pconf_msets"; 
     RstPOSIF0uriMuxVal = app.getResetValue(POSIF0uri); 
    stringBuffer.append(TEXT_200);
     ActPOSIF0uriMuxVal = app.getMuxValue(POSIF0uri); 
     if((ActPOSIF0uriMuxVal.compareTo(RstPOSIF0uriMuxVal) != 0) && (ActPOSIF0uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_201);
     if (POSIF0Typedef != "Defined") { 
    stringBuffer.append(TEXT_202);
     POSIF0Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_203);
    stringBuffer.append( app.getMuxValue(POSIF0uri) );
    stringBuffer.append(TEXT_204);
     } 
     POSIF0uri = "peripheral/Posif/0/Posif/pconf_msyns"; 
     RstPOSIF0uriMuxVal = app.getResetValue(POSIF0uri); 
    stringBuffer.append(TEXT_205);
     ActPOSIF0uriMuxVal = app.getMuxValue(POSIF0uri); 
     if((ActPOSIF0uriMuxVal.compareTo(RstPOSIF0uriMuxVal) != 0) && (ActPOSIF0uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_206);
     if (POSIF0Typedef != "Defined") { 
    stringBuffer.append(TEXT_207);
     POSIF0Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_208);
    stringBuffer.append( app.getMuxValue(POSIF0uri) );
    stringBuffer.append(TEXT_209);
     } 
     POSIF0uri = "peripheral/Posif/0/Posif/pflge_eche"; 
     RstPOSIF0uriMuxVal = app.getResetValue(POSIF0uri); 
    stringBuffer.append(TEXT_210);
     ActPOSIF0uriMuxVal = app.getMuxValue(POSIF0uri); 
     if((ActPOSIF0uriMuxVal.compareTo(RstPOSIF0uriMuxVal) != 0) && (ActPOSIF0uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_211);
     if (POSIF0Typedef != "Defined") { 
    stringBuffer.append(TEXT_212);
     POSIF0Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_213);
    stringBuffer.append( app.getMuxValue(POSIF0uri) );
    stringBuffer.append(TEXT_214);
     } 
     POSIF0uri = "peripheral/Posif/0/Posif/pflge_chesel"; 
     RstPOSIF0uriMuxVal = app.getResetValue(POSIF0uri); 
    stringBuffer.append(TEXT_215);
     ActPOSIF0uriMuxVal = app.getMuxValue(POSIF0uri); 
     if((ActPOSIF0uriMuxVal.compareTo(RstPOSIF0uriMuxVal) != 0) && (ActPOSIF0uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_216);
     if (POSIF0Typedef != "Defined") { 
    stringBuffer.append(TEXT_217);
     POSIF0Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_218);
    stringBuffer.append( app.getMuxValue(POSIF0uri) );
    stringBuffer.append(TEXT_219);
     } 
     POSIF0uri = "peripheral/Posif/0/Posif/pflge_ewhe"; 
     RstPOSIF0uriMuxVal = app.getResetValue(POSIF0uri); 
    stringBuffer.append(TEXT_220);
     ActPOSIF0uriMuxVal = app.getMuxValue(POSIF0uri); 
     if((ActPOSIF0uriMuxVal.compareTo(RstPOSIF0uriMuxVal) != 0) && (ActPOSIF0uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_221);
     if (POSIF0Typedef != "Defined") { 
    stringBuffer.append(TEXT_222);
     POSIF0Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_223);
    stringBuffer.append( app.getMuxValue(POSIF0uri) );
    stringBuffer.append(TEXT_224);
     } 
     POSIF0uri = "peripheral/Posif/0/Posif/pflge_whesel"; 
     RstPOSIF0uriMuxVal = app.getResetValue(POSIF0uri); 
    stringBuffer.append(TEXT_225);
     ActPOSIF0uriMuxVal = app.getMuxValue(POSIF0uri); 
     if((ActPOSIF0uriMuxVal.compareTo(RstPOSIF0uriMuxVal) != 0) && (ActPOSIF0uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_226);
     if (POSIF0Typedef != "Defined") { 
    stringBuffer.append(TEXT_227);
     POSIF0Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_228);
    stringBuffer.append( app.getMuxValue(POSIF0uri) );
    stringBuffer.append(TEXT_229);
     } 
     POSIF0uri = "peripheral/Posif/0/Posif/pflge_ehie"; 
     RstPOSIF0uriMuxVal = app.getResetValue(POSIF0uri); 
    stringBuffer.append(TEXT_230);
     ActPOSIF0uriMuxVal = app.getMuxValue(POSIF0uri); 
     if((ActPOSIF0uriMuxVal.compareTo(RstPOSIF0uriMuxVal) != 0) && (ActPOSIF0uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_231);
     if (POSIF0Typedef != "Defined") { 
    stringBuffer.append(TEXT_232);
     POSIF0Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_233);
    stringBuffer.append( app.getMuxValue(POSIF0uri) );
    stringBuffer.append(TEXT_234);
     } 
     POSIF0uri = "peripheral/Posif/0/Posif/pflge_hiesel"; 
     RstPOSIF0uriMuxVal = app.getResetValue(POSIF0uri); 
    stringBuffer.append(TEXT_235);
     ActPOSIF0uriMuxVal = app.getMuxValue(POSIF0uri); 
     if((ActPOSIF0uriMuxVal.compareTo(RstPOSIF0uriMuxVal) != 0) && (ActPOSIF0uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_236);
     if (POSIF0Typedef != "Defined") { 
    stringBuffer.append(TEXT_237);
     POSIF0Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_238);
    stringBuffer.append( app.getMuxValue(POSIF0uri) );
    stringBuffer.append(TEXT_239);
     } 
     POSIF0uri = "peripheral/Posif/0/Posif/pflge_emst"; 
     RstPOSIF0uriMuxVal = app.getResetValue(POSIF0uri); 
    stringBuffer.append(TEXT_240);
     ActPOSIF0uriMuxVal = app.getMuxValue(POSIF0uri); 
     if((ActPOSIF0uriMuxVal.compareTo(RstPOSIF0uriMuxVal) != 0) && (ActPOSIF0uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_241);
     if (POSIF0Typedef != "Defined") { 
    stringBuffer.append(TEXT_242);
     POSIF0Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_243);
    stringBuffer.append( app.getMuxValue(POSIF0uri) );
    stringBuffer.append(TEXT_244);
     } 
     POSIF0uri = "peripheral/Posif/0/Posif/pflge_mstsel"; 
     RstPOSIF0uriMuxVal = app.getResetValue(POSIF0uri); 
    stringBuffer.append(TEXT_245);
     ActPOSIF0uriMuxVal = app.getMuxValue(POSIF0uri); 
     if((ActPOSIF0uriMuxVal.compareTo(RstPOSIF0uriMuxVal) != 0) && (ActPOSIF0uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_246);
     if (POSIF0Typedef != "Defined") { 
    stringBuffer.append(TEXT_247);
     POSIF0Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_248);
    stringBuffer.append( app.getMuxValue(POSIF0uri) );
    stringBuffer.append(TEXT_249);
     } 
     POSIF0uri = "peripheral/Posif/0/Posif/pflge_eindx"; 
     RstPOSIF0uriMuxVal = app.getResetValue(POSIF0uri); 
    stringBuffer.append(TEXT_250);
     ActPOSIF0uriMuxVal = app.getMuxValue(POSIF0uri); 
     if((ActPOSIF0uriMuxVal.compareTo(RstPOSIF0uriMuxVal) != 0) && (ActPOSIF0uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_251);
     if (POSIF0Typedef != "Defined") { 
    stringBuffer.append(TEXT_252);
     POSIF0Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_253);
    stringBuffer.append( app.getMuxValue(POSIF0uri) );
    stringBuffer.append(TEXT_254);
     } 
     POSIF0uri = "peripheral/Posif/0/Posif/pflge_indsel"; 
     RstPOSIF0uriMuxVal = app.getResetValue(POSIF0uri); 
    stringBuffer.append(TEXT_255);
     ActPOSIF0uriMuxVal = app.getMuxValue(POSIF0uri); 
     if((ActPOSIF0uriMuxVal.compareTo(RstPOSIF0uriMuxVal) != 0) && (ActPOSIF0uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_256);
     if (POSIF0Typedef != "Defined") { 
    stringBuffer.append(TEXT_257);
     POSIF0Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_258);
    stringBuffer.append( app.getMuxValue(POSIF0uri) );
    stringBuffer.append(TEXT_259);
     } 
     POSIF0uri = "peripheral/Posif/0/Posif/pflge_eerr"; 
     RstPOSIF0uriMuxVal = app.getResetValue(POSIF0uri); 
    stringBuffer.append(TEXT_260);
     ActPOSIF0uriMuxVal = app.getMuxValue(POSIF0uri); 
     if((ActPOSIF0uriMuxVal.compareTo(RstPOSIF0uriMuxVal) != 0) && (ActPOSIF0uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_261);
     if (POSIF0Typedef != "Defined") { 
    stringBuffer.append(TEXT_262);
     POSIF0Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_263);
    stringBuffer.append( app.getMuxValue(POSIF0uri) );
    stringBuffer.append(TEXT_264);
     } 
     POSIF0uri = "peripheral/Posif/0/Posif/pflge_errsel"; 
     RstPOSIF0uriMuxVal = app.getResetValue(POSIF0uri); 
    stringBuffer.append(TEXT_265);
     ActPOSIF0uriMuxVal = app.getMuxValue(POSIF0uri); 
     if((ActPOSIF0uriMuxVal.compareTo(RstPOSIF0uriMuxVal) != 0) && (ActPOSIF0uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_266);
     if (POSIF0Typedef != "Defined") { 
    stringBuffer.append(TEXT_267);
     POSIF0Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_268);
    stringBuffer.append( app.getMuxValue(POSIF0uri) );
    stringBuffer.append(TEXT_269);
     } 
     POSIF0uri = "peripheral/Posif/0/Posif/pflge_ecnt"; 
     RstPOSIF0uriMuxVal = app.getResetValue(POSIF0uri); 
    stringBuffer.append(TEXT_270);
     ActPOSIF0uriMuxVal = app.getMuxValue(POSIF0uri); 
     if((ActPOSIF0uriMuxVal.compareTo(RstPOSIF0uriMuxVal) != 0) && (ActPOSIF0uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_271);
     if (POSIF0Typedef != "Defined") { 
    stringBuffer.append(TEXT_272);
     POSIF0Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_273);
    stringBuffer.append( app.getMuxValue(POSIF0uri) );
    stringBuffer.append(TEXT_274);
     } 
     POSIF0uri = "peripheral/Posif/0/Posif/pflge_cntsel"; 
     RstPOSIF0uriMuxVal = app.getResetValue(POSIF0uri); 
    stringBuffer.append(TEXT_275);
     ActPOSIF0uriMuxVal = app.getMuxValue(POSIF0uri); 
     if((ActPOSIF0uriMuxVal.compareTo(RstPOSIF0uriMuxVal) != 0) && (ActPOSIF0uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_276);
     if (POSIF0Typedef != "Defined") { 
    stringBuffer.append(TEXT_277);
     POSIF0Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_278);
    stringBuffer.append( app.getMuxValue(POSIF0uri) );
    stringBuffer.append(TEXT_279);
     } 
     POSIF0uri = "peripheral/Posif/0/Posif/pflge_edir"; 
     RstPOSIF0uriMuxVal = app.getResetValue(POSIF0uri); 
    stringBuffer.append(TEXT_280);
     ActPOSIF0uriMuxVal = app.getMuxValue(POSIF0uri); 
     if((ActPOSIF0uriMuxVal.compareTo(RstPOSIF0uriMuxVal) != 0) && (ActPOSIF0uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_281);
     if (POSIF0Typedef != "Defined") { 
    stringBuffer.append(TEXT_282);
     POSIF0Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_283);
    stringBuffer.append( app.getMuxValue(POSIF0uri) );
    stringBuffer.append(TEXT_284);
     } 
     POSIF0uri = "peripheral/Posif/0/Posif/pflge_dirsel"; 
     RstPOSIF0uriMuxVal = app.getResetValue(POSIF0uri); 
    stringBuffer.append(TEXT_285);
     ActPOSIF0uriMuxVal = app.getMuxValue(POSIF0uri); 
     if((ActPOSIF0uriMuxVal.compareTo(RstPOSIF0uriMuxVal) != 0) && (ActPOSIF0uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_286);
     if (POSIF0Typedef != "Defined") { 
    stringBuffer.append(TEXT_287);
     POSIF0Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_288);
    stringBuffer.append( app.getMuxValue(POSIF0uri) );
    stringBuffer.append(TEXT_289);
     } 
     POSIF0uri = "peripheral/Posif/0/Posif/pflge_epclk"; 
     RstPOSIF0uriMuxVal = app.getResetValue(POSIF0uri); 
    stringBuffer.append(TEXT_290);
     ActPOSIF0uriMuxVal = app.getMuxValue(POSIF0uri); 
     if((ActPOSIF0uriMuxVal.compareTo(RstPOSIF0uriMuxVal) != 0) && (ActPOSIF0uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_291);
     if (POSIF0Typedef != "Defined") { 
    stringBuffer.append(TEXT_292);
     POSIF0Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_293);
    stringBuffer.append( app.getMuxValue(POSIF0uri) );
    stringBuffer.append(TEXT_294);
     } 
     POSIF0uri = "peripheral/Posif/0/Posif/pflge_pclsel"; 
     RstPOSIF0uriMuxVal = app.getResetValue(POSIF0uri); 
    stringBuffer.append(TEXT_295);
     ActPOSIF0uriMuxVal = app.getMuxValue(POSIF0uri); 
     if((ActPOSIF0uriMuxVal.compareTo(RstPOSIF0uriMuxVal) != 0) && (ActPOSIF0uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_296);
     if (POSIF0Typedef != "Defined") { 
    stringBuffer.append(TEXT_297);
     POSIF0Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_298);
    stringBuffer.append( app.getMuxValue(POSIF0uri) );
    stringBuffer.append(TEXT_299);
     } 
     POSIF0Typedef = null; 
    stringBuffer.append(TEXT_300);
     String POSIF1uri = null;
     String POSIF1Typedef = null; 
     String RstPOSIF1uriMuxVal = null; 
     String ActPOSIF1uriMuxVal = null; 
     POSIF1uri = "peripheral/Posif/1/Posif/pconf_insel0"; 
     RstPOSIF1uriMuxVal = app.getResetValue(POSIF1uri); 
    stringBuffer.append(TEXT_301);
     ActPOSIF1uriMuxVal = app.getMuxValue(POSIF1uri); 
     if((ActPOSIF1uriMuxVal.compareTo(RstPOSIF1uriMuxVal) != 0) && (ActPOSIF1uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_302);
     if (POSIF1Typedef != "Defined") { 
    stringBuffer.append(TEXT_303);
     POSIF1Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_304);
    stringBuffer.append( app.getMuxValue(POSIF1uri) );
    stringBuffer.append(TEXT_305);
     } 
     POSIF1uri = "peripheral/Posif/1/Posif/pconf_insel1"; 
     RstPOSIF1uriMuxVal = app.getResetValue(POSIF1uri); 
    stringBuffer.append(TEXT_306);
     ActPOSIF1uriMuxVal = app.getMuxValue(POSIF1uri); 
     if((ActPOSIF1uriMuxVal.compareTo(RstPOSIF1uriMuxVal) != 0) && (ActPOSIF1uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_307);
     if (POSIF1Typedef != "Defined") { 
    stringBuffer.append(TEXT_308);
     POSIF1Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_309);
    stringBuffer.append( app.getMuxValue(POSIF1uri) );
    stringBuffer.append(TEXT_310);
     } 
     POSIF1uri = "peripheral/Posif/1/Posif/pconf_insel2"; 
     RstPOSIF1uriMuxVal = app.getResetValue(POSIF1uri); 
    stringBuffer.append(TEXT_311);
     ActPOSIF1uriMuxVal = app.getMuxValue(POSIF1uri); 
     if((ActPOSIF1uriMuxVal.compareTo(RstPOSIF1uriMuxVal) != 0) && (ActPOSIF1uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_312);
     if (POSIF1Typedef != "Defined") { 
    stringBuffer.append(TEXT_313);
     POSIF1Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_314);
    stringBuffer.append( app.getMuxValue(POSIF1uri) );
    stringBuffer.append(TEXT_315);
     } 
     POSIF1uri = "peripheral/Posif/1/Posif/pconf_dsel"; 
     RstPOSIF1uriMuxVal = app.getResetValue(POSIF1uri); 
    stringBuffer.append(TEXT_316);
     ActPOSIF1uriMuxVal = app.getMuxValue(POSIF1uri); 
     if((ActPOSIF1uriMuxVal.compareTo(RstPOSIF1uriMuxVal) != 0) && (ActPOSIF1uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_317);
     if (POSIF1Typedef != "Defined") { 
    stringBuffer.append(TEXT_318);
     POSIF1Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_319);
    stringBuffer.append( app.getMuxValue(POSIF1uri) );
    stringBuffer.append(TEXT_320);
     } 
     POSIF1uri = "peripheral/Posif/1/Posif/pconf_ewis"; 
     RstPOSIF1uriMuxVal = app.getResetValue(POSIF1uri); 
    stringBuffer.append(TEXT_321);
     ActPOSIF1uriMuxVal = app.getMuxValue(POSIF1uri); 
     if((ActPOSIF1uriMuxVal.compareTo(RstPOSIF1uriMuxVal) != 0) && (ActPOSIF1uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_322);
     if (POSIF1Typedef != "Defined") { 
    stringBuffer.append(TEXT_323);
     POSIF1Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_324);
    stringBuffer.append( app.getMuxValue(POSIF1uri) );
    stringBuffer.append(TEXT_325);
     } 
     POSIF1uri = "peripheral/Posif/1/Posif/pconf_msets"; 
     RstPOSIF1uriMuxVal = app.getResetValue(POSIF1uri); 
    stringBuffer.append(TEXT_326);
     ActPOSIF1uriMuxVal = app.getMuxValue(POSIF1uri); 
     if((ActPOSIF1uriMuxVal.compareTo(RstPOSIF1uriMuxVal) != 0) && (ActPOSIF1uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_327);
     if (POSIF1Typedef != "Defined") { 
    stringBuffer.append(TEXT_328);
     POSIF1Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_329);
    stringBuffer.append( app.getMuxValue(POSIF1uri) );
    stringBuffer.append(TEXT_330);
     } 
     POSIF1uri = "peripheral/Posif/1/Posif/pconf_msyns"; 
     RstPOSIF1uriMuxVal = app.getResetValue(POSIF1uri); 
    stringBuffer.append(TEXT_331);
     ActPOSIF1uriMuxVal = app.getMuxValue(POSIF1uri); 
     if((ActPOSIF1uriMuxVal.compareTo(RstPOSIF1uriMuxVal) != 0) && (ActPOSIF1uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_332);
     if (POSIF1Typedef != "Defined") { 
    stringBuffer.append(TEXT_333);
     POSIF1Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_334);
    stringBuffer.append( app.getMuxValue(POSIF1uri) );
    stringBuffer.append(TEXT_335);
     } 
     POSIF1uri = "peripheral/Posif/1/Posif/pflge_eche"; 
     RstPOSIF1uriMuxVal = app.getResetValue(POSIF1uri); 
    stringBuffer.append(TEXT_336);
     ActPOSIF1uriMuxVal = app.getMuxValue(POSIF1uri); 
     if((ActPOSIF1uriMuxVal.compareTo(RstPOSIF1uriMuxVal) != 0) && (ActPOSIF1uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_337);
     if (POSIF1Typedef != "Defined") { 
    stringBuffer.append(TEXT_338);
     POSIF1Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_339);
    stringBuffer.append( app.getMuxValue(POSIF1uri) );
    stringBuffer.append(TEXT_340);
     } 
     POSIF1uri = "peripheral/Posif/1/Posif/pflge_chesel"; 
     RstPOSIF1uriMuxVal = app.getResetValue(POSIF1uri); 
    stringBuffer.append(TEXT_341);
     ActPOSIF1uriMuxVal = app.getMuxValue(POSIF1uri); 
     if((ActPOSIF1uriMuxVal.compareTo(RstPOSIF1uriMuxVal) != 0) && (ActPOSIF1uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_342);
     if (POSIF1Typedef != "Defined") { 
    stringBuffer.append(TEXT_343);
     POSIF1Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_344);
    stringBuffer.append( app.getMuxValue(POSIF1uri) );
    stringBuffer.append(TEXT_345);
     } 
     POSIF1uri = "peripheral/Posif/1/Posif/pflge_ewhe"; 
     RstPOSIF1uriMuxVal = app.getResetValue(POSIF1uri); 
    stringBuffer.append(TEXT_346);
     ActPOSIF1uriMuxVal = app.getMuxValue(POSIF1uri); 
     if((ActPOSIF1uriMuxVal.compareTo(RstPOSIF1uriMuxVal) != 0) && (ActPOSIF1uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_347);
     if (POSIF1Typedef != "Defined") { 
    stringBuffer.append(TEXT_348);
     POSIF1Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_349);
    stringBuffer.append( app.getMuxValue(POSIF1uri) );
    stringBuffer.append(TEXT_350);
     } 
     POSIF1uri = "peripheral/Posif/1/Posif/pflge_whesel"; 
     RstPOSIF1uriMuxVal = app.getResetValue(POSIF1uri); 
    stringBuffer.append(TEXT_351);
     ActPOSIF1uriMuxVal = app.getMuxValue(POSIF1uri); 
     if((ActPOSIF1uriMuxVal.compareTo(RstPOSIF1uriMuxVal) != 0) && (ActPOSIF1uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_352);
     if (POSIF1Typedef != "Defined") { 
    stringBuffer.append(TEXT_353);
     POSIF1Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_354);
    stringBuffer.append( app.getMuxValue(POSIF1uri) );
    stringBuffer.append(TEXT_355);
     } 
     POSIF1uri = "peripheral/Posif/1/Posif/pflge_ehie"; 
     RstPOSIF1uriMuxVal = app.getResetValue(POSIF1uri); 
    stringBuffer.append(TEXT_356);
     ActPOSIF1uriMuxVal = app.getMuxValue(POSIF1uri); 
     if((ActPOSIF1uriMuxVal.compareTo(RstPOSIF1uriMuxVal) != 0) && (ActPOSIF1uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_357);
     if (POSIF1Typedef != "Defined") { 
    stringBuffer.append(TEXT_358);
     POSIF1Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_359);
    stringBuffer.append( app.getMuxValue(POSIF1uri) );
    stringBuffer.append(TEXT_360);
     } 
     POSIF1uri = "peripheral/Posif/1/Posif/pflge_hiesel"; 
     RstPOSIF1uriMuxVal = app.getResetValue(POSIF1uri); 
    stringBuffer.append(TEXT_361);
     ActPOSIF1uriMuxVal = app.getMuxValue(POSIF1uri); 
     if((ActPOSIF1uriMuxVal.compareTo(RstPOSIF1uriMuxVal) != 0) && (ActPOSIF1uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_362);
     if (POSIF1Typedef != "Defined") { 
    stringBuffer.append(TEXT_363);
     POSIF1Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_364);
    stringBuffer.append( app.getMuxValue(POSIF1uri) );
    stringBuffer.append(TEXT_365);
     } 
     POSIF1uri = "peripheral/Posif/1/Posif/pflge_emst"; 
     RstPOSIF1uriMuxVal = app.getResetValue(POSIF1uri); 
    stringBuffer.append(TEXT_366);
     ActPOSIF1uriMuxVal = app.getMuxValue(POSIF1uri); 
     if((ActPOSIF1uriMuxVal.compareTo(RstPOSIF1uriMuxVal) != 0) && (ActPOSIF1uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_367);
     if (POSIF1Typedef != "Defined") { 
    stringBuffer.append(TEXT_368);
     POSIF1Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_369);
    stringBuffer.append( app.getMuxValue(POSIF1uri) );
    stringBuffer.append(TEXT_370);
     } 
     POSIF1uri = "peripheral/Posif/1/Posif/pflge_mstsel"; 
     RstPOSIF1uriMuxVal = app.getResetValue(POSIF1uri); 
    stringBuffer.append(TEXT_371);
     ActPOSIF1uriMuxVal = app.getMuxValue(POSIF1uri); 
     if((ActPOSIF1uriMuxVal.compareTo(RstPOSIF1uriMuxVal) != 0) && (ActPOSIF1uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_372);
     if (POSIF1Typedef != "Defined") { 
    stringBuffer.append(TEXT_373);
     POSIF1Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_374);
    stringBuffer.append( app.getMuxValue(POSIF1uri) );
    stringBuffer.append(TEXT_375);
     } 
     POSIF1uri = "peripheral/Posif/1/Posif/pflge_eindx"; 
     RstPOSIF1uriMuxVal = app.getResetValue(POSIF1uri); 
    stringBuffer.append(TEXT_376);
     ActPOSIF1uriMuxVal = app.getMuxValue(POSIF1uri); 
     if((ActPOSIF1uriMuxVal.compareTo(RstPOSIF1uriMuxVal) != 0) && (ActPOSIF1uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_377);
     if (POSIF1Typedef != "Defined") { 
    stringBuffer.append(TEXT_378);
     POSIF1Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_379);
    stringBuffer.append( app.getMuxValue(POSIF1uri) );
    stringBuffer.append(TEXT_380);
     } 
     POSIF1uri = "peripheral/Posif/1/Posif/pflge_indsel"; 
     RstPOSIF1uriMuxVal = app.getResetValue(POSIF1uri); 
    stringBuffer.append(TEXT_381);
     ActPOSIF1uriMuxVal = app.getMuxValue(POSIF1uri); 
     if((ActPOSIF1uriMuxVal.compareTo(RstPOSIF1uriMuxVal) != 0) && (ActPOSIF1uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_382);
     if (POSIF1Typedef != "Defined") { 
    stringBuffer.append(TEXT_383);
     POSIF1Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_384);
    stringBuffer.append( app.getMuxValue(POSIF1uri) );
    stringBuffer.append(TEXT_385);
     } 
     POSIF1uri = "peripheral/Posif/1/Posif/pflge_eerr"; 
     RstPOSIF1uriMuxVal = app.getResetValue(POSIF1uri); 
    stringBuffer.append(TEXT_386);
     ActPOSIF1uriMuxVal = app.getMuxValue(POSIF1uri); 
     if((ActPOSIF1uriMuxVal.compareTo(RstPOSIF1uriMuxVal) != 0) && (ActPOSIF1uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_387);
     if (POSIF1Typedef != "Defined") { 
    stringBuffer.append(TEXT_388);
     POSIF1Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_389);
    stringBuffer.append( app.getMuxValue(POSIF1uri) );
    stringBuffer.append(TEXT_390);
     } 
     POSIF1uri = "peripheral/Posif/1/Posif/pflge_errsel"; 
     RstPOSIF1uriMuxVal = app.getResetValue(POSIF1uri); 
    stringBuffer.append(TEXT_391);
     ActPOSIF1uriMuxVal = app.getMuxValue(POSIF1uri); 
     if((ActPOSIF1uriMuxVal.compareTo(RstPOSIF1uriMuxVal) != 0) && (ActPOSIF1uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_392);
     if (POSIF1Typedef != "Defined") { 
    stringBuffer.append(TEXT_393);
     POSIF1Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_394);
    stringBuffer.append( app.getMuxValue(POSIF1uri) );
    stringBuffer.append(TEXT_395);
     } 
     POSIF1uri = "peripheral/Posif/1/Posif/pflge_ecnt"; 
     RstPOSIF1uriMuxVal = app.getResetValue(POSIF1uri); 
    stringBuffer.append(TEXT_396);
     ActPOSIF1uriMuxVal = app.getMuxValue(POSIF1uri); 
     if((ActPOSIF1uriMuxVal.compareTo(RstPOSIF1uriMuxVal) != 0) && (ActPOSIF1uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_397);
     if (POSIF1Typedef != "Defined") { 
    stringBuffer.append(TEXT_398);
     POSIF1Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_399);
    stringBuffer.append( app.getMuxValue(POSIF1uri) );
    stringBuffer.append(TEXT_400);
     } 
     POSIF1uri = "peripheral/Posif/1/Posif/pflge_cntsel"; 
     RstPOSIF1uriMuxVal = app.getResetValue(POSIF1uri); 
    stringBuffer.append(TEXT_401);
     ActPOSIF1uriMuxVal = app.getMuxValue(POSIF1uri); 
     if((ActPOSIF1uriMuxVal.compareTo(RstPOSIF1uriMuxVal) != 0) && (ActPOSIF1uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_402);
     if (POSIF1Typedef != "Defined") { 
    stringBuffer.append(TEXT_403);
     POSIF1Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_404);
    stringBuffer.append( app.getMuxValue(POSIF1uri) );
    stringBuffer.append(TEXT_405);
     } 
     POSIF1uri = "peripheral/Posif/1/Posif/pflge_edir"; 
     RstPOSIF1uriMuxVal = app.getResetValue(POSIF1uri); 
    stringBuffer.append(TEXT_406);
     ActPOSIF1uriMuxVal = app.getMuxValue(POSIF1uri); 
     if((ActPOSIF1uriMuxVal.compareTo(RstPOSIF1uriMuxVal) != 0) && (ActPOSIF1uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_407);
     if (POSIF1Typedef != "Defined") { 
    stringBuffer.append(TEXT_408);
     POSIF1Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_409);
    stringBuffer.append( app.getMuxValue(POSIF1uri) );
    stringBuffer.append(TEXT_410);
     } 
     POSIF1uri = "peripheral/Posif/1/Posif/pflge_dirsel"; 
     RstPOSIF1uriMuxVal = app.getResetValue(POSIF1uri); 
    stringBuffer.append(TEXT_411);
     ActPOSIF1uriMuxVal = app.getMuxValue(POSIF1uri); 
     if((ActPOSIF1uriMuxVal.compareTo(RstPOSIF1uriMuxVal) != 0) && (ActPOSIF1uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_412);
     if (POSIF1Typedef != "Defined") { 
    stringBuffer.append(TEXT_413);
     POSIF1Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_414);
    stringBuffer.append( app.getMuxValue(POSIF1uri) );
    stringBuffer.append(TEXT_415);
     } 
     POSIF1uri = "peripheral/Posif/1/Posif/pflge_epclk"; 
     RstPOSIF1uriMuxVal = app.getResetValue(POSIF1uri); 
    stringBuffer.append(TEXT_416);
     ActPOSIF1uriMuxVal = app.getMuxValue(POSIF1uri); 
     if((ActPOSIF1uriMuxVal.compareTo(RstPOSIF1uriMuxVal) != 0) && (ActPOSIF1uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_417);
     if (POSIF1Typedef != "Defined") { 
    stringBuffer.append(TEXT_418);
     POSIF1Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_419);
    stringBuffer.append( app.getMuxValue(POSIF1uri) );
    stringBuffer.append(TEXT_420);
     } 
     POSIF1uri = "peripheral/Posif/1/Posif/pflge_pclsel"; 
     RstPOSIF1uriMuxVal = app.getResetValue(POSIF1uri); 
    stringBuffer.append(TEXT_421);
     ActPOSIF1uriMuxVal = app.getMuxValue(POSIF1uri); 
     if((ActPOSIF1uriMuxVal.compareTo(RstPOSIF1uriMuxVal) != 0) && (ActPOSIF1uriMuxVal.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_422);
     if (POSIF1Typedef != "Defined") { 
    stringBuffer.append(TEXT_423);
     POSIF1Typedef = "Defined"; 
     } 
    stringBuffer.append(TEXT_424);
    stringBuffer.append( app.getMuxValue(POSIF1uri) );
    stringBuffer.append(TEXT_425);
     } 
     POSIF1Typedef = null; 
     } 
  //********* POSIF CONFIGURATIONS ---  END ************************* 
    stringBuffer.append(TEXT_426);
    //********* MODULE HRPWM CONFIGURATIONS BEGIN ************************* 
    stringBuffer.append(TEXT_427);
    if(MyTempPeriName.compareTo("peripheral/hrpwm") == 0) {
    stringBuffer.append(TEXT_428);
     int HrpwmNum = 1; 
   int HrpwmCsgChannel = 3;
   int HrpwmHrcChannel = 4;
   String HrpwmBaseuri = "peripheral/hrpwm";
   String HrpwmSfruri = "";
    stringBuffer.append(TEXT_429);
     for (int k=0; k< HrpwmNum; k++) {
        for (int l=0; l< HrpwmCsgChannel; l++) {         
   String HrpwmSfruri0 =  HrpwmBaseuri + "/"+ k + "/" + "csg/" + l + "/csgcc_ibs";
   String rst_csgcc_ibs = app.getResetValue(HrpwmSfruri0); 
   String act_csgcc_ibs = app.getMuxValue(HrpwmSfruri0);

   String HrpwmSfruri1 =  HrpwmBaseuri + "/"+ k + "/" + "csg/" + l + "/csgplc_ipls";
       String rst_csgplc_ipls = app.getResetValue(HrpwmSfruri1); 
   String act_csgplc_ipls = app.getMuxValue(HrpwmSfruri1);
     
   String HrpwmSfruri2 =  HrpwmBaseuri + "/"+ k + "/" + "csg/" + l + "/csgdci_svis";
       String rst_csgdci_svis = app.getResetValue(HrpwmSfruri2); 
   String act_csgdci_svis = app.getMuxValue(HrpwmSfruri2); 
   
   String HrpwmSfruri3 =  HrpwmBaseuri + "/"+ k + "/" + "csg/" + l + "/csgdci_stris";
       String rst_csgdci_stris = app.getResetValue(HrpwmSfruri3); 
   String act_csgdci_stris = app.getMuxValue(HrpwmSfruri3);

   String HrpwmSfruri4 =  HrpwmBaseuri + "/"+ k + "/" + "csg/" + l + "/csgdci_stpis";
       String rst_csgdci_stpis = app.getResetValue(HrpwmSfruri4); 
   String act_csgdci_stpis = app.getMuxValue(HrpwmSfruri4);			  
   
   String HrpwmSfruri5 =  HrpwmBaseuri + "/"+ k + "/" + "csg/" + l + "/csgdci_trgis";
       String rst_csgdci_trgis = app.getResetValue(HrpwmSfruri5); 
   String act_csgdci_trgis = app.getMuxValue(HrpwmSfruri5);

   String HrpwmSfruri6 =  HrpwmBaseuri + "/"+ k + "/" + "csg/" + l + "/csgdci_stis";
       String rst_csgdci_stis = app.getResetValue(HrpwmSfruri6); 
   String act_csgdci_stis = app.getMuxValue(HrpwmSfruri6);
   
   String HrpwmSfruri7 =  HrpwmBaseuri + "/"+ k + "/" + "csg/" + l + "/csgdci_scs";
       String rst_csgdci_scs = app.getResetValue(HrpwmSfruri7); 
   String act_csgdci_scs = app.getMuxValue(HrpwmSfruri7);
   
   String HrpwmSfruri8 =  HrpwmBaseuri + "/"+ k + "/" + "csg/" + l + "/csgsrs_vls1s";
       String rst_csgsrs_vls1s = app.getResetValue(HrpwmSfruri8); 
   String act_csgsrs_vls1s = app.getMuxValue(HrpwmSfruri8);

   String HrpwmSfruri9 =  HrpwmBaseuri + "/"+ k + "/" + "csg/" + l + "/csgsrs_vls2s";
       String rst_csgsrs_vls2s = app.getResetValue(HrpwmSfruri9); 
   String act_csgsrs_vls2s = app.getMuxValue(HrpwmSfruri9);
   
   String HrpwmSfruri10 =  HrpwmBaseuri + "/"+ k + "/" + "csg/" + l + "/csgsrs_trls";
       String rst_csgsrs_trls = app.getResetValue(HrpwmSfruri10); 
   String act_csgsrs_trls = app.getMuxValue(HrpwmSfruri10);

   String HrpwmSfruri11 =  HrpwmBaseuri + "/"+ k + "/" + "csg/" + l + "/csgsrs_ssls";
       String rst_csgsrs_ssls = app.getResetValue(HrpwmSfruri11); 
   String act_csgsrs_ssls = app.getMuxValue(HrpwmSfruri11);
   
   String HrpwmSfruri12 =  HrpwmBaseuri + "/"+ k + "/" + "csg/" + l + "/csgsrs_stls";
       String rst_csgsrs_stls = app.getResetValue(HrpwmSfruri12); 
   String act_csgsrs_stls = app.getMuxValue(HrpwmSfruri12);

   String HrpwmSfruri13 =  HrpwmBaseuri + "/"+ k + "/" + "csg/" + l + "/csgsrs_crfls";
       String rst_csgsrs_crfls = app.getResetValue(HrpwmSfruri13); 
   String act_csgsrs_crfls = app.getMuxValue(HrpwmSfruri13);

   String HrpwmSfruri14 =  HrpwmBaseuri + "/"+ k + "/" + "csg/" + l + "/csgsrs_csls";
       String rst_csgsrs_csls = app.getResetValue(HrpwmSfruri14); 
   String act_csgsrs_csls = app.getMuxValue(HrpwmSfruri14);
    stringBuffer.append(TEXT_430);
    if((act_csgcc_ibs.compareTo(rst_csgcc_ibs) != 0) && (act_csgcc_ibs.compareTo("") != 0)) {
    stringBuffer.append(TEXT_431);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_432);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_433);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_434);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_435);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_436);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_437);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_438);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_439);
    stringBuffer.append(act_csgcc_ibs);
    stringBuffer.append(TEXT_440);
    }
    if((act_csgplc_ipls.compareTo(rst_csgplc_ipls) != 0) && (act_csgplc_ipls.compareTo("") != 0)) {
    stringBuffer.append(TEXT_441);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_442);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_443);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_444);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_445);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_446);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_447);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_448);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_449);
    stringBuffer.append(act_csgplc_ipls);
    stringBuffer.append(TEXT_450);
    }
    if((act_csgdci_svis.compareTo(rst_csgdci_svis) != 0) && (act_csgdci_svis.compareTo("") != 0)) {
    stringBuffer.append(TEXT_451);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_452);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_453);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_454);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_455);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_456);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_457);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_458);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_459);
    stringBuffer.append(act_csgdci_svis);
    stringBuffer.append(TEXT_460);
    }
    if((act_csgdci_stris.compareTo(rst_csgdci_stris) != 0) && (act_csgdci_stris.compareTo("") != 0)) {
    stringBuffer.append(TEXT_461);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_462);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_463);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_464);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_465);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_466);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_467);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_468);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_469);
    stringBuffer.append(act_csgdci_stris);
    stringBuffer.append(TEXT_470);
    }
    if((act_csgdci_stpis.compareTo(rst_csgdci_stpis) != 0) && (act_csgdci_stpis.compareTo("") != 0)) {
    stringBuffer.append(TEXT_471);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_472);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_473);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_474);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_475);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_476);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_477);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_478);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_479);
    stringBuffer.append(act_csgdci_stpis);
    stringBuffer.append(TEXT_480);
    }
    if((act_csgdci_trgis.compareTo(rst_csgdci_trgis) != 0) && (act_csgdci_trgis.compareTo("") != 0)) {
    stringBuffer.append(TEXT_481);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_482);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_483);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_484);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_485);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_486);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_487);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_488);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_489);
    stringBuffer.append(act_csgdci_trgis);
    stringBuffer.append(TEXT_490);
    }
    if((act_csgdci_stis.compareTo(rst_csgdci_stis) != 0) && (act_csgdci_stis.compareTo("") != 0)) {
    stringBuffer.append(TEXT_491);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_492);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_493);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_494);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_495);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_496);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_497);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_498);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_499);
    stringBuffer.append(act_csgdci_stis);
    stringBuffer.append(TEXT_500);
    }
    if((act_csgdci_scs.compareTo(rst_csgdci_scs) != 0) && (act_csgdci_scs.compareTo("") != 0)) {
    stringBuffer.append(TEXT_501);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_502);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_503);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_504);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_505);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_506);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_507);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_508);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_509);
    stringBuffer.append(act_csgdci_scs);
    stringBuffer.append(TEXT_510);
    }
    if((act_csgsrs_vls1s.compareTo(rst_csgsrs_vls1s) != 0) && (act_csgsrs_vls1s.compareTo("") != 0)) {
    stringBuffer.append(TEXT_511);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_512);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_513);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_514);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_515);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_516);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_517);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_518);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_519);
    stringBuffer.append(act_csgsrs_vls1s);
    stringBuffer.append(TEXT_520);
    }
    if((act_csgsrs_vls2s.compareTo(rst_csgsrs_vls2s) != 0) && (act_csgsrs_vls2s.compareTo("") != 0)) {
    stringBuffer.append(TEXT_521);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_522);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_523);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_524);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_525);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_526);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_527);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_528);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_529);
    stringBuffer.append(act_csgsrs_vls2s);
    stringBuffer.append(TEXT_530);
    }
    if((act_csgsrs_trls.compareTo(rst_csgsrs_trls) != 0) && (act_csgsrs_trls.compareTo("") != 0)) {
    stringBuffer.append(TEXT_531);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_532);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_533);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_534);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_535);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_536);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_537);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_538);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_539);
    stringBuffer.append(act_csgsrs_trls);
    stringBuffer.append(TEXT_540);
    }
    if((act_csgsrs_ssls.compareTo(rst_csgsrs_ssls) != 0) && (act_csgsrs_ssls.compareTo("") != 0)) {
    stringBuffer.append(TEXT_541);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_542);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_543);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_544);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_545);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_546);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_547);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_548);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_549);
    stringBuffer.append(act_csgsrs_ssls);
    stringBuffer.append(TEXT_550);
    }
    if((act_csgsrs_stls.compareTo(rst_csgsrs_stls) != 0) && (act_csgsrs_stls.compareTo("") != 0)) {
    stringBuffer.append(TEXT_551);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_552);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_553);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_554);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_555);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_556);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_557);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_558);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_559);
    stringBuffer.append(act_csgsrs_stls);
    stringBuffer.append(TEXT_560);
    }
    if((act_csgsrs_crfls.compareTo(rst_csgsrs_crfls) != 0) && (act_csgsrs_crfls.compareTo("") != 0)) {
    stringBuffer.append(TEXT_561);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_562);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_563);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_564);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_565);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_566);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_567);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_568);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_569);
    stringBuffer.append(act_csgsrs_crfls);
    stringBuffer.append(TEXT_570);
    }
    if((act_csgsrs_csls.compareTo(rst_csgsrs_csls) != 0) && (act_csgsrs_csls.compareTo("") != 0)) {
    stringBuffer.append(TEXT_571);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_572);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_573);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_574);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_575);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_576);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_577);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_578);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_579);
    stringBuffer.append(act_csgsrs_csls);
    stringBuffer.append(TEXT_580);
    }
    }} 
    stringBuffer.append(TEXT_581);
     for (int k=0; k< HrpwmNum; k++) {
            for (int l=0; l< HrpwmHrcChannel; l++) {       
   String HrpwmSfruri15 =  HrpwmBaseuri + "/"+ k + "/" + "hrc/" + l + "/hrcgsel_c0ss";
   String rst_hrcgsel_c0ss = app.getResetValue(HrpwmSfruri15);
   String act_hrcgsel_c0ss = app.getMuxValue(HrpwmSfruri15);
   
   String HrpwmSfruri16 =  HrpwmBaseuri + "/"+ k + "/" + "hrc/" + l + "/hrcgsel_s0m";
   String rst_hrcgsel_s0m = app.getResetValue(HrpwmSfruri16); 
   String act_hrcgsel_s0m = app.getMuxValue(HrpwmSfruri16);
   
   String HrpwmSfruri17 =  HrpwmBaseuri + "/"+ k + "/" + "hrc/" + l + "/hrctsel_tsel0";
   String rst_hrctsel_tsel0 = app.getResetValue(HrpwmSfruri17); 
   String act_hrctsel_tsel0 = app.getMuxValue(HrpwmSfruri17); 
   
   String HrpwmSfruri18 =  HrpwmBaseuri + "/"+ k + "/" + "hrc/" + l + "/hrcgsel_c0m";
   String rst_hrcgsel_c0m = app.getResetValue(HrpwmSfruri18); 
   String act_hrcgsel_c0m = app.getMuxValue(HrpwmSfruri18);

   String HrpwmSfruri19 =  HrpwmBaseuri + "/"+ k + "/" + "hrc/" + l + "/hrcgsel_c0cs";
   String rst_hrcgsel_c0cs = app.getResetValue(HrpwmSfruri19); 
   String act_hrcgsel_c0cs = app.getMuxValue(HrpwmSfruri19);
   
   String HrpwmSfruri20 =  HrpwmBaseuri + "/"+ k + "/" + "hrc/" + l + "/hrcgsel_c1ss";
   String rst_hrcgsel_c1ss = app.getResetValue(HrpwmSfruri20);
   String act_hrcgsel_c1ss = app.getMuxValue(HrpwmSfruri20);
   
   String HrpwmSfruri21 =  HrpwmBaseuri + "/"+ k + "/" + "hrc/" + l + "/hrcgsel_s1m"; 
   String rst_hrcgsel_s1m = app.getResetValue(HrpwmSfruri21); 
   String act_hrcgsel_s1m = app.getMuxValue(HrpwmSfruri21);
  
   String HrpwmSfruri22 =  HrpwmBaseuri + "/"+ k + "/" + "hrc/" + l + "/hrctsel_tsel1";
   String rst_hrctsel_tsel1 = app.getResetValue(HrpwmSfruri22); 
   String act_hrctsel_tsel1 = app.getMuxValue(HrpwmSfruri22); 
   
   String HrpwmSfruri23 =  HrpwmBaseuri + "/"+ k + "/" + "hrc/" + l + "/hrcgsel_c1m";
   String rst_hrcgsel_c1m = app.getResetValue(HrpwmSfruri23); 
   String act_hrcgsel_c1m = app.getMuxValue(HrpwmSfruri23);

   String HrpwmSfruri24 =  HrpwmBaseuri + "/"+ k + "/" + "hrc/" + l + "/hrcgsel_c1cs";
   String rst_hrcgsel_c1cs = app.getResetValue(HrpwmSfruri24); 
   String act_hrcgsel_c1cs = app.getMuxValue(HrpwmSfruri24);
    stringBuffer.append(TEXT_582);
    if((act_hrcgsel_c0ss.compareTo(rst_hrcgsel_c0ss) != 0) && (act_hrcgsel_c0ss.compareTo("") != 0)) {
    stringBuffer.append(TEXT_583);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_584);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_585);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_586);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_587);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_588);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_589);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_590);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_591);
    stringBuffer.append(act_hrcgsel_c0ss);
    stringBuffer.append(TEXT_592);
    }
    if((act_hrcgsel_s0m.compareTo(rst_hrcgsel_s0m) != 0) && (act_hrcgsel_s0m.compareTo("") != 0)) {
    stringBuffer.append(TEXT_593);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_594);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_595);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_596);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_597);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_598);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_599);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_600);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_601);
    stringBuffer.append(act_hrcgsel_s0m);
    stringBuffer.append(TEXT_602);
    }
    if((act_hrctsel_tsel0.compareTo(rst_hrctsel_tsel0) != 0) && (act_hrctsel_tsel0.compareTo("") != 0)) {
    stringBuffer.append(TEXT_603);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_604);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_605);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_606);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_607);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_608);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_609);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_610);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_611);
    stringBuffer.append(act_hrctsel_tsel0);
    stringBuffer.append(TEXT_612);
    }
    if((act_hrcgsel_c0m.compareTo(rst_hrcgsel_c0m) != 0) && (act_hrcgsel_c0m.compareTo("") != 0)) {
    stringBuffer.append(TEXT_613);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_614);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_615);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_616);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_617);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_618);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_619);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_620);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_621);
    stringBuffer.append(act_hrcgsel_c0m);
    stringBuffer.append(TEXT_622);
    }
    if((act_hrcgsel_c0cs.compareTo(rst_hrcgsel_c0cs) != 0) && (act_hrcgsel_c0cs.compareTo("") != 0)) {
    stringBuffer.append(TEXT_623);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_624);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_625);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_626);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_627);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_628);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_629);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_630);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_631);
    stringBuffer.append(act_hrcgsel_c0cs);
    stringBuffer.append(TEXT_632);
    }
    stringBuffer.append(TEXT_633);
    if((act_hrcgsel_c1ss.compareTo(rst_hrcgsel_c1ss) != 0) && (act_hrcgsel_c1ss.compareTo("") != 0)) {
    stringBuffer.append(TEXT_634);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_635);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_636);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_637);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_638);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_639);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_640);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_641);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_642);
    stringBuffer.append(act_hrcgsel_c1ss);
    stringBuffer.append(TEXT_643);
    }
    if((act_hrcgsel_s1m.compareTo(rst_hrcgsel_s1m) != 0) && (act_hrcgsel_s1m.compareTo("") != 0)) {
    stringBuffer.append(TEXT_644);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_645);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_646);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_647);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_648);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_649);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_650);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_651);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_652);
    stringBuffer.append(act_hrcgsel_s1m);
    stringBuffer.append(TEXT_653);
    }
    if((act_hrctsel_tsel1.compareTo(rst_hrctsel_tsel1) != 0) && (act_hrctsel_tsel1.compareTo("") != 0)) {
    stringBuffer.append(TEXT_654);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_655);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_656);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_657);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_658);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_659);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_660);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_661);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_662);
    stringBuffer.append(act_hrctsel_tsel1);
    stringBuffer.append(TEXT_663);
    }
    if((act_hrcgsel_c1m.compareTo(rst_hrcgsel_c1m) != 0) && (act_hrcgsel_c1m.compareTo("") != 0)) {
    stringBuffer.append(TEXT_664);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_665);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_666);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_667);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_668);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_669);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_670);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_671);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_672);
    stringBuffer.append(act_hrcgsel_c1m);
    stringBuffer.append(TEXT_673);
    }
    if((act_hrcgsel_c1cs.compareTo(rst_hrcgsel_c1cs) != 0) && (act_hrcgsel_c1cs.compareTo("") != 0)) {
    stringBuffer.append(TEXT_674);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_675);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_676);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_677);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_678);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_679);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_680);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_681);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_682);
    stringBuffer.append(act_hrcgsel_c1cs);
    stringBuffer.append(TEXT_683);
    }
    stringBuffer.append(TEXT_684);
    }}
    }
    //********* HRPWM CONFIGURATIONS ---  END ************************* 
    stringBuffer.append(TEXT_685);
     //********* MODULE USIC CONFIGURATIONS BEGIN ************************* 
    stringBuffer.append(TEXT_686);
    if(MyTempPeriName.compareTo("peripheral/usic") == 0) {
    stringBuffer.append(TEXT_687);
     int UsicNum = 3; 
   int UsicChannel = 2;
   String UsicBaseuri = "peripheral/usic/";
   String UsicSfruri = "";
    stringBuffer.append(TEXT_688);
     int K0 = 5;
          int K0CH0 = 5;
          int K0CH1 = 5;
          int K1 = 5;
          int K1CH0 = 5;
          int K1CH1 = 5;
          int K2 = 5;
          int K2CH0 = 5;
          int K2CH1 = 5;
     for (int k=0; k< UsicNum; k++) {
   	     for (int l=0; l< UsicChannel; l++) { 			    
   	           String UsicSfruri0 =  UsicBaseuri + k + "/channel/" + l + "/dx0cr_dsel" ; 	 
   	           String rstDX0CRDSEL = app.getResetValue(UsicSfruri0); 
                  String actDX0CRDSEL = app.getMuxValue(UsicSfruri0);  
                  String UsicSfruri1 =  UsicBaseuri + k + "/channel/" + l + "/dx1cr_dsel" ; 	 
   	           String rstDX1CRDSEL = app.getResetValue(UsicSfruri1); 
                  String actDX1CRDSEL = app.getMuxValue(UsicSfruri1);   
                  String UsicSfruri2 =  UsicBaseuri + k + "/channel/" + l + "/dx2cr_dsel" ; 	 
   	           String rstDX2CRDSEL = app.getResetValue(UsicSfruri2); 
                  String actDX2CRDSEL = app.getMuxValue(UsicSfruri2);  
                  String UsicSfruri3 =  UsicBaseuri + k + "/channel/" + l + "/dx3cr_dsel" ; 	 
   	           String rstDX3CRDSEL = app.getResetValue(UsicSfruri3); 
                  String actDX3CRDSEL = app.getMuxValue(UsicSfruri3); 
                  String UsicSfruri4 =  UsicBaseuri + k + "/channel/" + l + "/dx4cr_dsel" ; 	 
   	           String rstDX4CRDSEL = app.getResetValue(UsicSfruri4); 
                  String actDX4CRDSEL = app.getMuxValue(UsicSfruri4); 
                  String UsicSfruri5 =  UsicBaseuri + k + "/channel/" + l + "/dx5cr_dsel" ; 	 
   	           String rstDX5CRDSEL = app.getResetValue(UsicSfruri5); 
                  String actDX5CRDSEL = app.getMuxValue(UsicSfruri5);   
                  int txactdptr = 0;
                  int txactsize = 0;
                  int rxactdptr = 0;
                  int rxactsize = 0;               
                  String UsicSfruri6  =  UsicBaseuri + k + "/channel/" + l + "/tbctr_dptr"  ; 
                  String rsttdptr = app.getResetValue(UsicSfruri6); 
                  String acttdptr = app.getMuxValue(UsicSfruri6);  
                  String UsicSfruri7  =  UsicBaseuri + k + "/channel/" + l + "/tbctr_size"  ; 
                  String rsttsize = app.getResetValue(UsicSfruri7); 
                  String acttsize = app.getMuxValue(UsicSfruri7); 
                  String UsicSfruri8  =  UsicBaseuri + k + "/channel/" + l + "/rbctr_dptr"  ; 
                  String rstrdptr = app.getResetValue(UsicSfruri8); 
                  String actrdptr = app.getMuxValue(UsicSfruri8);  
                  String UsicSfruri9  =  UsicBaseuri + k + "/channel/" + l + "/rbctr_size"  ; 
                  String rstrsize = app.getResetValue(UsicSfruri9); 
                  String actrsize = app.getMuxValue(UsicSfruri9); 
                  String UsicSfruri10 =  UsicBaseuri + k + "/channel/" + l + "/ccr_hpcen" ; 
                  String rstCCRHPCEN = app.getResetValue(UsicSfruri10);
                  String actCCRHPCEN = app.getMuxValue(UsicSfruri10); 
                  
                  
                  String UsicSfruri11 =  UsicBaseuri + k + "/channel/" + l + "/ccr_tsien" ;
                  String rstCCRTSIEN = app.getResetValue(UsicSfruri11);
       		   String actCCRTSIEN = app.getMuxValue(UsicSfruri11);        
                  String UsicSfruri12 =  UsicBaseuri + k + "/channel/" + l + "/ccr_tbien" ; 
                  String rstCCRTBIEN = app.getResetValue(UsicSfruri12); 
                  String actCCRTBIEN = app.getMuxValue(UsicSfruri12);  
                  String UsicSfruri13 =  UsicBaseuri + k + "/channel/" + l + "/ccr_rsien" ;
                  String rstCCRRSIEN = app.getResetValue(UsicSfruri13); 
       		   String actCCRRSIEN = app.getMuxValue(UsicSfruri13);       
                  String UsicSfruri14 =  UsicBaseuri + k + "/channel/" + l + "/ccr_rien" ;
                  String rstCCRRIEN = app.getResetValue(UsicSfruri14);  
      			   String actCCRRIEN = app.getMuxValue(UsicSfruri14);            
                  String UsicSfruri15 =  UsicBaseuri + k + "/channel/" + l + "/ccr_aien" ; 
                  String rstCCRAIEN = app.getResetValue(UsicSfruri15);  
      			   String actCCRAIEN = app.getMuxValue(UsicSfruri15);         
                  String UsicSfruri16 =  UsicBaseuri + k + "/channel/" + l + "/ccr_dlien" ; 
                  String rstCCRDLIEN = app.getResetValue(UsicSfruri16); 
                  String actCCRDLIEN = app.getMuxValue(UsicSfruri16);     
                  String UsicSfruri17 =  UsicBaseuri + k + "/channel/" + l + "/ccr_brgien" ; 
                  String rstCCRBRGIEN = app.getResetValue(UsicSfruri17); 
                  String actCCRBRGIEN = app.getMuxValue(UsicSfruri17);         
                  String UsicSfruri18 =  UsicBaseuri + k + "/channel/" + l + "/tbctr_stbien" ;  
                  String rstTBCTRSTBIEN = app.getResetValue(UsicSfruri18); 
      			   String actTBCTRSTBIEN = app.getMuxValue(UsicSfruri18);  
                  String UsicSfruri19 =  UsicBaseuri + k + "/channel/" + l + "/tbctr_tberien" ;           
                  String rstTBCTRTBERIEN = app.getResetValue(UsicSfruri19);  
                  String actTBCTRTBERIEN = app.getMuxValue(UsicSfruri19);      
                  String UsicSfruri20 =  UsicBaseuri + k + "/channel/" + l + "/rbctr_srbien" ; 
                  String rstRBCTRSRBIEN = app.getResetValue(UsicSfruri20);  
      			   String actRBCTRSRBIEN = app.getMuxValue(UsicSfruri20);    
                  String UsicSfruri21 =  UsicBaseuri + k + "/channel/" + l + "/rbctr_rberien" ;  
                  String rstRBCTRRBERIEN = app.getResetValue(UsicSfruri21); 
      			   String actRBCTRRBERIEN = app.getMuxValue(UsicSfruri21);    
                  String UsicSfruri22 =  UsicBaseuri + k + "/channel/" + l + "/rbctr_arbien" ;
                  String rstRBCTRARBIEN = app.getResetValue(UsicSfruri22);  
      			   String actRBCTRARBIEN = app.getMuxValue(UsicSfruri22);    
                  String UsicSfruri23 =  UsicBaseuri + k + "/channel/" + l + "/inpr_tsinp" ;  
                  String rstINPRTSINP = app.getResetValue(UsicSfruri23);  
      			   String actINPRTSINP = app.getMuxValue(UsicSfruri23); 
                  String UsicSfruri24 =  UsicBaseuri + k + "/channel/" + l + "/inpr_tbinp" ; 
                  String rstINPRTBINP = app.getResetValue(UsicSfruri24); 
      			   String actINPRTBINP = app.getMuxValue(UsicSfruri24);        
                  String UsicSfruri25 =  UsicBaseuri + k + "/channel/" + l + "/inpr_rinp" ; 
                  String rstINPRRINP = app.getResetValue(UsicSfruri25);
      			   String actINPRRINP = app.getMuxValue(UsicSfruri25);   
      			   String UsicSfruri26 =  UsicBaseuri + k + "/channel/" + l + "/inpr_ainp" ; 
      			   String rstINPRAINP = app.getResetValue(UsicSfruri26); 
                  String actINPRAINP = app.getMuxValue(UsicSfruri26);                
                  String UsicSfruri27 =  UsicBaseuri + k + "/channel/" + l + "/inpr_pinp" ;  
                  String rstINPRPINP = app.getResetValue(UsicSfruri27); 
                  String actINPRPINP = app.getMuxValue(UsicSfruri27);                      
                  String UsicSfruri28 =  UsicBaseuri + k + "/channel/" + l + "/tbctr_stbinp" ;
                  String rstTBCTRSTBINP = app.getResetValue(UsicSfruri28); 
                  String actTBCTRSTBINP = app.getMuxValue(UsicSfruri28); 
                  String UsicSfruri29 =  UsicBaseuri + k + "/channel/" + l + "/tbctr_atbinp" ; 
                  String rstTBCTRATBINP = app.getResetValue(UsicSfruri29); 
      			   String actTBCTRATBINP = app.getMuxValue(UsicSfruri29);             
                  String UsicSfruri30 =  UsicBaseuri + k + "/channel/" + l + "/rbctr_srbinp" ; 
                  String rstRBCTRSRBINP = app.getResetValue(UsicSfruri30); 
                  String actRBCTRSRBINP = app.getMuxValue(UsicSfruri30);               
                  String UsicSfruri31 =  UsicBaseuri + k + "/channel/" + l + "/rbctr_arbinp" ; 
                  String rstRBCTRARBINP = app.getResetValue(UsicSfruri31); 
                  String actRBCTRARBINP = app.getMuxValue(UsicSfruri31);                 
                  
                  if(  ((actDX0CRDSEL.compareTo(rstDX0CRDSEL) != 0) && (actDX0CRDSEL.compareTo("") != 0)) ||  ((actDX1CRDSEL.compareTo(rstDX1CRDSEL) != 0) && (actDX1CRDSEL.compareTo("") != 0)) || ((actDX2CRDSEL.compareTo(rstDX2CRDSEL) != 0) && (actDX2CRDSEL.compareTo("") != 0)) ||  ((actDX3CRDSEL.compareTo(rstDX3CRDSEL) != 0) && (actDX3CRDSEL.compareTo("") != 0)) || ((actDX4CRDSEL.compareTo(rstDX4CRDSEL) != 0) && (actDX4CRDSEL.compareTo("") != 0)) ||  ((actDX5CRDSEL.compareTo(rstDX5CRDSEL) != 0) && (actDX5CRDSEL.compareTo("") != 0)) || ((actCCRHPCEN.compareTo(rstCCRHPCEN) != 0) && (actCCRHPCEN.compareTo("") != 0)) || ((acttdptr.compareTo(rsttdptr) != 0) && (acttdptr.compareTo("") != 0)) || ((acttsize.compareTo(rsttsize) != 0) && (acttsize.compareTo("") != 0)) || ((actrdptr.compareTo(rstrdptr) != 0) && (actrdptr.compareTo("") != 0)) || ((actrsize.compareTo(rstrsize) != 0) && (actrsize.compareTo("") != 0)) || ((actCCRTBIEN.compareTo(rstCCRTBIEN) != 0) && (actCCRTBIEN.compareTo("") != 0)) || ((actCCRRSIEN.compareTo(rstCCRRSIEN) != 0) && (actCCRRSIEN.compareTo("") != 0)) || ((actCCRRIEN.compareTo(rstCCRRIEN) != 0) && (actCCRRIEN.compareTo("") != 0)) || ((actCCRAIEN.compareTo(rstCCRAIEN) != 0) && (actCCRAIEN.compareTo("") != 0)) || ((actCCRDLIEN.compareTo(rstCCRDLIEN) != 0) && (actCCRDLIEN.compareTo("") != 0)) || ((actCCRBRGIEN.compareTo(rstCCRBRGIEN) != 0) && (actCCRBRGIEN.compareTo("") != 0)) || ((actTBCTRSTBIEN.compareTo(rstTBCTRSTBIEN) != 0) && (actTBCTRSTBIEN.compareTo("") != 0)) || ((actTBCTRTBERIEN.compareTo(rstTBCTRTBERIEN) != 0) && (actTBCTRTBERIEN.compareTo("") != 0)) || ((actRBCTRSRBIEN.compareTo(rstRBCTRSRBIEN) != 0) && (actRBCTRSRBIEN.compareTo("") != 0)) || ((actRBCTRRBERIEN.compareTo(rstRBCTRRBERIEN) != 0) && (actRBCTRRBERIEN.compareTo("") != 0)) || ((actRBCTRARBIEN.compareTo(rstRBCTRARBIEN) != 0) && (actRBCTRARBIEN.compareTo("") != 0))  || ((actINPRTSINP.compareTo(rstINPRTSINP) != 0) && (actINPRTSINP.compareTo("") != 0)) || ((actINPRTBINP.compareTo(rstINPRTBINP) != 0) && (actINPRTBINP.compareTo("") != 0)) || ((actINPRRINP.compareTo(rstINPRRINP) != 0) && (actINPRRINP.compareTo("") != 0)) || ((actINPRAINP.compareTo(rstINPRAINP) != 0) && (actINPRAINP.compareTo("") != 0)) || ((actINPRPINP.compareTo(rstINPRPINP) != 0) && (actINPRPINP.compareTo("") != 0)) || ((actTBCTRSTBINP.compareTo(rstTBCTRSTBINP) != 0) && (actTBCTRSTBINP.compareTo("") != 0))  ||  ((actTBCTRATBINP.compareTo(rstTBCTRATBINP) != 0) && (actTBCTRATBINP.compareTo("") != 0)) || ((actRBCTRSRBINP.compareTo(rstRBCTRSRBINP) != 0) && (actRBCTRSRBINP.compareTo("") != 0))  || ((actRBCTRARBINP.compareTo(rstRBCTRARBINP) != 0) && (actRBCTRARBINP.compareTo("") != 0)) ) { 
                   
                     if (k == 0) {  
   	                    K0 = 1;
   	                 if (l == 0) { 
   	                    K0CH0 = 1;
   	                 } else if (l == 1) { 
   	                    K0CH1 = 1;
   	                 } 
   	              } else if (k == 1) {  
   	                 K1 = 1;
   	                 if (l == 0) {  
   	                    K1CH0 = 1;
   	                  } else if (l == 1) {  
   	                    K1CH1 = 1;
   	                  }  
   	              } else if (k == 2) { 
   	                 K2 = 1; 
   	                  if (l == 0) {  
   	                    K2CH0 = 1;
   	                  } else if (l == 1) {  
   	                    K2CH1 = 1;
   	                  }    
   	              } 
   	       
                  }
                 
   	   }  	        					
        } 
    stringBuffer.append(TEXT_689);
     if ( (K0CH0 == 1) || (K0CH1 == 1) || (K1CH0 == 1) || (K1CH1 == 1) || (K2CH0 == 1) || (K2CH1 == 1)) { 
    stringBuffer.append(TEXT_690);
     } 
    stringBuffer.append(TEXT_691);
     if (K0CH0 == 1) { 
    stringBuffer.append(TEXT_692);
     } 
    stringBuffer.append(TEXT_693);
     if (K0CH1 == 1) { 
    stringBuffer.append(TEXT_694);
     } 
    stringBuffer.append(TEXT_695);
     if (K1CH0 == 1) { 
    stringBuffer.append(TEXT_696);
     } 
    stringBuffer.append(TEXT_697);
     if (K1CH1 == 1) { 
    stringBuffer.append(TEXT_698);
     } 
     if (K2CH0 == 1) { 
    stringBuffer.append(TEXT_699);
     } 
     if (K2CH1 == 1) { 
    stringBuffer.append(TEXT_700);
     } 
    stringBuffer.append(TEXT_701);
     for (int k=0; k< UsicNum; k++) { 
     for (int l=0; l< UsicChannel; l++) { 
    stringBuffer.append(TEXT_702);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_703);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_704);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/dx0cr_dsel" ;	      
      String rstDX0CR_DSEL = app.getResetValue(UsicSfruri); 
      String actDX0CR_DSEL = app.getMuxValue(UsicSfruri); 
      if((actDX0CR_DSEL.compareTo(rstDX0CR_DSEL) != 0) && (actDX0CR_DSEL.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_705);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_706);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_707);
    stringBuffer.append(actDX0CR_DSEL);
    stringBuffer.append(TEXT_708);
     } 
    stringBuffer.append(TEXT_709);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/dx1cr_dsel" ;  
     String rstDX1CR_DSEL = app.getResetValue(UsicSfruri); 
     String actDX1CR_DSEL = app.getMuxValue(UsicSfruri);         
     if((actDX1CR_DSEL.compareTo(rstDX1CR_DSEL) != 0) && (actDX1CR_DSEL.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_710);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_711);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_712);
    stringBuffer.append(actDX1CR_DSEL);
    stringBuffer.append(TEXT_713);
     } 
    stringBuffer.append(TEXT_714);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/dx2cr_dsel" ;  
     String rstDX2CR_DSEL = app.getResetValue(UsicSfruri); 
     String actDX2CR_DSEL = app.getMuxValue(UsicSfruri);                
     if((actDX2CR_DSEL.compareTo(rstDX2CR_DSEL) != 0) && (actDX2CR_DSEL.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_715);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_716);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_717);
    stringBuffer.append(actDX2CR_DSEL);
    stringBuffer.append(TEXT_718);
     } 
    stringBuffer.append(TEXT_719);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/dx3cr_dsel" ;  
     String rstDX3CR_DSEL = app.getResetValue(UsicSfruri); 
     String actDX3CR_DSEL = app.getMuxValue(UsicSfruri);                
     if((actDX3CR_DSEL.compareTo(rstDX3CR_DSEL) != 0) && (actDX3CR_DSEL.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_720);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_721);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_722);
    stringBuffer.append(actDX3CR_DSEL);
    stringBuffer.append(TEXT_723);
     } 
    stringBuffer.append(TEXT_724);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/dx4cr_dsel" ;  
     String rstDX4CR_DSEL = app.getResetValue(UsicSfruri); 
     String actDX4CR_DSEL = app.getMuxValue(UsicSfruri);               
     if((actDX4CR_DSEL.compareTo(rstDX4CR_DSEL) != 0) && (actDX4CR_DSEL.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_725);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_726);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_727);
    stringBuffer.append(actDX4CR_DSEL);
    stringBuffer.append(TEXT_728);
     } 
    stringBuffer.append(TEXT_729);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/dx5cr_dsel" ; 
     String rstDX5CR_DSEL = app.getResetValue(UsicSfruri); 
     String actDX5CR_DSEL = app.getMuxValue(UsicSfruri);                
     if((actDX5CR_DSEL.compareTo(rstDX5CR_DSEL) != 0) && (actDX5CR_DSEL.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_730);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_731);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_732);
    stringBuffer.append(actDX5CR_DSEL);
    stringBuffer.append(TEXT_733);
     } 
    stringBuffer.append(TEXT_734);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/ccr_hpcen" ; 
     String rstCCR_HPCEN = app.getResetValue(UsicSfruri);
     String actCCR_HPCEN = app.getMuxValue(UsicSfruri);               
     if((actCCR_HPCEN.compareTo(rstCCR_HPCEN) != 0) && (actCCR_HPCEN.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_735);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_736);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_737);
    stringBuffer.append(actCCR_HPCEN);
    stringBuffer.append(TEXT_738);
     } 
    stringBuffer.append(TEXT_739);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/ccr_tsien" ; 
    String rstCCR_TSIEN = app.getResetValue(UsicSfruri);
    String actCCR_TSIEN = app.getMuxValue(UsicSfruri);               
    if((actCCR_TSIEN.compareTo(rstCCR_TSIEN) != 0) && (actCCR_TSIEN.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_740);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_741);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_742);
    stringBuffer.append(actCCR_TSIEN);
    stringBuffer.append(TEXT_743);
     } 
    stringBuffer.append(TEXT_744);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/ccr_tbien" ; 
    String rstCCR_TBIEN = app.getResetValue(UsicSfruri); 
    String actCCR_TBIEN = app.getMuxValue(UsicSfruri);              
    if((actCCR_TBIEN.compareTo(rstCCR_TBIEN) != 0) && (actCCR_TBIEN.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_745);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_746);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_747);
    stringBuffer.append(actCCR_TBIEN);
    stringBuffer.append(TEXT_748);
     } 
    stringBuffer.append(TEXT_749);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/ccr_rsien" ; 
    String rstCCR_RSIEN = app.getResetValue(UsicSfruri); 
    String actCCR_RSIEN = app.getMuxValue(UsicSfruri);                
    if((actCCR_RSIEN.compareTo(rstCCR_RSIEN) != 0) && (actCCR_RSIEN.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_750);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_751);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_752);
    stringBuffer.append(actCCR_RSIEN);
    stringBuffer.append(TEXT_753);
     } 
    stringBuffer.append(TEXT_754);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/ccr_rien" ;  
   String rstCCR_RIEN = app.getResetValue(UsicSfruri);  
   String actCCR_RIEN = app.getMuxValue(UsicSfruri);               
   if((actCCR_RIEN.compareTo(rstCCR_RIEN) != 0) && (actCCR_RIEN.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_755);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_756);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_757);
    stringBuffer.append(actCCR_RIEN);
    stringBuffer.append(TEXT_758);
     } 
    stringBuffer.append(TEXT_759);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/ccr_aien" ;  
   String rstCCR_AIEN = app.getResetValue(UsicSfruri);  
   String actCCR_AIEN = app.getMuxValue(UsicSfruri);              
  if((actCCR_AIEN.compareTo(rstCCR_AIEN) != 0) && (actCCR_AIEN.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_760);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_761);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_762);
    stringBuffer.append(actCCR_AIEN);
    stringBuffer.append(TEXT_763);
     } 
    stringBuffer.append(TEXT_764);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/ccr_dlien" ; 
   String rstCCR_DLIEN = app.getResetValue(UsicSfruri); 
   String actCCR_DLIEN = app.getMuxValue(UsicSfruri);                
   if((actCCR_DLIEN.compareTo(rstCCR_DLIEN) != 0) && (actCCR_DLIEN.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_765);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_766);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_767);
    stringBuffer.append(actCCR_DLIEN);
    stringBuffer.append(TEXT_768);
     } 
    stringBuffer.append(TEXT_769);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/ccr_brgien" ;  
   String rstCCR_BRGIEN = app.getResetValue(UsicSfruri); 
   String actCCR_BRGIEN = app.getMuxValue(UsicSfruri);               
  if((actCCR_BRGIEN.compareTo(rstCCR_BRGIEN) != 0) && (actCCR_BRGIEN.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_770);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_771);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_772);
    stringBuffer.append(actCCR_BRGIEN);
    stringBuffer.append(TEXT_773);
     } 
    stringBuffer.append(TEXT_774);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/tbctr_stbien" ;  
   String rstTBCTR_STBIEN = app.getResetValue(UsicSfruri); 
   String actTBCTR_STBIEN = app.getMuxValue(UsicSfruri);               
   if((actTBCTR_STBIEN.compareTo(rstTBCTR_STBIEN) != 0) && (actTBCTR_STBIEN.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_775);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_776);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_777);
    stringBuffer.append(actTBCTR_STBIEN);
    stringBuffer.append(TEXT_778);
     } 
    stringBuffer.append(TEXT_779);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/tbctr_tberien" ;  
   String rstTBCTR_TBERIEN = app.getResetValue(UsicSfruri);  
   String actTBCTR_TBERIEN = app.getMuxValue(UsicSfruri);               
  if((actTBCTR_TBERIEN.compareTo(rstTBCTR_TBERIEN) != 0) && (actTBCTR_TBERIEN.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_780);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_781);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_782);
    stringBuffer.append(actTBCTR_TBERIEN);
    stringBuffer.append(TEXT_783);
     } 
    stringBuffer.append(TEXT_784);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/rbctr_srbien" ; 
   String rstRBCTR_SRBIEN = app.getResetValue(UsicSfruri);  
   String actRBCTR_SRBIEN = app.getMuxValue(UsicSfruri);               
   if((actRBCTR_SRBIEN.compareTo(rstRBCTR_SRBIEN) != 0) && (actRBCTR_SRBIEN.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_785);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_786);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_787);
    stringBuffer.append(actRBCTR_SRBIEN);
    stringBuffer.append(TEXT_788);
     } 
    stringBuffer.append(TEXT_789);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/rbctr_rberien" ;  
   String rstRBCTR_RBERIEN = app.getResetValue(UsicSfruri); 
   String actRBCTR_RBERIEN = app.getMuxValue(UsicSfruri);                
  if((actRBCTR_RBERIEN.compareTo(rstRBCTR_RBERIEN) != 0) && (actRBCTR_RBERIEN.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_790);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_791);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_792);
    stringBuffer.append(actRBCTR_RBERIEN);
    stringBuffer.append(TEXT_793);
     } 
    stringBuffer.append(TEXT_794);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/rbctr_arbien" ; 
   String rstRBCTR_ARBIEN = app.getResetValue(UsicSfruri);  
   String actRBCTR_ARBIEN = app.getMuxValue(UsicSfruri);               
   if((actRBCTR_ARBIEN.compareTo(rstRBCTR_ARBIEN) != 0) && (actRBCTR_ARBIEN.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_795);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_796);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_797);
    stringBuffer.append(actRBCTR_ARBIEN);
    stringBuffer.append(TEXT_798);
     } 
    stringBuffer.append(TEXT_799);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/inpr_tsinp" ;  
   String rstINPR_TSINP = app.getResetValue(UsicSfruri);  
   String actINPR_TSINP = app.getMuxValue(UsicSfruri); 
   if((actINPR_TSINP.compareTo(rstINPR_TSINP) != 0) && (actINPR_TSINP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_800);
    stringBuffer.append(actINPR_TSINP);
    stringBuffer.append(TEXT_801);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_802);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_803);
    stringBuffer.append(actINPR_TSINP);
    stringBuffer.append(TEXT_804);
     } 
    stringBuffer.append(TEXT_805);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/inpr_tbinp" ; 
   String rstINPR_TBINP = app.getResetValue(UsicSfruri); 
   String actINPR_TBINP = app.getMuxValue(UsicSfruri);                
   if((actINPR_TBINP.compareTo(rstINPR_TBINP) != 0) && (actINPR_TBINP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_806);
    stringBuffer.append(actINPR_TBINP);
    stringBuffer.append(TEXT_807);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_808);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_809);
    stringBuffer.append(actINPR_TBINP);
    stringBuffer.append(TEXT_810);
     } 
    stringBuffer.append(TEXT_811);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/inpr_rinp" ; 
   String rstINPR_RINP = app.getResetValue(UsicSfruri);
   String actINPR_RINP = app.getMuxValue(UsicSfruri);               
   if((actINPR_RINP.compareTo(rstINPR_RINP) != 0) && (actINPR_RINP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_812);
    stringBuffer.append(actINPR_RINP);
    stringBuffer.append(TEXT_813);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_814);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_815);
    stringBuffer.append(actINPR_RINP);
    stringBuffer.append(TEXT_816);
     } 
    stringBuffer.append(TEXT_817);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/inpr_ainp" ;  
   String rstINPR_AINP = app.getResetValue(UsicSfruri); 
   String actINPR_AINP = app.getMuxValue(UsicSfruri);                
  if((actINPR_AINP.compareTo(rstINPR_AINP) != 0) && (actINPR_AINP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_818);
    stringBuffer.append(actINPR_AINP);
    stringBuffer.append(TEXT_819);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_820);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_821);
    stringBuffer.append(actINPR_AINP);
    stringBuffer.append(TEXT_822);
     } 
    stringBuffer.append(TEXT_823);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/inpr_pinp" ;  
   String rstINPR_PINP = app.getResetValue(UsicSfruri); 
   String actINPR_PINP = app.getMuxValue(UsicSfruri);                
   if((actINPR_PINP.compareTo(rstINPR_PINP) != 0) && (actINPR_PINP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_824);
    stringBuffer.append(actINPR_PINP);
    stringBuffer.append(TEXT_825);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_826);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_827);
    stringBuffer.append(actINPR_PINP);
    stringBuffer.append(TEXT_828);
     } 
    stringBuffer.append(TEXT_829);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/tbctr_stbinp" ;
   String rstTBCTR_STBINP = app.getResetValue(UsicSfruri); 
   String actTBCTR_STBINP = app.getMuxValue(UsicSfruri);
   if((actTBCTR_STBINP.compareTo(rstTBCTR_STBINP) != 0) && (actTBCTR_STBINP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_830);
    stringBuffer.append(actTBCTR_STBINP);
    stringBuffer.append(TEXT_831);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_832);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_833);
    stringBuffer.append(actTBCTR_STBINP);
    stringBuffer.append(TEXT_834);
     } 
    stringBuffer.append(TEXT_835);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/tbctr_atbinp" ; 
   String rstTBCTR_ATBINP = app.getResetValue(UsicSfruri); 
   String actTBCTR_ATBINP = app.getMuxValue(UsicSfruri);             
   if((actTBCTR_ATBINP.compareTo(rstTBCTR_ATBINP) != 0) && (actTBCTR_ATBINP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_836);
    stringBuffer.append(actTBCTR_ATBINP);
    stringBuffer.append(TEXT_837);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_838);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_839);
    stringBuffer.append(actTBCTR_ATBINP);
    stringBuffer.append(TEXT_840);
     } 
    stringBuffer.append(TEXT_841);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/rbctr_srbinp" ; 
   String rstRBCTR_SRBINP = app.getResetValue(UsicSfruri); 
   String actRBCTR_SRBINP = app.getMuxValue(UsicSfruri);               
  if((actRBCTR_SRBINP.compareTo(rstRBCTR_SRBINP) != 0) && (actRBCTR_SRBINP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_842);
    stringBuffer.append(actRBCTR_SRBINP);
    stringBuffer.append(TEXT_843);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_844);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_845);
    stringBuffer.append(actRBCTR_SRBINP);
    stringBuffer.append(TEXT_846);
     } 
    stringBuffer.append(TEXT_847);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/rbctr_arbinp" ; 
   String rstRBCTR_ARBINP = app.getResetValue(UsicSfruri); 
   String actRBCTR_ARBINP = app.getMuxValue(UsicSfruri);              
   if((actRBCTR_ARBINP.compareTo(rstRBCTR_ARBINP) != 0) && (actRBCTR_ARBINP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_848);
    stringBuffer.append(actRBCTR_ARBINP);
    stringBuffer.append(TEXT_849);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_850);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_851);
    stringBuffer.append(actRBCTR_ARBINP);
    stringBuffer.append(TEXT_852);
     } 
    stringBuffer.append(TEXT_853);
    int txactdptr = 0;
    int txactsize = 0;
    stringBuffer.append(TEXT_854);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/tbctr_dptr" ; 
   String rst = app.getResetValue(UsicSfruri); 
   String act = app.getMuxValue(UsicSfruri);              
   if((act.compareTo(rst) != 0) && (act.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_855);
    txactdptr = Integer.parseInt(act);
    stringBuffer.append(TEXT_856);
     } 
    stringBuffer.append(TEXT_857);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/tbctr_size" ; 
   rst = app.getResetValue(UsicSfruri); 
   act = app.getMuxValue(UsicSfruri);              
   if((act.compareTo(rst) != 0) && (act.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_858);
    txactsize = Integer.parseInt(act);
     } 
    stringBuffer.append(TEXT_859);
     if((txactdptr != 0) || (txactsize != 0)) { 
    stringBuffer.append(TEXT_860);
    int txactdptrsize = (txactdptr + (txactsize << 24));
    stringBuffer.append(TEXT_861);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_862);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_863);
    stringBuffer.append( Integer.toHexString(txactdptrsize));
    stringBuffer.append(TEXT_864);
    stringBuffer.append(txactdptr);
    stringBuffer.append(TEXT_865);
    stringBuffer.append(txactsize);
    stringBuffer.append(TEXT_866);
     } 
    int rxactdptr = 0;
    int rxactsize = 0;
    stringBuffer.append(TEXT_867);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/rbctr_dptr" ; 
   rst = app.getResetValue(UsicSfruri); 
   act = app.getMuxValue(UsicSfruri);              
   if((act.compareTo(rst) != 0) && (act.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_868);
    rxactdptr = Integer.parseInt(act);
    stringBuffer.append(TEXT_869);
     } 
    stringBuffer.append(TEXT_870);
     UsicSfruri =  UsicBaseuri + k + "/channel/" + l + "/rbctr_size" ; 
   rst = app.getResetValue(UsicSfruri); 
   act = app.getMuxValue(UsicSfruri);              
  if((act.compareTo(rst) != 0) && (act.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_871);
    rxactsize = Integer.parseInt(act);
    stringBuffer.append(TEXT_872);
     } 
    stringBuffer.append(TEXT_873);
     if((rxactdptr != 0) || (rxactsize != 0)) { 
    stringBuffer.append(TEXT_874);
    int rxactdptrsize = (rxactdptr + (rxactsize << 24));
    stringBuffer.append(TEXT_875);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_876);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_877);
    stringBuffer.append( Integer.toHexString(rxactdptrsize));
    stringBuffer.append(TEXT_878);
    stringBuffer.append(rxactdptr);
    stringBuffer.append(TEXT_879);
    stringBuffer.append(rxactsize);
    stringBuffer.append(TEXT_880);
     } 
    } 
    stringBuffer.append(TEXT_881);
    } 
    stringBuffer.append(TEXT_882);
     if (K0CH0 == 1) { 
    stringBuffer.append(TEXT_883);
     } 
    stringBuffer.append(TEXT_884);
     if (K0CH1 == 1) { 
    stringBuffer.append(TEXT_885);
     } 
    stringBuffer.append(TEXT_886);
     if (K1CH0 == 1) { 
    stringBuffer.append(TEXT_887);
     } 
    stringBuffer.append(TEXT_888);
     if (K1CH1 == 1) { 
    stringBuffer.append(TEXT_889);
     } 
     if (K2CH0 == 1) { 
    stringBuffer.append(TEXT_890);
     } 
     if (K2CH1 == 1) { 
    stringBuffer.append(TEXT_891);
     } 
    stringBuffer.append(TEXT_892);
     } 
     //********* USIC CONFIGURATIONS ---  END ************************* 
     //********* MODULE DLR CONFIGURATIONS BEGIN ************************* 
    stringBuffer.append(TEXT_893);
    if(MyTempPeriName.compareTo("peripheral/dlr") == 0) {
    stringBuffer.append(TEXT_894);
     int DlrChannel = 12;
   String DlrBaseuri = "";
   String DlrSfruri = "";
   int k = 0;
   DlrBaseuri = "peripheral/dlr/0";
    stringBuffer.append(TEXT_895);
     for (int l=0; l< DlrChannel; l++) { 
     if  (l < 8) { 
    stringBuffer.append(TEXT_896);
     k = 0;
    stringBuffer.append(TEXT_897);
     } else {
    stringBuffer.append(TEXT_898);
     k = 1;
    stringBuffer.append(TEXT_899);
     } 
    stringBuffer.append(TEXT_900);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_901);
     DlrSfruri =  DlrBaseuri + "/ch/" + l + "/srsel_rs" ;  
         String rstSRSEL_RS = app.getResetValue(DlrSfruri); 
      	 String actSRSEL_RS = app.getMuxValue(DlrSfruri);    
         if((actSRSEL_RS.compareTo(rstSRSEL_RS) != 0) && (actSRSEL_RS.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_902);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_903);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_904);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_905);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_906);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_907);
    stringBuffer.append(actSRSEL_RS);
    stringBuffer.append(TEXT_908);
     } 
    stringBuffer.append(TEXT_909);
    } 
    stringBuffer.append(TEXT_910);
     } 
    stringBuffer.append(TEXT_911);
     //********* DLR CONFIGURATIONS ---  END ************************* 
    stringBuffer.append(TEXT_912);
     //********* MODULE DMA CONFIGURATIONS BEGIN ************************* 
    stringBuffer.append(TEXT_913);
    if((MyTempPeriName.compareTo("peripheral/dma8") == 0) || (MyTempPeriName.compareTo("peripheral/dma4") == 0)) {
    stringBuffer.append(TEXT_914);
     int DmaNum = 2;
      int DmaChannel = 12;					
      String DmaBaseuri = "";					
      String DmaSfruri = "";
      String Channel = "";
      String Dma = "dma8";
    if((MyTempPeriName.compareTo("peripheral/dma8") == 0)) {
     DmaNum = 0;
     } 
    stringBuffer.append(TEXT_915);
    if((MyTempPeriName.compareTo("peripheral/dma4") == 0)) {
     DmaNum = 1;
     } 
    stringBuffer.append(TEXT_916);
    stringBuffer.append(DmaNum);
    stringBuffer.append(TEXT_917);
     for (int k=DmaNum; k<=DmaNum; k++) { 
    stringBuffer.append(TEXT_918);
     if  (k < 1) { 
    stringBuffer.append(TEXT_919);
     DmaChannel = 8;
    Dma = "dma8";
    DmaBaseuri = "peripheral/" + Dma + "/";
    stringBuffer.append(TEXT_920);
     } else {
    stringBuffer.append(TEXT_921);
     DmaChannel = 4;  
    Dma = "dma4";
    DmaBaseuri = "peripheral/" + Dma + "/";
    stringBuffer.append(TEXT_922);
     } 
    stringBuffer.append(TEXT_923);
     for (int l=0; l< DmaChannel; l++) { 
    stringBuffer.append(TEXT_924);
     if ( (l < 2) && (k < 1)  ) { 
    stringBuffer.append(TEXT_925);
     Channel = "ch_adv";
     } else {
    stringBuffer.append(TEXT_926);
     Channel = "ch";
    stringBuffer.append(TEXT_927);
     } 
    stringBuffer.append(TEXT_928);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_929);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_930);
     int j = 0;
    stringBuffer.append(TEXT_931);
     DmaSfruri =  DmaBaseuri + j + "/" + Channel + "/" + l + "/cfgl_hs_sel_src" ;  
  String rstCFGL_HS_SEL_SRC = app.getResetValue(DmaSfruri); 
  String actCFGL_HS_SEL_SRC = app.getMuxValue(DmaSfruri); 
     if((actCFGL_HS_SEL_SRC.compareTo(rstCFGL_HS_SEL_SRC) != 0) && (actCFGL_HS_SEL_SRC.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_932);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_933);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_934);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_935);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_936);
    stringBuffer.append(actCFGL_HS_SEL_SRC);
    stringBuffer.append(TEXT_937);
     } 
    stringBuffer.append(TEXT_938);
     DmaSfruri =  DmaBaseuri + j + "/" + Channel + "/" + l + "/cfgl_hs_sel_dst" ;  
  String rstCFGL_HS_SEL_DST = app.getResetValue(DmaSfruri); 
  String actCFGL_HS_SEL_DST = app.getMuxValue(DmaSfruri); 
    stringBuffer.append(TEXT_939);
     if((actCFGL_HS_SEL_DST.compareTo(rstCFGL_HS_SEL_DST) != 0) && (actCFGL_HS_SEL_DST.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_940);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_941);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_942);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_943);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_944);
    stringBuffer.append(actCFGL_HS_SEL_DST);
    stringBuffer.append(TEXT_945);
     } 
     DmaSfruri =  DmaBaseuri + j + "/" + Channel + "/" + l + "/cfgh_src_per" ;  
  String rstCFGH_SRC_PER = app.getResetValue(DmaSfruri);
  String actCFGH_SRC_PER = app.getMuxValue(DmaSfruri); 
    stringBuffer.append(TEXT_946);
     if((actCFGH_SRC_PER.compareTo(rstCFGH_SRC_PER) != 0) && (actCFGH_SRC_PER.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_947);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_948);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_949);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_950);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_951);
    stringBuffer.append(actCFGH_SRC_PER);
    stringBuffer.append(TEXT_952);
     } 
     DmaSfruri =  DmaBaseuri + j + "/" + Channel + "/" + l + "/cfgh_dest_per" ; 
  String rstCFGH_DEST_PER = app.getResetValue(DmaSfruri); 
  String actCFGH_DEST_PER = app.getMuxValue(DmaSfruri); 
    stringBuffer.append(TEXT_953);
     if((actCFGH_DEST_PER.compareTo(rstCFGH_DEST_PER) != 0) && (actCFGH_DEST_PER.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_954);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_955);
    stringBuffer.append(l);
    stringBuffer.append(TEXT_956);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_957);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_958);
    stringBuffer.append(actCFGH_DEST_PER);
    stringBuffer.append(TEXT_959);
     } 
    stringBuffer.append(TEXT_960);
    } 
    } 
    stringBuffer.append(TEXT_961);
     } 
    stringBuffer.append(TEXT_962);
     //********* DMA CONFIGURATIONS ---  END ************************* 
     //********* MODULE VADC CONFIGURATIONS BEGIN ************************* 
    if(MyTempPeriName.compareTo("peripheral/vadc") == 0) {
     int VadcGroup = 4; 
               int VadcChannel = 8;
               String VadcBaseuri = "peripheral/vadc/";
               String VadcSfruri = "";
    stringBuffer.append(TEXT_963);
     for (int k=0; k< VadcGroup; k++) { 
    stringBuffer.append(TEXT_964);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_965);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/queue" + "/gqctrl0_xtsel";
    stringBuffer.append(TEXT_966);
     String rstGQCTRL0_XTSEL = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_967);
     String actGQCTRL0_XTSEL = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_968);
     if((actGQCTRL0_XTSEL.compareTo(rstGQCTRL0_XTSEL) != 0) && (actGQCTRL0_XTSEL.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_969);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_970);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_971);
    stringBuffer.append(actGQCTRL0_XTSEL);
    stringBuffer.append(TEXT_972);
     } 
    stringBuffer.append(TEXT_973);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/scan" + "/gasctrl_xtsel";
    stringBuffer.append(TEXT_974);
     String rstGASCTRL_XTSEL = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_975);
     String actGASCTRL_XTSEL = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_976);
     if((actGASCTRL_XTSEL.compareTo(rstGASCTRL_XTSEL) != 0) && (actGASCTRL_XTSEL.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_977);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_978);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_979);
    stringBuffer.append(actGASCTRL_XTSEL);
    stringBuffer.append(TEXT_980);
     } 
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/queue" + "/gqctrl0_gtsel";
    stringBuffer.append(TEXT_981);
     String rstGQCTRL0_GTSEL = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_982);
     String actGQCTRL0_GTSEL = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_983);
     if((actGQCTRL0_GTSEL.compareTo(rstGQCTRL0_GTSEL) != 0) && (actGQCTRL0_GTSEL.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_984);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_985);
    stringBuffer.append(actGQCTRL0_GTSEL);
    stringBuffer.append(TEXT_986);
     } 
    stringBuffer.append(TEXT_987);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/scan" + "/gasctrl_gtsel";
    stringBuffer.append(TEXT_988);
     String rstGASCTRL_GTSEL = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_989);
     String actGASCTRL_GTSEL = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_990);
     if((actGASCTRL_GTSEL.compareTo(rstGASCTRL_GTSEL) != 0) && (actGASCTRL_GTSEL.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_991);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_992);
    stringBuffer.append(actGASCTRL_GTSEL);
    stringBuffer.append(TEXT_993);
     } 
    stringBuffer.append(TEXT_994);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/queue" + "/gsevnp_sev0np";
    stringBuffer.append(TEXT_995);
     String rstGSEVNP_SEV0NP = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_996);
     String actGSEVNP_SEV0NP = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_997);
     if((actGSEVNP_SEV0NP.compareTo(rstGSEVNP_SEV0NP) != 0) && (actGSEVNP_SEV0NP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_998);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_999);
    stringBuffer.append(actGSEVNP_SEV0NP);
    stringBuffer.append(TEXT_1000);
     } 
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/scan" + "/gsevnp_sev1np";
    stringBuffer.append(TEXT_1001);
     String rstGSEVNP_SEV1NP = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1002);
     String actGSEVNP_SEV1NP = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1003);
     if((actGSEVNP_SEV1NP.compareTo(rstGSEVNP_SEV1NP) != 0) && (actGSEVNP_SEV1NP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1004);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1005);
    stringBuffer.append(actGSEVNP_SEV1NP);
    stringBuffer.append(TEXT_1006);
     } 
    stringBuffer.append(TEXT_1007);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/sync" + "/gsynctr_stsel";
    stringBuffer.append(TEXT_1008);
     String rstGSYNCTR_STSEL = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1009);
     String actGSYNCTR_STSEL = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1010);
     if((actGSYNCTR_STSEL.compareTo(rstGSYNCTR_STSEL) != 0) && (actGSYNCTR_STSEL.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1011);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1012);
    stringBuffer.append(actGSYNCTR_STSEL);
    stringBuffer.append(TEXT_1013);
     } 
    stringBuffer.append(TEXT_1014);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/sync" + "/gsynctr_evalr1";
    stringBuffer.append(TEXT_1015);
     String rstGSYNCTR_EVALR1 = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1016);
     String actGSYNCTR_EVALR1 = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1017);
     if((actGSYNCTR_EVALR1.compareTo(rstGSYNCTR_EVALR1) != 0) && (actGSYNCTR_EVALR1.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1018);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1019);
    stringBuffer.append(actGSYNCTR_EVALR1);
    stringBuffer.append(TEXT_1020);
     } 
    stringBuffer.append(TEXT_1021);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/sync" + "/gsynctr_evalr2";
    stringBuffer.append(TEXT_1022);
     String rstGSYNCTR_EVALR2 = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1023);
     String actGSYNCTR_EVALR2 = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1024);
     if((actGSYNCTR_EVALR2.compareTo(rstGSYNCTR_EVALR2) != 0) && (actGSYNCTR_EVALR2.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1025);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1026);
    stringBuffer.append(actGSYNCTR_EVALR2);
    stringBuffer.append(TEXT_1027);
     } 
    stringBuffer.append(TEXT_1028);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/sync" + "/gsynctr_evalr3";
    stringBuffer.append(TEXT_1029);
     String rstGSYNCTR_EVALR3 = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1030);
     String actGSYNCTR_EVALR3 = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1031);
     if((actGSYNCTR_EVALR3.compareTo(rstGSYNCTR_EVALR3) != 0) && (actGSYNCTR_EVALR3.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1032);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1033);
    stringBuffer.append(actGSYNCTR_EVALR3);
    stringBuffer.append(TEXT_1034);
     } 
    stringBuffer.append(TEXT_1035);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/ch/0" + "/galias_alias0";
    stringBuffer.append(TEXT_1036);
     String rstGALIAS_ALIAS0 = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1037);
     String actGALIAS_ALIAS0 = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1038);
     if((actGALIAS_ALIAS0.compareTo(rstGALIAS_ALIAS0) != 0) && (actGALIAS_ALIAS0.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1039);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1040);
    stringBuffer.append(actGALIAS_ALIAS0);
    stringBuffer.append(TEXT_1041);
     } 
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/ch/1" + "/galias_alias1";
    stringBuffer.append(TEXT_1042);
     String rstGALIAS_ALIAS1 = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1043);
     String actGALIAS_ALIAS1 = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1044);
     if((actGALIAS_ALIAS1.compareTo(rstGALIAS_ALIAS1) != 0) && (actGALIAS_ALIAS1.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1045);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1046);
    stringBuffer.append(actGALIAS_ALIAS1);
    stringBuffer.append(TEXT_1047);
     } 
    stringBuffer.append(TEXT_1048);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/ch/0" + "/gchctr_resreg";
    stringBuffer.append(TEXT_1049);
     String rstGCHCTR0_RESREG = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1050);
     String actGCHCTR0_RESREG = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1051);
     if((actGCHCTR0_RESREG.compareTo(rstGCHCTR0_RESREG) != 0) && (actGCHCTR0_RESREG.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1052);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1053);
    stringBuffer.append(actGCHCTR0_RESREG);
    stringBuffer.append(TEXT_1054);
     } 
    stringBuffer.append(TEXT_1055);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/ch/1" + "/gchctr_resreg";
    stringBuffer.append(TEXT_1056);
     String rstGCHCTR1_RESREG = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1057);
     String actGCHCTR1_RESREG = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1058);
     if((actGCHCTR1_RESREG.compareTo(rstGCHCTR1_RESREG) != 0) && (actGCHCTR1_RESREG.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1059);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1060);
    stringBuffer.append(actGCHCTR1_RESREG);
    stringBuffer.append(TEXT_1061);
     } 
    stringBuffer.append(TEXT_1062);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/ch/2" + "/gchctr_resreg";
    stringBuffer.append(TEXT_1063);
     String rstGCHCTR2_RESREG = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1064);
     String actGCHCTR2_RESREG = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1065);
     if((actGCHCTR2_RESREG.compareTo(rstGCHCTR2_RESREG) != 0) && (actGCHCTR2_RESREG.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1066);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1067);
    stringBuffer.append(actGCHCTR2_RESREG);
    stringBuffer.append(TEXT_1068);
     } 
    stringBuffer.append(TEXT_1069);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/ch/3" + "/gchctr_resreg";
    stringBuffer.append(TEXT_1070);
     String rstGCHCTR3_RESREG = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1071);
     String actGCHCTR3_RESREG = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1072);
     if((actGCHCTR3_RESREG.compareTo(rstGCHCTR3_RESREG) != 0) && (actGCHCTR3_RESREG.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1073);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1074);
    stringBuffer.append(actGCHCTR3_RESREG);
    stringBuffer.append(TEXT_1075);
     } 
    stringBuffer.append(TEXT_1076);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/ch/4" + "/gchctr_resreg";
    stringBuffer.append(TEXT_1077);
     String rstGCHCTR4_RESREG = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1078);
     String actGCHCTR4_RESREG = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1079);
     if((actGCHCTR4_RESREG.compareTo(rstGCHCTR4_RESREG) != 0) && (actGCHCTR4_RESREG.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1080);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1081);
    stringBuffer.append(actGCHCTR4_RESREG);
    stringBuffer.append(TEXT_1082);
     } 
    stringBuffer.append(TEXT_1083);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/ch/5" + "/gchctr_resreg";
    stringBuffer.append(TEXT_1084);
     String rstGCHCTR5_RESREG = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1085);
     String actGCHCTR5_RESREG = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1086);
     if((actGCHCTR5_RESREG.compareTo(rstGCHCTR5_RESREG) != 0) && (actGCHCTR5_RESREG.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1087);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1088);
    stringBuffer.append(actGCHCTR5_RESREG);
    stringBuffer.append(TEXT_1089);
     } 
    stringBuffer.append(TEXT_1090);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/ch/6" + "/gchctr_resreg";
    stringBuffer.append(TEXT_1091);
     String rstGCHCTR6_RESREG = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1092);
     String actGCHCTR6_RESREG = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1093);
     if((actGCHCTR6_RESREG.compareTo(rstGCHCTR6_RESREG) != 0) && (actGCHCTR6_RESREG.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1094);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1095);
    stringBuffer.append(actGCHCTR6_RESREG);
    stringBuffer.append(TEXT_1096);
     } 
    stringBuffer.append(TEXT_1097);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/ch/7" + "/gchctr_resreg";
    stringBuffer.append(TEXT_1098);
     String rstGCHCTR7_RESREG = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1099);
     String actGCHCTR7_RESREG = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1100);
     if((actGCHCTR7_RESREG.compareTo(rstGCHCTR7_RESREG) != 0) && (actGCHCTR7_RESREG.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1101);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1102);
    stringBuffer.append(actGCHCTR7_RESREG);
    stringBuffer.append(TEXT_1103);
     } 
    stringBuffer.append(TEXT_1104);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/ch/0" + "/gcevnp0_cevnp";
    stringBuffer.append(TEXT_1105);
     String rstGCEVNP0_CEV0NP = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1106);
     String actGCEVNP0_CEV0NP = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1107);
     if((actGCEVNP0_CEV0NP.compareTo(rstGCEVNP0_CEV0NP) != 0) && (actGCEVNP0_CEV0NP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1108);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1109);
    stringBuffer.append(actGCEVNP0_CEV0NP);
    stringBuffer.append(TEXT_1110);
     } 
    stringBuffer.append(TEXT_1111);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/ch/1" + "/gcevnp0_cevnp";
    stringBuffer.append(TEXT_1112);
     String rstGCEVNP0_CEV1NP = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1113);
     String actGCEVNP0_CEV1NP = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1114);
     if((actGCEVNP0_CEV1NP.compareTo(rstGCEVNP0_CEV1NP) != 0) && (actGCEVNP0_CEV1NP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1115);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1116);
    stringBuffer.append(actGCEVNP0_CEV1NP);
    stringBuffer.append(TEXT_1117);
     } 
    stringBuffer.append(TEXT_1118);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/ch/2" + "/gcevnp0_cevnp";
    stringBuffer.append(TEXT_1119);
     String rstGCEVNP0_CEV2NP = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1120);
     String actGCEVNP0_CEV2NP = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1121);
     if((actGCEVNP0_CEV2NP.compareTo(rstGCEVNP0_CEV2NP) != 0) && (actGCEVNP0_CEV2NP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1122);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1123);
    stringBuffer.append(actGCEVNP0_CEV2NP);
    stringBuffer.append(TEXT_1124);
     } 
    stringBuffer.append(TEXT_1125);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/ch/3" + "/gcevnp0_cevnp";
    stringBuffer.append(TEXT_1126);
     String rstGCEVNP0_CEV3NP = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1127);
     String actGCEVNP0_CEV3NP = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1128);
     if((actGCEVNP0_CEV3NP.compareTo(rstGCEVNP0_CEV3NP) != 0) && (actGCEVNP0_CEV3NP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1129);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1130);
    stringBuffer.append(actGCEVNP0_CEV3NP);
    stringBuffer.append(TEXT_1131);
     } 
    stringBuffer.append(TEXT_1132);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/ch/4" + "/gcevnp0_cevnp";
    stringBuffer.append(TEXT_1133);
     String rstGCEVNP0_CEV4NP = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1134);
     String actGCEVNP0_CEV4NP = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1135);
     if((actGCEVNP0_CEV4NP.compareTo(rstGCEVNP0_CEV4NP) != 0) && (actGCEVNP0_CEV4NP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1136);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1137);
    stringBuffer.append(actGCEVNP0_CEV4NP);
    stringBuffer.append(TEXT_1138);
     } 
    stringBuffer.append(TEXT_1139);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/ch/5" + "/gcevnp0_cevnp";
    stringBuffer.append(TEXT_1140);
     String rstGCEVNP0_CEV5NP = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1141);
     String actGCEVNP0_CEV5NP = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1142);
     if((actGCEVNP0_CEV5NP.compareTo(rstGCEVNP0_CEV5NP) != 0) && (actGCEVNP0_CEV5NP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1143);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1144);
    stringBuffer.append(actGCEVNP0_CEV5NP);
    stringBuffer.append(TEXT_1145);
     } 
    stringBuffer.append(TEXT_1146);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/ch/6" + "/gcevnp0_cevnp";
    stringBuffer.append(TEXT_1147);
     String rstGCEVNP0_CEV6NP = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1148);
     String actGCEVNP0_CEV6NP = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1149);
     if((actGCEVNP0_CEV6NP.compareTo(rstGCEVNP0_CEV6NP) != 0) && (actGCEVNP0_CEV6NP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1150);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1151);
    stringBuffer.append(actGCEVNP0_CEV6NP);
    stringBuffer.append(TEXT_1152);
     } 
    stringBuffer.append(TEXT_1153);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/ch/7" + "/gcevnp0_cevnp";
    stringBuffer.append(TEXT_1154);
     String rstGCEVNP0_CEV7NP = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1155);
     String actGCEVNP0_CEV7NP = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1156);
     if((actGCEVNP0_CEV7NP.compareTo(rstGCEVNP0_CEV7NP) != 0) && (actGCEVNP0_CEV7NP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1157);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1158);
    stringBuffer.append(actGCEVNP0_CEV7NP);
    stringBuffer.append(TEXT_1159);
     } 
    stringBuffer.append(TEXT_1160);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/result_adv/0" + "/grevnp0_rev0np";
    stringBuffer.append(TEXT_1161);
     String rstGREVNP0_REV0NP = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1162);
     String actGREVNP0_REV0NP = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1163);
     if((actGREVNP0_REV0NP.compareTo(rstGREVNP0_REV0NP) != 0) && (actGREVNP0_REV0NP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1164);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1165);
    stringBuffer.append(actGREVNP0_REV0NP);
    stringBuffer.append(TEXT_1166);
     } 
    stringBuffer.append(TEXT_1167);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/result_adv/1" + "/grevnp0_rev1np";
    stringBuffer.append(TEXT_1168);
     String rstGREVNP0_REV1NP = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1169);
     String actGREVNP0_REV1NP = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1170);
     if((actGREVNP0_REV1NP.compareTo(rstGREVNP0_REV1NP) != 0) && (actGREVNP0_REV1NP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1171);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1172);
    stringBuffer.append(actGREVNP0_REV1NP);
    stringBuffer.append(TEXT_1173);
     } 
    stringBuffer.append(TEXT_1174);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/result_adv/2" + "/grevnp0_rev2np";
    stringBuffer.append(TEXT_1175);
     String rstGREVNP0_REV2NP = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1176);
     String actGREVNP0_REV2NP = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1177);
     if((actGREVNP0_REV2NP.compareTo(rstGREVNP0_REV2NP) != 0) && (actGREVNP0_REV2NP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1178);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1179);
    stringBuffer.append(actGREVNP0_REV2NP);
    stringBuffer.append(TEXT_1180);
     } 
    stringBuffer.append(TEXT_1181);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/result_adv/3" + "/grevnp0_rev3np";
    stringBuffer.append(TEXT_1182);
     String rstGREVNP0_REV3NP = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1183);
     String actGREVNP0_REV3NP = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1184);
     if((actGREVNP0_REV3NP.compareTo(rstGREVNP0_REV3NP) != 0) && (actGREVNP0_REV3NP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1185);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1186);
    stringBuffer.append(actGREVNP0_REV3NP);
    stringBuffer.append(TEXT_1187);
     } 
    stringBuffer.append(TEXT_1188);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/result/4" + "/grevnp0_rev4np";
    stringBuffer.append(TEXT_1189);
     String rstGREVNP0_REV4NP = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1190);
     String actGREVNP0_REV4NP = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1191);
     if((actGREVNP0_REV4NP.compareTo(rstGREVNP0_REV4NP) != 0) && (actGREVNP0_REV4NP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1192);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1193);
    stringBuffer.append(actGREVNP0_REV4NP);
    stringBuffer.append(TEXT_1194);
     } 
    stringBuffer.append(TEXT_1195);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/result/5" + "/grevnp0_rev5np";
    stringBuffer.append(TEXT_1196);
     String rstGREVNP0_REV5NP = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1197);
     String actGREVNP0_REV5NP = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1198);
     if((actGREVNP0_REV5NP.compareTo(rstGREVNP0_REV5NP) != 0) && (actGREVNP0_REV5NP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1199);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1200);
    stringBuffer.append(actGREVNP0_REV5NP);
    stringBuffer.append(TEXT_1201);
     } 
    stringBuffer.append(TEXT_1202);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/result/6" + "/grevnp0_rev6np";
    stringBuffer.append(TEXT_1203);
     String rstGREVNP0_REV6NP = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1204);
     String actGREVNP0_REV6NP = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1205);
     if((actGREVNP0_REV6NP.compareTo(rstGREVNP0_REV6NP) != 0) && (actGREVNP0_REV6NP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1206);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1207);
    stringBuffer.append(actGREVNP0_REV6NP);
    stringBuffer.append(TEXT_1208);
     } 
    stringBuffer.append(TEXT_1209);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/result_filter/7" + "/grevnp0_rev7np";
    stringBuffer.append(TEXT_1210);
     String rstGREVNP0_REV7NP = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1211);
     String actGREVNP0_REV7NP = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1212);
     if((actGREVNP0_REV7NP.compareTo(rstGREVNP0_REV7NP) != 0) && (actGREVNP0_REV7NP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1213);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1214);
    stringBuffer.append(actGREVNP0_REV7NP);
    stringBuffer.append(TEXT_1215);
     } 
    stringBuffer.append(TEXT_1216);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/result/8" + "/grevnp1_rev8np";
    stringBuffer.append(TEXT_1217);
     String rstGREVNP1_REV8NP = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1218);
     String actGREVNP1_REV8NP = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1219);
     if((actGREVNP1_REV8NP.compareTo(rstGREVNP1_REV8NP) != 0) && (actGREVNP1_REV8NP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1220);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1221);
    stringBuffer.append(actGREVNP1_REV8NP);
    stringBuffer.append(TEXT_1222);
     } 
    stringBuffer.append(TEXT_1223);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/result/9" + "/grevnp1_rev9np";
    stringBuffer.append(TEXT_1224);
     String rstGREVNP1_REV9NP = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1225);
     String actGREVNP1_REV9NP = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1226);
     if((actGREVNP1_REV9NP.compareTo(rstGREVNP1_REV9NP) != 0) && (actGREVNP1_REV9NP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1227);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1228);
    stringBuffer.append(actGREVNP1_REV9NP);
    stringBuffer.append(TEXT_1229);
     } 
    stringBuffer.append(TEXT_1230);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/result/10" + "/grevnp1_rev10np";
    stringBuffer.append(TEXT_1231);
     String rstGREVNP1_REV10NP = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1232);
     String actGREVNP1_REV10NP = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1233);
     if((actGREVNP1_REV10NP.compareTo(rstGREVNP1_REV10NP) != 0) && (actGREVNP1_REV10NP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1234);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1235);
    stringBuffer.append(actGREVNP1_REV10NP);
    stringBuffer.append(TEXT_1236);
     } 
    stringBuffer.append(TEXT_1237);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/result/11" + "/grevnp1_rev11np";
    stringBuffer.append(TEXT_1238);
     String rstGREVNP1_REV11NP = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1239);
     String actGREVNP1_REV11NP = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1240);
     if((actGREVNP1_REV11NP.compareTo(rstGREVNP1_REV11NP) != 0) && (actGREVNP1_REV11NP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1241);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1242);
    stringBuffer.append(actGREVNP1_REV11NP);
    stringBuffer.append(TEXT_1243);
     } 
    stringBuffer.append(TEXT_1244);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/result/12" + "/grevnp1_rev12np";
    stringBuffer.append(TEXT_1245);
     String rstGREVNP1_REV12NP = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1246);
     String actGREVNP1_REV12NP = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1247);
     if((actGREVNP1_REV12NP.compareTo(rstGREVNP1_REV12NP) != 0) && (actGREVNP1_REV12NP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1248);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1249);
    stringBuffer.append(actGREVNP1_REV12NP);
    stringBuffer.append(TEXT_1250);
     } 
    stringBuffer.append(TEXT_1251);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/result/13" + "/grevnp1_rev13np";
    stringBuffer.append(TEXT_1252);
     String rstGREVNP1_REV13NP = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1253);
     String actGREVNP1_REV13NP = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1254);
     if((actGREVNP1_REV13NP.compareTo(rstGREVNP1_REV13NP) != 0) && (actGREVNP1_REV13NP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1255);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1256);
    stringBuffer.append(actGREVNP1_REV13NP);
    stringBuffer.append(TEXT_1257);
     } 
    stringBuffer.append(TEXT_1258);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/result/14" + "/grevnp1_rev14np";
    stringBuffer.append(TEXT_1259);
     String rstGREVNP1_REV14NP = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1260);
     String actGREVNP1_REV14NP = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1261);
     if((actGREVNP1_REV14NP.compareTo(rstGREVNP1_REV14NP) != 0) && (actGREVNP1_REV14NP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1262);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1263);
    stringBuffer.append(actGREVNP1_REV14NP);
    stringBuffer.append(TEXT_1264);
     } 
    stringBuffer.append(TEXT_1265);
     VadcSfruri =  VadcBaseuri + 0 + "/group/" + k + "/result_filter/15" + "/grevnp1_rev15np";
    stringBuffer.append(TEXT_1266);
     String rstGREVNP1_REV15NP = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1267);
     String actGREVNP1_REV15NP = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1268);
     if((actGREVNP1_REV15NP.compareTo(rstGREVNP1_REV15NP) != 0) && (actGREVNP1_REV15NP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1269);
    stringBuffer.append(k);
    stringBuffer.append(TEXT_1270);
    stringBuffer.append(actGREVNP1_REV15NP);
    stringBuffer.append(TEXT_1271);
     } 
    stringBuffer.append(TEXT_1272);
     } 
    stringBuffer.append(TEXT_1273);
     VadcSfruri =  VadcBaseuri + 0 + "/global_result" + "/globevnp_rev0np";
    stringBuffer.append(TEXT_1274);
     String rstGLOBEVNP_REV0NP = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1275);
     String actGLOBEVNP_REV0NP = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1276);
     if((actGLOBEVNP_REV0NP.compareTo(rstGLOBEVNP_REV0NP) != 0) && (actGLOBEVNP_REV0NP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1277);
    stringBuffer.append(actGLOBEVNP_REV0NP);
    stringBuffer.append(TEXT_1278);
     } 
    stringBuffer.append(TEXT_1279);
     VadcSfruri =  VadcBaseuri + 0 + "/global/emuxsel_emuxgrp0";
    stringBuffer.append(TEXT_1280);
     String rstEMUXSEL_EMUXGRP0 = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1281);
     String actEMUXSEL_EMUXGRP0 = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1282);
     if((actEMUXSEL_EMUXGRP0.compareTo(rstEMUXSEL_EMUXGRP0) != 0) && (actEMUXSEL_EMUXGRP0.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1283);
    stringBuffer.append(actEMUXSEL_EMUXGRP0);
    stringBuffer.append(TEXT_1284);
     } 
    stringBuffer.append(TEXT_1285);
     VadcSfruri =  VadcBaseuri + 0 + "/global/emuxsel_emuxgrp1";
    stringBuffer.append(TEXT_1286);
     String rstEMUXSEL_EMUXGRP1 = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1287);
     String actEMUXSEL_EMUXGRP1 = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1288);
     if((actEMUXSEL_EMUXGRP1.compareTo(rstEMUXSEL_EMUXGRP1) != 0) && (actEMUXSEL_EMUXGRP1.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1289);
    stringBuffer.append(actEMUXSEL_EMUXGRP1);
    stringBuffer.append(TEXT_1290);
     } 
    stringBuffer.append(TEXT_1291);
     VadcSfruri =  VadcBaseuri + 0 + "/backgnd" + "/brsctrl_xtsel";
    stringBuffer.append(TEXT_1292);
     String rstBRSCTRL_XTSEL = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1293);
     String actBRSCTRL_XTSEL = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1294);
     if((actBRSCTRL_XTSEL.compareTo(rstBRSCTRL_XTSEL) != 0) && (actBRSCTRL_XTSEL.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1295);
    stringBuffer.append(actBRSCTRL_XTSEL);
    stringBuffer.append(TEXT_1296);
     } 
    stringBuffer.append(TEXT_1297);
     VadcSfruri =  VadcBaseuri + 0 + "/backgnd" + "/brsctrl_gtsel";
    stringBuffer.append(TEXT_1298);
     String rstBRSCTRL_GTSEL = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1299);
     String actBRSCTRL_GTSEL = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1300);
     if((actBRSCTRL_GTSEL.compareTo(rstBRSCTRL_GTSEL) != 0) && (actBRSCTRL_GTSEL.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1301);
    stringBuffer.append(actBRSCTRL_GTSEL);
    stringBuffer.append(TEXT_1302);
     } 
    stringBuffer.append(TEXT_1303);
     VadcSfruri =  VadcBaseuri + 0 + "/backgnd" + "/globevnp_sev0np";
    stringBuffer.append(TEXT_1304);
     String rstGLOBEVNP_SEV0NP = app.getResetValue(VadcSfruri);
    stringBuffer.append(TEXT_1305);
     String actGLOBEVNP_SEV0NP = app.getMuxValue(VadcSfruri);
    stringBuffer.append(TEXT_1306);
     if((actGLOBEVNP_SEV0NP.compareTo(rstGLOBEVNP_SEV0NP) != 0) && (actGLOBEVNP_SEV0NP.compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1307);
    stringBuffer.append(actGLOBEVNP_SEV0NP);
    stringBuffer.append(TEXT_1308);
     } 
    stringBuffer.append(TEXT_1309);
     } 
    stringBuffer.append(TEXT_1310);
     //********* VADC CONFIGURATIONS ---  END ************************* 
    stringBuffer.append(TEXT_1311);
     //********* DAC CONFIGURATIONS ---  BEGIN ************************* 
    stringBuffer.append(TEXT_1312);
     if (MyObj.toString().equals("peripheral/dac")) { 
    stringBuffer.append(TEXT_1313);
      String uriDAC = null;
        for (int sliceNr=0; sliceNr<=1; sliceNr++) {
        uriDAC = "peripheral/dac/0/slice/" + sliceNr + "/cfg1_trigsel";           
        if((app.getMuxValue(uriDAC).compareTo(app.getResetValue(uriDAC)) != 0) && (app.getMuxValue(uriDAC).compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1314);
    stringBuffer.append( sliceNr);
    stringBuffer.append(TEXT_1315);
    stringBuffer.append( sliceNr);
    stringBuffer.append(TEXT_1316);
    stringBuffer.append( sliceNr);
    stringBuffer.append(TEXT_1317);
    stringBuffer.append( app.getMuxValue(uriDAC) );
    stringBuffer.append(TEXT_1318);
    stringBuffer.append( sliceNr);
    stringBuffer.append(TEXT_1319);
     } 
        }
     } // if dac loop 
    stringBuffer.append(TEXT_1320);
     //********* DAC CONFIGURATIONS ---  END ************************* 
    stringBuffer.append(TEXT_1321);
    if (xmc4Device==1){
     //********* SCU CONFIGURATIONS ---  BEGIN ************************* 
    stringBuffer.append(TEXT_1322);
     if (MyObj.toString().equals("peripheral/scu")) { 
    stringBuffer.append(TEXT_1323);
      String uriSCU = null;
           uriSCU = "peripheral/scu/0/hcu/hdcr_gpi0sel";           
        if((app.getMuxValue(uriSCU).compareTo(app.getResetValue(uriSCU)) != 0) && (app.getMuxValue(uriSCU).compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1324);
    stringBuffer.append( app.getMuxValue(uriSCU) );
    stringBuffer.append(TEXT_1325);
     } 
        uriSCU = "peripheral/scu/0/hcu/hdcr_wkupsel";           
        if((app.getMuxValue(uriSCU).compareTo(app.getResetValue(uriSCU)) != 0) && (app.getMuxValue(uriSCU).compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1326);
    stringBuffer.append( app.getMuxValue(uriSCU) );
    stringBuffer.append(TEXT_1327);
     }  
        for (int hibpadNr=0; hibpadNr<=1; hibpadNr++) { 
          uriSCU = "port/hcu_port/0/pad/" + hibpadNr + "/hdcr_hibioxsel_oe";           
          if((app.getMuxValue(uriSCU).compareTo(app.getResetValue(uriSCU)) != 0) && (app.getMuxValue(uriSCU).compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1328);
    stringBuffer.append( hibpadNr);
    stringBuffer.append(TEXT_1329);
    stringBuffer.append( hibpadNr);
    stringBuffer.append(TEXT_1330);
    stringBuffer.append( app.getMuxValue(uriSCU) );
    stringBuffer.append(TEXT_1331);
    stringBuffer.append( hibpadNr);
    stringBuffer.append(TEXT_1332);
     } 
          uriSCU = "port/hcu_port/0/pad/" + hibpadNr + "/hdcr_hibioxsel_pcr";           
          if((app.getMuxValue(uriSCU).compareTo(app.getResetValue(uriSCU)) != 0) && (app.getMuxValue(uriSCU).compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1333);
    stringBuffer.append( hibpadNr);
    stringBuffer.append(TEXT_1334);
    stringBuffer.append( hibpadNr);
    stringBuffer.append(TEXT_1335);
    stringBuffer.append( app.getMuxValue(uriSCU) );
    stringBuffer.append(TEXT_1336);
    stringBuffer.append( hibpadNr);
    stringBuffer.append(TEXT_1337);
     } 
        } // hibpadNr loop         
        uriSCU = "peripheral/scu/0/gcu/interrupt/prewarn/nmireqen_prwarn";           
        if((app.getMuxValue(uriSCU).compareTo(app.getResetValue(uriSCU)) != 0) && (app.getMuxValue(uriSCU).compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1338);
    stringBuffer.append( app.getMuxValue(uriSCU) );
    stringBuffer.append(TEXT_1339);
     }
        uriSCU = "peripheral/scu/0/gcu/interrupt/rtctick/nmireqen_pi";           
        if((app.getMuxValue(uriSCU).compareTo(app.getResetValue(uriSCU)) != 0) && (app.getMuxValue(uriSCU).compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1340);
    stringBuffer.append( app.getMuxValue(uriSCU) );
    stringBuffer.append(TEXT_1341);
     } 
        uriSCU = "peripheral/scu/0/gcu/interrupt/rtcalarm/nmireqen_ai";           
        if((app.getMuxValue(uriSCU).compareTo(app.getResetValue(uriSCU)) != 0) && (app.getMuxValue(uriSCU).compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1342);
    stringBuffer.append( app.getMuxValue(uriSCU) );
    stringBuffer.append(TEXT_1343);
     }
		for (int nmiEruNr=0; nmiEruNr<=3; nmiEruNr++) {
			uriSCU = "peripheral/scu/0/gcu/interrupt/nmireqen_eru0" + nmiEruNr;           
			if((app.getMuxValue(uriSCU).compareTo(app.getResetValue(uriSCU)) != 0) && (app.getMuxValue(uriSCU).compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1344);
    stringBuffer.append( nmiEruNr);
    stringBuffer.append(TEXT_1345);
    stringBuffer.append( nmiEruNr);
    stringBuffer.append(TEXT_1346);
    stringBuffer.append( app.getMuxValue(uriSCU) );
    stringBuffer.append(TEXT_1347);
    stringBuffer.append( nmiEruNr);
    stringBuffer.append(TEXT_1348);
     }
		} // nmiEruNr loop
     } // if scu loop 
    stringBuffer.append(TEXT_1349);
     //********* SCU CONFIGURATIONS ---  END ************************* 
    } 
    if (xmc1Device==1){
     //********* SCU CONFIGURATIONS ---  BEGIN ************************* 
    stringBuffer.append(TEXT_1350);
     if (MyObj.toString().equals("peripheral/scu")) {  
    stringBuffer.append(TEXT_1351);
      String uriSCU_CCU = null;
                uriSCU_CCU = "peripheral/scu/0/ccu/config/clkcr_rtcclksel";
                if((app.getMuxValue(uriSCU_CCU).compareTo(app.getResetValue(uriSCU_CCU)) != 0) && (app.getMuxValue(uriSCU_CCU).compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1352);
    stringBuffer.append( app.getMuxValue(uriSCU_CCU) );
    stringBuffer.append(TEXT_1353);
     } 
      		  String uriSCU_CMPCU = null;
                uriSCU_CMPCU = "peripheral/scu/0/cmpcu/anacmp/0/acmp_sel";
                if((app.getMuxValue(uriSCU_CMPCU).compareTo(app.getResetValue(uriSCU_CMPCU)) != 0) && (app.getMuxValue(uriSCU_CMPCU).compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1354);
    stringBuffer.append( app.getMuxValue(uriSCU_CMPCU) );
    stringBuffer.append(TEXT_1355);
     }
                uriSCU_CMPCU = "peripheral/scu/0/cmpcu/anacmp/1/ref_div_en";
                if((app.getMuxValue(uriSCU_CMPCU).compareTo(app.getResetValue(uriSCU_CMPCU)) != 0) && (app.getMuxValue(uriSCU_CMPCU).compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1356);
    stringBuffer.append( app.getMuxValue(uriSCU_CMPCU) );
    stringBuffer.append(TEXT_1357);
     }
                uriSCU_CMPCU = "peripheral/scu/0/cmpcu/anacmp/2/acmp_sel";
                if((app.getMuxValue(uriSCU_CMPCU).compareTo(app.getResetValue(uriSCU_CMPCU)) != 0) && (app.getMuxValue(uriSCU_CMPCU).compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1358);
    stringBuffer.append( app.getMuxValue(uriSCU_CMPCU) );
    stringBuffer.append(TEXT_1359);
     }
     } // if loop 
     //********* SCU CONFIGURATIONS ---  END ************************* 
     //********* LEDTS CONFIGURATIONS ---  BEGIN ************************* 
    stringBuffer.append(TEXT_1360);
     if (MyObj.toString().equals("peripheral/ledts")) {  
    stringBuffer.append(TEXT_1361);
      String uriLEDTS = null;
               uriLEDTS = "peripheral/ledts/1/global/globctl_ensync";
               if((app.getMuxValue(uriLEDTS).compareTo(app.getResetValue(uriLEDTS)) != 0) && (app.getMuxValue(uriLEDTS).compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1362);
    stringBuffer.append( app.getMuxValue(uriLEDTS) );
    stringBuffer.append(TEXT_1363);
     }
     } // if loop 
     //********* LEDTS-1 CONFIGURATIONS ---  END ************************* 
     //********* BCCU CONFIGURATIONS ---  BEGIN ************************* 
    stringBuffer.append(TEXT_1364);
     if (MyObj.toString().equals("peripheral/bccu")) {  
    stringBuffer.append(TEXT_1365);
      String uriBCCU = null;
               for (int chNr=0; chNr<=8; chNr++) {
                uriBCCU = "peripheral/bccu/0/channel/" + chNr + "/chconfig_dsel";
                if((app.getMuxValue(uriBCCU).compareTo(app.getResetValue(uriBCCU)) != 0) && (app.getMuxValue(uriBCCU).compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1366);
    stringBuffer.append( chNr);
    stringBuffer.append(TEXT_1367);
    stringBuffer.append( app.getMuxValue(uriBCCU) );
    stringBuffer.append(TEXT_1368);
    stringBuffer.append( chNr);
    stringBuffer.append(TEXT_1369);
     } // if statement.
           } // chNr loop.
                uriBCCU = "peripheral/bccu/0/trap/globcon_trapis";
                if((app.getMuxValue(uriBCCU).compareTo(app.getResetValue(uriBCCU)) != 0) && (app.getMuxValue(uriBCCU).compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1370);
    stringBuffer.append( app.getMuxValue(uriBCCU) );
    stringBuffer.append(TEXT_1371);
     } // if statement.
     } // if loop 
     //********* BCCU CONFIGURATIONS ---  END ************************* 
    } 
     //********* ERU CONFIGURATIONS ---  BEGIN ************************* 
    stringBuffer.append(TEXT_1372);
     if (MyObj.toString().equals("peripheral/eru")) {  
      String uriERU = null;
           for (int eruNr=0; eruNr<=1; eruNr++) { 
    stringBuffer.append(TEXT_1373);
    stringBuffer.append( eruNr);
    stringBuffer.append(TEXT_1374);
     for (int ersNr=0; ersNr<=3; ersNr++) {
                uriERU = "peripheral/eru/" + eruNr + "/ers_etl/" + ersNr + "/exisel_exsxa";
                if((app.getMuxValue(uriERU).compareTo(app.getResetValue(uriERU)) != 0) && (app.getMuxValue(uriERU).compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1375);
    stringBuffer.append( eruNr);
    stringBuffer.append(TEXT_1376);
    stringBuffer.append( ersNr);
    stringBuffer.append(TEXT_1377);
    stringBuffer.append( ersNr);
    stringBuffer.append(TEXT_1378);
    stringBuffer.append( app.getMuxValue(uriERU) );
    stringBuffer.append(TEXT_1379);
    stringBuffer.append( eruNr);
    stringBuffer.append(TEXT_1380);
    stringBuffer.append( ersNr);
    stringBuffer.append(TEXT_1381);
     } 
                uriERU = "peripheral/eru/" + eruNr + "/ers_etl/" + ersNr + "/exisel_exsxb";
                if((app.getMuxValue(uriERU).compareTo(app.getResetValue(uriERU)) != 0) && (app.getMuxValue(uriERU).compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1382);
    stringBuffer.append( eruNr);
    stringBuffer.append(TEXT_1383);
    stringBuffer.append( ersNr);
    stringBuffer.append(TEXT_1384);
    stringBuffer.append( ersNr);
    stringBuffer.append(TEXT_1385);
    stringBuffer.append( app.getMuxValue(uriERU) );
    stringBuffer.append(TEXT_1386);
    stringBuffer.append( eruNr);
    stringBuffer.append(TEXT_1387);
    stringBuffer.append( ersNr);
    stringBuffer.append(TEXT_1388);
     }
                uriERU = "peripheral/eru/" + eruNr + "/ers_etl/" + ersNr + "/exicon_pe";
                if((app.getMuxValue(uriERU).compareTo(app.getResetValue(uriERU)) != 0) && (app.getMuxValue(uriERU).compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1389);
    stringBuffer.append( eruNr);
    stringBuffer.append(TEXT_1390);
    stringBuffer.append( ersNr);
    stringBuffer.append(TEXT_1391);
    stringBuffer.append( app.getMuxValue(uriERU) );
    stringBuffer.append(TEXT_1392);
    stringBuffer.append( eruNr);
    stringBuffer.append(TEXT_1393);
    stringBuffer.append( ersNr);
    stringBuffer.append(TEXT_1394);
     }
                uriERU = "peripheral/eru/" + eruNr + "/ers_etl/" + ersNr + "/exicon_ocs";
                if((app.getMuxValue(uriERU).compareTo(app.getResetValue(uriERU)) != 0) && (app.getMuxValue(uriERU).compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1395);
    stringBuffer.append( eruNr);
    stringBuffer.append(TEXT_1396);
    stringBuffer.append( ersNr);
    stringBuffer.append(TEXT_1397);
    stringBuffer.append( app.getMuxValue(uriERU) );
    stringBuffer.append(TEXT_1398);
    stringBuffer.append( eruNr);
    stringBuffer.append(TEXT_1399);
    stringBuffer.append( ersNr);
    stringBuffer.append(TEXT_1400);
     } 
            } // ersNr loop 
            for (int oguNr=0; oguNr<=3; oguNr++) {
                for (int ipenNr=0; ipenNr<=3; ipenNr++) {
                    uriERU = "peripheral/eru/" + eruNr + "/ogu/" + oguNr + "/exocon_ipen" + ipenNr;
                    if((app.getMuxValue(uriERU).compareTo(app.getResetValue(uriERU)) != 0) && (app.getMuxValue(uriERU).compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1401);
    stringBuffer.append( eruNr);
    stringBuffer.append(TEXT_1402);
    stringBuffer.append( oguNr);
    stringBuffer.append(TEXT_1403);
    stringBuffer.append( ipenNr);
    stringBuffer.append(TEXT_1404);
    stringBuffer.append( ipenNr);
    stringBuffer.append(TEXT_1405);
    stringBuffer.append( app.getMuxValue(uriERU) );
    stringBuffer.append(TEXT_1406);
    stringBuffer.append( eruNr);
    stringBuffer.append(TEXT_1407);
    stringBuffer.append( oguNr);
    stringBuffer.append(TEXT_1408);
    stringBuffer.append( ipenNr);
    stringBuffer.append(TEXT_1409);
     }
                } // ipen loop
                uriERU = "peripheral/eru/" + eruNr + "/ogu/" + oguNr + "/exocon_iss";
                if((app.getMuxValue(uriERU).compareTo(app.getResetValue(uriERU)) != 0) && (app.getMuxValue(uriERU).compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1410);
    stringBuffer.append( eruNr);
    stringBuffer.append(TEXT_1411);
    stringBuffer.append( oguNr);
    stringBuffer.append(TEXT_1412);
    stringBuffer.append( app.getMuxValue(uriERU) );
    stringBuffer.append(TEXT_1413);
    stringBuffer.append( eruNr);
    stringBuffer.append(TEXT_1414);
    stringBuffer.append( oguNr);
    stringBuffer.append(TEXT_1415);
     } 
            } // oguNr loop            
        } // eruNr loop
     } // if eru loop 
     //********* ERU CONFIGURATIONS ---  END ************************* 
     //********* PORT CONFIGURATIONS ---  BEGIN ************************* 
     if (MyObj.toString().equals("port/p")) { 
    stringBuffer.append(TEXT_1416);
      String uriPORT = null;
        String uriPORT_OE = null;
        String uriPORT_PCR = null;
        int firstPadNr = 0;
        int lastPadNr = 15;
        int iomode = 0;
        long iocr_pcr_val = 0;
	long iocr_oe_val = 0;
	long iocr_pcr_mask = 0;
	long iocr_oe_mask = 0;
        for (int portNr=0; portNr<=15; portNr++) {     
            if (portNr==4) {lastPadNr = 7;}
            if (portNr==5) {lastPadNr = 11;}
            if (portNr==6) {lastPadNr = 6;}
            if (portNr==15) {firstPadNr = 2;}
            if ((portNr<=6) | (portNr==14)| (portNr==15)) {
               for (int padNr=firstPadNr; padNr<=lastPadNr; padNr++) { 
                   if (!(((portNr==14) | (portNr==15)) & ((padNr==10)|(padNr==11)))) { 
                       uriPORT = "port/p/" + portNr + "/pad/" + padNr + "/iocr_oe";
                       if((app.getMuxValue(uriPORT).compareTo(app.getResetValue(uriPORT)) != 0) && (app.getMuxValue(uriPORT).compareTo("") != 0)) {
                       iomode = Integer.parseInt(app.getMuxValue(uriPORT));
                       }
					   if (iomode == 1) {
                       uriPORT = "port/p/" + portNr + "/pad/" + padNr + "/pdisc_pdis";
                       if((app.getMuxValue(uriPORT).compareTo(app.getResetValue(uriPORT)) != 0) && (app.getMuxValue(uriPORT).compareTo("") != 0)) { 
    stringBuffer.append(TEXT_1417);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1418);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1419);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1420);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1421);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1422);
    stringBuffer.append( app.getMuxValue(uriPORT) );
    stringBuffer.append(TEXT_1423);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1424);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1425);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1426);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1427);
     }					   
					   uriPORT = "port/p/" + portNr + "/pad/" + padNr + "/hwsel_hw";
                       if((app.getMuxValue(uriPORT).compareTo(app.getResetValue(uriPORT)) != 0) && (app.getMuxValue(uriPORT).compareTo("") != 0)) { 
                       int hwsel = Integer.parseInt(app.getMuxValue(uriPORT)); if (hwsel > 0) { hwsel = hwsel - 1; 
    stringBuffer.append(TEXT_1428);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1429);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1430);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1431);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1432);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1433);
    stringBuffer.append( hwsel );
    stringBuffer.append(TEXT_1434);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1435);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1436);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1437);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1438);
     } else if (hwsel == 0) { 
    stringBuffer.append(TEXT_1439);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1440);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1441);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1442);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1443);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1444);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1445);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1446);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1447);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1448);
     } }
                       uriPORT = "port/p/" + portNr + "/pad/" + padNr + "/iocr_pcr";
                       uriPORT_PCR = "port/p/" + portNr + "/pad/" + padNr + "/iocr_pcr";
                       uriPORT_OE = "port/p/" + portNr + "/pad/" + padNr + "/iocr_oe"; 
                       if ((xmc1Device==1) && ( (portNr==0) && (padNr==8) ))   {
    stringBuffer.append(TEXT_1449);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1450);
    stringBuffer.append( ((padNr / 4) * 4));
    stringBuffer.append(TEXT_1451);
    stringBuffer.append( padNr - ((padNr / 4) * 4));
    stringBuffer.append(TEXT_1452);
    stringBuffer.append( padNr - ((padNr / 4) * 4));
    stringBuffer.append(TEXT_1453);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1454);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1455);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1456);
    stringBuffer.append( ((padNr / 4) * 4));
    stringBuffer.append(TEXT_1457);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1458);
    }
                       if((app.getMuxValue(uriPORT).compareTo(app.getResetValue(uriPORT)) != 0) && (app.getMuxValue(uriPORT).compareTo("") != 0)) { 
    iocr_pcr_val = (long)( Integer.parseInt(app.getMuxValue(uriPORT) ) )  ;  
    iocr_pcr_mask = ( (long)7 << (long)( 3+((padNr - ((padNr / 4) * 4))*8) ) ); 
     }
                       uriPORT = "port/p/" + portNr + "/pad/" + padNr + "/iocr_oe";
                       if((app.getMuxValue(uriPORT).compareTo(app.getResetValue(uriPORT)) != 0) && (app.getMuxValue(uriPORT).compareTo("") != 0)) { 
    iocr_oe_val = (long)(Integer.parseInt(app.getMuxValue(uriPORT) ) ) << 4;  
    stringBuffer.append(TEXT_1459);
    iocr_oe_mask = ( (long)1 << (long)( 7+((padNr - ((padNr / 4) * 4))*8) ) ); 
     } 
    /*29254  UART001 : Mux : One instruction for output pins initialisation */
    stringBuffer.append(TEXT_1460);
    if( ( (app.getMuxValue(uriPORT_PCR).compareTo(app.getResetValue(uriPORT_PCR)) != 0) && (app.getMuxValue(uriPORT_PCR).compareTo("") != 0) ) && 
                           ((app.getMuxValue(uriPORT_OE).compareTo(app.getResetValue(uriPORT_OE)) != 0) && (app.getMuxValue(uriPORT_OE).compareTo("") != 0) ) ) { 
    stringBuffer.append(TEXT_1461);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1462);
    stringBuffer.append( ((padNr / 4) * 4));
    stringBuffer.append(TEXT_1463);
    stringBuffer.append(Integer.toHexString( (int)(iocr_oe_mask | iocr_pcr_mask) ) );
    stringBuffer.append(TEXT_1464);
    stringBuffer.append( padNr - ((padNr / 4) * 4));
    stringBuffer.append(TEXT_1465);
    stringBuffer.append(( Integer.toHexString( (int)(iocr_pcr_val | iocr_oe_val) )  ));
    stringBuffer.append(TEXT_1466);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1467);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1468);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1469);
    stringBuffer.append( ((padNr / 4) * 4));
    stringBuffer.append(TEXT_1470);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1471);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1472);
    stringBuffer.append( ((padNr / 4) * 4));
    stringBuffer.append(TEXT_1473);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1474);
     } 
		               else if(  (app.getMuxValue(uriPORT_PCR).compareTo(app.getResetValue(uriPORT_PCR)) != 0) && (app.getMuxValue(uriPORT_PCR).compareTo("") != 0) ) { 
    stringBuffer.append(TEXT_1475);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1476);
    stringBuffer.append( ((padNr / 4) * 4));
    stringBuffer.append(TEXT_1477);
    stringBuffer.append( padNr - ((padNr / 4) * 4));
    stringBuffer.append(TEXT_1478);
    stringBuffer.append( padNr - ((padNr / 4) * 4));
    stringBuffer.append(TEXT_1479);
    stringBuffer.append( app.getMuxValue(uriPORT) );
    stringBuffer.append(TEXT_1480);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1481);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1482);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1483);
    stringBuffer.append( ((padNr / 4) * 4));
    stringBuffer.append(TEXT_1484);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1485);
     }  
                       else if( ( (app.getMuxValue(uriPORT_OE).compareTo(app.getResetValue(uriPORT_OE) ) != 0) && (app.getMuxValue(uriPORT_OE).compareTo("") != 0) ) ) { 
    stringBuffer.append(TEXT_1486);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1487);
    stringBuffer.append( ((padNr / 4) * 4));
    stringBuffer.append(TEXT_1488);
    stringBuffer.append( padNr - ((padNr / 4) * 4));
    stringBuffer.append(TEXT_1489);
    stringBuffer.append( padNr - ((padNr / 4) * 4));
    stringBuffer.append(TEXT_1490);
    stringBuffer.append( app.getMuxValue(uriPORT) );
    stringBuffer.append(TEXT_1491);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1492);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1493);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1494);
    stringBuffer.append( ((padNr / 4) * 4));
    stringBuffer.append(TEXT_1495);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1496);
     } 
    stringBuffer.append(TEXT_1497);
     iomode = 0;
					     iocr_pcr_val = 0;
		                 iocr_oe_val = 0;
		                 iocr_pcr_mask = 0;
		                 iocr_oe_mask = 0; }
                    } // if portNr(14,15)& padNr(14,15) loop     
                } // padNr loop
            } // if portNr(6,14,15) loop 
            firstPadNr = 0; lastPadNr = 15;
        } // portNr loop     
    } // if port loop 
    stringBuffer.append(TEXT_1498);
     //********* PORT CONFIGURATIONS ---  END ************************* 
     } 
    stringBuffer.append(TEXT_1499);
     
   String MyTempPeriName1 = null;
   Object MyObj1 = null; 	
   Set set1 = PeriHashMap.entrySet(); 
   Iterator i1 = set.iterator();
     while(i1.hasNext()) { 
     Map.Entry peri_me1 = (Map.Entry)i1.next();  
           MyObj1 = peri_me1.getKey();              
           MyTempPeriName1 = MyObj1.toString(); 

   //********* PORT CONFIGURATIONS ---  BEGIN *************************
      if (MyObj1.toString().equals("port/p")) { 
    stringBuffer.append(TEXT_1500);
      String uriPORT1 = null;
        int firstPadNr1 = 0;
        int lastPadNr1 = 15;
        int iomode1 = 0;
        for (int portNr=0; portNr<=15; portNr++) {     
            if (portNr==4) {lastPadNr1 = 7;}
            if (portNr==5) {lastPadNr1 = 11;}
            if (portNr==6) {lastPadNr1 = 6;}
            if (portNr==15) {firstPadNr1 = 2;}
            if ((portNr<=6) | (portNr==14)| (portNr==15)) {
               for (int padNr=firstPadNr1; padNr<=lastPadNr1; padNr++) { 
                   if (!(((portNr==14) | (portNr==15)) & ((padNr==10)|(padNr==11)))) { 
                       uriPORT1 = "port/p/" + portNr + "/pad/" + padNr + "/iocr_oe";
                       if((app.getMuxValue(uriPORT1).compareTo(app.getResetValue(uriPORT1)) != 0) && (app.getMuxValue(uriPORT1).compareTo("") != 0)) {
                       iomode1 = Integer.parseInt(app.getMuxValue(uriPORT1));
                       } 
					   if (iomode1 == 0) {
                       uriPORT1 = "port/p/" + portNr + "/pad/" + padNr + "/pdisc_pdis";
                       
                       if((app.getMuxValue(uriPORT1).compareTo(app.getResetValue(uriPORT1)) != 0) && (app.getMuxValue(uriPORT1).compareTo("") != 0)  && (app.getMuxValue(uriPORT1).compareTo("-1") != 0)) { /*29256  Multiplexer : -1 instead of number in pad configuration.*/ 
    stringBuffer.append(TEXT_1501);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1502);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1503);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1504);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1505);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1506);
    stringBuffer.append( app.getMuxValue(uriPORT1) );
    stringBuffer.append(TEXT_1507);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1508);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1509);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1510);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1511);
     }
					   uriPORT1 = "port/p/" + portNr + "/pad/" + padNr + "/hwsel_hw";
                       if((app.getMuxValue(uriPORT1).compareTo(app.getResetValue(uriPORT1)) != 0) && (app.getMuxValue(uriPORT1).compareTo("") != 0)) { 
                       int hwsel1 = Integer.parseInt(app.getMuxValue(uriPORT1)); if (hwsel1 > 0) { hwsel1 = hwsel1 - 1; 
    stringBuffer.append(TEXT_1512);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1513);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1514);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1515);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1516);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1517);
    stringBuffer.append( hwsel1 );
    stringBuffer.append(TEXT_1518);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1519);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1520);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1521);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1522);
     } else if (hwsel1 == 0) { 
    stringBuffer.append(TEXT_1523);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1524);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1525);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1526);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1527);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1528);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1529);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1530);
    stringBuffer.append( portNr);
    stringBuffer.append(TEXT_1531);
    stringBuffer.append( padNr);
    stringBuffer.append(TEXT_1532);
     } }					   
                       } else { iomode1 = 0; }
                    } // if portNr(14,15)& padNr(14,15) loop     
                } // padNr loop
            } // if portNr(6,14,15) loop 
            firstPadNr1 = 0; lastPadNr1 = 15;
        } // portNr loop     
    } // if port loop 
    stringBuffer.append(TEXT_1533);
     //********* PORT CONFIGURATIONS ---  END ************************* 
     } 
    stringBuffer.append(TEXT_1534);
    stringBuffer.append(TEXT_1535);
    return stringBuffer.toString();
  }
}
