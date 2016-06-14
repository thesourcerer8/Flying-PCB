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
-include _Quadrocopter/Sensors/DPS310/subdir.mk
-include _Quadrocopter/RadioControl/Bluetooth_Protocol/subdir.mk
-include _Quadrocopter/RadioControl/subdir.mk
-include _Quadrocopter/MCI_DaisyChain/subdir.mk
-include _Quadrocopter/Attitude_Control/subdir.mk
-include Startup/subdir.mk
-include Lib/subdir.mk
-include Dave/Generated/src/USBD_VCOM/vc/subdir.mk
-include Dave/Generated/src/USBD_VCOM/cdc/Device/subdir.mk
-include Dave/Generated/src/USBD_LLD/driver/subdir.mk
-include Dave/Generated/src/USBD/usbd/subdir.mk
-include Dave/Generated/src/USBD/usb/Core/subdir.mk
-include Dave/Generated/src/UART001/subdir.mk
-include Dave/Generated/src/SYSTM001/subdir.mk
-include Dave/Generated/src/RESET001/subdir.mk
-include Dave/Generated/src/PWMSP003/subdir.mk
-include Dave/Generated/src/PWMSP001/subdir.mk
-include Dave/Generated/src/PWMMP001/subdir.mk
-include Dave/Generated/src/NVIC002/subdir.mk
-include Dave/Generated/src/LIBS/subdir.mk
-include Dave/Generated/src/IO002/subdir.mk
-include Dave/Generated/src/I2C001/subdir.mk
-include Dave/Generated/src/ERU002/subdir.mk
-include Dave/Generated/src/ERU001/subdir.mk
-include Dave/Generated/src/DAVESupport/subdir.mk
-include Dave/Generated/src/CLK001/subdir.mk
-include Dave/Generated/src/CCU8GLOBAL/subdir.mk
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
LARIX_Software_150907.hex \

SECONDARY_LIST += \
LARIX_Software_150907.lst \

SECONDARY_SIZE += \
LARIX_Software_150907.siz \


# All Target
all: LARIX_Software_150907.elf secondary-outputs

# Tool invocations
LARIX_Software_150907.elf: $(OBJS) ../LARIX_Software_150907.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM-GCC C Linker'
	"C:\DAVE-3.1.10\ARM-GCC/bin/arm-none-eabi-gcc" -T"../LARIX_Software_150907.ld" -nostartfiles -L"C:\DAVE-3.1.10\eclipse\/../CMSIS/Infineon/Lib" -L"C:\DAVE-3.1.10\CMSIS\Lib\GCC" -L"C:\DAVE-3.1.10\ARM-GCC\lib\gcc\arm-none-eabi\4.7.4\include" -L"C:\DAVE-3.1.10\eclipse\/../Examples/Lib" -L"C:\DAVE-3.1.10\eclipse\/../emWin/Start/GUI" -Wl,-Map,"LARIX_Software_150907.map" -mcpu=cortex-m4 -mthumb -g3 -gdwarf-2 -o "LARIX_Software_150907.elf" "@makefile.rsp" $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

LARIX_Software_150907.hex: LARIX_Software_150907.elf
	@echo 'Invoking: ARM-GCC Create Flash Image'
	"C:\DAVE-3.1.10\ARM-GCC/bin/arm-none-eabi-objcopy" -O ihex "LARIX_Software_150907.elf"  "LARIX_Software_150907.hex"
	@echo 'Finished building: $@'
	@echo ' '

LARIX_Software_150907.lst: LARIX_Software_150907.elf
	@echo 'Invoking: ARM-GCC Create Listing'
	"C:\DAVE-3.1.10\ARM-GCC/bin/arm-none-eabi-objdump" -h -S "LARIX_Software_150907.elf" > "LARIX_Software_150907.lst"
	@echo 'Finished building: $@'
	@echo ' '

