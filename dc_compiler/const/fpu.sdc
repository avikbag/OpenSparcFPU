###################################################################

# Created by write_sdc on Tue Feb 28 15:59:19 2017

###################################################################
set sdc_version 2.0

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
create_clock [get_ports gclk]  -period 2  -waveform {0 1}
set_clock_latency -max 0.4  [get_clocks gclk]
set_clock_uncertainty 0.1  [get_clocks gclk]
set_clock_transition -max -rise 0.04 [get_clocks gclk]
set_clock_transition -max -fall 0.04 [get_clocks gclk]
set_clock_transition -min -rise 0.04 [get_clocks gclk]
set_clock_transition -min -fall 0.04 [get_clocks gclk]
