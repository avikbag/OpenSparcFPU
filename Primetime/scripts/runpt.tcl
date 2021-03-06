source ./.synopsys_dc.setup

start_gui

read_milkyway -library ../ic_compiler/fpu.mw fpu
read_parasitics -format PARA

create_clock gclk -period 6
set_clock_transition 0.04 gclk
set_clock_uncertainty 0.1 gclk
set_clock_latency -max 0.4 gclk

#report_crpr

update_power


#perform timing reports
report_timing > ./reports/timing.report
report_power -nosplit > ./reports/power.report
report_analysis_coverage > ./reports/analysis.report

#quit
