################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Startup/subdir.mk
-include Lib/subdir.mk
-include Dave/Generated/src/UART001/subdir.mk
-include Dave/Generated/src/NVIC002/subdir.mk
-include Dave/Generated/src/MATHLIBS/subdir.mk
-include Dave/Generated/src/LIBS/subdir.mk
-include Dave/Generated/src/IO004/subdir.mk
-include Dave/Generated/src/DAVESupport/subdir.mk
-include Dave/Generated/src/CLK002/subdir.mk
-include Dave/Generated/src/CCU8GLOBAL/subdir.mk
-include Dave/Generated/src/CCU4GLOBAL/subdir.mk
-include Dave/Generated/src/ADCGLOB001/subdir.mk
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
ESC_Pinus_XMC1302_V1.2.hex \

SECONDARY_LIST += \
ESC_Pinus_XMC1302_V1.2.lst \

SECONDARY_SIZE += \
ESC_Pinus_XMC1302_V1.2.siz \


# All Target
all: ESC_Pinus_XMC1302_V1.2.elf secondary-outputs

# Tool invocations
ESC_Pinus_XMC1302_V1.2.elf: $(OBJS) ../ESC_Pinus_XMC1302_V1.2.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM-GCC C Linker'
	"C:\DAVE-3.1.10\ARM-GCC/bin/arm-none-eabi-gcc" -T"../ESC_Pinus_XMC1302_V1.2.ld" -nostartfiles -L"C:\DAVE-3.1.10\eclipse\/../CMSIS/Infineon/Lib" -L"C:\DAVE-3.1.10\eclipse\/../Examples/Lib" -L"C:\DAVE-3.1.10\eclipse\/../emWin/Start/GUI" -Wl,-Map,"ESC_Pinus_XMC1302_V1.2.map" -mcpu=cortex-m0 -mthumb -g3 -gdwarf-2 -o "ESC_Pinus_XMC1302_V1.2.elf" "@makefile.rsp" $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

ESC_Pinus_XMC1302_V1.2.hex: ESC_Pinus_XMC1302_V1.2.elf
	@echo 'Invoking: ARM-GCC Create Flash Image'
	"C:\DAVE-3.1.10\ARM-GCC/bin/arm-none-eabi-objcopy" -O ihex "ESC_Pinus_XMC1302_V1.2.elf"  "ESC_Pinus_XMC1302_V1.2.hex"
	@echo 'Finished building: $@'
	@echo ' '

ESC_Pinus_XMC1302_V1.2.lst: ESC_Pinus_XMC1302_V1.2.elf
	@echo 'Invoking: ARM-GCC Create Listing'
	"C:\DAVE-3.1.10\ARM-GCC/bin/arm-none-eabi-objdump" -h -S "ESC_Pinus_XMC1302_V1.2.elf" > "ESC_Pinus_XMC1302_V1.2.lst"
	@echo 'Finished building: $@'
	@echo ' '

ESC_Pinus_XMC1302_V1.2.siz: ESC_Pinus_XMC1302_V1.2.elf
	@echo 'Invoking: ARM-GCC Print Size'
	"C:\DAVE-3.1.10\ARM-GCC/bin/arm-none-eabi-size"  --format=berkeley ESC_Pinus_XMC1302_V1.2.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(SECONDARY_SIZE)$(OBJS)$(C_DEPS)$(SECONDARY_FLASH)$(S_DEPS)$(ARM_GCC_FOR_XMC_LINKER_OUTPUT_TYPE_OUTPUTS)$(SECONDARY_LIST) ESC_Pinus_XMC1302_V1.2.elf
	-@echo ' '

secondary-outputs: $(SECONDARY_FLASH) $(SECONDARY_LIST) $(SECONDARY_SIZE)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
