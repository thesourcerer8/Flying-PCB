package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class rtc001_confc_template
{
  protected static String nl;
  public static synchronized rtc001_confc_template create(String lineSeparator)
  {
    nl = lineSeparator;
    rtc001_confc_template result = new rtc001_confc_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + NL + "/*CODE_BLOCK_BEGIN[RTC001_Conf.c]*/" + NL + "/*******************************************************************************" + NL + " Copyright (c) 2011-2013, Infineon Technologies AG                            **" + NL + " All rights reserved.                                                         **" + NL + "                                                                              **" + NL + " Redistribution and use in source and binary forms, with or without           **" + NL + " modification,are permitted provided that the following conditions are met:   **" + NL + "                                                                              **" + NL + " *Redistributions of source code must retain the above copyright notice,      **" + NL + " this list of conditions and the following disclaimer.                        **" + NL + " *Redistributions in binary form must reproduce the above copyright notice,   **" + NL + " this list of conditions and the following disclaimer in the documentation    **" + NL + " and/or other materials provided with the distribution.                       **" + NL + " *Neither the name of the copyright holders nor the names of its contributors **" + NL + " may be used to endorse or promote products derived from this software without**" + NL + " specific prior written permission.                                           **" + NL + "                                                                              **" + NL + " THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\"  **" + NL + " AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **" + NL + " IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **" + NL + " ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **" + NL + " LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **" + NL + " CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **" + NL + " SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **" + NL + " INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **" + NL + " CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **" + NL + " ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **" + NL + " POSSIBILITY OF SUCH DAMAGE.                                                  **" + NL + "                                                                              **" + NL + " To improve the quality of the software, users are encouraged to share        **" + NL + " modifications, enhancements or bug fixes with Infineon Technologies AG       **" + NL + " dave@infineon.com).                                                          **" + NL + "                                                                              **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC4000/XMC1000 Series                                 **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR   : App Developer                                                   **" + NL + "**                                                                            **" + NL + "** NOTE     : Any Changes made to this file will be overwritten during Code   **" + NL + "**            Generation                                                      **" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "/*******************************************************************************" + NL + "** Version History:                                                           **" + NL + "********************************************************************************" + NL + "** v1.0.22    23 Feb 2013  JP: Ported for XMC4400 and XMC1000 Devices.        **" + NL + "**                            Conditional consumption of NVIC_SCU,NVIC_SR101  **" + NL + "**                            Apps based on the device.                       ** " + NL + "**                                                                            **" + NL + "** v1.0.24    20 Mar 2013  JP: Mirror register status check                   **" + NL + "**                            statements under the functions RTC001_Disable(),**" + NL + "**                            RTC001_ConfigAlarm() and RTC001_Clock_SetTime() ** " + NL + "**                            are maintained uniquely for both XMC4000 and    ** " + NL + "**                            XMC1000 devices. DBG002 related bugs(ID22796)   ** " + NL + "**                            are fixed. Revision History added.              **" + NL + "**                                                                            **" + NL + "** v1.0.26    23 Apr 2013  JP: In Function RTC001_ldatevalid(uint16_t m,      **" + NL + "**                            uint16_t d,uint16_t y), \"Day (d) == 0\" is       ** " + NL + "**                            checked.                                        **" + NL + "**                                                                            **" + NL + "** v1.0.28    09 Sep 2013  JP: XMC1000 Five new SW IDs are supported.         **" + NL + "**                            RTC001 --> wrong handling of Hibernate register **  " + NL + "**                            is fixed.                                       **" + NL + "**                                                                            **" + NL + "** v1.0.30    16 Oct 2013  JP: Code has been updated in compliant to          **" + NL + "**                            coding guidelines.                              **                                                                           " + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "*******************************************************************************/ ";
  protected final String TEXT_2 = NL + "/**" + NL + " *******************************************************************************" + NL + " *" + NL + " * @file RTC001_Conf.c" + NL + " *" + NL + " " + NL + " *" + NL + " * @brief Handle definitions based on UI configuration for rtc001 App " + NL + " *        Instances." + NL + "*/" + NL + "" + NL + "/*******************************************************************************" + NL + " ** Include Files:                                                            **" + NL + " ******************************************************************************/" + NL + "#include \"../../inc/RTC001/RTC001_Conf.h\"" + NL + "#include \"../../inc/RTC001/RTC001.h\"" + NL + "" + NL + "/* GUI configurations made for a RTC001 app. */" + NL + "" + NL + "" + NL + "const RTC001_HandleType RTC001_Handle  = " + NL + "{" + NL + "  /**" + NL + "   * General Configurations" + NL + "   */             ";
  protected final String TEXT_3 = "\t\t" + NL + "  /* Time Initialization Once Enabled */" + NL + "  .RTCInitOnce = RTC001_INITONCE_ENABLE,  \t";
  protected final String TEXT_4 = NL + "  /* Time Initialization Once Disabled */" + NL + "  .RTCInitOnce = RTC001_INITONCE_DISABLE, \t \t";
  protected final String TEXT_5 = "    " + NL + "  /*DividerValue*/" + NL + "  .DividerValue = 0x";
  protected final String TEXT_6 = "U,   ";
  protected final String TEXT_7 = "\t\t" + NL + "  /* RTC Module Enabled */" + NL + "  .RTCEnable = RTC001_ENABLE,  \t";
  protected final String TEXT_8 = NL + "  /* RTC Module Disabled */" + NL + "  .RTCEnable = RTC001_DISABLE, \t \t";
  protected final String TEXT_9 = NL + "    " + NL + "  /**" + NL + "   * Interrupt Configurations" + NL + "   */      ";
  protected final String TEXT_10 = "\t\t" + NL + "  /* Event trigger to SCU interrupt enabled */" + NL + "  .RTCEventTrigTimer = RTC001_EVENTTRIGSCU_TIMER_ENABLE,  \t";
  protected final String TEXT_11 = NL + "  /* Event trigger to NMI interrupt enabled */" + NL + "  .RTCEventTrigTimer = RTC001_EVENTTRIGNMI_TIMER_ENABLE, \t \t";
  protected final String TEXT_12 = "   ";
  protected final String TEXT_13 = "\t\t" + NL + "  /* Timer Periodic seconds interrupt enabled */" + NL + "  .RTCPeriodicSecInterrupt = RTC001_PERIODICSECINT_ENABLE,  \t";
  protected final String TEXT_14 = NL + "  /* Timer Periodic seconds interrupt disabled */" + NL + "  .RTCPeriodicSecInterrupt = RTC001_PERIODICSECINT_DISABLE, \t \t";
  protected final String TEXT_15 = "    ";
  protected final String TEXT_16 = "\t\t" + NL + "  /* Timer Periodic minutes interrupt enabled */" + NL + "  .RTCPeriodicMinInterrupt = RTC001_PERIODICMININT_ENABLE,  \t";
  protected final String TEXT_17 = NL + "  /* Timer Periodic minutes interrupt disabled */" + NL + "  .RTCPeriodicMinInterrupt = RTC001_PERIODICMININT_DISABLE, \t \t";
  protected final String TEXT_18 = "    ";
  protected final String TEXT_19 = "\t\t" + NL + "  /* Timer Periodic hours interrupt enabled */" + NL + "  .RTCPeriodicHourInterrupt = RTC001_PERIODICHOURINT_ENABLE,  \t";
  protected final String TEXT_20 = NL + "  /* Timer Periodic hours interrupt disabled */" + NL + "  .RTCPeriodicHourInterrupt = RTC001_PERIODICHOURINT_DISABLE, \t \t";
  protected final String TEXT_21 = "      ";
  protected final String TEXT_22 = "\t\t" + NL + "  /* Timer Periodic days interrupt enabled */" + NL + "  .RTCPeriodicDayInterrupt = RTC001_PERIODICDAYINT_ENABLE,  \t";
  protected final String TEXT_23 = NL + "  /* Timer Periodic days interrupt disabled */" + NL + "  .RTCPeriodicDayInterrupt = RTC001_PERIODICDAYINT_DISABLE, \t \t";
  protected final String TEXT_24 = "      ";
  protected final String TEXT_25 = "\t\t" + NL + "  /* Timer Periodic months interrupt enabled */" + NL + "  .RTCPeriodicMonthInterrupt = RTC001_PERIODICMONTHINT_ENABLE,  \t";
  protected final String TEXT_26 = NL + "  /* Timer Periodic months interrupt disabled */" + NL + "  .RTCPeriodicMonthInterrupt = RTC001_PERIODICMONTHINT_DISABLE, \t \t";
  protected final String TEXT_27 = " ";
  protected final String TEXT_28 = "\t\t" + NL + "  /* Timer Periodic years interrupt enabled */" + NL + "  .RTCPeriodicYearInterrupt = RTC001_PERIODICYEARINT_ENABLE,  \t";
  protected final String TEXT_29 = NL + "  /* Timer Periodic years interrupt disabled */" + NL + "  .RTCPeriodicYearInterrupt = RTC001_PERIODICYEARINT_DISABLE, \t \t";
  protected final String TEXT_30 = " ";
  protected final String TEXT_31 = "\t\t" + NL + "  /* Alarm interrupt enabled */" + NL + "  .RTCAlarmInterrupt = RTC001_ALARMINT_ENABLE,  \t";
  protected final String TEXT_32 = NL + "  /* Alarm interrupt disabled */" + NL + "  .RTCAlarmInterrupt = RTC001_ALARMINT_DISABLE, \t \t";
  protected final String TEXT_33 = " ";
  protected final String TEXT_34 = "\t\t" + NL + "  /* Event trigger to SCU interrupt enabled */" + NL + "  .RTCEventTrigAlarm = RTC001_EVENTTRIGSCU_ALARM_ENABLE,  \t";
  protected final String TEXT_35 = NL + "  /* Event trigger to NMI interrupt dnabled */" + NL + "  .RTCEventTrigAlarm = RTC001_EVENTTRIGNMI_ALARM_ENABLE, \t \t";
  protected final String TEXT_36 = NL + "   " + NL + "  /**" + NL + "   * Hibernate Configurations" + NL + "   */      ";
  protected final String TEXT_37 = "\t\t" + NL + "  /* Alarm event in hibernate mode enabled */" + NL + "  .RTCHibAlarmEvent = RTC001_HIBALARM_ENABLE,  \t";
  protected final String TEXT_38 = NL + "  /* Alarm event in hibernate mode disabled */" + NL + "  .RTCHibAlarmEvent = RTC001_HIBALARM_DISABLE, \t \t";
  protected final String TEXT_39 = " ";
  protected final String TEXT_40 = "\t\t" + NL + "  /* Periodic seconds event in hibernate mode enabled */" + NL + "  .RTCHibPeriodicSecEvent = RTC001_HIBPERIODICSEC_ENABLE,  \t";
  protected final String TEXT_41 = NL + "  /* Periodic seconds event in hibernate mode disabled */" + NL + "  .RTCHibPeriodicSecEvent = RTC001_HIBPERIODICSEC_DISABLE, \t \t";
  protected final String TEXT_42 = " ";
  protected final String TEXT_43 = "\t\t" + NL + "  /* Periodic minutes event in hibernate mode enabled */" + NL + "  .RTCHibPeriodicMinEvent = RTC001_HIBPERIODICMIN_ENABLE,  \t";
  protected final String TEXT_44 = NL + "  /* Periodic minutes event in hibernate mode disabled */" + NL + "  .RTCHibPeriodicMinEvent = RTC001_HIBPERIODICMIN_DISABLE, \t \t";
  protected final String TEXT_45 = " ";
  protected final String TEXT_46 = "\t\t" + NL + "  /* Periodic hours event in hibernate mode enabled */" + NL + "  .RTCHibPeriodicHourEvent = RTC001_HIBPERIODICHOUR_ENABLE,  \t";
  protected final String TEXT_47 = NL + "  /* Periodic hours event in hibernate mode disabled */" + NL + "  .RTCHibPeriodicHourEvent = RTC001_HIBPERIODICHOUR_DISABLE, \t \t";
  protected final String TEXT_48 = "\t\t" + NL + "  /* Periodic days event in hibernate mode enabled */" + NL + "  .RTCHibPeriodicDayEvent = RTC001_HIBPERIODICDAY_ENABLE,  \t";
  protected final String TEXT_49 = NL + "  /* Periodic days event in hibernate mode disabled */" + NL + "  .RTCHibPeriodicDayEvent = RTC001_HIBPERIODICDAY_DISABLE, \t \t";
  protected final String TEXT_50 = " ";
  protected final String TEXT_51 = "\t\t" + NL + "  /* Periodic months event in hibernate mode enabled */" + NL + "  .RTCHibPeriodicMonthEvent = RTC001_HIBPERIODICMONTH_ENABLE,  \t";
  protected final String TEXT_52 = NL + "  /* Periodic months event in hibernate mode disabled */" + NL + "  .RTCHibPeriodicMonthEvent = RTC001_HIBPERIODICMONTH_DISABLE, \t \t";
  protected final String TEXT_53 = "\t\t" + NL + "  /* Periodic years event in hibernate mode enabled */" + NL + "  .RTCHibPeriodicYearEvent = RTC001_HIBPERIODICYEAR_ENABLE,  \t";
  protected final String TEXT_54 = NL + "  /* Periodic years event in hibernate mode disabled */" + NL + "  .RTCHibPeriodicYearEvent = RTC001_HIBPERIODICYEAR_DISABLE, \t \t";
  protected final String TEXT_55 = NL + " " + NL + "  /**" + NL + "   * Listener functions for RTC Interrupt Events" + NL + "   */";
  protected final String TEXT_56 = " " + NL + "  /* Event: Timer Periodic Interrupt */ " + NL + "  .RTC001_PI_Listener = ";
  protected final String TEXT_57 = ",      ";
  protected final String TEXT_58 = NL + "  /* Event: Timer Periodic Interrupt */ " + NL + "  .RTC001_PI_Listener = NULL, ";
  protected final String TEXT_59 = "    ";
  protected final String TEXT_60 = "   " + NL + "  /* Event: Alarm Interrupt */\t" + NL + "  .RTC001_AI_Listener = ";
  protected final String TEXT_61 = " ";
  protected final String TEXT_62 = " " + NL + "  /* Event: Alarm Interrupt */  " + NL + "  .RTC001_AI_Listener = NULL ";
  protected final String TEXT_63 = NL + "};" + NL + "" + NL + "" + NL + "/* User Set Calendar Date manually */" + NL + "   RTC001_TimeHandle timeptr1 =" + NL + "  { ";
  protected final String TEXT_64 = NL + "   \t";
  protected final String TEXT_65 = NL + "   " + NL + "  /* User Set Time manually */";
  protected final String TEXT_66 = NL + "  ";
  protected final String TEXT_67 = NL + NL + "    /* Second provided in GUI */" + NL + "    .Sec = ";
  protected final String TEXT_68 = "U," + NL + "    /* Minute provided in GUI */" + NL + "    .Min = ";
  protected final String TEXT_69 = "U,    " + NL + "  \t/* Hour provided in GUI */" + NL + "    .Hours = ";
  protected final String TEXT_70 = "U,    " + NL + "    /* Day provided in GUI */" + NL + "    .Days = ";
  protected final String TEXT_71 = "U," + NL + "    /* Month provided in GUI */" + NL + "    .Month = ";
  protected final String TEXT_72 = "U," + NL + "    /* Year provided in GUI */" + NL + "    .Year = ";
  protected final String TEXT_73 = "U   " + NL + "  };" + NL + "  ";
  protected final String TEXT_74 = NL + "  /* User Set Alarm Configurations */" + NL + "  /* Alarm Date configuration */" + NL + "  RTC001_TimeHandle Alarmptr1 = " + NL + "  {  ";
  protected final String TEXT_75 = NL + "   \t";
  protected final String TEXT_76 = " " + NL + "  " + NL + "  /* Alarm time configuration */ ";
  protected final String TEXT_77 = NL + "  ";
  protected final String TEXT_78 = NL + "       " + NL + "    /* Alarm seconds provided in GUI */" + NL + "    .Sec = ";
  protected final String TEXT_79 = "U," + NL + "    /* Alarm minutes provided in GUI */" + NL + "    .Min = ";
  protected final String TEXT_80 = "U," + NL + "    /* Alarm hours provided in GUI */" + NL + "    .Hours = ";
  protected final String TEXT_81 = "U," + NL + "    /* Alarm day provided in GUI */" + NL + "    .Days = ";
  protected final String TEXT_82 = "U," + NL + "    /* Alarm month provided in GUI */" + NL + "    .Month = ";
  protected final String TEXT_83 = "U," + NL + "    /* Alarm year provided in GUI */" + NL + "    .Year = ";
  protected final String TEXT_84 = "U" + NL + "    };";
  protected final String TEXT_85 = "    " + NL + " " + NL + "  " + NL + "/*CODE_BLOCK_END*/ ";
  protected final String TEXT_86 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/RTC001/0";
    stringBuffer.append(TEXT_2);
     if(app.getIntegerValue(AppBaseuri + "/RTC001_erwTimeInitialisation/0")==1) {
    stringBuffer.append(TEXT_3);
    } else if(app.getIntegerValue(AppBaseuri + "/RTC001_erwTimeInitialisation/0")==0) {
    stringBuffer.append(TEXT_4);
    }
    stringBuffer.append(TEXT_5);
    stringBuffer.append( app.getHexValue(AppBaseuri + "/rtc/ctr/div") );
    stringBuffer.append(TEXT_6);
     if(app.getIntegerValue(AppBaseuri + "/RTC001_erwEnableRTC/0")==1) {
    stringBuffer.append(TEXT_7);
    } else if(app.getIntegerValue(AppBaseuri + "/RTC001_erwEnableRTC/0")==0) {
    stringBuffer.append(TEXT_8);
    }
    stringBuffer.append(TEXT_9);
     if(app.getIntegerValue(AppBaseuri + "/RTC001_Eventtrigger_timer/0")==1) {
    stringBuffer.append(TEXT_10);
    } else if(app.getIntegerValue(AppBaseuri + "/RTC001_Eventtrigger_timer/1")==1) {
    stringBuffer.append(TEXT_11);
    }
    stringBuffer.append(TEXT_12);
     if(app.getIntegerValue(AppBaseuri + "/RTC001_erwPeriodicSecInter/0")==1) {
    stringBuffer.append(TEXT_13);
    } else if(app.getIntegerValue(AppBaseuri + "/RTC001_erwPeriodicSecInter/0")==0) {
    stringBuffer.append(TEXT_14);
    }
    stringBuffer.append(TEXT_15);
     if(app.getIntegerValue(AppBaseuri + "/RTC001_erwPeriodicMinInter/0")==1) {
    stringBuffer.append(TEXT_16);
    } else if(app.getIntegerValue(AppBaseuri + "/RTC001_erwPeriodicMinInter/0")==0) {
    stringBuffer.append(TEXT_17);
    }
    stringBuffer.append(TEXT_18);
     if(app.getIntegerValue(AppBaseuri + "/RTC001_erwPeriodicHrsInter/0")==1) {
    stringBuffer.append(TEXT_19);
    } else if(app.getIntegerValue(AppBaseuri + "/RTC001_erwPeriodicHrsInter/0")==0) {
    stringBuffer.append(TEXT_20);
    }
    stringBuffer.append(TEXT_21);
     if(app.getIntegerValue(AppBaseuri + "/RTC001_erwPeriodicDaysInter/0")==1) {
    stringBuffer.append(TEXT_22);
    } else if(app.getIntegerValue(AppBaseuri + "/RTC001_erwPeriodicDaysInter/0")==0) {
    stringBuffer.append(TEXT_23);
    }
    stringBuffer.append(TEXT_24);
     if(app.getIntegerValue(AppBaseuri + "/RTC001_erwPeriodicMonths/0")==1) {
    stringBuffer.append(TEXT_25);
    } else if(app.getIntegerValue(AppBaseuri + "/RTC001_erwPeriodicMonths/0")==0) {
    stringBuffer.append(TEXT_26);
    }
    stringBuffer.append(TEXT_27);
     if(app.getIntegerValue(AppBaseuri + "/RTC001_erwPeriodicYears/0")==1) {
    stringBuffer.append(TEXT_28);
    } else if(app.getIntegerValue(AppBaseuri + "/RTC001_erwPeriodicYears/0")==0) {
    stringBuffer.append(TEXT_29);
    }
    stringBuffer.append(TEXT_30);
     if(app.getIntegerValue(AppBaseuri + "/RTC001_erwAlarmIntrptEna/0")==1) {
    stringBuffer.append(TEXT_31);
    } else if(app.getIntegerValue(AppBaseuri + "/RTC001_erwAlarmIntrptEna/0")==0) {
    stringBuffer.append(TEXT_32);
    }
    stringBuffer.append(TEXT_33);
     if(app.getIntegerValue(AppBaseuri + "/RTC001_Eventtrigger_Alarm/0")==1) {
    stringBuffer.append(TEXT_34);
    } else if(app.getIntegerValue(AppBaseuri + "/RTC001_Eventtrigger_Alarm/1")==1) {
    stringBuffer.append(TEXT_35);
    }
    stringBuffer.append(TEXT_36);
     if(app.getIntegerValue(AppBaseuri + "/RTC001_erwTimerAlarm/0")==1) {
    stringBuffer.append(TEXT_37);
    } else if(app.getIntegerValue(AppBaseuri + "/RTC001_erwTimerAlarm/0")==0) {
    stringBuffer.append(TEXT_38);
    }
    stringBuffer.append(TEXT_39);
     if(app.getIntegerValue(AppBaseuri + "/RTC001_erwEnaSecComp/0")==1) {
    stringBuffer.append(TEXT_40);
    } else if(app.getIntegerValue(AppBaseuri + "/RTC001_erwEnaSecComp/0")==0) {
    stringBuffer.append(TEXT_41);
    }
    stringBuffer.append(TEXT_42);
     if(app.getIntegerValue(AppBaseuri + "/RTC001_erwEnaMinComp/0")==1) {
    stringBuffer.append(TEXT_43);
    } else if(app.getIntegerValue(AppBaseuri + "/RTC001_erwEnaMinComp/0")==0) {
    stringBuffer.append(TEXT_44);
    }
    stringBuffer.append(TEXT_45);
     if(app.getIntegerValue(AppBaseuri + "/RTC001_erwEnaHrsComp/0")==1) {
    stringBuffer.append(TEXT_46);
    } else if(app.getIntegerValue(AppBaseuri + "/RTC001_erwEnaHrsComp/0")==0) {
    stringBuffer.append(TEXT_47);
    }
     if(app.getIntegerValue(AppBaseuri + "/RTC001_erwEnaDaysComp/0")==1) {
    stringBuffer.append(TEXT_48);
    } else if(app.getIntegerValue(AppBaseuri + "/RTC001_erwEnaDaysComp/0")==0) {
    stringBuffer.append(TEXT_49);
    }
    stringBuffer.append(TEXT_50);
     if(app.getIntegerValue(AppBaseuri + "/RTC001_erwEnaMonthsComp/0")==1) {
    stringBuffer.append(TEXT_51);
    } else if(app.getIntegerValue(AppBaseuri + "/RTC001_erwEnaMonthsComp/0")==0) {
    stringBuffer.append(TEXT_52);
    }
     if(app.getIntegerValue(AppBaseuri + "/RTC001_erwEnaYearsComp/0")==1) {
    stringBuffer.append(TEXT_53);
    } else if(app.getIntegerValue(AppBaseuri + "/RTC001_erwEnaYearsComp/0")==0) {
    stringBuffer.append(TEXT_54);
    }
    stringBuffer.append(TEXT_55);
    String EventHandlerTimer = app.getStringValue(AppBaseuri +"/RTC001_srwTimerUserFunction");
 
 if((EventHandlerTimer != null) && (EventHandlerTimer.compareTo("") != 0)) 
 {    
   if (app.getIntegerValue(AppBaseuri + "/RTC001_Eventtrigger_timer/0") == 1) 
   { 
    stringBuffer.append(TEXT_56);
    stringBuffer.append( app.getStringValue(AppBaseuri +"/RTC001_srwTimerUserFunction"));
    stringBuffer.append(TEXT_57);
     }
 else { 
    stringBuffer.append(TEXT_58);
     } 
  } 
    stringBuffer.append(TEXT_59);
    String EventHandlerAlarm1 = app.getStringValue(AppBaseuri +"/RTC001_srwAlarmUserFunction"); 
  if ((app.getIntegerValue(AppBaseuri + "/RTC001_erwAlarmIntrptEna/0") == 1)) 
  { 
    if((EventHandlerAlarm1 != null) && (EventHandlerAlarm1.compareTo("") != 0) && (app.getIntegerValue(AppBaseuri + "/RTC001_Eventtrigger_Alarm/0") == 1)) 
    { 
    stringBuffer.append(TEXT_60);
    stringBuffer.append( app.getStringValue(AppBaseuri +"/RTC001_srwAlarmUserFunction"));
    stringBuffer.append(TEXT_61);
     }
  else { 
    stringBuffer.append(TEXT_62);
     } 
  } 
    stringBuffer.append(TEXT_63);
    String Date = app.getStringValue(AppBaseuri + "/RTC001_srwDateValue");   
   	String[] SplitDate = Date.split("\\/"); 
    stringBuffer.append(TEXT_64);
    int Datemm  = Integer.parseInt(SplitDate[0]); 
   int Datedd  = Integer.parseInt(SplitDate[1]); 
   int Dateyyyy  = Integer.parseInt(SplitDate[2]); 
    stringBuffer.append(TEXT_65);
     String Time = app.getStringValue(AppBaseuri + "/RTC001_srwTimeValue");   
   	String[] SplitTime = Time.split("\\:"); 
    stringBuffer.append(TEXT_66);
    int Timehh  = Integer.parseInt(SplitTime[0]);
  	int Timemm  = Integer.parseInt(SplitTime[1]);
  	int Timess  = Integer.parseInt(SplitTime[2]); 
    stringBuffer.append(TEXT_67);
    stringBuffer.append(Timess);
    stringBuffer.append(TEXT_68);
    stringBuffer.append(Timemm);
    stringBuffer.append(TEXT_69);
    stringBuffer.append(Timehh);
    stringBuffer.append(TEXT_70);
    stringBuffer.append(Datedd);
    stringBuffer.append(TEXT_71);
    stringBuffer.append(Datemm);
    stringBuffer.append(TEXT_72);
    stringBuffer.append(Dateyyyy);
    stringBuffer.append(TEXT_73);
     if (app.getIntegerValue(AppBaseuri + "/RTC001_erwAlarmIntrptEna/0") == 1) { 
    stringBuffer.append(TEXT_74);
    String AlarmDate = app.getStringValue(AppBaseuri + "/RTC001_srwAlarmDate");   
   	String[] SplitAlarmDate = AlarmDate.split("\\/"); 
    stringBuffer.append(TEXT_75);
    int Alarmmm1  = Integer.parseInt(SplitAlarmDate[0]);  
   int Alarmdd  = Integer.parseInt(SplitAlarmDate[1]); 
   int Alarmyyyy  = Integer.parseInt(SplitAlarmDate[2]); 
    stringBuffer.append(TEXT_76);
     String AlarmTime = app.getStringValue(AppBaseuri + "/RTC001_srwAlarmTime");   
   	String[] SplitAlarmTime = AlarmTime.split("\\:"); 
    stringBuffer.append(TEXT_77);
    int Alarmhh  = Integer.parseInt(SplitAlarmTime[0]);
  	int Alarmmm2  = Integer.parseInt(SplitAlarmTime[1]);
  	int Alarmss  = Integer.parseInt(SplitAlarmTime[2]); 
    stringBuffer.append(TEXT_78);
    stringBuffer.append(Alarmss);
    stringBuffer.append(TEXT_79);
    stringBuffer.append(Alarmmm2);
    stringBuffer.append(TEXT_80);
    stringBuffer.append(Alarmhh);
    stringBuffer.append(TEXT_81);
    stringBuffer.append(Alarmdd);
    stringBuffer.append(TEXT_82);
    stringBuffer.append(Alarmmm1);
    stringBuffer.append(TEXT_83);
    stringBuffer.append(Alarmyyyy);
    stringBuffer.append(TEXT_84);
     } 
    stringBuffer.append(TEXT_85);
    stringBuffer.append(TEXT_86);
    return stringBuffer.toString();
  }
}
