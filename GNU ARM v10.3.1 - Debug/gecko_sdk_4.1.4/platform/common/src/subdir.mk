################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk/platform/common/src/sl_assert.c 

OBJS += \
./gecko_sdk_4.1.4/platform/common/src/sl_assert.o 

C_DEPS += \
./gecko_sdk_4.1.4/platform/common/src/sl_assert.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.1.4/platform/common/src/sl_assert.o: /Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk/platform/common/src/sl_assert.c gecko_sdk_4.1.4/platform/common/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFM32GG11B820F2048GL192=1' '-DSL_BOARD_NAME="BRD2204C"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/FatFS_inc" -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/config" -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/autogen" -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG11B/Include" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.1.4/platform/common/src/sl_assert.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


