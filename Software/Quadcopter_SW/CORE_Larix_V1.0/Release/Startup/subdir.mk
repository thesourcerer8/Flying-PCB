################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Startup/system_XMC4500.c 

S_SRCS += \
../Startup/startup_XMC4500.s 

OBJS += \
./Startup/startup_XMC4500.o \
./Startup/system_XMC4500.o 

C_DEPS += \
./Startup/system_XMC4500.d 

S_DEPS += \
./Startup/startup_XMC4500.d 


# Each subdirectory must supply rules for building sources it contributes
Startup/%.o: ../Startup/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC Assembler'
	"C:\DAVE-3.1.10\ARM-GCC/bin/arm-none-eabi-gcc" -x assembler-with-cpp -DDAVE_CE -DUC_ID=4503003 -I"C:\DAVE-3.1.10\eclipse\/../CMSIS/Infineon/Include" -Wall -Wa,-adhlns="$@.lst" -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Startup/%.o: ../Startup/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"C:\DAVE-3.1.10\ARM-GCC/bin/arm-none-eabi-gcc" -DDAVE_CE -DARM_MATH_CM4 -D_FPU_PRESENT -DUC_ID=4503003 -I"C:\DAVE-3.1.10\eclipse\/../CMSIS/Include" -I"C:\DAVE-3.1.10\eclipse\/../CMSIS/Infineon/Include" -I"C:\DAVE-3.1.10\ARM-GCC/arm-none-eabi/include" -I"C:\DAVE-3.1.10\eclipse\/../emWin/Start/GUI/inc" -I"C:\DAVE-3.1.10\eclipse\/../CMSIS/Infineon/XMC4500_series/Include" -I"C:\DAVE3_workspace\ws3.1.10\CORE_Larix_V1.0\Dave\Generated\inc\DAVESupport" -I"C:\DAVE3_workspace\ws3.1.10\CORE_Larix_V1.0\Dave\Generated\inc\LIBS" -I"C:\DAVE3_workspace\ws3.1.10\CORE_Larix_V1.0\Dave\Generated\inc\MOTORLIBS" -I"C:\DAVE3_workspace\ws3.1.10\CORE_Larix_V1.0\Dave\Generated\src\USBCDC001\Drivers\USB\Core" -I"C:\DAVE3_workspace\ws3.1.10\CORE_Larix_V1.0\Dave\Generated\src\USBCDC001\Drivers\USB" -I"C:\DAVE3_workspace\ws3.1.10\CORE_Larix_V1.0\Dave\Generated\src\USBCDC001\Drivers\USB\Class" -Os -ffunction-sections -Wall -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


