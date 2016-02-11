package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class io004c_template
{
  protected static String nl;
  public static synchronized io004c_template create(String lineSeparator)
  {
    nl = lineSeparator;
    io004c_template result = new io004c_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[IO004.c]*/" + NL + "/*******************************************************************************" + NL + " Copyright (c) 2012, Infineon Technologies AG                                 **" + NL + " All rights reserved.                                                         **" + NL + "                                                                              **" + NL + " Redistribution and use in source and binary forms, with or without           **" + NL + " modification,are permitted provided that the following conditions are met:   **" + NL + "                                                                              **" + NL + " *Redistributions of source code must retain the above copyright notice,      **" + NL + " this list of conditions and the following disclaimer.                        **" + NL + " *Redistributions in binary form must reproduce the above copyright notice,   **" + NL + " this list of conditions and the following disclaimer in the documentation    **" + NL + " and/or other materials provided with the distribution.                       **" + NL + " *Neither the name of the copyright holders nor the names of its contributors **" + NL + " may be used to endorse or promote products derived from this software without**" + NL + " specific prior written permission.                                           **" + NL + "                                                                              **" + NL + " THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\"  **" + NL + " AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **" + NL + " IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **" + NL + " ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **" + NL + " LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **" + NL + " CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **" + NL + " SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **" + NL + " INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **" + NL + " CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **" + NL + " ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **" + NL + " POSSIBILITY OF SUCH DAMAGE.                                                  **" + NL + "                                                                              **" + NL + " To improve the quality of the software, users are encouraged to share        **" + NL + " modifications, enhancements or bug fixes with Infineon Technologies AG       **" + NL + " dave@infineon.com).                                                          **" + NL + "                                                                              **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC4000/XMC1000 Series                                 **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** MAY BE CHANGED BY USER [yes/no]: Yes                                       **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : Mar 16, 2013                                           **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "/*******************************************************************************" + NL + "**                      Author(s) Identity                                    **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "** Initials     Name                                                          **" + NL + "** ---------------------------------------------------------------------------**" + NL + "** PAE        App Developer                                                   **" + NL + "*******************************************************************************/" + NL + "/**" + NL + " * @file   IO004.c" + NL + " *" + NL + " * @brief  IO_Digital _IO004 App" + NL + " *" + NL + " * This app can be used to configure a IO Pin when the output shall be " + NL + " * controlled by software or when it required  just as a input I/O.IO002 App can " + NL + " * be used in any case except when the output shall be controlled by software.\t\t\t" + NL + " *" + NL + " *\tNote: " + NL + " *\tThe App GUI configures the Port Pin as GPIO in input mode by default." + NL + " */" + NL + "/* Revision History " + NL + " *" + NL + " * 01 Jan 2013  v1.0.12  Disabled Pad Class & Pad driver configuration for " + NL + " *                       XMC1000." + NL + " * 16 Mar 2013  v1.0.14  Modified OMR register configuration (Direct assignment " + NL + " *                       without reading) to upgrade performance." + NL + " *" + NL + " */" + NL + "/*******************************************************************************" + NL + " ** INCLUDE FILES                                                             **" + NL + " ******************************************************************************/" + NL + "" + NL + "/** Inclusion of header file */" + NL + "#include <DAVE3.h>" + NL + "" + NL + "/*******************************************************************************" + NL + "**                      Private Macro Definitions                             **" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "**                      Private Type Definitions                              **" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "**                 Private Function Declarations:" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "**                      Global Constant Definitions                           **" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "**                      Global Variable Definitions                           **" + NL + "*******************************************************************************/";
  protected final String TEXT_2 = NL + NL + "/*******************************************************************************" + NL + "**                      Private Constant Definitions                          **" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "**                 Function like macro definitions                            **" + NL + "*******************************************************************************/" + NL + "/*******************************************************************************" + NL + "**                      Private Function Definitions                          **" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "**                      Public Function Definitions                           **" + NL + "*******************************************************************************/" + NL + "/** @ingroup IO004_Func" + NL + " * @{" + NL + " */" + NL + "" + NL + "void IO004_Init(void)" + NL + "{" + NL + "   /* <<<DD_IO004_API_1>>> */" + NL;
  protected final String TEXT_3 = NL + "\t";
  protected final String TEXT_4 = "   " + NL;
  protected final String TEXT_5 = NL + "  /* Configuration of ";
  protected final String TEXT_6 = " Port ";
  protected final String TEXT_7 = " based on User configuration */" + NL + "  IO004_Handle";
  protected final String TEXT_8 = ".PortRegs->OMR = ";
  protected final String TEXT_9 = "U<< ";
  protected final String TEXT_10 = ";" + NL + "  ";
  protected final String TEXT_11 = NL + "  IO004_Handle";
  protected final String TEXT_12 = ".PortRegs->PDR0   &= (uint32_t)(~(PORT";
  protected final String TEXT_13 = "_PDR0_PD";
  protected final String TEXT_14 = "_Msk));" + NL + "  IO004_Handle";
  protected final String TEXT_15 = ".PortRegs->PDR0   |= (uint32_t)((";
  protected final String TEXT_16 = "UL << PORT";
  protected final String TEXT_17 = "_PDR0_PD";
  protected final String TEXT_18 = "_Pos) & \\" + NL + "                                          PORT";
  protected final String TEXT_19 = "_PDR0_PD";
  protected final String TEXT_20 = "_Msk);";
  protected final String TEXT_21 = NL + "  IO004_Handle";
  protected final String TEXT_22 = ".PortRegs->PDR1  &= (uint32_t)(~(PORT";
  protected final String TEXT_23 = "_PDR1_PD";
  protected final String TEXT_24 = "_Msk));" + NL + "  IO004_Handle";
  protected final String TEXT_25 = ".PortRegs->PDR1  |= (uint32_t)((";
  protected final String TEXT_26 = "UL << PORT";
  protected final String TEXT_27 = "_PDR1_PD";
  protected final String TEXT_28 = "_Pos) & \\" + NL + "                                     PORT";
  protected final String TEXT_29 = "_PDR1_PD";
  protected final String TEXT_30 = "_Msk);";
  protected final String TEXT_31 = NL + "  IO004_Handle";
  protected final String TEXT_32 = ".PortRegs->HWSEL  |= (2U << ";
  protected final String TEXT_33 = ");";
  protected final String TEXT_34 = NL + "  IO004_Handle";
  protected final String TEXT_35 = ".PortRegs->IOCR0 |= (";
  protected final String TEXT_36 = "U << ";
  protected final String TEXT_37 = ");";
  protected final String TEXT_38 = NL + "  IO004_Handle";
  protected final String TEXT_39 = ".PortRegs->IOCR4 |= (";
  protected final String TEXT_40 = "U << ";
  protected final String TEXT_41 = ");";
  protected final String TEXT_42 = NL + "  IO004_Handle";
  protected final String TEXT_43 = ".PortRegs->IOCR8 |= (";
  protected final String TEXT_44 = "U << ";
  protected final String TEXT_45 = ");";
  protected final String TEXT_46 = NL + "  IO004_Handle";
  protected final String TEXT_47 = ".PortRegs->IOCR12 |= (";
  protected final String TEXT_48 = "U << ";
  protected final String TEXT_49 = ");";
  protected final String TEXT_50 = NL + "  IO004_Handle";
  protected final String TEXT_51 = ".PortRegs->IOCR0 |= (";
  protected final String TEXT_52 = "U << ";
  protected final String TEXT_53 = ");";
  protected final String TEXT_54 = NL + "  IO004_Handle";
  protected final String TEXT_55 = ".PortRegs->IOCR4 |= (";
  protected final String TEXT_56 = "U << ";
  protected final String TEXT_57 = ");";
  protected final String TEXT_58 = NL + "  IO004_Handle";
  protected final String TEXT_59 = ".PortRegs->IOCR8 |= (";
  protected final String TEXT_60 = "U << ";
  protected final String TEXT_61 = ");";
  protected final String TEXT_62 = NL + "  IO004_Handle";
  protected final String TEXT_63 = ".PortRegs->IOCR12 |= (";
  protected final String TEXT_64 = "U << ";
  protected final String TEXT_65 = ");";
  protected final String TEXT_66 = NL + "  /* PIN App instance (no.";
  protected final String TEXT_67 = ") is not mapped to any port pin. */";
  protected final String TEXT_68 = NL + "}" + NL + "" + NL + "void IO004_DisableOutputDriver(const IO004_HandleType* Handle,IO004_InputModeType Mode)" + NL + "{" + NL + "  uint8_t Pin = Handle->PortPin;" + NL + "  /* <<<DD_IO004_API_2>>> */" + NL + "  if(Pin < 4U)" + NL + "  {" + NL + "    Handle->PortRegs->IOCR0  =  (uint32_t)(Handle->PortRegs->IOCR0 & ~(0x0000001FUL << (3U+(Pin*8U))));" + NL + "    Handle->PortRegs->IOCR0 |= (uint32_t)(((uint32_t)Mode & 0x1FUL) << (3U+(Pin*8U)));" + NL + "  } else if ((Pin >= 4U) && (Pin <= 7U))" + NL + "  {" + NL + "    Pin = Pin - 4U;" + NL + "    Handle->PortRegs->IOCR4  =  (uint32_t)(Handle->PortRegs->IOCR4 & ~(0x0000001FUL << (3U+(Pin*8U))));" + NL + "    Handle->PortRegs->IOCR4 |=  (uint32_t)(((uint32_t)Mode & 0x1FUL) << (3U+(Pin*8U)));" + NL + "  } else if ((Pin >= 8U) && (Pin <= 11U))" + NL + "  {" + NL + "    Pin = Pin - 8U;" + NL + "    Handle->PortRegs->IOCR8  =  (uint32_t)(Handle->PortRegs->IOCR8 & ~(0x0000001FUL << (3U+(Pin*8U))));" + NL + "    Handle->PortRegs->IOCR8 |=  (uint32_t)(((uint32_t)Mode & 0x1FUL) << (3U+(Pin*8U)));" + NL + "  } else if ((Pin >= 12U) && (Pin <= 15U))" + NL + "  {" + NL + "    Pin = Pin - 12U;" + NL + "    Handle->PortRegs->IOCR12  =  (uint32_t)(Handle->PortRegs->IOCR12 & ~(0x0000001FUL << (3U+(Pin*8U))));" + NL + "    Handle->PortRegs->IOCR12 |=  (uint32_t)(((uint32_t)Mode & 0x1FUL) << (3U+(Pin*8U)));" + NL + "  }" + NL + "  else" + NL + "  {" + NL + "\t  /*Not supposed to be here */" + NL + "  }" + NL + "" + NL + "}" + NL + "" + NL + "void IO004_EnableOutputDriver(const IO004_HandleType* Handle,IO004_OutputModeType Mode)" + NL + "{" + NL + "" + NL + "  uint8_t Pin = Handle->PortPin;" + NL + "  /* <<<DD_IO004_API_2>>> */" + NL + "  if(Pin < 4U)" + NL + "  {" + NL + "    Handle->PortRegs->IOCR0  =  (uint32_t)(Handle->PortRegs->IOCR0 & ~(0x0000001FUL << (3U+(Pin*8U))));" + NL + "    Handle->PortRegs->IOCR0 |=  (uint32_t)(((uint32_t)Mode & 0x1FUL) << (3U+(Pin*8U)));" + NL + "  } else if ((Pin >= 4U) && (Pin <= 7U))" + NL + "  {" + NL + "    Pin = Pin - 4U;" + NL + "    Handle->PortRegs->IOCR4  =  (uint32_t)(Handle->PortRegs->IOCR4 & ~(0x0000001FUL << (3U+(Pin*8U))));" + NL + "    Handle->PortRegs->IOCR4 |=  (uint32_t)(((uint32_t)Mode & 0x1FUL) << (3U+(Pin*8U)));" + NL + "  } else if ((Pin >= 8U) && (Pin <= 11U))" + NL + "  {" + NL + "    Pin = Pin - 8U;" + NL + "    Handle->PortRegs->IOCR8  =  (uint32_t)(Handle->PortRegs->IOCR8 & ~(0x0000001FUL << (3U+(Pin*8U))));" + NL + "    Handle->PortRegs->IOCR8 |=  (uint32_t)(((uint32_t)Mode & 0x1FUL) << (3U+(Pin*8U)));" + NL + "  } else if ((Pin >= 12U) && (Pin <= 15U))" + NL + "  {" + NL + "    Pin = Pin - 12U;" + NL + "    Handle->PortRegs->IOCR12  =  (uint32_t)(Handle->PortRegs->IOCR12 & ~(0x0000001FUL << (3U+(Pin*8U))));" + NL + "    Handle->PortRegs->IOCR12 |=  (uint32_t)(((uint32_t)Mode & 0x1FUL) << (3U+(Pin*8U)));" + NL + "  }" + NL + "  else" + NL + "  {" + NL + "\t  /*Not supposed to be here */" + NL + "  }" + NL + "}" + NL + "" + NL + "/**" + NL + "*@}" + NL + "*/\t" + NL + "" + NL + "/*CODE_BLOCK_END*/" + NL;
  protected final String TEXT_69 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     int IsTIMM1Device = -1; 
     IsTIMM1Device = ((app.getSoftwareId().substring(0,1).compareTo("1")==0)?1:0);

    stringBuffer.append(TEXT_2);
     String AppBaseuri = "app/io004/"; 
     String appInst  = null; 
    stringBuffer.append(TEXT_3);
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/io004/"));
   for (String appIns : appsList ) {
   appInst = appIns.substring(appIns.lastIndexOf("/")+1);
     String pinUri = app.getMappedUri(AppBaseuri + appInst +"/pin"); 
     if ((pinUri != null) && (pinUri.trim() != "")) { 
     String portNo = pinUri.substring(pinUri.indexOf("port/p/")+7,pinUri.indexOf("/pad/")); 
     String pinNo = pinUri.substring(pinUri.indexOf("/pad/")+5,pinUri.length()); 
    stringBuffer.append(TEXT_4);
     int OMR_PS = app.getIntegerValue(AppBaseuri + appInst +"/pin/omr_ps");
  int PDR_PD = app.getIntegerValue(AppBaseuri + appInst +"/pin/pdr_pd");
  int HW_SEL = app.getIntegerValue(AppBaseuri + appInst +"IO004_irwHWControl");
  int IOCR_PCR = app.getIntegerValue(AppBaseuri + appInst +"/pin/iocr_pcr");
  int IOCR_PO = app.getIntegerValue(AppBaseuri + appInst +"/pin/iocr_po");
  int IOCR_OE = app.getIntegerValue(AppBaseuri + appInst +"/pin/iocr_oe");
  
  int IOCR    = (IOCR_PO << 3 );
     int Pin = Integer.parseInt(pinNo);
    stringBuffer.append(TEXT_5);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_6);
    stringBuffer.append(pinNo);
    stringBuffer.append(TEXT_7);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_8);
    stringBuffer.append(OMR_PS);
    stringBuffer.append(TEXT_9);
    stringBuffer.append(pinNo);
    stringBuffer.append(TEXT_10);
     if(IsTIMM1Device !=1){
     if(Pin < 8) {
    stringBuffer.append(TEXT_11);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_12);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_13);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_14);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_15);
    stringBuffer.append(PDR_PD);
    stringBuffer.append(TEXT_16);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_17);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_18);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_19);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_20);
     } else {
    stringBuffer.append(TEXT_21);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_22);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_23);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_24);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_25);
    stringBuffer.append(PDR_PD);
    stringBuffer.append(TEXT_26);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_27);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_28);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_29);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_30);
    } 
    } 
     if(HW_SEL == 1 ) {
    stringBuffer.append(TEXT_31);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_32);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_33);
     }
  if(IOCR_OE == 1 ) {
  if(Pin < 4) { 
    stringBuffer.append(TEXT_34);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_35);
    stringBuffer.append(IOCR);
    stringBuffer.append(TEXT_36);
    stringBuffer.append((3+(Pin*8)));
    stringBuffer.append(TEXT_37);
    }else if (Pin >= 4 && Pin <= 7) {  
  Pin = Pin - 4; 
    stringBuffer.append(TEXT_38);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_39);
    stringBuffer.append(IOCR);
    stringBuffer.append(TEXT_40);
    stringBuffer.append((3+(Pin*8)));
    stringBuffer.append(TEXT_41);
    } else if (Pin >= 8 && Pin <= 11) { 
  Pin = Pin - 8; 
    stringBuffer.append(TEXT_42);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_43);
    stringBuffer.append(IOCR);
    stringBuffer.append(TEXT_44);
    stringBuffer.append((3+(Pin*8)));
    stringBuffer.append(TEXT_45);
    } else if (Pin >= 12 && Pin <= 15) { 
  Pin = Pin - 12; 
    stringBuffer.append(TEXT_46);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_47);
    stringBuffer.append(IOCR);
    stringBuffer.append(TEXT_48);
    stringBuffer.append((3+(Pin*8)));
    stringBuffer.append(TEXT_49);
    }}
  if(IOCR_OE == 0 ) {
  if(Pin < 4) { 
    stringBuffer.append(TEXT_50);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_51);
    stringBuffer.append(IOCR_PCR);
    stringBuffer.append(TEXT_52);
    stringBuffer.append((3+(Pin*8)));
    stringBuffer.append(TEXT_53);
    }else if (Pin >= 4 && Pin <= 7) {  
  Pin = Pin - 4; 
    stringBuffer.append(TEXT_54);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_55);
    stringBuffer.append(IOCR_PCR);
    stringBuffer.append(TEXT_56);
    stringBuffer.append((3+(Pin*8)));
    stringBuffer.append(TEXT_57);
    } else if (Pin >= 8 && Pin <= 11) { 
  Pin = Pin - 8; 
    stringBuffer.append(TEXT_58);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_59);
    stringBuffer.append(IOCR_PCR);
    stringBuffer.append(TEXT_60);
    stringBuffer.append((3+(Pin*8)));
    stringBuffer.append(TEXT_61);
    } else if (Pin >= 12 && Pin <= 15) { 
  Pin = Pin - 12; 
    stringBuffer.append(TEXT_62);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_63);
    stringBuffer.append(IOCR_PCR);
    stringBuffer.append(TEXT_64);
    stringBuffer.append((3+(Pin*8)));
    stringBuffer.append(TEXT_65);
    }}
    } else { 
    stringBuffer.append(TEXT_66);
    stringBuffer.append( appInst );
    stringBuffer.append(TEXT_67);
    }} 
    stringBuffer.append(TEXT_68);
    stringBuffer.append(TEXT_69);
    return stringBuffer.toString();
  }
}