LARIX_Software_150907.siz: LARIX_Software_150907.elf
	@echo 'Invoking: ARM-GCC Print Size'
	"C:\DAVE-3.1.10\ARM-GCC/bin/arm-none-eabi-size"  --format=berkeley LARIX_Software_150907.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(SECONDARY_SIZE)$(C_DEPS)$(SECONDARY_FLASH)$(S_DEPS)$(ARM_GCC_FOR_XMC_LINKER_OUTPUT_TYPE_OUTPUTS)$(SECONDARY_LIST)
	-$(RM) _Quadrocopter/_HAL/I2C/I2Cdev.o _Quadrocopter/_HAL/Delay/util.o _Quadrocopter/Sensors/MPU9X50/MPU9150.o _Quadrocopter/Sensors/MPU9X50/Filter/QuaternionFilters.o _Quadrocopter/Sensors/MPU9X50/Filter/kalman.o _Quadrocopter/Sensors/DPS310/DPS310.o _Quadrocopter/RadioControl/RCReceive.o _Quadrocopter/RadioControl/Bluetooth_Protocol/BluetoothProtocol.o _Quadrocopter/MCI_DaisyChain/DaisyChain.o _Quadrocopter/Attitude_Control/AttitudeController.o Startup/startup_XMC4500.o Startup/system_XMC4500.o Main.o Lib/System_LibcStubs.o Dave/Generated/src/USBD_VCOM/vc/Descriptors.o Dave/Generated/src/USBD_VCOM/vc/usbd_vcom.o Dave/Generated/src/USBD_VCOM/cdc/Device/CDCClassDevice.o Dave/Generated/src/USBD_LLD/driver/xmc4_usb.o Dave/Generated/src/USBD/usbd/USBD_EndpointStream_XMC4000.o Dave/Generated/src/USBD/usbd/USBD_Endpoint_XMC4000.o Dave/Generated/src/USBD/usbd/usbd.o Dave/Generated/src/USBD/usbd/usbd_config.o Dave/Generated/src/USBD/usb/Core/USBTask.o Dave/Generated/src/UART001/UART001.o Dave/Generated/src/UART001/UART001_Conf.o Dave/Generated/src/SYSTM001/SYSTM001.o Dave/Generated/src/RESET001/RESET001.o Dave/Generated/src/PWMSP003/PWMSP003.o Dave/Generated/src/PWMSP003/PWMSP003_Conf.o Dave/Generated/src/PWMSP001/PWMSP001.o Dave/Generated/src/PWMSP001/PWMSP001_Conf.o Dave/Generated/src/PWMMP001/PWMMP001.o Dave/Generated/src/PWMMP001/PWMMP001_Conf.o Dave/Generated/src/NVIC002/NVIC002.o Dave/Generated/src/NVIC002/NVIC002_Conf.o Dave/Generated/src/LIBS/CCU8PWMLIB.o Dave/Generated/src/LIBS/MOTORLIB.o Dave/Generated/src/IO002/IO002.o Dave/Generated/src/IO002/IO002_Conf.o Dave/Generated/src/I2C001/I2C001.o Dave/Generated/src/I2C001/I2C001_Conf.o Dave/Generated/src/ERU002/ERU002.o Dave/Generated/src/ERU002/ERU002_Conf.o Dave/Generated/src/ERU001/ERU001.o Dave/Generated/src/ERU001/ERU001_Conf.o Dave/Generated/src/DAVESupport/DAVE3.o Dave/Generated/src/DAVESupport/MULTIPLEXER.o Dave/Generated/src/CLK001/CLK001.o 
	-$(RM) Dave/Generated/src/CCU8GLOBAL/CCU8GLOBAL.o Dave/Generated/src/CCU8GLOBAL/CCU8GLOBAL_Conf.o Dave/Generated/src/CCU4GLOBAL/CCU4GLOBAL.o Dave/Generated/src/CCU4GLOBAL/CCU4GLOBAL_Conf.o  LARIX_Software_150907.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
