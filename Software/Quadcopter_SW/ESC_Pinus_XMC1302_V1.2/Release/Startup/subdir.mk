################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Startup/system_XMC1300.c 

S_SRCS += \
../Startup/startup_XMC1300.s 

OBJS += \
./Startup/startup_XMC1300.o \
./Startup/system_XMC1300.o 

C_DEPS += \
./Startup/system_XMC1300.d 

S_DEPS += \
./Startup/startup_XMC1300.d 


# Each subdirectory must supply rules for building sources it contributes
Startup/%.o: ../Startup/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC Assembler'
	"C:\DAVE-3.1.10\ARM-GCC/bin/arm-none-eabi-gcc" -x assembler-with-cpp -DDAVE_CE -DUC_ID=13010211 -I"C:\DAVE-3.1.10\eclipse\/../CMSIS/Infineon/Include" -Wall -Wa,-adhlns="$@.lst" -mfloat-abi=soft -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Startup/%.o: ../Startup/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"C:\DAVE-3.1.10\ARM-GCC/bin/arm-none-eabi-gcc" -DDAVE_CE -DUC_ID=13010211 -I"C:\DAVE-3.1.10\eclipse\/../CMSIS/Include" -I"C:\DAVE-3.1.10\eclipse\/../CMSIS/Infineon/Include" -I"C:\DAVE-3.1.10\ARM-GCC/arm-none-eabi/include" -I"C:\DAVE-3.1.10\eclipse\/../emWin/Start/GUI/inc" -I"C:\DAVE-3.1.10\eclipse\/../CMSIS/Infineon/XMC1300_series/Include" -I"C:\DAVE3_workspace\ws3.1.10\ESC_Pinus_XMC1302_V1.2\Dave\Generated\inc\MATHLIBS" -I"C:\DAVE3_workspace\ws3.1.10\ESC_Pinus_XMC1302_V1.2\Dave\Generated\inc\DAVESupport" -I"C:\DAVE3_workspace\ws3.1.10\ESC_Pinus_XMC1302_V1.2\Dave\Generated\inc\MOTORLIBS" -I"C:\DAVE3_workspace\ws3.1.10\ESC_Pinus_XMC1302_V1.2\Dave\Generated\inc\LIBS" -Os -ffunction-sections -Wall -std=gnu99 -mfloat-abi=soft -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m0 -mthumb -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


