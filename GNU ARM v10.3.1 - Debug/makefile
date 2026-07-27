################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include gecko_sdk_4.1.4/platform/service/system/src/subdir.mk
-include gecko_sdk_4.1.4/platform/service/sleeptimer/src/subdir.mk
-include gecko_sdk_4.1.4/platform/service/device_init/src/subdir.mk
-include gecko_sdk_4.1.4/platform/emlib/src/subdir.mk
-include gecko_sdk_4.1.4/platform/common/toolchain/src/subdir.mk
-include gecko_sdk_4.1.4/platform/common/src/subdir.mk
-include gecko_sdk_4.1.4/platform/Device/SiliconLabs/EFM32GG11B/Source/subdir.mk
-include gecko_sdk_4.1.4/hardware/board/src/subdir.mk
-include autogen/subdir.mk
-include FatFS/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := simulated_sensors_pressure_and_hall
BUILD_ARTIFACT_EXTENSION := axf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: main-build

# Main-build Target
main-build: simulated_sensors_pressure_and_hall.axf

# Tool invocations
simulated_sensors_pressure_and_hall.axf: $(OBJS) $(USER_OBJS) makefile objects.mk $(OPTIONAL_TOOL_DEPS)
	@echo 'Building target: $@'
	@echo 'Invoking: GNU ARM C Linker'
	arm-none-eabi-gcc -g -gdwarf-2 -mcpu=cortex-m4 -mthumb -T "/Users/aliawolken/Documents/alia personal github/simulated_sensors_pressure_and_hall/autogen/linkerfile.ld" -Xlinker --gc-sections -Xlinker -Map="simulated_sensors_pressure_and_hall.map" -mfpu=fpv4-sp-d16 -mfloat-abi=softfp --specs=nano.specs -o simulated_sensors_pressure_and_hall.axf -Wl,--start-group "./FatFS/diskio.o" "./FatFS/ff.o" "./FatFS/syscall.o" "./FatFS/unicode.o" "./app.o" "./main.o" "./microsd.o" "./mod_sd_sim.o" "./autogen/sl_board_default_init.o" "./autogen/sl_device_init_clocks.o" "./autogen/sl_event_handler.o" "./gecko_sdk_4.1.4/hardware/board/src/sl_board_control_gpio.o" "./gecko_sdk_4.1.4/hardware/board/src/sl_board_init.o" "./gecko_sdk_4.1.4/platform/Device/SiliconLabs/EFM32GG11B/Source/startup_efm32gg11b.o" "./gecko_sdk_4.1.4/platform/Device/SiliconLabs/EFM32GG11B/Source/system_efm32gg11b.o" "./gecko_sdk_4.1.4/platform/common/src/sl_assert.o" "./gecko_sdk_4.1.4/platform/common/toolchain/src/sl_memory.o" "./gecko_sdk_4.1.4/platform/emlib/src/em_cmu.o" "./gecko_sdk_4.1.4/platform/emlib/src/em_core.o" "./gecko_sdk_4.1.4/platform/emlib/src/em_emu.o" "./gecko_sdk_4.1.4/platform/emlib/src/em_gpio.o" "./gecko_sdk_4.1.4/platform/emlib/src/em_msc.o" "./gecko_sdk_4.1.4/platform/emlib/src/em_rtc.o" "./gecko_sdk_4.1.4/platform/emlib/src/em_rtcc.o" "./gecko_sdk_4.1.4/platform/emlib/src/em_system.o" "./gecko_sdk_4.1.4/platform/service/device_init/src/sl_device_init_dcdc_s1.o" "./gecko_sdk_4.1.4/platform/service/device_init/src/sl_device_init_emu_s1.o" "./gecko_sdk_4.1.4/platform/service/device_init/src/sl_device_init_hfxo_s1.o" "./gecko_sdk_4.1.4/platform/service/device_init/src/sl_device_init_lfxo_s1.o" "./gecko_sdk_4.1.4/platform/service/device_init/src/sl_device_init_nvic.o" "./gecko_sdk_4.1.4/platform/service/sleeptimer/src/sl_sleeptimer.o" "./gecko_sdk_4.1.4/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtc.o" "./gecko_sdk_4.1.4/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o" "./gecko_sdk_4.1.4/platform/service/system/src/sl_system_init.o" "./gecko_sdk_4.1.4/platform/service/system/src/sl_system_process_action.o" -lgcc -lc -lm -lnosys -Wl,--end-group -Wl,--start-group -lgcc -lc -lnosys -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

	@echo 'Building out file: simulated_sensors_pressure_and_hall.out'
	arm-none-eabi-objcopy "simulated_sensors_pressure_and_hall.axf" "simulated_sensors_pressure_and_hall.out"
	@echo ' '

	@echo 'Building hex file: simulated_sensors_pressure_and_hall.hex'
	arm-none-eabi-objcopy -O ihex "simulated_sensors_pressure_and_hall.axf" "simulated_sensors_pressure_and_hall.hex"
	@echo ' '

	@echo 'Building bin file: simulated_sensors_pressure_and_hall.bin'
	arm-none-eabi-objcopy -O binary "simulated_sensors_pressure_and_hall.axf" "simulated_sensors_pressure_and_hall.bin"
	@echo ' '

	@echo 'Building s37 file: simulated_sensors_pressure_and_hall.s37'
	arm-none-eabi-objcopy -O srec "simulated_sensors_pressure_and_hall.axf" "simulated_sensors_pressure_and_hall.s37"
	@echo ' '

	@echo 'Running size tool'
	arm-none-eabi-size "simulated_sensors_pressure_and_hall.axf" -A
	@echo ' '

# Other Targets
clean:
	-@$(foreach FILE, $(EXECUTABLES), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(OBJS), $(shell $(RM) $(FILE)) )
	-@$(foreach FILE, $(C_DEPS), $(shell $(RM) $(FILE)) )
	-$(RM) simulated_sensors_pressure_and_hall.axf
	-@echo ' '

.PHONY: all clean dependents main-build

-include ../makefile.targets
