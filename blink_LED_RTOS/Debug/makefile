################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

CG_TOOL_ROOT := C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_6.4.6

GEN_OPTS__FLAG := --cmd_file="configPkg/compiler.opt"
GEN_CMDS__FLAG := -l"configPkg/linker.cmd"

ORDERED_OBJS += \
"../TMS320F28035.cmd" \
"./main.obj" \
"./source/DSP2803x_CodeStartBranch.obj" \
"./source/DSP2803x_CpuTimers.obj" \
"./source/DSP2803x_GlobalVariableDefs.obj" \
"./source/DSP2803x_SysCtrl.obj" \
"./source/DSP2803x_usDelay.obj" \
"../DSP2803x_Headers_BIOS.cmd" \
$(GEN_CMDS__FLAG) \
-l"libc.a" \

-include ../makefile.init

RM := DEL /F
RMDIR := RMDIR /S/Q

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir_vars.mk
-include source/subdir_vars.mk
-include subdir_rules.mk
-include source/subdir_rules.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(S62_DEPS)),)
-include $(S62_DEPS)
endif
ifneq ($(strip $(C64_DEPS)),)
-include $(C64_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(S55_DEPS)),)
-include $(S55_DEPS)
endif
ifneq ($(strip $(C67_DEPS)),)
-include $(C67_DEPS)
endif
ifneq ($(strip $(CLA_DEPS)),)
-include $(CLA_DEPS)
endif
ifneq ($(strip $(C??_DEPS)),)
-include $(C??_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(S??_DEPS)),)
-include $(S??_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(C62_DEPS)),)
-include $(C62_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(K_DEPS)),)
-include $(K_DEPS)
endif
ifneq ($(strip $(C43_DEPS)),)
-include $(C43_DEPS)
endif
ifneq ($(strip $(INO_DEPS)),)
-include $(INO_DEPS)
endif
ifneq ($(strip $(S67_DEPS)),)
-include $(S67_DEPS)
endif
ifneq ($(strip $(SA_DEPS)),)
-include $(SA_DEPS)
endif
ifneq ($(strip $(S43_DEPS)),)
-include $(S43_DEPS)
endif
ifneq ($(strip $(OPT_DEPS)),)
-include $(OPT_DEPS)
endif
ifneq ($(strip $(PDE_DEPS)),)
-include $(PDE_DEPS)
endif
ifneq ($(strip $(S64_DEPS)),)
-include $(S64_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(C55_DEPS)),)
-include $(C55_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXE_OUTPUTS += \
blink_LED_RTOS.out \

EXE_OUTPUTS__QUOTED += \
"blink_LED_RTOS.out" \

BIN_OUTPUTS += \
blink_LED_RTOS.hex \

BIN_OUTPUTS__QUOTED += \
"blink_LED_RTOS.hex" \


# All Target
all: blink_LED_RTOS.out

# Tool invocations
blink_LED_RTOS.out: $(OBJS) $(CMD_SRCS) $(GEN_CMDS)
	@echo 'Building target: $@'
	@echo 'Invoking: C2000 Linker'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_6.4.6/bin/cl2000" -v28 -ml -mt --cla_support=cla0 -g --define=xdc__strict --diag_warning=225 --display_error_number --diag_wrap=off -z -m"blink_LED_RTOS.map" --stack_size=0x300 --warn_sections -i"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_6.4.6/lib" -i"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_6.4.6/include" --reread_libs --display_error_number --diag_wrap=off --xml_link_info="blink_LED_RTOS_linkInfo.xml" --rom_model -o "blink_LED_RTOS.out" $(ORDERED_OBJS)
	@echo 'Finished building target: $@'
	@echo ' '

blink_LED_RTOS.hex: $(EXE_OUTPUTS)
	@echo 'Invoking: C2000 Hex Utility'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_6.4.6/bin/hex2000"  -o "blink_LED_RTOS.hex" $(EXE_OUTPUTS__QUOTED)
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(GEN_MISC_FILES__QUOTED)$(EXE_OUTPUTS__QUOTED)$(GEN_FILES__QUOTED)$(BIN_OUTPUTS__QUOTED)$(GEN_OPTS__QUOTED)$(GEN_CMDS__QUOTED)
	-$(RMDIR) $(GEN_MISC_DIRS__QUOTED)
	-$(RM) "main.pp" "source\DSP2803x_CpuTimers.pp" "source\DSP2803x_GlobalVariableDefs.pp" "source\DSP2803x_SysCtrl.pp" 
	-$(RM) "main.obj" "source\DSP2803x_CodeStartBranch.obj" "source\DSP2803x_CpuTimers.obj" "source\DSP2803x_GlobalVariableDefs.obj" "source\DSP2803x_SysCtrl.obj" "source\DSP2803x_usDelay.obj" 
	-$(RM) "source\DSP2803x_CodeStartBranch.pp" "source\DSP2803x_usDelay.pp" 
	-@echo 'Finished clean'
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets

