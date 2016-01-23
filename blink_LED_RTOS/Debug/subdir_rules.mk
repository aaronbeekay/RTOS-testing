################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Each subdirectory must supply rules for building sources it contributes
configPkg/linker.cmd: ../app.cfg
	@echo 'Building file: $<'
	@echo 'Invoking: XDCtools'
	"C:/ti/xdctools_3_31_01_33_core/xs" --xdcpath="C:/ti/tirtos_c2000_2_12_01_33/packages;C:/ti/tirtos_c2000_2_12_01_33/products/bios_6_41_04_54/packages;C:/ti/tirtos_c2000_2_12_01_33/products/ipc_3_30_01_12/packages;C:/ti/tirtos_c2000_2_12_01_33/products/ndk_2_24_02_31/packages;C:/ti/tirtos_c2000_2_12_01_33/products/uia_2_00_02_39/packages;C:/ti/ccsv6/ccs_base;" xdc.tools.configuro -o configPkg -t ti.targets.C28_large -p ti.platforms.tms320x28:TMS320F28035 -r release -c "C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_6.4.6" --compileOptions "-g --optimize_with_debug" "$<"
	@echo 'Finished building: $<'
	@echo ' '

configPkg/compiler.opt: | configPkg/linker.cmd
configPkg/: | configPkg/linker.cmd

main.obj: ../main.c $(GEN_OPTS) $(GEN_HDRS)
	@echo 'Building file: $<'
	@echo 'Invoking: C2000 Compiler'
	"C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_6.4.6/bin/cl2000" -v28 -ml -mt --cla_support=cla0 --include_path="C:/ti/ccsv6/tools/compiler/ti-cgt-c2000_6.4.6/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_common/include" --include_path="C:/ti/controlSUITE/device_support/f2803x/v130/DSP2803x_headers/include" -g --define=xdc__strict --diag_warning=225 --display_error_number --diag_wrap=off --preproc_with_compile --preproc_dependency="main.pp" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: $<'
	@echo ' '


