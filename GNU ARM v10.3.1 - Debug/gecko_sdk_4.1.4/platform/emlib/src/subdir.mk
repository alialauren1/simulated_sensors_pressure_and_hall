################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_cmu.c \
/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_core.c \
/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_emu.c \
/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_gpio.c \
/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_msc.c \
/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_rtc.c \
/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_rtcc.c \
/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_system.c \
/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_usart.c 

OBJS += \
./gecko_sdk_4.1.4/platform/emlib/src/em_cmu.o \
./gecko_sdk_4.1.4/platform/emlib/src/em_core.o \
./gecko_sdk_4.1.4/platform/emlib/src/em_emu.o \
./gecko_sdk_4.1.4/platform/emlib/src/em_gpio.o \
./gecko_sdk_4.1.4/platform/emlib/src/em_msc.o \
./gecko_sdk_4.1.4/platform/emlib/src/em_rtc.o \
./gecko_sdk_4.1.4/platform/emlib/src/em_rtcc.o \
./gecko_sdk_4.1.4/platform/emlib/src/em_system.o \
./gecko_sdk_4.1.4/platform/emlib/src/em_usart.o 

C_DEPS += \
./gecko_sdk_4.1.4/platform/emlib/src/em_cmu.d \
./gecko_sdk_4.1.4/platform/emlib/src/em_core.d \
./gecko_sdk_4.1.4/platform/emlib/src/em_emu.d \
./gecko_sdk_4.1.4/platform/emlib/src/em_gpio.d \
./gecko_sdk_4.1.4/platform/emlib/src/em_msc.d \
./gecko_sdk_4.1.4/platform/emlib/src/em_rtc.d \
./gecko_sdk_4.1.4/platform/emlib/src/em_rtcc.d \
./gecko_sdk_4.1.4/platform/emlib/src/em_system.d \
./gecko_sdk_4.1.4/platform/emlib/src/em_usart.d 


# Each subdirectory must supply rules for building sources it contributes
gecko_sdk_4.1.4/platform/emlib/src/em_cmu.o: /Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_cmu.c gecko_sdk_4.1.4/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFM32GG11B820F2048GL192=1' '-DSL_BOARD_NAME="BRD2204C"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/FatFS_inc" -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/config" -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/autogen" -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG11B/Include" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.1.4/platform/emlib/src/em_cmu.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.1.4/platform/emlib/src/em_core.o: /Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_core.c gecko_sdk_4.1.4/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFM32GG11B820F2048GL192=1' '-DSL_BOARD_NAME="BRD2204C"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/FatFS_inc" -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/config" -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/autogen" -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG11B/Include" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.1.4/platform/emlib/src/em_core.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.1.4/platform/emlib/src/em_emu.o: /Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_emu.c gecko_sdk_4.1.4/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFM32GG11B820F2048GL192=1' '-DSL_BOARD_NAME="BRD2204C"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/FatFS_inc" -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/config" -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/autogen" -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG11B/Include" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.1.4/platform/emlib/src/em_emu.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.1.4/platform/emlib/src/em_gpio.o: /Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_gpio.c gecko_sdk_4.1.4/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFM32GG11B820F2048GL192=1' '-DSL_BOARD_NAME="BRD2204C"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/FatFS_inc" -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/config" -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/autogen" -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG11B/Include" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.1.4/platform/emlib/src/em_gpio.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.1.4/platform/emlib/src/em_msc.o: /Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_msc.c gecko_sdk_4.1.4/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFM32GG11B820F2048GL192=1' '-DSL_BOARD_NAME="BRD2204C"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/FatFS_inc" -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/config" -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/autogen" -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG11B/Include" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.1.4/platform/emlib/src/em_msc.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.1.4/platform/emlib/src/em_rtc.o: /Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_rtc.c gecko_sdk_4.1.4/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFM32GG11B820F2048GL192=1' '-DSL_BOARD_NAME="BRD2204C"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/FatFS_inc" -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/config" -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/autogen" -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG11B/Include" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.1.4/platform/emlib/src/em_rtc.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.1.4/platform/emlib/src/em_rtcc.o: /Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_rtcc.c gecko_sdk_4.1.4/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFM32GG11B820F2048GL192=1' '-DSL_BOARD_NAME="BRD2204C"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/FatFS_inc" -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/config" -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/autogen" -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG11B/Include" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.1.4/platform/emlib/src/em_rtcc.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.1.4/platform/emlib/src/em_system.o: /Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_system.c gecko_sdk_4.1.4/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFM32GG11B820F2048GL192=1' '-DSL_BOARD_NAME="BRD2204C"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/FatFS_inc" -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/config" -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/autogen" -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG11B/Include" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.1.4/platform/emlib/src/em_system.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

gecko_sdk_4.1.4/platform/emlib/src/em_usart.o: /Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk/platform/emlib/src/em_usart.c gecko_sdk_4.1.4/platform/emlib/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -std=c99 '-DDEBUG=1' '-DDEBUG_EFM=1' '-DEFM32GG11B820F2048GL192=1' '-DSL_BOARD_NAME="BRD2204C"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/FatFS_inc" -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/config" -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/autogen" -I"/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/Device/SiliconLabs/EFM32GG11B/Include" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/common/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//hardware/board/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/CMSIS/Core/Include" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/device_init/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/emlib/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/iostream/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/common/toolchain/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/system/inc" -I"/Users/aliawolken/SimplicityStudio/SDKs/gecko_sdk//platform/service/sleeptimer/inc" -Os -Wall -Wextra -mno-sched-prolog -fno-builtin -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv4-sp-d16 -mfloat-abi=softfp -c -fmessage-length=0 -MMD -MP -MF"gecko_sdk_4.1.4/platform/emlib/src/em_usart.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


