package CodeGenerator;

import java.util.*;
import com.ifx.davex.appjetinteract.App2JetInterface;

public class type_cmh_template
{
  protected static String nl;
  public static synchronized type_cmh_template create(String lineSeparator)
  {
    nl = lineSeparator;
    type_cmh_template result = new type_cmh_template();
    nl = null;
    return result;
  }

  public final String NL = nl == null ? (System.getProperties().getProperty("line.separator")) : nl;
  protected final String TEXT_1 = NL + "/* THIS FILE IS PROVIDED BY DAVE." + NL + " * THIS FILE IS GENERATED." + NL + " */" + NL + " " + NL + "/*******************************************************************************" + NL + " *" + NL + " * Copyright (C) 2011 Infineon Technologies AG. All rights reserved." + NL + " *" + NL + " * Infineon Technologies AG (Infineon) is supplying this software for use with" + NL + " * Infineon's microcontrollers." + NL + " * This file can be freely distributed within development tools that are" + NL + " * supporting such microcontrollers." + NL + " *" + NL + " * THIS SOFTWARE IS PROVIDED \"AS IS\".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED" + NL + " * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF" + NL + " * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE." + NL + " * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL," + NL + " * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER." + NL + " *" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "**                                                                            **" + NL + "** PLATFORM : Infineon XMC4000 Series                                         **" + NL + "**                                                                            **" + NL + "** COMPILER : Compiler Independent                                            **" + NL + "**                                                                            **" + NL + "** AUTHOR : App Developer                                                     **" + NL + "**                                                                            **" + NL + "** MAY BE CHANGED BY USER [yes/no]: Yes                                       **" + NL + "**                                                                            **" + NL + "** MODIFICATION DATE : Dec 4, 2012                                            **" + NL + "**                                                                            **" + NL + "*******************************************************************************/" + NL + "" + NL + "/*******************************************************************************" + NL + "**                       Author(s) Identity                                   **" + NL + "********************************************************************************" + NL + "**                                                                            **" + NL + "** Initials    Name                                                           **" + NL + "** ---------------------------------------------------------------------------**" + NL + "** CM          App Developer                                                  **" + NL + "*******************************************************************************/" + NL + "#ifndef _TYPE_CM_H" + NL + "#define _TYPE_CM_H" + NL + "" + NL + "#ifdef __cplusplus" + NL + "extern \"C\"{" + NL + "#endif" + NL + "#include <stdarg.h>" + NL + "#include <string.h>" + NL + "#include \"types.h\"" + NL;
  protected final String TEXT_2 = NL + NL + "#define USE_IFX_DEV\t\t1" + NL;
  protected final String TEXT_3 = NL + NL;
  protected final String TEXT_4 = NL;
  protected final String TEXT_5 = NL + NL + "/**" + NL + " * Define USB Interrupt Handler or ISR" + NL + " */" + NL + "#define USBCORE001_InterruptHandler                       IRQ_Hdlr_";
  protected final String TEXT_6 = NL + NL + NL + "#define USBHostMode\t";
  protected final String TEXT_7 = NL + "#define USBDeviceMode\t";
  protected final String TEXT_8 = NL + "#define BlkNakSupport ";
  protected final String TEXT_9 = NL + NL + "#if(USBHostMode==1)" + NL + "#define DWC_HOST_ONLY" + NL + "#endif" + NL + "" + NL + "#if(USBDeviceMode==1)" + NL + "#define DWC_DEVICE_ONLY" + NL + "#endif" + NL + "" + NL + "#if(BlkNakSupport == 1)" + NL + "#define DWC_BLKNAK_SUPPORT" + NL + "#endif" + NL + "" + NL + "#define u_int int" + NL + "#define u_char char" + NL + "#define u_long long" + NL + "#define u16 int" + NL + "" + NL + "typedef uint8_t u_int8_t; " + NL + "typedef uint16_t u_int16_t; " + NL + "typedef uint32_t u_int32_t; " + NL + "" + NL + "typedef unsigned gfp_t;" + NL + "" + NL + "" + NL + "#define __u8 unsigned char" + NL + "#define __le16 uint16_t" + NL + "#define __u16 uint16_t" + NL + "" + NL + "" + NL + "#define irqreturn_t void" + NL + "" + NL + "" + NL + "#define KERNEL_VERSION(x, y, z) (0)" + NL + "" + NL + "" + NL + "#define dwc_dma_t uint32_t" + NL + "" + NL + "#define inline __inline" + NL + "" + NL + "" + NL + "//*******************************************************************" + NL + "" + NL + "//**************** kernel.h *****************************************" + NL + "#define INT_MAX         ((int)(~0U>>1))" + NL + "//*******************************************************************" + NL + "/**" + NL + "*@note IFX Modification. Need to find a better place" + NL + "*/" + NL + "/** Indicates to the compiler that the function can not ever return, so that any stack restoring or" + NL + " *  return code may be omitted by the compiler in the resulting binary." + NL + " */" + NL + "#define ATTR_NO_RETURN              __attribute__ ((noreturn))" + NL + "" + NL + "/** Indicates that the function returns a value which should not be ignored by the user code. When" + NL + " *  applied, any ignored return value from calling the function will produce a compiler warning." + NL + " */" + NL + "#define ATTR_WARN_UNUSED_RESULT     __attribute__ ((warn_unused_result))" + NL + "" + NL + "/** Indicates that the specified parameters of the function are pointers which should never be \\c NULL." + NL + " *  When applied as a 1-based comma separated list the compiler will emit a warning if the specified" + NL + " *  parameters are known at compiler time to be \\c NULL at the point of calling the function." + NL + " */" + NL + "#define ATTR_NON_NULL_PTR_ARG(...)  __attribute__ ((nonnull (__VA_ARGS__)))" + NL + "" + NL + "/** Removes any preamble or postamble from the function. When used, the function will not have any" + NL + " *  register or stack saving code. This should be used with caution, and when used the programmer" + NL + " *  is responsible for maintaining stack and register integrity." + NL + " */" + NL + "#define ATTR_NAKED                  __attribute__ ((naked))" + NL + "" + NL + "/** Prevents the compiler from considering a specified function for inlining. When applied, the given" + NL + " *  function will not be inlined under any circumstances." + NL + " */" + NL + "#define ATTR_NO_INLINE              __attribute__ ((noinline))" + NL + "" + NL + "/** Forces the compiler to inline the specified function. When applied, the given function will be" + NL + " *  inlined under all circumstances." + NL + " */" + NL + "#define ATTR_ALWAYS_INLINE          __attribute__ ((always_inline))" + NL + "" + NL + "/** Indicates that the specified function is pure, in that it has no side-effects other than global" + NL + " *  or parameter variable access." + NL + " */" + NL + "#define ATTR_PURE                   __attribute__ ((pure))" + NL + "" + NL + "/** Indicates that the specified function is constant, in that it has no side effects other than" + NL + " *  parameter access." + NL + " */" + NL + "#define ATTR_CONST                  __attribute__ ((const))" + NL + "" + NL + "/** Marks a given function as deprecated, which produces a warning if the function is called. */" + NL + "#define ATTR_DEPRECATED             __attribute__ ((deprecated))" + NL + "" + NL + "/** Marks a function as a weak reference, which can be overridden by other functions with an" + NL + " *  identical name (in which case the weak reference is discarded at link time)." + NL + " */" + NL + "#define ATTR_WEAK                   __attribute__ ((weak))" + NL + "" + NL + "/** Forces the compiler to not automatically zero the given global variable on startup, so that the" + NL + " *  current RAM contents is retained. Under most conditions this value will be random due to the" + NL + " *  behaviour of volatile memory once power is removed, but may be used in some specific circumstances," + NL + " *  like the passing of values back after a system watchdog reset." + NL + " */" + NL + "#define ATTR_NO_INIT                __attribute__ ((section (\".noinit\")))" + NL + "" + NL + "/** Places the function in one of the initialization sections, which execute before the main function" + NL + " *  of the application. Refer to the avr-libc manual for more information on the initialization sections." + NL + " *" + NL + " *  \\param[in] SectionIndex  Initialization section number where the function should be placed." + NL + " */" + NL + "#define ATTR_INIT_SECTION(SectionIndex) __attribute__ ((naked, section (\".init\" #SectionIndex )))" + NL + "" + NL + "/** Marks a function as an alias for another function." + NL + " *" + NL + " *  \\param[in] Func  Name of the function which the given function name should alias." + NL + " */" + NL + "#define ATTR_ALIAS(Func)               __attribute__ ((alias( #Func )))" + NL + "" + NL + "/** Marks a variable or struct element for packing into the smallest space available, omitting any" + NL + " *  alignment bytes usually added between fields to optimize field accesses." + NL + " */" + NL + "#define ATTR_PACKED                     __attribute__ ((packed))" + NL + "" + NL + "/** Indicates the minimum alignment in bytes for a variable or struct element." + NL + " *" + NL + " *  \\param[in] Bytes  Minimum number of bytes the item should be aligned to." + NL + " */" + NL + "#define ATTR_ALIGNED(Bytes)            __attribute__ ((aligned(Bytes)))" + NL + "" + NL + "" + NL + "#ifdef DWC_HOST_ONLY" + NL + "#define USB_CAN_BE_HOST 1" + NL + "#define USB_HOST_ONLY 1" + NL + "#endif" + NL + "" + NL + "#ifdef DWC_DEVICE_ONLY" + NL + "#define USB_CAN_BE_DEVICE 1" + NL + "#define USB_DEVICE_ONLY 1" + NL + "#endif" + NL + "" + NL + "#ifdef DWC_BLKNAK_SUPPORT" + NL + "#define USB_BLKNAK_SUPPORT 1" + NL + "#endif" + NL + "" + NL + "#define true 1" + NL + "#define false 0" + NL + "#ifdef __cplusplus" + NL + "}" + NL + "#endif" + NL + "#endif";
  protected final String TEXT_10 = NL;

