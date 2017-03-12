## the design could not be further optimized

check_error -reset

global skew_opt_skip_ideal_clocks
if { ([info exists skew_opt_skip_ideal_clocks] == 0) || ($skew_opt_skip_ideal_clocks == "false") } {
  echo "--> sourcing set_clock_latency on clocks"
  alias __scl set_clock_latency
  set __scl_skip 0
} else {
  alias __scl { # }
  set __scl_skip 1
}
suppress_message UID-476

## clocks
__scl -max 0.4 [get_clocks {gclk}]
unalias __scl

unsuppress_message UID-476
unset __scl_skip

global skew_opt_skip_clock_balancing
if { ([info exists skew_opt_skip_clock_balancing] == 0) || ($skew_opt_skip_clock_balancing == "false") } {
  echo "--> sourcing set_inter_clock_delay_options"
  reset_inter_clock_delay_options -all
  alias __sicdo set_inter_clock_delay_options
} else {
  alias __sicdo { # }
}
suppress_message CTS-800
__sicdo -balance_group { gclk }
unsuppress_message CTS-800
unalias __sicdo

if { [check_error] == 0 } {
  return 1
} else {
  return 0
}
