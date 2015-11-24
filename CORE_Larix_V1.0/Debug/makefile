################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include _Quadrocopter/_HAL/I2C/subdir.mk
-include _Quadrocopter/_HAL/Delay/subdir.mk
-include _Quadrocopter/Sensors/MPU9X50/Filter/subdir.mk
-include _Quadrocopter/Sensors/MPU9X50/subdir.mk
-include _Quadrocopter/RemoteControl/subdir.mk
-include _Quadrocopter/DaisyChain/subdir.mk
-include _Quadrocopter/Attitude_Control/subdir.mk
-include Startup/subdir.mk
-include Lib/subdir.mk
-include Dave/Generated/src/USBVC001/subdir.mk
-include Dave/Generated/src/USBLD001/dwc_common_port/subdir.mk
-include Dave/Generated/src/USBLD001/driver/subdir.mk
-include Dave/Generated/src/USBLD001/subdir.mk
-include Dave/Generated/src/USBCORE001/subdir.mk
-include Dave/Generated/src/USBCDC001/Drivers/USB/Core/subdir.mk
-include Dave/Generated/src/USBCDC001/Drivers/USB/Class/Device/subdir.mk
-include Dave/Generated/src/UART001/subdir.mk
-include Dave/Generated/src/SYSTM001/subdir.mk
-include Dave/Generated/src/SLTHA003/subdir.mk
-include Dave/Generated/src/RTC001/subdir.mk
-include Dave/Generated/src/RESET001/subdir.mk
-include Dave/Generated/src/PWMSP001/subdir.mk
-include Dave/Generated/src/NVIC_SCU001/subdir.mk
-include Dave/Generated/src/NVIC002/subdir.mk
-include Dave/Generated/src/LMM001/subdir.mk
-include Dave/Generated/src/LIBS/subdir.mk
-include Dave/Generated/src/IO002/subdir.mk
-include Dave/Generated/src/I2C001/subdir.mk
-include Dave/Generated/src/GMM001/subdir.mk
-include Dave/Generated/src/ERU002/subdir.mk
-include Dave/Generated/src/ERU001/subdir.mk
-include Dave/Generated/src/DAVESupport/subdir.mk
-include Dave/Generated/src/CLK001/subdir.mk
-include Dave/Generated/src/CCU4GLOBAL/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
SECONDARY_FLASH += \
CORE_Larix_V1.0.hex \

SECONDARY_LIST += \
CORE_Larix_V1.0.lst \

SECONDARY_SIZE += \
CORE_Larix_V1.0.siz \


# All Target
all: CORE_Larix_V1.0.elf secondary-outputs

# Tool invocations
CORE_Larix_V1.0.elf: $(OBJS) ../CORE_Larix_V1.0.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM-GCC C Linker'
	"C:\DAVE-3.1.10\ARM-GCC/bin/arm-none-eabi-gcc" -T"../CORE_Larix_V1.0.ld" -nostartfiles -L"C:\DAVE-3.1.10\eclipse\/../CMSIS/Infineon/Lib" -L"C:\DAVE-3.1.10\eclipse\/../Examples/Lib" -L"C:\DAVE-3.1.10\eclipse\/../emWin/Start/GUI" -L"C:\DAVE-3.1.10\CMSIS\Lib\GCC" -L"C:\DAVE-3.1.10\ARM-GCC\lib\gcc\arm-none-eabi\4.7.4\include" -Wl,-Map,"CORE_Larix_V1.0.map" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "CORE_Larix_V1.0.elf" "@makefile.rsp" $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

CORE_Larix_V1.0.hex: CORE_Larix_V1.0.elf
	@echo 'Invoking: ARM-GCC Create Flash Image'
	"C:\DAVE-3.1.10\ARM-GCC/bin/arm-none-eabi-objcopy" -O ihex "CORE_Larix_V1.0.elf"  "CORE_Larix_V1.0.hex"
	@echo 'Finished building: $@'
	@echo ' '

CORE_Larix_V1.0.lst: CORE_Larix_V1.0.elf
	@echo 'Invoking: ARM-GCC Create Listing'
	"C:\DAVE-3.1.10\ARM-GCC/bin/arm-none-eabi-objdump" -h -S "CORE_Larix_V1.0.elf" > "CORE_Larix_V1.0.lst"
	@echo 'Finished building: $@'
	@echo ' '