  public String generate(Object argument)
  {
    final StringBuffer stringBuffer = new StringBuffer();
     App2JetInterface app = (App2JetInterface) argument; 
    stringBuffer.append(TEXT_1);
     String AppBaseuri = "app/usbld001/";
    stringBuffer.append(TEXT_2);
     int appInst = 0; 
   int USBHost = 0;
   int USBDevice = 0;
   int BlkNak = 0;
   USBHost = app.getIntegerValue(AppBaseuri + appInst +"/usbld001_erwusbopmode/0");
   USBDevice = app.getIntegerValue(AppBaseuri + appInst +"/usbld001_erwusbopmode/1");
   BlkNak = app.getIntegerValue(AppBaseuri + appInst +"/usbld001_irwblknaksupport");

    stringBuffer.append(TEXT_3);
     String MappedUri = null; 
     String NodeID = null; 
     int Offset = 0;
    stringBuffer.append(TEXT_4);
     MappedUri = app.getMappedUri(AppBaseuri + appInst + "/nvic_node"); 
     if((MappedUri != null) && (MappedUri != "")) 
   { 
     NodeID = MappedUri.substring(MappedUri.lastIndexOf('/')+ 1 );
     Offset = Integer.parseInt(NodeID);
   }

    stringBuffer.append(TEXT_5);
    stringBuffer.append(Offset);
    stringBuffer.append(TEXT_6);
    stringBuffer.append( USBHost );
    stringBuffer.append(TEXT_7);
    stringBuffer.append( USBDevice );
    stringBuffer.append(TEXT_8);
    stringBuffer.append( BlkNak );
    stringBuffer.append(TEXT_9);
    stringBuffer.append(TEXT_10);
    return stringBuffer.toString();
  }
}
