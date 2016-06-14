################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Sensors/MPU9X50/MPU9150.c 

OBJS += \
./Sensors/MPU9X50/MPU9150.o 

C_DEPS += \
./Sensors/MPU9X50/MPU9150.d 


# Each subdirectory must supply rules for building sources it contributes
Sensors/MPU9X50/%.o: ../Sensors/MPU9X50/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"C:\DAVE-3.1.10\ARM-GCC/bin/ccache.exe" "C:\DAVE-3.1.10\ARM-GCC/bin/arm-none-eabi-gcc.exe" -DDAVE_CE -DARM_MATH_CM4 -D__FPU_PRESENT -DUC_ID=4502003 -I"C:\DAVE-3.1.10\eclipse\/../CMSIS/Include" -I"C:\DAVE-3.1.10\eclipse\/../CMSIS/Infineon/Include" -I"C:\DAVE-3.1.10\ARM-GCC/arm-none-eabi/include" -I"C:\DAVE-3.1.10\eclipse\/../emWin/Start/GUI/inc" -I"C:\DAVE-3.1.10\eclipse\/../CMSIS/Infineon/XMC4500_series/Include" -I"C:\DAVE3_workspace\ws_FC\AttitudeControl_MPU-9110_v0.1\Dave\Generated\inc\MOTORLIBS" -I"C:\DAVE3_workspace\ws_FC\AttitudeControl_MPU-9110_v0.1\Dave\Generated\inc\DAVESupport" -I"C:\DAVE3_workspace\ws_FC\AttitudeControl_MPU-9110_v0.1\Dave\Generated\inc\LIBS" -O0 -ffunction-sections -Wall -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