CORE_Larix_V1.0.siz: CORE_Larix_V1.0.elf
	@echo 'Invoking: ARM-GCC Print Size'
	"C:\DAVE-3.1.10\ARM-GCC/bin/arm-none-eabi-size"  --format=berkeley CORE_Larix_V1.0.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(SECONDARY_SIZE)$(C_DEPS)$(SECONDARY_FLASH)$(S_DEPS)$(ARM_GCC_FOR_XMC_LINKER_OUTPUT_TYPE_OUTPUTS)$(SECONDARY_LIST)
	-$(RM) _Quadrocopter/_HAL/I2C/I2Cdev.o _Quadrocopter/_HAL/Delay/util.o _Quadrocopter/Sensors/MPU9X50/MPU9150.o _Quadrocopter/Sensors/MPU9X50/Filter/QuaternionFilters.o _Quadrocopter/Sensors/MPU9X50/Filter/kalman.o _Quadrocopter/RemoteControl/RCReceive.o _Quadrocopter/DaisyChain/DaisyChain.o _Quadrocopter/Attitude_Control/AttitudeController.o Startup/startup_XMC4500.o Startup/system_XMC4500.o Main.o Lib/System_LibcStubs.o Dave/Generated/src/USBVC001/Descriptors.o Dave/Generated/src/USBVC001/USBVC001_Conf.o Dave/Generated/src/USBVC001/usbvc001.o Dave/Generated/src/USBLD001/usbld001_Conf.o Dave/Generated/src/USBLD001/usbld001_delay.o Dave/Generated/src/USBLD001/dwc_common_port/dwc_common_linux.o Dave/Generated/src/USBLD001/driver/dwc_otg_adp.o Dave/Generated/src/USBLD001/driver/dwc_otg_cil.o Dave/Generated/src/USBLD001/driver/dwc_otg_cil_intr.o Dave/Generated/src/USBLD001/driver/dwc_otg_hcd.o Dave/Generated/src/USBLD001/driver/dwc_otg_hcd_ddma.o Dave/Generated/src/USBLD001/driver/dwc_otg_hcd_intr.o Dave/Generated/src/USBLD001/driver/dwc_otg_hcd_queue.o Dave/Generated/src/USBLD001/driver/dwc_otg_pcd.o Dave/Generated/src/USBLD001/driver/dwc_otg_pcd_intr.o Dave/Generated/src/USBCORE001/usbcore001.o Dave/Generated/src/USBCORE001/usbcore001_Conf.o Dave/Generated/src/USBCORE001/usbcore001_device.o Dave/Generated/src/USBCORE001/usbcore001_host.o Dave/Generated/src/USBCDC001/Drivers/USB/Core/USBTask.o Dave/Generated/src/USBCDC001/Drivers/USB/Class/Device/CDC.o Dave/Generated/src/UART001/UART001.o Dave/Generated/src/UART001/UART001_Conf.o Dave/Generated/src/SYSTM001/SYSTM001.o Dave/Generated/src/SLTHA003/SLTHA003.o Dave/Generated/src/SLTHA003/SLTHA003_Conf.o Dave/Generated/src/RTC001/RTC001.o Dave/Generated/src/RTC001/RTC001_Conf.o Dave/Generated/src/RESET001/RESET001.o Dave/Generated/src/PWMSP001/PWMSP001.o Dave/Generated/src/PWMSP001/PWMSP001_Conf.o Dave/Generated/src/NVIC_SCU001/NVIC_SCU001.o Dave/Generated/src/NVIC002/NVIC002.o 
	-$(RM) Dave/Generated/src/NVIC002/NVIC002_Conf.o Dave/Generated/src/LMM001/LMM001.o Dave/Generated/src/LMM001/LMM001_Conf.o Dave/Generated/src/LIBS/CCU8PWMLIB.o Dave/Generated/src/LIBS/MOTORLIB.o Dave/Generated/src/IO002/IO002.o Dave/Generated/src/IO002/IO002_Conf.o Dave/Generated/src/I2C001/I2C001.o Dave/Generated/src/I2C001/I2C001_Conf.o Dave/Generated/src/GMM001/GMM001.o Dave/Generated/src/GMM001/GMM001_Conf.o Dave/Generated/src/ERU002/ERU002.o Dave/Generated/src/ERU002/ERU002_Conf.o Dave/Generated/src/ERU001/ERU001.o Dave/Generated/src/ERU001/ERU001_Conf.o Dave/Generated/src/DAVESupport/DAVE3.o Dave/Generated/src/DAVESupport/MULTIPLEXER.o Dave/Generated/src/CLK001/CLK001.o Dave/Generated/src/CCU4GLOBAL/CCU4GLOBAL.o Dave/Generated/src/CCU4GLOBAL/CCU4GLOBAL_Conf.o  CORE_Larix_V1.0.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
