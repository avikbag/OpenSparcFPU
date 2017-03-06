source ./.synopsys_dc.setup

#read in the verilog file
#read_verilog "../dc_compiler/unmapped/fpu.v"

#set top module name
#current_design fpu
#link_design

read_milkyway -library ../ic_compiler/fpu.mw fpu
read_parasitics -format PARA

create_clock gclk -period 6
set_clock_transition 0.04 gclk
set_clock_uncertainty 0.1 gclk
set_clock_latency -max 0.4 gclk

#read_parasitics -format sbpf "../ic_compiler/output/res_parasitics.sbpf.max"

update_power

#perform timing reports
report_timing > ./reports/timing.report
report_power -nosplit > ./reports/power.report
report_analysis_coverage > ./reports/analysis.report

quit
