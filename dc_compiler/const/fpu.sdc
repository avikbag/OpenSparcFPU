###################################################################

# Created by write_sdc on Sun Mar  5 17:02:44 2017

###################################################################
set sdc_version 2.0

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
create_clock [get_ports gclk]  -period 8  -waveform {0 4}
set_clock_uncertainty 0.1  [get_clocks gclk]
set_clock_transition -max -rise 0.04 [get_clocks gclk]
set_clock_transition -max -fall 0.04 [get_clocks gclk]
set_clock_transition -min -rise 0.04 [get_clocks gclk]
set_clock_transition -min -fall 0.04 [get_clocks gclk]
