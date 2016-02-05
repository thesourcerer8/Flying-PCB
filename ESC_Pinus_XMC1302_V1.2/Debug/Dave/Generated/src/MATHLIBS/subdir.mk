################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dave/Generated/src/MATHLIBS/FASTMATH01.c \
../Dave/Generated/src/MATHLIBS/MATH01.c \
../Dave/Generated/src/MATHLIBS/MATHLLD01.c \
../Dave/Generated/src/MATHLIBS/STDMATH01.c 

OBJS += \
./Dave/Generated/src/MATHLIBS/FASTMATH01.o \
./Dave/Generated/src/MATHLIBS/MATH01.o \
./Dave/Generated/src/MATHLIBS/MATHLLD01.o \
./Dave/Generated/src/MATHLIBS/STDMATH01.o 

C_DEPS += \
./Dave/Generated/src/MATHLIBS/FASTMATH01.d \
./Dave/Generated/src/MATHLIBS/MATH01.d \
./Dave/Generated/src/MATHLIBS/MATHLLD01.d \
./Dave/Generated/src/MATHLIBS/STDMATH01.d 


# Each subdirectory must supply rules for building sources it contributes
Dave/Generated/src/MATHLIBS/%.o: ../Dave/Generated/src/MATHLIBS/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"C:\DAVE-3.1.10\ARM-GCC/bin/arm-none-eabi-gcc" -DDAVE_CE -DUC_ID=13010211 -I"C:\DAVE-3.1.10\eclipse\/../CMSIS/Include" -I"C:\DAVE-3.1.10\eclipse\/../CMSIS/Infineon/Include" -I"C:\DAVE-3.1.10\ARM-GCC/arm-none-eabi/include" -I"C:\DAVE-3.1.10\eclipse\/../emWin/Start/GUI/inc" -I"C:\DAVE-3.1.10\eclipse\/../CMSIS/Infineon/XMC1300_series/Include" -I"C:\DAVE3_workspace\ws3.1.10\ESC_Pinus_XMC1302_V1.2\Dave\Generated\inc\MATHLIBS" -I"C:\DAVE3_workspace\ws3.1.10\ESC_Pinus_XMC1302_V1.2\Dave\Generated\inc\DAVESupport" -I"C:\DAVE3_workspace\ws3.1.10\ESC_Pinus_XMC1302_V1.2\Dave\Generated\inc\MOTORLIBS" -I"C:\DAVE3_workspace\ws3.1.10\ESC_Pinus_XMC1302_V1.2\Dave\Generated\inc\LIBS" -O0 -ffunction-sections -Wall -std=gnu99 -mfloat-abi=soft -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


