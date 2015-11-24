package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class i2c001c_template
{
  protected static String nl;
  public static synchronized i2c001c_template create(String lineSeparator)
  {
    nl = lineSeparator;
    i2c001c_template result = new i2c001c_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/*CODE_BLOCK_BEGIN[I2C001.c]*/" + NL + "/******************************************************************************" + NL + " Copyright (c) 2014, Infineon Technologies AG                                **" + NL + " All rights reserved.                                                        **" + NL + "                                                                             **" + NL + " Redistribution and use in source and binary forms, with or without          **" + NL + " modification,are permitted provided that the following conditions are met:  **" + NL + "                                                                             **" + NL + " *Redistributions of source code must retain the above copyright notice,     **" + NL + " this list of conditions and the following disclaimer.                       **" + NL + " *Redistributions in binary form must reproduce the above copyright notice,  **" + NL + " this list of conditions and the following disclaimer in the documentation   **" + NL + " and/or other materials provided with the distribution.                      **" + NL + " *Neither the name of the copyright holders nor the names of its contributors**" + NL + " may be used to endorse or promote products derived from this software       **" + NL + " without specific prior written permission.                                  **" + NL + "                                                                             **" + NL + " THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" **" + NL + " AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE   **" + NL + " IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE  **" + NL + " ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE  **" + NL + " LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR        **" + NL + " CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF        **" + NL + " SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS   **" + NL + " INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN     **" + NL + " CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)      **" + NL + " ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE  **" + NL + " POSSIBILITY OF SUCH DAMAGE.                                                 **" + NL + "                                                                             **" + NL + " To improve the quality of the software, users are encouraged to share       **" + NL + " modifications, enhancements or bug fixes with Infineon Technologies AG      **" + NL + " dave@infineon.com).                                                         **" + NL + "                                                                             **" + NL + "*******************************************************************************" + NL + "**                                                                           **" + NL + "**                                                                           **" + NL + "** PLATFORM : Infineon XMC4000/XMC1000 Series                                **" + NL + "**                                                                           **" + NL + "** COMPILER : Compiler Independent                                           **" + NL + "**                                                                           **" + NL + "** AUTHOR   : App Developer                                                  **" + NL + "**                                                                           **" + NL + "** MAY BE CHANGED BY USER [yes/no]: Yes                                      **" + NL + "**                                                                           **" + NL + "** MODIFICATION DATE : Feb 07, 2014                                         **" + NL + "**                                                                           **" + NL + "******************************************************************************/" + NL + "/******************************************************************************" + NL + "**                      Author(s) Identity                                   **" + NL + "*******************************************************************************" + NL + "**                                                                           **" + NL + "** Initials     Name                                                         **" + NL + "** --------------------------------------------------------------------------**" + NL + "** RP         App Developer                                                  **" + NL + "******************************************************************************/";
  protected final String TEXT_2 = "     " + NL + "/**" + NL + " * @file I2C001.c" + NL + " *" + NL + " * @App Version I2C001 <";
  protected final String TEXT_3 = ">" + NL + " *" + NL + " * @brief  USIC_I2C_I2C001 App provides non reentrant APIs for higher level  " + NL + " *          Apps which can be used in a Non -RTOS environment. " + NL + " *           Limitations of USIC_I2C_I2C001 App" + NL + " *           a) Read/Write functions are non reentrant." + NL + " *           b) No support for DMA mode" + NL + " */" + NL + "/*" + NL + " * Revision History" + NL + " * 15 Mar 2013 v1.0.22  Changes from 1.0.12 are" + NL + " *                       1. Modified as per coding guidelines and MISRA checks." + NL + " *                       2. Modified the macros FUNCTION_ENTRY, FUNCTION_EXIT" + NL + " *                       and ERROR." + NL + " *                       3. The hard coded values are replaced with macros in" + NL + " *                       I2C001_lConfigureBitRate() function." + NL + " *                       4. The PCTQ value updation in BRG register is removed" + NL + " *                       as the value is taken as zero." + NL + " *                       5. The input parameter of I2C001_WriteData() function" + NL + " *                       is modified to I2C001_Type from I2C001_DataType." + NL + " *                       6. The input parameters are modified to I2CHandle from" + NL + " *                       Handle in all function comments." + NL + " *                       7. Updated for Code optimisation." + NL + " *                       8. Modified for the IO PDRx updation in I2C001_Init()" + NL + " *                       function for SDA pin selection as per UTP" + NL + " *                       MCSW300000609." + NL + " *                       9. Updated for baud calculation in I2C001_lInit" + NL + " *                       function." + NL + " *                       10. Modified for the I2C001_Init() function for" + NL + " *                       disabling the clock gate signal for XMC1000 devices." + NL + " *                       11. Updated for the I2C001_Init() API for invoking" + NL + " *                       I2C001_lInit() function for USIC0." + NL + " *                       12. Corrected for spelling in revision history." + NL + " * 05 Jun 2013 v1.0.24   1. UTP MCSW300000612 (I2C001 wrong FIFO handling in " + NL + " *                       I2C001_WriteData function) Fix - Removed TDV bit " + NL + " *                       polling from \"I2C001_WriteData()\" API." + NL + " *                       2. Removed TBIF bit configuration from \"I2C001_lInit()\" " + NL + " *                       as polling is not used in the I2C001 App. " + NL + " *                       3. Corrected SCTR.TRM configuration (changed from 01b " + NL + " *                       to 11b) in \"I2C001_lInit()\"." + NL + " *                       4. The input parameter of I2C001_WriteData() function" + NL + " *                       is modified to I2C001_DataType from I2C001_Type to " + NL + " *                       maintain backward compatibility. " + NL + " * 26 Sep 2013 v1.0.26   1. In I2C001_Init(), SCL & SDA pin configuration " + NL + " *                       modified from \"Open-drain\" to \"Open-drain with " + NL + " *                       General-purpose output\" to avoid unintended spikes. " + NL + " * 07 Feb 2014 v1.0.28   1. Removed DBG002_FUNCTION_ENTRY & " + NL + " *                       DBG002_FUNCTION_EXIT calling from APIs as using these" + NL + " *                       macros is highly discouraged.                                                           " + NL + " */" + NL + "/******************************************************************************" + NL + " ** INCLUDE FILES                                                            **" + NL + " *****************************************************************************/" + NL + "#include <DAVE3.h>                " + NL + "" + NL + "/******************************************************************************" + NL + "**                      Private Macro Definitions                            **" + NL + "******************************************************************************/";
  protected final String TEXT_4 = NL + "  /* System Core clock frequency in MHz */" + NL + "#define USIC_CLOCK                     ";
  protected final String TEXT_5 = "F " + NL + "" + NL + "/* I2C001 Bit rate*/" + NL + "#define I2C001_BITRATE                 100U" + NL + "" + NL + "/* Frame Length :  64 Bits */" + NL + "#define I2C001_SCTR_FLE                (0x3FU)" + NL + "/* Word Length :  8 Bits */" + NL + "#define I2C001_SCTR_WLE                (0x07U)" + NL + "/* Direction set, msb transmitted or received first */" + NL + "#define I2C001_SCTR_SDIR               (0x01U)" + NL + "/* Enable I2C mode */" + NL + "#define I2C_ENABLE                     (0x4U)" + NL + "" + NL + "#define I2C001_MAX_VALUE               1023.0F" + NL + "" + NL + "#define I2C001_MAX_STEPVALUE           1024.0F" + NL + "" + NL + "/* Intermediate step value to calculate Pdiv */" + NL + "#define I2C001_IM_STEPVALUE            500.0F " + NL + "" + NL + "/* 10 timequanta DCTQ value */" + NL + "#define I2C_DCTQ1_VALUE                (0x09UL)" + NL + "" + NL + "/* 25 timequanta DCTQ value */" + NL + "#define I2C_DCTQ2_VALUE                (0x18UL)" + NL + "" + NL + "/******************************************************************************" + NL + "**                      Private Type Definitions                             **" + NL + "******************************************************************************/" + NL + "" + NL + "" + NL + "/******************************************************************************" + NL + "**                 Private Function Declarations:" + NL + "******************************************************************************/" + NL;
  protected final String TEXT_6 = NL + "void I2C001_lInit (const I2C001Handle_type* I2CHandle);";
  protected final String TEXT_7 = NL + "void I2C001_lInit (const I2C001Handle_type* I2CHandle, \\" + NL + "                                        const uint16_t* I2C_Baud_Values);";
  protected final String TEXT_8 = NL + "/* Give optimized PDIV and STEP value for the given bit rate */ " + NL + "void I2C001_lConfigureBitRate\\" + NL + "                   (uint32_t BitRate,uint32_t* PDivValue,uint32_t* StepValue);" + NL + "/******************************************************************************" + NL + "**                      Global Constant Definitions                          **" + NL + "******************************************************************************/" + NL + "" + NL + "/******************************************************************************" + NL + "**                      Global Variable Definitions                          **" + NL + "******************************************************************************/" + NL + "" + NL + "/******************************************************************************" + NL + "**                      Private Constant Definitions                         **" + NL + "******************************************************************************/";
  protected final String TEXT_9 = NL + "/* const array to hold the step and pdiv value for the configured baud rate */" + NL + "const uint16_t I2C001_Baud_Parameter_Values";
  protected final String TEXT_10 = "[] = {0x";
  protected final String TEXT_11 = ", 0x";
  protected final String TEXT_12 = "};";
  protected final String TEXT_13 = NL + "// CHANNEL IS NOT MAPPED";
  protected final String TEXT_14 = NL + NL + "/******************************************************************************" + NL + "**                 Function like macro definitions                           **" + NL + "******************************************************************************/" + NL + "/******************************************************************************" + NL + "**                      Private Function Definitions                         **" + NL + "******************************************************************************/" + NL + "" + NL + "/******************************************************************************" + NL + "**                      Public Function Definitions                          **" + NL + "******************************************************************************/" + NL + " /* Initializes the App based on User provide configuration. */";
  protected final String TEXT_15 = NL + " void I2C001_lInit (const I2C001Handle_type* I2CHandle)";
  protected final String TEXT_16 = NL + " void I2C001_lInit (const I2C001Handle_type* I2CHandle, \\" + NL + "                                        const uint16_t* I2C_Baud_Values)";
  protected final String TEXT_17 = NL + "{";
  protected final String TEXT_18 = " " + NL + "   uint32_t Brg_PDivValue = 0x00U;" + NL + "   uint32_t Fdr_StepValue = 0x00U;";
  protected final String TEXT_19 = "  " + NL + "   USIC_CH_TypeDef* I2CRegs = I2CHandle->I2CRegs;" + NL + "" + NL + "   /* <<<DD_I2C001_API_1>>>*/" + NL + "" + NL + "   /** I2C initialization  */" + NL + "   /* Disable I2C mode before configuring all USIC registers to avoid unintended edges */ " + NL + "   I2CRegs->CCR &= ~( ((uint32_t)(I2C_ENABLE  & USIC_CH_CCR_MODE_Msk)));" + NL + "" + NL + "   /* Enable the USIC Channel */" + NL + "   I2CRegs->KSCFG |= (((uint32_t) 0x01 & USIC_CH_KSCFG_MODEN_Msk)) | \\" + NL + "    (((uint32_t)0x01 << USIC_CH_KSCFG_BPMODEN_Pos));" + NL + "   ";
  protected final String TEXT_20 = " " + NL + "   /* Get the optimum PDIV and STEP value for the given bitrate */" + NL + "   I2C001_lConfigureBitRate(I2CHandle->BitRate,&Brg_PDivValue,&Fdr_StepValue);" + NL + "   /* Configuration of USIC Channel Fractional Divider */" + NL + "" + NL + "   /* Fractional divider mode selected */" + NL + "   I2CRegs->FDR |= \\" + NL + "           ((((uint32_t)USIC_FRACTIONAL_DIV_SEL << USIC_CH_FDR_DM_Pos) & \\" + NL + "             USIC_CH_FDR_DM_Msk) | \\" + NL + "            (((uint32_t)Fdr_StepValue << USIC_CH_FDR_STEP_Pos) & \\" + NL + "            USIC_CH_FDR_STEP_Msk));" + NL + "   " + NL + "           " + NL + "   if(I2CHandle->BitRate <= I2C001_BITRATE)" + NL + "   {  " + NL + "     /* The PreDivider for CTQ, PCTQ = 0  */" + NL + "     /* The Denominator for CTQ, DCTQ = 9 */" + NL + "     I2CRegs->BRG |= ((I2C_DCTQ1_VALUE <<  USIC_CH_BRG_DCTQ_Pos) | \\" + NL + "                      (((uint32_t)Brg_PDivValue << USIC_CH_BRG_PDIV_Pos) & \\" + NL + "                        USIC_CH_BRG_PDIV_Msk)); " + NL + "   }" + NL + "   else" + NL + "   {" + NL + "     /* The PreDivider for CTQ, PCTQ = 0  */" + NL + "     /* The Denominator for CTQ, DCTQ = 24 */" + NL + "     I2CRegs->BRG |= ((I2C_DCTQ2_VALUE << USIC_CH_BRG_DCTQ_Pos) | \\" + NL + "                      (((uint32_t)Brg_PDivValue << USIC_CH_BRG_PDIV_Pos) & \\" + NL + "                        USIC_CH_BRG_PDIV_Msk));" + NL + "   }";
  protected final String TEXT_21 = NL + "   /* Configuration of USIC Channel Fractional Divider */" + NL + "" + NL + "   /* Fractional divider mode selected */" + NL + "   I2CRegs->FDR |= \\" + NL + "           ((((uint32_t)USIC_FRACTIONAL_DIV_SEL << USIC_CH_FDR_DM_Pos) & \\" + NL + "             USIC_CH_FDR_DM_Msk) | \\" + NL + "            ((*I2C_Baud_Values << USIC_CH_FDR_STEP_Pos) & \\" + NL + "            USIC_CH_FDR_STEP_Msk));" + NL + "   " + NL + "   if(I2CHandle->BitRate <= I2C001_BITRATE)" + NL + "   {  " + NL + "     /* The PreDivider for CTQ, PCTQ = 0  */" + NL + "     /* The Denominator for CTQ, DCTQ = 9 */" + NL + "     I2CRegs->BRG |= ((I2C_DCTQ1_VALUE <<  USIC_CH_BRG_DCTQ_Pos) | \\" + NL + "                      ((*(I2C_Baud_Values+1) << USIC_CH_BRG_PDIV_Pos) & \\" + NL + "                        USIC_CH_BRG_PDIV_Msk)); " + NL + "   }" + NL + "   else" + NL + "   {" + NL + "     /* The PreDivider for CTQ, PCTQ = 0  */" + NL + "     /* The Denominator for CTQ, DCTQ = 24 */" + NL + "     I2CRegs->BRG |= ((I2C_DCTQ2_VALUE << USIC_CH_BRG_DCTQ_Pos) | \\" + NL + "                      ((*(I2C_Baud_Values+1) << USIC_CH_BRG_PDIV_Pos) & \\" + NL + "                        USIC_CH_BRG_PDIV_Msk));" + NL + "   }";
  protected final String TEXT_22 = NL + NL + "   " + NL + "   /* Configuration of USIC Shift Control */" + NL + "   " + NL + "   /* Transmit/Receive MSB first is selected  */" + NL + "   /* Transmission Mode (TRM) = 3  */" + NL + "   /* Passive Data Level (PDL) = 1 */" + NL + "   /* Frame Length (FLE) = 63 (3F) */" + NL + "   /* Word Length (WLE) = 7  */" + NL + "" + NL + "   I2CRegs->SCTR |=  \\" + NL + "               ((((uint32_t)I2C001_SCTR_SDIR << USIC_CH_SCTR_SDIR_Pos)&  \\" + NL + "                  USIC_CH_SCTR_SDIR_Msk) | \\" + NL + "                ((uint32_t)(0x01) << USIC_CH_SCTR_PDL_Pos ) | \\" + NL + "                ((uint32_t)(0x03) <<  USIC_CH_SCTR_TRM_Pos) |" + NL + "                (((uint32_t)I2C001_SCTR_FLE  << USIC_CH_SCTR_FLE_Pos) & \\" + NL + "                  USIC_CH_SCTR_FLE_Msk ) | \\" + NL + "                (((uint32_t)I2C001_SCTR_WLE << USIC_CH_SCTR_WLE_Pos) & \\" + NL + "                  USIC_CH_SCTR_WLE_Msk));" + NL + "" + NL + "       " + NL + "   /* Configuration of USIC Transmit Control/Status Register */ " + NL + "   /* TBUF Data Enable (TDEN) = 1 */" + NL + "   /* TBUF Data Single Shot Mode (TDSSM) = 1 */     " + NL + "   I2CRegs->TCSR |= ((((uint32_t)0x01 << USIC_CH_TCSR_TDEN_Pos) & \\" + NL + "     USIC_CH_TCSR_TDEN_Msk) | \\" + NL + "     (((uint32_t)0x01 << USIC_CH_TCSR_TDSSM_Pos) & USIC_CH_TCSR_TDSSM_Msk));" + NL + "" + NL + "   /* Configuration of Protocol Control Register */ " + NL + "   /* Symbol timing = 10 time quanta */" + NL + "   /* The start condition interrupt is enabled */" + NL + "   /* The repeated start condition interrupt is enabled */" + NL + "   /* The stop condition interrupt is enabled */" + NL + "   /* Non-Acknowledge interrupt enabled */" + NL + "   /* Arbitration Lost interrupt enabled */" + NL + "   /* Slave read request interrupt enabled */" + NL + "   /* Error interrupt enabled */" + NL + "   /* Configuration of Protocol Control Register */ " + NL + "   if(I2CHandle->BitRate <= I2C001_BITRATE)" + NL + "   {" + NL + "\t   /* Symbol timing = 10 time quanta */" + NL + "\t   I2CRegs->PCR_IICMode |= (((((uint32_t)0x0U << \\" + NL + "\t                             USIC_CH_PCR_IICMode_STIM_Pos)) & \\" + NL + "\t\t\t                         (uint32_t)USIC_CH_PCR_IICMode_STIM_Msk));" + NL + "   }" + NL + "   else" + NL + "   {" + NL + "\t   /* Symbol timing = 25 time quanta */" + NL + "  \t I2CRegs->PCR_IICMode |= (((((uint32_t)0x1U << \\" + NL + "                            \tUSIC_CH_PCR_IICMode_STIM_Pos)) & \\" + NL + "                        \t\t\t(uint32_t)USIC_CH_PCR_IICMode_STIM_Msk));" + NL + "   }" + NL + "" + NL + "   if(I2CHandle->StartCondRecvIntEn)" + NL + "   {" + NL + "     /* Enable Start Condition Recv Interrupt*/  " + NL + "     I2CRegs->PCR_IICMode |=(((uint32_t)0x01  << USIC_CH_PCR_CTR18_Pos) & \\" + NL + "    \t\t  \t  \t  \t  \t  USIC_CH_PCR_CTR18_Msk); " + NL + "   }" + NL + "      " + NL + "   if(I2CHandle->RepStartCondRecvIntEn)" + NL + "   {" + NL + "    \t/* Enable Repeated Start Condition Interrupt*/  " + NL + "      I2CRegs->PCR_IICMode |=(((uint32_t)0x01 << USIC_CH_PCR_CTR19_Pos) & \\" + NL + "    \t\t  \t  \t  \t  \t  USIC_CH_PCR_CTR19_Msk); " + NL + "   }" + NL + "     " + NL + "   if(I2CHandle->StopCondRecvIntEn)" + NL + "   {" + NL + "     \t/* Enable Stop Condition Interrupt*/  " + NL + "      I2CRegs->PCR_IICMode |=(((uint32_t)0x01  << USIC_CH_PCR_CTR20_Pos) & \\" + NL + "    \t\t  \t  \t  \t  \t  USIC_CH_PCR_CTR20_Msk); " + NL + "   }" + NL + "      " + NL + "   if(I2CHandle->NackDetectIntEn)" + NL + "   {" + NL + "     \t/* Enable Non Ack Interrupt */  " + NL + "      I2CRegs->PCR_IICMode |=(((uint32_t)0x01  << USIC_CH_PCR_CTR21_Pos) & \\" + NL + "    \t\t  \t  \t  \t  \t  USIC_CH_PCR_CTR21_Msk); " + NL + "   }" + NL + "      " + NL + "   if(I2CHandle->ArbLostIntEn)" + NL + "   {" + NL + "    \t/* Enable Arbitration lost Interrupt */  " + NL + "      I2CRegs->PCR_IICMode |=(((uint32_t)0x01  << USIC_CH_PCR_CTR22_Pos) & \\" + NL + "   \t\t  \t  \t  \t  \t  USIC_CH_PCR_CTR22_Msk); " + NL + "   }" + NL + "      " + NL + "   if(I2CHandle->ErrorIntEn)" + NL + "   {" + NL + "    \t/* Enable IIC Error Interrupt */ " + NL + "      I2CRegs->PCR_IICMode |=(((uint32_t)0x01  << USIC_CH_PCR_CTR24_Pos) & \\" + NL + "   \t\t  \t  \t  \t  \t  USIC_CH_PCR_CTR24_Msk); " + NL + "   }" + NL + "      " + NL + "   if(I2CHandle->AckIntEn)" + NL + "   {" + NL + "    \t/*  Enable Ack  Interrupt */ " + NL + "      I2CRegs->PCR_IICMode |=(((uint32_t)0x01  << USIC_CH_PCR_CTR30_Pos) & \\" + NL + "   \t\t  \t  \t  \t  \t  USIC_CH_PCR_CTR30_Msk); " + NL + "   }\t\t\t\t\t          " + NL + "   " + NL + "   /** FIFO Configuration */" + NL + "       " + NL + "   /* Configuration of Transmitter Buffer Control Register */ " + NL + "   /* Limit for transmit FIFO interrupt generation is set based on UI */" + NL + "" + NL + "   I2CRegs->TBCTR |= \\" + NL + "             ((((uint32_t)I2CHandle->TxLimit << USIC_CH_TBCTR_LIMIT_Pos ) & \\" + NL + "\t \t\t\t                                          USIC_CH_TBCTR_LIMIT_Msk));" + NL + "        " + NL + "   /* Configuration of Receiver Buffer Control Register */ " + NL + "   /* Limit for receive FIFO interrupt generation is set based on UI*/" + NL + "   /* Filling level mode is selected */" + NL + "   I2CRegs->RBCTR |= \\" + NL + "               ((((uint32_t)I2CHandle->RxLimit << USIC_CH_RBCTR_LIMIT_Pos) & \\" + NL + "\t \t\t\t         USIC_CH_RBCTR_LIMIT_Msk) |  \\" + NL + "                (((uint32_t)0x01 << USIC_CH_RBCTR_LOF_Pos) & \\" + NL + "                USIC_CH_RBCTR_LOF_Msk));" + NL + "   I2CRegs->CCR |= ((I2C_ENABLE) & USIC_CH_CCR_MODE_Msk);" + NL + "}" + NL + "" + NL + "" + NL + "/* Give optimized PDIV and STEP value for the given baud rate */ " + NL + "void I2C001_lConfigureBitRate\\" + NL + "                    (uint32_t BitRate,uint32_t* PDivValue,uint32_t* StepValue)" + NL + "{" + NL + "  float ratio = (float)0.0;" + NL + "  float TempBitrate = ((float)BitRate * ((float)1000));" + NL + "  float TempPdiv = (float)0.0;" + NL + "  float TempStep = (float)0.0;" + NL + "" + NL + "  if(TempBitrate <= 100000.0)" + NL + "  {" + NL + "    ratio = ((((USIC_CLOCK * (float)1000000)/ \\" + NL + "             (((float)1 + (float)I2C_DCTQ1_VALUE)*I2C001_MAX_STEPVALUE)) * \\" + NL + "             I2C001_IM_STEPVALUE)/TempBitrate);" + NL + "  }" + NL + "  else" + NL + "  {" + NL + "    ratio = ((((USIC_CLOCK * (float)1000000)/ \\" + NL + "             (((float)1 + (float)I2C_DCTQ2_VALUE)*I2C001_MAX_STEPVALUE)) * \\" + NL + "             I2C001_IM_STEPVALUE)/TempBitrate);" + NL + "  }" + NL + "  /* Calculating optimum PDIV value */" + NL + "  if( ratio <= (float)1)" + NL + "  {" + NL + "    TempPdiv = (float)0;" + NL + "  }" + NL + "  else" + NL + "  {" + NL + "    TempPdiv =  ratio - (float)1;" + NL + "    if( TempPdiv > I2C001_MAX_VALUE)" + NL + "    {" + NL + "  \t  TempPdiv = I2C001_MAX_VALUE;" + NL + "    }" + NL + "  }" + NL + "  *PDivValue = (uint32_t)(TempPdiv);" + NL + "  /* Calculating STEP value */" + NL + "  if(TempBitrate <= 100000.0)" + NL + "  {" + NL + "    TempStep = (((((TempBitrate * ((float)1 + (float)I2C_DCTQ1_VALUE) * \\" + NL + "                 I2C001_MAX_STEPVALUE)/(float)1000000)) * \\" + NL + "\t               ((float)1+ ((float)*PDivValue)))/(USIC_CLOCK));" + NL + "  }" + NL + "  else" + NL + "  {" + NL + "    TempStep = (((((TempBitrate * ((float)1 + (float)I2C_DCTQ2_VALUE) * \\" + NL + "                 I2C001_MAX_STEPVALUE)/ (float)1000000)) * \\" + NL + "\t               ((float)1+ ((float)*PDivValue)))/(USIC_CLOCK));" + NL + "  }" + NL + "  if(TempStep > I2C001_MAX_VALUE)" + NL + "  {" + NL + "\t  TempStep = I2C001_MAX_VALUE;" + NL + "  }" + NL + "  *StepValue = (uint32_t)(TempStep);" + NL + "}" + NL + "/******************************************************************************" + NL + "**                      Public Function Definitions                          **" + NL + "******************************************************************************/" + NL + "void I2C001_Init(void)" + NL + "{";
  protected final String TEXT_23 = "  ";
  protected final String TEXT_24 = NL + "  /* Disable the USIC0 clock gating */" + NL + "  /* " + NL + "   * The disabling of the clock gating is applicable only for" + NL + "   * XMC4400, 4200 and XMC1000 devices." + NL + "   */";
  protected final String TEXT_25 = NL + "  SCU_GENERAL->PASSWD = 0x000000C0UL;" + NL + "  WR_REG(SCU_CLK->CLKCR, SCU_CLK_CLKCR_CNTADJ_Msk, \\" + NL + "                                    SCU_CLK_CLKCR_CNTADJ_Pos,CLK002_DELAYCNT);";
  protected final String TEXT_26 = NL + "  SET_BIT(SCU_CLK->CGATCLR0, SCU_CLK_CGATCLR0_USIC0_Pos);";
  protected final String TEXT_27 = NL + "  while ((SCU_CLK->CLKCR)&(SCU_CLK_CLKCR_VDDC2LOW_Msk))" + NL + "  {" + NL + "  \t;" + NL + "  }" + NL + "  SCU_GENERAL->PASSWD = 0x000000C3UL;     ";
  protected final String TEXT_28 = NL + "  /* Disable the USIC1 clock gating */" + NL + "  /* " + NL + "   * The disabling of the clock gating is applicable only for" + NL + "   * XMC4400 and 4200 devices." + NL + "   */  ";
  protected final String TEXT_29 = NL + "  SCU_GENERAL->PASSWD = 0x000000C0UL;" + NL + "  WR_REG(SCU_CLK->CLKCR, SCU_CLK_CLKCR_CNTADJ_Msk, \\" + NL + "                                    SCU_CLK_CLKCR_CNTADJ_Pos,CLK002_DELAYCNT);";
  protected final String TEXT_30 = NL + "  SET_BIT(SCU_CLK->CGATCLR1, SCU_CLK_CGATCLR1_USIC1_Pos);";
  protected final String TEXT_31 = NL + "  while ((SCU_CLK->CLKCR)&(SCU_CLK_CLKCR_VDDC2LOW_Msk))" + NL + "  {" + NL + "  \t;" + NL + "  }" + NL + "  SCU_GENERAL->PASSWD = 0x000000C3UL;     ";
  protected final String TEXT_32 = NL + "  RESET001_DeassertReset(PER0_USIC";
  protected final String TEXT_33 = ");" + NL + "  I2C001_lInit(&I2C001_Handle";
  protected final String TEXT_34 = ");";
  protected final String TEXT_35 = NL + "  I2C001_lInit(&I2C001_Handle";
  protected final String TEXT_36 = ", I2C001_Baud_Parameter_Values";
  protected final String TEXT_37 = "); ";
  protected final String TEXT_38 = NL + "  /* Reset the Peripheral*/";
  protected final String TEXT_39 = NL + "  RESET001_DeassertReset(PER1_USIC";
  protected final String TEXT_40 = "); " + NL + "  I2C001_lInit(&I2C001_Handle";
  protected final String TEXT_41 = ");";
  protected final String TEXT_42 = NL + "  I2C001_lInit(&I2C001_Handle";
  protected final String TEXT_43 = ", I2C001_Baud_Parameter_Values";
  protected final String TEXT_44 = "); ";
  protected final String TEXT_45 = "  ";
  protected final String TEXT_46 = "   ";
  protected final String TEXT_47 = "     ";
  protected final String TEXT_48 = NL + "     /* Configuration of SCL Pin ";
  protected final String TEXT_49 = ".";
  protected final String TEXT_50 = " based on User configuration */";
  protected final String TEXT_51 = NL + "  PORT";
  protected final String TEXT_52 = "->PDR0  &= (~(PORT";
  protected final String TEXT_53 = "_PDR0_PD";
  protected final String TEXT_54 = "_Msk));" + NL + "  PORT";
  protected final String TEXT_55 = "->PDR0  |= (((uint32_t)";
  protected final String TEXT_56 = " << PORT";
  protected final String TEXT_57 = "_PDR0_PD";
  protected final String TEXT_58 = "_Pos) & PORT";
  protected final String TEXT_59 = "_PDR0_PD";
  protected final String TEXT_60 = "_Msk);";
  protected final String TEXT_61 = NL + "  PORT";
  protected final String TEXT_62 = "->PDR1 &= (~(PORT";
  protected final String TEXT_63 = "_PDR1_PD";
  protected final String TEXT_64 = "_Msk));" + NL + "  PORT";
  protected final String TEXT_65 = "->PDR1 |= (((uint32_t)";
  protected final String TEXT_66 = " << PORT";
  protected final String TEXT_67 = "_PDR1_PD";
  protected final String TEXT_68 = "_Pos) & PORT";
  protected final String TEXT_69 = "_PDR1_PD";
  protected final String TEXT_70 = "_Msk);    " + NL + " \t";
  protected final String TEXT_71 = "       ";
  protected final String TEXT_72 = NL + "  PORT";
  protected final String TEXT_73 = "->IOCR0 |= ((uint32_t)";
  protected final String TEXT_74 = " << ";
  protected final String TEXT_75 = ");" + NL + " \t";
  protected final String TEXT_76 = NL + "  PORT";
  protected final String TEXT_77 = "->IOCR4 |= ((uint32_t)";
  protected final String TEXT_78 = " << ";
  protected final String TEXT_79 = ");" + NL + " \t";
  protected final String TEXT_80 = NL + "  PORT";
  protected final String TEXT_81 = "->IOCR8 |= ((uint32_t)";
  protected final String TEXT_82 = " << ";
  protected final String TEXT_83 = ");" + NL + " \t";
  protected final String TEXT_84 = NL + "  PORT";
  protected final String TEXT_85 = "->IOCR12 |= ((uint32_t)";
  protected final String TEXT_86 = " << ";
  protected final String TEXT_87 = ");" + NL + " \t";
  protected final String TEXT_88 = " " + NL + "  PORT";
  protected final String TEXT_89 = "->OMR |= ((uint32_t)0x01 << ";
  protected final String TEXT_90 = ");";
  protected final String TEXT_91 = NL + "     /* SCL PIN instance (no.";
  protected final String TEXT_92 = ") is not mapped to any port pin. */";
  protected final String TEXT_93 = "    ";
  protected final String TEXT_94 = " ";
  protected final String TEXT_95 = "     ";
  protected final String TEXT_96 = NL + "     /* Configuration of SDA Pin ";
  protected final String TEXT_97 = ".";
  protected final String TEXT_98 = " based on User configuration */";
  protected final String TEXT_99 = NL + "  PORT";
  protected final String TEXT_100 = "->PDR0  &= (~(PORT";
  protected final String TEXT_101 = "_PDR0_PD";
  protected final String TEXT_102 = "_Msk));" + NL + "  PORT";
  protected final String TEXT_103 = "->PDR0  |= (((uint32_t)";
  protected final String TEXT_104 = " << PORT";
  protected final String TEXT_105 = "_PDR0_PD";
  protected final String TEXT_106 = "_Pos) & PORT";
  protected final String TEXT_107 = "_PDR0_PD";
  protected final String TEXT_108 = "_Msk);";
  protected final String TEXT_109 = NL + "  PORT";
  protected final String TEXT_110 = "->PDR1 &= (~(PORT";
  protected final String TEXT_111 = "_PDR1_PD";
  protected final String TEXT_112 = "_Msk));" + NL + "  PORT";
  protected final String TEXT_113 = "->PDR1 |= (((uint32_t)";
  protected final String TEXT_114 = " << PORT";
  protected final String TEXT_115 = "_PDR1_PD";
  protected final String TEXT_116 = "_Pos) & PORT";
  protected final String TEXT_117 = "_PDR1_PD";
  protected final String TEXT_118 = "_Msk);    ";
  protected final String TEXT_119 = NL + " \t";
  protected final String TEXT_120 = NL + " \t";
  protected final String TEXT_121 = NL + "  PORT";
  protected final String TEXT_122 = "->IOCR0 |= ((uint32_t)";
  protected final String TEXT_123 = " << ";
  protected final String TEXT_124 = ");" + NL + " \t";
  protected final String TEXT_125 = NL + "  PORT";
  protected final String TEXT_126 = "->IOCR4 |= ((uint32_t)";
  protected final String TEXT_127 = " << ";
  protected final String TEXT_128 = ");" + NL + " \t";
  protected final String TEXT_129 = NL + "  PORT";
  protected final String TEXT_130 = "->IOCR8 |= ((uint32_t)";
  protected final String TEXT_131 = " << ";
  protected final String TEXT_132 = ");" + NL + " \t";
  protected final String TEXT_133 = NL + "  PORT";
  protected final String TEXT_134 = "->IOCR12 |= ((uint32_t)";
  protected final String TEXT_135 = " << ";
  protected final String TEXT_136 = ");" + NL + " \t";
  protected final String TEXT_137 = " " + NL + "  PORT";
  protected final String TEXT_138 = "->OMR |= ((uint32_t)0x01 << ";
  protected final String TEXT_139 = ");";
  protected final String TEXT_140 = NL + "      /* SDA Pin instance (no.";
  protected final String TEXT_141 = ") is not mapped to any port pin. */";
  protected final String TEXT_142 = NL + " /* CHANNEL IS NOT MAPPED */";
  protected final String TEXT_143 = NL;
  protected final String TEXT_144 = NL + "}" + NL + " /* Function provide to reset the App to default values. */" + NL + " " + NL + "void  I2C001_DeInit (void)" + NL + "{" + NL + "  /* <<<DD_I2C001_API_2>>>*/" + NL + "  /* Redundant Api */" + NL + "}" + NL + "" + NL + "" + NL + "/* Function which allows changing of bitrate at run time.*/" + NL + "status_t  I2C001_Configure(const I2C001Handle_type* I2CHandle,uint32_t BitRate)" + NL + "{" + NL + "  uint32_t Brg_PDivValue = 0x00U;" + NL + "  uint32_t Fdr_StepValue = 0x00U;" + NL + "  USIC_CH_TypeDef* I2CRegs = I2CHandle->I2CRegs;" + NL + "  status_t Status = (status_t)I2C001_FAIL; " + NL + " " + NL + "  /* <<<DD_I2C001_API_3>>>*/    " + NL + "  /* Disable I2C mode before configuring all USIC registers to avoid unintended edges */ " + NL + "  I2CRegs->CCR &= ~( ((uint32_t)(I2C_ENABLE  & USIC_CH_CCR_MODE_Msk)));" + NL + "" + NL + "  /* Configuration of USIC Channel Fractional Divider */" + NL + "  /* Get the optimum PDIV and STEP value for the given bitrate */" + NL + "  I2C001_lConfigureBitRate(BitRate,&Brg_PDivValue,&Fdr_StepValue);    " + NL + "      " + NL + "  /* Fractional divider mode selected */" + NL + "  I2CRegs->FDR &= ~(USIC_CH_FDR_STEP_Msk);" + NL + "  I2CRegs->FDR |= (Fdr_StepValue & USIC_CH_FDR_STEP_Msk);" + NL + "              " + NL + "  /* Configure BitRate */" + NL + "  I2CRegs->BRG &= ~(USIC_CH_BRG_PDIV_Msk | USIC_CH_BRG_DCTQ_Msk | \\" + NL + "\t                    USIC_CH_BRG_PCTQ_Msk);" + NL + "    \t\t                           " + NL + "  if(BitRate <= I2C001_BITRATE)" + NL + "  {  " + NL + "     /* The PreDivider for CTQ, PCTQ = 0  */" + NL + "     /* The Denominator for CTQ, DCTQ = 9 */" + NL + "     I2CRegs->BRG |= ((I2C_DCTQ1_VALUE <<  USIC_CH_BRG_DCTQ_Pos) | \\" + NL + "      (((uint32_t)Brg_PDivValue  <<  USIC_CH_BRG_PDIV_Pos) & \\" + NL + "       USIC_CH_BRG_PDIV_Msk)); " + NL + "  }" + NL + "  else" + NL + "  {" + NL + "     /* The PreDivider for CTQ, PCTQ = 0  */" + NL + "     /* The Denominator for CTQ, DCTQ = 24 */" + NL + "     I2CRegs->BRG |= ((I2C_DCTQ2_VALUE <<  USIC_CH_BRG_DCTQ_Pos) | \\" + NL + "      (((uint32_t)Brg_PDivValue  <<  USIC_CH_BRG_PDIV_Pos) & \\" + NL + "        USIC_CH_BRG_PDIV_Msk));" + NL + "  }" + NL + "      \t " + NL + "  I2CRegs->PCR_IICMode &= ~(USIC_CH_PCR_IICMode_STIM_Msk);    " + NL + "  /* Configuration of Protocol Control Register */ " + NL + "  if(BitRate <= I2C001_BITRATE)" + NL + "  {" + NL + "     /* Symbol timing = 10 time quanta */" + NL + "     I2CRegs->PCR_IICMode |= \\" + NL + "              (((((uint32_t)0x0 << USIC_CH_PCR_IICMode_STIM_Pos)) & \\" + NL + "                                            USIC_CH_PCR_IICMode_STIM_Msk)); " + NL + "  }" + NL + "  else" + NL + "  {" + NL + "     /* Symbol timing = 25 time quanta */" + NL + "     I2CRegs->PCR_IICMode |= \\" + NL + "                 (((((uint32_t)0x1 << USIC_CH_PCR_IICMode_STIM_Pos)) & \\" + NL + "                                             USIC_CH_PCR_IICMode_STIM_Msk));  " + NL + "  }" + NL + "      \t                            " + NL + "  Status = (status_t)DAVEApp_SUCCESS;" + NL + "  /* Enable I2C mode */" + NL + "  I2CRegs->CCR |= ((I2C_ENABLE) & USIC_CH_CCR_MODE_Msk);" + NL + "  " + NL + "  return Status;" + NL + "}" + NL + "" + NL + "" + NL + "/* This function reads out  the content of the USIC receive FIFO Buffer. " + NL + " * Returns true in case FIFO is not empty.else  otherwise." + NL + " *" + NL + " */" + NL + "bool I2C001_ReadData(const I2C001Handle_type* I2CHandle, uint16_t* buffer)" + NL + "{ " + NL + "  bool Result = (bool)FALSE;" + NL + "  USIC_CH_TypeDef* I2CRegs = I2CHandle->I2CRegs;" + NL + "  " + NL + "  /* <<<DD_I2C001_API_4>>>*/" + NL + "  if(USIC_ubIsRxFIFOempty(I2CRegs))" + NL + "  {" + NL + "    Result = (bool)FALSE;" + NL + "  }" + NL + "  else" + NL + "  {" + NL + "    *buffer = (uint8_t)I2CRegs->OUTR;" + NL + "    Result = (bool)TRUE;" + NL + "  }" + NL + "  " + NL + "  return Result;" + NL + "}" + NL + "" + NL + "/* This function writes out a word to the USIC FIFO transmit buffer register." + NL + " * Returns true in case if the FIFO is not full else otherwise." + NL + " *" + NL + " */" + NL + "bool I2C001_WriteData \\" + NL + "                   (const I2C001Handle_type* I2CHandle,const I2C001_DataType* Data)" + NL + "{" + NL + "  bool Result = (bool)FALSE;" + NL + "  USIC_CH_TypeDef* I2CRegs = I2CHandle->I2CRegs;" + NL + "  " + NL + "  /* <<<DD_I2C001_API_5>>>*/" + NL + "  do" + NL + "  {" + NL + "     if(I2CRegs->PSR_IICMode & USIC_CH_PSR_IICMode_WTDF_Msk)" + NL + "     {" + NL + "\t     Result = (bool)FALSE;" + NL + "       break;" + NL + "     }" + NL + "" + NL + "     if(USIC_IsTxFIFOfull(I2CRegs))" + NL + "     {" + NL + "       Result = (bool)FALSE;" + NL + "     }" + NL + "" + NL + "     else" + NL + "     {" + NL + "       I2CRegs->IN[0] = \\" + NL + "                    (((uint32_t)Data->Data1.TDF_Type << 8) | Data->Data1.Data);" + NL + "       Result = (bool)TRUE;     " + NL + "     }" + NL + "  " + NL + "  }while(0);" + NL + "  return Result;" + NL + "" + NL + "}" + NL + "/* Checks the specified Flag status bit." + NL + " * The function is used to get the flag status." + NL + " * It returns I2C_SET if the corresponding flag is set else otherwise." + NL + " *" + NL + " * */" + NL + "" + NL + "status_t I2C001_GetFlagStatus \\" + NL + "               (const I2C001Handle_type* I2CHandle,I2C001_FlagStatusType Flag)" + NL + "{" + NL + "  status_t Status = (status_t)I2C001_RESET;" + NL + "  uint32_t TempValue = 0x00U;" + NL + "  USIC_CH_TypeDef* I2CRegs = I2CHandle->I2CRegs;" + NL + "  " + NL + "  /* <<<DD_I2C001_API_6>>>*/" + NL + "  if(Flag <= I2C001_FLAG_RIF)" + NL + "  {" + NL + "    TempValue = I2CRegs->PSR_IICMode;" + NL + "    TempValue &= ((uint32_t)0x01 << ((uint32_t)Flag + 10U ));" + NL + "  }" + NL + "  else if(Flag == I2C001_FLAG_NACK_RECEIVED)" + NL + "  {" + NL + "    TempValue = I2CRegs->PSR_IICMode;" + NL + "    TempValue &= ((uint32_t)0x01 << (uint32_t)I2C001_FLAG_WRONG_TDF);" + NL + "  }" + NL + "  else if(Flag == I2C001_FLAG_WRONG_TDF)" + NL + "  {" + NL + "    TempValue = I2CRegs->PSR_IICMode;" + NL + "    TempValue &= ((uint32_t)0x01 << (uint32_t)I2C001_FLAG_DLIF);\t" + NL + "  }" + NL + "  else if(Flag <= I2C001_FLAG_RBERI)" + NL + "  {" + NL + "    TempValue = I2CRegs->TRBSR;" + NL + "    TempValue &= ((uint32_t)0x01 << ((uint32_t)Flag - \\" + NL + "                                               (uint32_t)I2C001_FLAG_SRBI));\t\t" + NL + "  }" + NL + "  else" + NL + "  {" + NL + "    TempValue = I2CRegs->TRBSR;" + NL + "    TempValue &= ((uint32_t)0x01 << (((uint32_t)Flag - \\" + NL + "                                  (uint32_t)I2C001_FLAG_STBI) + 8U));\t\t" + NL + "  }" + NL + "  if(TempValue != 0x00U)" + NL + "  {" + NL + "    Status = (status_t)I2C001_SET;" + NL + "  }" + NL + "  return Status;" + NL + "}" + NL + "" + NL + "/* Clears the specified flag status.*/" + NL + "void I2C001_ClearFlag\\" + NL + "                (const I2C001Handle_type* I2CHandle,I2C001_FlagStatusType Flag)" + NL + "{" + NL + "  USIC_CH_TypeDef* I2CRegs = I2CHandle->I2CRegs;" + NL + "" + NL + "  /* <<<DD_SIMPLE_I2C_API_7>>>*/" + NL + "  if(Flag <= I2C001_FLAG_RIF)" + NL + "  {" + NL + "    I2CRegs->PSCR = ((uint32_t)0x01 << (((uint32_t)Flag - \\" + NL + "                                  (uint32_t)I2C001_FLAG_RSIF) + 10U));" + NL + "  }" + NL + "  else if(Flag == I2C001_FLAG_NACK_RECEIVED)" + NL + "  {" + NL + "    I2CRegs->PSCR = ((uint32_t)0x01 << (uint32_t)I2C001_FLAG_WRONG_TDF);" + NL + "  }" + NL + "  else if(Flag == I2C001_FLAG_WRONG_TDF)" + NL + "  {" + NL + "    I2CRegs->PSCR = ((uint32_t)0x01 << (uint32_t)I2C001_FLAG_DLIF);\t" + NL + "  }" + NL + "  else if(Flag <= I2C001_FLAG_RBERI)" + NL + "  {" + NL + "    I2CRegs->PSCR = ((uint32_t)0x01 << ((uint32_t)Flag - \\" + NL + "                                        (uint32_t)I2C001_FLAG_SRBI));\t\t" + NL + "  }" + NL + "  else" + NL + "  {" + NL + "    I2CRegs->PSCR = ((uint32_t)0x01 << (((uint32_t)Flag - \\" + NL + "                                          (uint32_t)I2C001_FLAG_STBI) + 8U));" + NL + "  }" + NL + "}" + NL + "" + NL + "/*CODE_BLOCK_END*/ ";
  protected final String TEXT_145 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String Baseuri = "app/i2c001/";
     String AppBaseuri = "app/i2c001/0";
     String I2Curi = "peripheral/usic/"; 
     String MappedUri = null; 
     String UnitInst = null; 
     String appInst  = null; 
     int Is44Device = -1; 
     int Is42Device = -1; 
     int Is45Device = -1; 
     int Is1xDevice = -1; 
     double clockfreq = 0; 
     String deviceId = null; 
     deviceId = app.getSoftwareId(); 
     if (deviceId != null)
{      
   Is44Device = ((deviceId.substring(0,2).compareTo("44")==0)?1:0);
   Is42Device = ((deviceId.substring(0,2).compareTo("42")==0)?1:0);
   Is45Device = ((deviceId.substring(0,2).compareTo("45")==0)?1:0);
   Is1xDevice = ((deviceId.substring(0,1).compareTo("1")==0)?1:0); 	
}
    stringBuffer.append(TEXT_2);
    stringBuffer.append(app.getAppVersion(AppBaseuri) );
    stringBuffer.append(TEXT_3);
     if(Is1xDevice == 1){
  clockfreq = app.getDoubleValue (AppBaseuri + "/clockapp/clk002_irMCLK" );
  }
  else if ((Is45Device==1)||(Is44Device==1)||(Is42Device==1)){
  clockfreq = app.getDoubleValue (AppBaseuri + "/clockapp/clk001_iroActualFreqPB" );
  }
  else{}
  
    stringBuffer.append(TEXT_4);
    stringBuffer.append( clockfreq);
    stringBuffer.append(TEXT_5);
    if ((Is45Device==1)||(Is44Device==1)||(Is42Device==1)){
    stringBuffer.append(TEXT_6);
    }
    else if((Is1xDevice==1)){
    stringBuffer.append(TEXT_7);
    }
    stringBuffer.append(TEXT_8);
    if ((Is1xDevice==1)) {
     String localAppBaseuri = "app/i2c001/";
     String localMappedUri = null; 
     String localUnitInst = null; 
     String localChannelInst = null; 
     String localUarturi = "peripheral/usic/"; 
     String localappInst  = null; 
     ArrayList<String> appsList10 = (ArrayList<String>)(app.getApps("app/i2c001/"));
    for (String localappIns : appsList10 ) {
 localappInst = localappIns.substring(localappIns.lastIndexOf("/")+1);
     localMappedUri = app.getMappedUri(localAppBaseuri + localappInst + "/channel"); 
     if((localMappedUri != null) && (localMappedUri != "")) { 
     localUnitInst = localMappedUri.substring(localMappedUri .length()-11,localMappedUri.indexOf("/channel/")); 
     localChannelInst = localMappedUri.substring(localMappedUri.length()-1); 
     /* Baud Rate calculation as per the configurations */
      double ratio = 0;
      double TempBitrate = 0;
      double TempPdiv = 0;
      double TempStep = 0;
      long PDivValue = 0;
      int PDivValue1  = 0;
      long StepValue = 0;
      double tempbitrate1 = app.getIntegerValue(localAppBaseuri + localappInst +"/I2C001_irwbitrate");
      TempBitrate = (tempbitrate1 * 1000);
      if(TempBitrate <= 100000)
      {
          ratio = ((((clockfreq * 1000000)/(10*1024)) * 500)/TempBitrate);
      }
      else 
      {
         ratio = ((((clockfreq * 1000000)/(25*1024)) * 500)/TempBitrate);
       }
       /* Calculating optimum PDIV value */
       if( ratio <= 1)
       {
         TempPdiv = 0;
       }
       else
       {
         TempPdiv =  ratio - 1;
         if( TempPdiv > 1023)
         {
       	  TempPdiv = 1023;
         }
       }
       PDivValue = Math.round(TempPdiv);
       /* Calculating STEP value */
       if(TempBitrate <= 100000)
       {
         TempStep = Math.floor((((((TempBitrate * 10 * 512)/ 1000000) * 2 ) * (1+ ((double)PDivValue)))/(clockfreq)));
       }
       else
       {
         TempStep = (((((TempBitrate * 25 * 512)/ 1000000) * 2 ) * (1+ ((double)PDivValue)))/(clockfreq));
       }
       if(TempStep > 1023)
       {
     	TempStep = 1023;
       }
       StepValue = Math.round(TempStep);
      PDivValue1 = (int)PDivValue;
    stringBuffer.append(TEXT_9);
    stringBuffer.append(localappInst);
    stringBuffer.append(TEXT_10);
    stringBuffer.append(Integer.toHexString((int)StepValue));
    stringBuffer.append(TEXT_11);
    stringBuffer.append(Integer.toHexString(PDivValue1));
    stringBuffer.append(TEXT_12);
     } 
     else { 
    stringBuffer.append(TEXT_13);
     } 
    } }
    stringBuffer.append(TEXT_14);
    if ((Is45Device==1) || (Is44Device==1)||(Is42Device==1)) {
    stringBuffer.append(TEXT_15);
    }
    if ((Is1xDevice==1)) {
    stringBuffer.append(TEXT_16);
    }
    stringBuffer.append(TEXT_17);
    if ((Is44Device==1)||(Is42Device==1)||(Is45Device==1))
 {
    stringBuffer.append(TEXT_18);
    }
    stringBuffer.append(TEXT_19);
    if ((Is45Device==1) || (Is44Device==1)||(Is42Device==1))
 {
    stringBuffer.append(TEXT_20);
    }
    if ((Is1xDevice==1)) {
    stringBuffer.append(TEXT_21);
    }
    stringBuffer.append(TEXT_22);
     ArrayList<String> appsList = (ArrayList<String>)(app.getApps("app/i2c001/"));
 for (String appIns : appsList ) {
 appInst = appIns.substring(appIns.lastIndexOf("/")+1);
     MappedUri = app.getMappedUri(Baseuri + appInst + "/channel"); 
     if((MappedUri != null) && (MappedUri != "")) {
UnitInst = MappedUri.substring(MappedUri .length()-11,MappedUri.indexOf("/channel/")); 
int Unit = Integer.parseInt(UnitInst); 
    if ((Is44Device==1)||(Is42Device==1)||(Is1xDevice==1))
 {
    stringBuffer.append(TEXT_23);
     if(Unit == 0) { 
    stringBuffer.append(TEXT_24);
    if ((Is1xDevice==1))  {
    stringBuffer.append(TEXT_25);
    }
    stringBuffer.append(TEXT_26);
    if ((Is1xDevice==1))    {
    stringBuffer.append(TEXT_27);
    }
     } else { 
    stringBuffer.append(TEXT_28);
    if ((Is1xDevice==1))  {
    stringBuffer.append(TEXT_29);
    }
    stringBuffer.append(TEXT_30);
    if ((Is1xDevice==1)) {
    stringBuffer.append(TEXT_31);
    }
    } 
    }
     if(Unit == 0)  { 
    if ((Is45Device==1)||(Is44Device==1)||(Is42Device==1)) {
    stringBuffer.append(TEXT_32);
    stringBuffer.append(UnitInst);
    stringBuffer.append(TEXT_33);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_34);
    }
    if ((Is1xDevice==1)) {
    stringBuffer.append(TEXT_35);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_36);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_37);
    }
     } else { 
    stringBuffer.append(TEXT_38);
    if ((Is45Device==1)||(Is44Device==1)||(Is42Device==1)) {
    stringBuffer.append(TEXT_39);
    stringBuffer.append(UnitInst);
    stringBuffer.append(TEXT_40);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_41);
     } 
    if ((Is1xDevice==1)) {
    stringBuffer.append(TEXT_42);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_43);
    stringBuffer.append(appInst);
    stringBuffer.append(TEXT_44);
    }
    stringBuffer.append(TEXT_45);
    }
     String pinUri = app.getMappedUri(Baseuri + appInst +"/i2c_scl"); 
     if ((pinUri != null) && (pinUri.trim() != "")) { 
     String portNo = pinUri.substring(pinUri.indexOf("port/p/")+7,pinUri.indexOf("/pad/")); 
     String pinNo = pinUri.substring(pinUri.indexOf("/pad/")+5,pinUri.length()); 
    stringBuffer.append(TEXT_46);
     int PDR_PD1 = app.getIntegerValue(Baseuri + appInst +"/i2c_scl/pdr_pd"); 
     int IOCR_PO1 = app.getIntegerValue(Baseuri + appInst +"/i2c_scl/iocr_po"); 
    stringBuffer.append(TEXT_47);
     int IOCR1    = (1 << 4) | (IOCR_PO1 << 3 );
     int Pin = Integer.parseInt(pinNo);
    stringBuffer.append(TEXT_48);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_49);
    stringBuffer.append(pinNo);
    stringBuffer.append(TEXT_50);
    if ((Is45Device==1)||(Is44Device==1)||(Is42Device==1))  {
     if(Pin < 8) {
    stringBuffer.append(TEXT_51);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_52);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_53);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_54);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_55);
    stringBuffer.append(PDR_PD1);
    stringBuffer.append(TEXT_56);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_57);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_58);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_59);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_60);
     } else {
    stringBuffer.append(TEXT_61);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_62);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_63);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_64);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_65);
    stringBuffer.append(PDR_PD1);
    stringBuffer.append(TEXT_66);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_67);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_68);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_69);
    stringBuffer.append(Pin);
    stringBuffer.append(TEXT_70);
    }
    } 
    stringBuffer.append(TEXT_71);
     if(Pin < 4) { 
    stringBuffer.append(TEXT_72);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_73);
    stringBuffer.append(IOCR1);
    stringBuffer.append(TEXT_74);
    stringBuffer.append((3+(Pin*8)));
    stringBuffer.append(TEXT_75);
    }else if (Pin >= 4 && Pin <= 7) {  
  Pin = Pin - 4; 
    stringBuffer.append(TEXT_76);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_77);
    stringBuffer.append(IOCR1);
    stringBuffer.append(TEXT_78);
    stringBuffer.append((3+(Pin*8)));
    stringBuffer.append(TEXT_79);
    } else if (Pin >= 8 && Pin <= 11) { 
  Pin = Pin - 8; 
    stringBuffer.append(TEXT_80);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_81);
    stringBuffer.append(IOCR1);
    stringBuffer.append(TEXT_82);
    stringBuffer.append((3+(Pin*8)));
    stringBuffer.append(TEXT_83);
    } else if (Pin >= 12 && Pin <= 15) { 
  Pin = Pin - 12; 
    stringBuffer.append(TEXT_84);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_85);
    stringBuffer.append(IOCR1);
    stringBuffer.append(TEXT_86);
    stringBuffer.append((3+(Pin*8)));
    stringBuffer.append(TEXT_87);
    }
    stringBuffer.append(TEXT_88);
    stringBuffer.append(portNo);
    stringBuffer.append(TEXT_89);
    stringBuffer.append(pinNo);
    stringBuffer.append(TEXT_90);
    } else { 
    stringBuffer.append(TEXT_91);
    stringBuffer.append( appInst );
    stringBuffer.append(TEXT_92);
    } 
    stringBuffer.append(TEXT_93);
     String pinUri2 = app.getMappedUri(Baseuri + appInst +"/i2c_sda"); 
     if ((pinUri2 != null) && (pinUri2.trim() != "")) { 
     String portNo2 = pinUri2.substring(pinUri.indexOf("port/p/")+7,pinUri2.indexOf("/pad/")); 
     String pinNo2 = pinUri2.substring(pinUri.indexOf("/pad/")+5,pinUri2.length());
    stringBuffer.append(TEXT_94);
     int PDR_PD2 = app.getIntegerValue(Baseuri + appInst +"/i2c_sda/pdr_pd"); 
     int IOCR_PO2 = app.getIntegerValue(Baseuri + appInst +"/i2c_sda/iocr_po"); 
    stringBuffer.append(TEXT_95);
     int IOCR2    = (1 << 4) | (IOCR_PO2 << 3 );
     int Pin2 = Integer.parseInt(pinNo2);
    stringBuffer.append(TEXT_96);
    stringBuffer.append(portNo2);
    stringBuffer.append(TEXT_97);
    stringBuffer.append(pinNo2);
    stringBuffer.append(TEXT_98);
    if ((Is45Device==1)||(Is44Device==1)||(Is42Device==1))  {
     if(Pin2 < 8) {
    stringBuffer.append(TEXT_99);
    stringBuffer.append(portNo2);
    stringBuffer.append(TEXT_100);
    stringBuffer.append(portNo2);
    stringBuffer.append(TEXT_101);
    stringBuffer.append(Pin2);
    stringBuffer.append(TEXT_102);
    stringBuffer.append(portNo2);
    stringBuffer.append(TEXT_103);
    stringBuffer.append(PDR_PD2);
    stringBuffer.append(TEXT_104);
    stringBuffer.append(portNo2);
    stringBuffer.append(TEXT_105);
    stringBuffer.append(Pin2);
    stringBuffer.append(TEXT_106);
    stringBuffer.append(portNo2);
    stringBuffer.append(TEXT_107);
    stringBuffer.append(Pin2);
    stringBuffer.append(TEXT_108);
     } else {
    stringBuffer.append(TEXT_109);
    stringBuffer.append(portNo2);
    stringBuffer.append(TEXT_110);
    stringBuffer.append(portNo2);
    stringBuffer.append(TEXT_111);
    stringBuffer.append(Pin2);
    stringBuffer.append(TEXT_112);
    stringBuffer.append(portNo2);
    stringBuffer.append(TEXT_113);
    stringBuffer.append(PDR_PD2);
    stringBuffer.append(TEXT_114);
    stringBuffer.append(portNo2);
    stringBuffer.append(TEXT_115);
    stringBuffer.append(Pin2);
    stringBuffer.append(TEXT_116);
    stringBuffer.append(portNo2);
    stringBuffer.append(TEXT_117);
    stringBuffer.append(Pin2);
    stringBuffer.append(TEXT_118);
    } 
    stringBuffer.append(TEXT_119);
    }
    stringBuffer.append(TEXT_120);
     if(Pin2 < 4) { 
    stringBuffer.append(TEXT_121);
    stringBuffer.append(portNo2);
    stringBuffer.append(TEXT_122);
    stringBuffer.append(IOCR2);
    stringBuffer.append(TEXT_123);
    stringBuffer.append((3+(Pin2*8)));
    stringBuffer.append(TEXT_124);
    }else if (Pin2 >= 4 && Pin2 <= 7) {  
  Pin2 = Pin2 - 4; 
    stringBuffer.append(TEXT_125);
    stringBuffer.append(portNo2);
    stringBuffer.append(TEXT_126);
    stringBuffer.append(IOCR2);
    stringBuffer.append(TEXT_127);
    stringBuffer.append((3+(Pin2*8)));
    stringBuffer.append(TEXT_128);
    } else if (Pin2 >= 8 && Pin2 <= 11) { 
  Pin2 = Pin2 - 8; 
    stringBuffer.append(TEXT_129);
    stringBuffer.append(portNo2);
    stringBuffer.append(TEXT_130);
    stringBuffer.append(IOCR2);
    stringBuffer.append(TEXT_131);
    stringBuffer.append((3+(Pin2*8)));
    stringBuffer.append(TEXT_132);
    } else if (Pin2 >= 12 && Pin2 <= 15) { 
  Pin2 = Pin2 - 12; 
    stringBuffer.append(TEXT_133);
    stringBuffer.append(portNo2);
    stringBuffer.append(TEXT_134);
    stringBuffer.append(IOCR2);
    stringBuffer.append(TEXT_135);
    stringBuffer.append((3+(Pin2*8)));
    stringBuffer.append(TEXT_136);
    }
    stringBuffer.append(TEXT_137);
    stringBuffer.append(portNo2);
    stringBuffer.append(TEXT_138);
    stringBuffer.append(pinNo2);
    stringBuffer.append(TEXT_139);
    } else { 
    stringBuffer.append(TEXT_140);
    stringBuffer.append( appInst );
    stringBuffer.append(TEXT_141);
    } 
     } 
     else { 
    stringBuffer.append(TEXT_142);
     } 
    stringBuffer.append(TEXT_143);
    } 
    stringBuffer.append(TEXT_144);
    stringBuffer.append(TEXT_145);
    return stringBuffer.toString();
  }
}
