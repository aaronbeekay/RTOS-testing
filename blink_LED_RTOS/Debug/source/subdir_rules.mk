################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
source/DSP2803x_CodeStartBranch.obj: ../source/DSP2803x_CodeStartBranch.asm $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_6.4.6/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_6.4.6/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_headers/include" -g --define=xdc__strict --diag_warning=225 --display_error_number --diag_wrap=off --preproc_with_compile --preproc_dependency="source/DSP2803x_CodeStartBranch.pp" --obj_directory="source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/DSP2803x_CpuTimers.obj: ../source/DSP2803x_CpuTimers.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_6.4.6/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_6.4.6/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_headers/include" -g --define=xdc__strict --diag_warning=225 --display_error_number --diag_wrap=off --preproc_with_compile --preproc_dependency="source/DSP2803x_CpuTimers.pp" --obj_directory="source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/DSP2803x_GlobalVariableDefs.obj: ../source/DSP2803x_GlobalVariableDefs.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_6.4.6/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_6.4.6/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_headers/include" -g --define=xdc__strict --diag_warning=225 --display_error_number --diag_wrap=off --preproc_with_compile --preproc_dependency="source/DSP2803x_GlobalVariableDefs.pp" --obj_directory="source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/DSP2803x_SysCtrl.obj: ../source/DSP2803x_SysCtrl.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_6.4.6/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_6.4.6/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_headers/include" -g --define=xdc__strict --diag_warning=225 --display_error_number --diag_wrap=off --preproc_with_compile --preproc_dependency="source/DSP2803x_SysCtrl.pp" --obj_directory="source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/DSP2803x_usDelay.obj: ../source/DSP2803x_usDelay.asm $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_6.4.6/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_6.4.6/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_headers/include" -g --define=xdc__strict --diag_warning=225 --display_error_number --diag_wrap=off --preproc_with_compile --preproc_dependency="source/DSP2803x_usDelay.pp" --obj_directory="source" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


