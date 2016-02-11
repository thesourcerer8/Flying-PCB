################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Dave/Generated/src/USBLD001/driver/dwc_otg_adp.c \
../Dave/Generated/src/USBLD001/driver/dwc_otg_cil.c \
../Dave/Generated/src/USBLD001/driver/dwc_otg_cil_intr.c \
../Dave/Generated/src/USBLD001/driver/dwc_otg_hcd.c \
../Dave/Generated/src/USBLD001/driver/dwc_otg_hcd_ddma.c \
../Dave/Generated/src/USBLD001/driver/dwc_otg_hcd_intr.c \
../Dave/Generated/src/USBLD001/driver/dwc_otg_hcd_queue.c \
../Dave/Generated/src/USBLD001/driver/dwc_otg_pcd.c \
../Dave/Generated/src/USBLD001/driver/dwc_otg_pcd_intr.c 

OBJS += \
./Dave/Generated/src/USBLD001/driver/dwc_otg_adp.o \
./Dave/Generated/src/USBLD001/driver/dwc_otg_cil.o \
./Dave/Generated/src/USBLD001/driver/dwc_otg_cil_intr.o \
./Dave/Generated/src/USBLD001/driver/dwc_otg_hcd.o \
./Dave/Generated/src/USBLD001/driver/dwc_otg_hcd_ddma.o \
./Dave/Generated/src/USBLD001/driver/dwc_otg_hcd_intr.o \
./Dave/Generated/src/USBLD001/driver/dwc_otg_hcd_queue.o \
./Dave/Generated/src/USBLD001/driver/dwc_otg_pcd.o \
./Dave/Generated/src/USBLD001/driver/dwc_otg_pcd_intr.o 

C_DEPS += \
./Dave/Generated/src/USBLD001/driver/dwc_otg_adp.d \
./Dave/Generated/src/USBLD001/driver/dwc_otg_cil.d \
./Dave/Generated/src/USBLD001/driver/dwc_otg_cil_intr.d \
./Dave/Generated/src/USBLD001/driver/dwc_otg_hcd.d \
./Dave/Generated/src/USBLD001/driver/dwc_otg_hcd_ddma.d \
./Dave/Generated/src/USBLD001/driver/dwc_otg_hcd_intr.d \
./Dave/Generated/src/USBLD001/driver/dwc_otg_hcd_queue.d \
./Dave/Generated/src/USBLD001/driver/dwc_otg_pcd.d \
./Dave/Generated/src/USBLD001/driver/dwc_otg_pcd_intr.d 


# Each subdirectory must supply rules for building sources it contributes
Dave/Generated/src/USBLD001/driver/%.o: ../Dave/Generated/src/USBLD001/driver/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM-GCC C Compiler'
	"C:\DAVE-3.1.10\ARM-GCC/bin/arm-none-eabi-gcc" -DDAVE_CE -DARM_MATH_CM4 -D__FPU_PRESENT -DUC_ID=4503003 -I"C:\DAVE-3.1.10\eclipse\/../CMSIS/Include" -I"C:\DAVE-3.1.10\eclipse\/../CMSIS/Infineon/Include" -I"C:\DAVE-3.1.10\ARM-GCC/arm-none-eabi/include" -I"C:\DAVE-3.1.10\eclipse\/../emWin/Start/GUI/inc" -I"C:\DAVE-3.1.10\eclipse\/../CMSIS/Infineon/XMC4500_series/Include" -I"C:\DAVE_WorkSpace\20\CORE_Larix_V1.0\Dave\Generated\inc\DAVESupport" -I"C:\DAVE_WorkSpace\20\CORE_Larix_V1.0\Dave\Generated\inc\LIBS" -I"C:\DAVE_WorkSpace\20\CORE_Larix_V1.0\Dave\Generated\inc\MOTORLIBS" -I"C:\DAVE_WorkSpace\20\CORE_Larix_V1.0\Dave\Generated\src\USBCDC001\Drivers\USB\Core" -I"C:\DAVE_WorkSpace\20\CORE_Larix_V1.0\Dave\Generated\src\USBCDC001\Drivers\USB" -I"C:\DAVE_WorkSpace\20\CORE_Larix_V1.0\Dave\Generated\src\USBCDC001\Drivers\USB\Class" -O0 -ffunction-sections -Wall -std=gnu99 -mfloat-abi=softfp -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d) $@" -mcpu=cortex-m4 -mfpu=fpv4-sp-d16 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


