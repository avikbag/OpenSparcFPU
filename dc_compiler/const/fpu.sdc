###################################################################

# Created by write_sdc on Sat Mar  4 16:16:30 2017

###################################################################
set sdc_version 2.0

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
create_clock [get_ports gclk]  -period 4  -waveform {0 2}
set_clock_uncertainty 0.1  [get_clocks gclk]
set_clock_transition -max -rise 0.04 [get_clocks gclk]
set_clock_transition -max -fall 0.04 [get_clocks gclk]
set_clock_transition -min -rise 0.04 [get_clocks gclk]
set_clock_transition -min -fall 0.04 [get_clocks gclk]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_div/fpu_div_frac_dp/i_div_frac_out/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_div/fpu_div_frac_dp/i_div_frac_out/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_div/fpu_div_frac_dp/i_div_frac_out/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_div/fpu_div_frac_dp/i_div_frac_out/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_div/fpu_div_frac_dp/i_div_frac_add_in1a/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_div/fpu_div_frac_dp/i_div_frac_add_in1a/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_div/fpu_div_frac_dp/i_div_frac_add_in1a/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_div/fpu_div_frac_dp/i_div_frac_add_in1a/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_div/fpu_div_frac_dp/i_div_frac_add_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_div/fpu_div_frac_dp/i_div_frac_add_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_div/fpu_div_frac_dp/i_div_frac_add_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_div/fpu_div_frac_dp/i_div_frac_add_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_div/fpu_div_frac_dp/i_div_frac_add_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_div/fpu_div_frac_dp/i_div_frac_add_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_div/fpu_div_frac_dp/i_div_frac_add_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_div/fpu_div_frac_dp/i_div_frac_add_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_div/fpu_div_frac_dp/i_div_shl_save/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_div/fpu_div_frac_dp/i_div_shl_save/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_div/fpu_div_frac_dp/i_div_shl_save/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_div/fpu_div_frac_dp/i_div_shl_save/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_div/fpu_div_frac_dp/i_div_frac_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_div/fpu_div_frac_dp/i_div_frac_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_div/fpu_div_frac_dp/i_div_frac_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_div/fpu_div_frac_dp/i_div_frac_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_div/fpu_div_frac_dp/i_div_frac_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_div/fpu_div_frac_dp/i_div_frac_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_div/fpu_div_frac_dp/i_div_frac_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_div/fpu_div_frac_dp/i_div_frac_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_div/fpu_div_exp_dp/i_div_exp_out/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_div/fpu_div_exp_dp/i_div_exp_out/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_div/fpu_div_exp_dp/i_div_exp_out/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_div/fpu_div_exp_dp/i_div_exp_out/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_div/fpu_div_exp_dp/i_div_exp1/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_div/fpu_div_exp_dp/i_div_exp1/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_div/fpu_div_exp_dp/i_div_exp1/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_div/fpu_div_exp_dp/i_div_exp1/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_div/fpu_div_exp_dp/i_div_exp_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_div/fpu_div_exp_dp/i_div_exp_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_div/fpu_div_exp_dp/i_div_exp_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_div/fpu_div_exp_dp/i_div_exp_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_div/fpu_div_exp_dp/i_div_exp_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_div/fpu_div_exp_dp/i_div_exp_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_div/fpu_div_exp_dp/i_div_exp_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_div/fpu_div_exp_dp/i_div_exp_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_div/fpu_div_ctl/i_div_cnt/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_div/fpu_div_ctl/i_div_cnt/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_div/fpu_div_ctl/i_div_cnt/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_div/fpu_div_ctl/i_div_cnt/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_div/fpu_div_ctl/i_d1stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_div/fpu_div_ctl/i_d1stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_div/fpu_div_ctl/i_d1stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_div/fpu_div_ctl/i_d1stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_div/fpu_div_ctl/i_d8stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_div/fpu_div_ctl/i_d8stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_div/fpu_div_ctl/i_d8stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_div/fpu_div_ctl/i_d8stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_div/fpu_div_ctl/i_d5stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_div/fpu_div_ctl/i_d5stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_div/fpu_div_ctl/i_d5stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_div/fpu_div_ctl/i_d5stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_frac_dp/i_mul_frac_out/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_frac_dp/i_mul_frac_out/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_frac_dp/i_mul_frac_out/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_frac_dp/i_mul_frac_out/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_frac_dp/i_mstg_xtra_regs/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_frac_dp/i_mstg_xtra_regs/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_frac_dp/i_mstg_xtra_regs/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_frac_dp/i_mstg_xtra_regs/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_frac_dp/i_mul_frac_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_frac_dp/i_mul_frac_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_frac_dp/i_mul_frac_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_frac_dp/i_mul_frac_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_frac_dp/i_mul_frac_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_frac_dp/i_mul_frac_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_frac_dp/i_mul_frac_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_frac_dp/i_mul_frac_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_exp_dp/i_mul_exp_out/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_exp_dp/i_mul_exp_out/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_exp_dp/i_mul_exp_out/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_exp_dp/i_mul_exp_out/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_exp_dp/i_m4stg_exp/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_exp_dp/i_m4stg_exp/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_exp_dp/i_m4stg_exp/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_exp_dp/i_m4stg_exp/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_exp_dp/i_m3stg_expa/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_exp_dp/i_m3stg_expa/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_exp_dp/i_m3stg_expa/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_exp_dp/i_m3stg_expa/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_exp_dp/i_m3stg_exp/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_exp_dp/i_m3stg_exp/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_exp_dp/i_m3stg_exp/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_exp_dp/i_m3stg_exp/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_exp_dp/i_m3bstg_exp/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_exp_dp/i_m3bstg_exp/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_exp_dp/i_m3bstg_exp/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_exp_dp/i_m3bstg_exp/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_exp_dp/i_m3astg_exp/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_exp_dp/i_m3astg_exp/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_exp_dp/i_m3astg_exp/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_exp_dp/i_m3astg_exp/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_exp_dp/i_m2stg_exp/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_exp_dp/i_m2stg_exp/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_exp_dp/i_m2stg_exp/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_exp_dp/i_m2stg_exp/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_exp_dp/i_m1stg_exp_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_exp_dp/i_m1stg_exp_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_exp_dp/i_m1stg_exp_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_exp_dp/i_m1stg_exp_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_exp_dp/i_m1stg_exp_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_exp_dp/i_m1stg_exp_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_exp_dp/i_m1stg_exp_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_exp_dp/i_m1stg_exp_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m3bstg_ld0_inv/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m3bstg_ld0_inv/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m3bstg_ld0_inv/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m3bstg_ld0_inv/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m3astg_ld0_inv/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m3astg_ld0_inv/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m3astg_ld0_inv/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m3astg_ld0_inv/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m2stg_ld0_2/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m2stg_ld0_2/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m2stg_ld0_2/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m2stg_ld0_2/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m2stg_ld0_1/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m2stg_ld0_1/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m2stg_ld0_1/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m2stg_ld0_1/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m6stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m6stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m6stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m6stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m6stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m6stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m6stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m6stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m5stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m5stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m5stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m5stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m5stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m5stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m5stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m5stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m4stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m4stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m4stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m4stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m4stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m4stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m4stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m4stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m3stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m3stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m3stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m3stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m3stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m3stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m3stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m3stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m3bstg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m3bstg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m3bstg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m3bstg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m3bstg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m3bstg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m3bstg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m3bstg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m3astg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m3astg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m3astg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m3astg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m3astg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m3astg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m3astg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m3astg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m2stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m2stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m2stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m2stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m2stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m2stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m2stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m2stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m1stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_mul/fpu_mul_ctl/i_m1stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m1stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_mul/fpu_mul_ctl/i_m1stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_frac_dp/i_a5stg_shl/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_frac_dp/i_a5stg_shl/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_frac_dp/i_a5stg_shl/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_frac_dp/i_a5stg_shl/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_frac_dp/i_a5stg_rnd_frac/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_frac_dp/i_a5stg_rnd_frac/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_frac_dp/i_a5stg_rnd_frac/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_frac_dp/i_a5stg_rnd_frac/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_frac_dp/i_a5stg_rndadd/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_frac_dp/i_a5stg_rndadd/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_frac_dp/i_a5stg_rndadd/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_frac_dp/i_a5stg_rndadd/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_frac_dp/i_a4stg_shl_data/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_frac_dp/i_a4stg_shl_data/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_frac_dp/i_a4stg_shl_data/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_frac_dp/i_a4stg_shl_data/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_frac_dp/i_astg_xtra_regs/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_frac_dp/i_astg_xtra_regs/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_frac_dp/i_astg_xtra_regs/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_frac_dp/i_astg_xtra_regs/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_frac_dp/i_a3stg_expdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_frac_dp/i_a3stg_expdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_frac_dp/i_a3stg_expdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_frac_dp/i_a3stg_expdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_frac_dp/i_a3stg_ld0_frac/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_frac_dp/i_a3stg_ld0_frac/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_frac_dp/i_a3stg_ld0_frac/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_frac_dp/i_a3stg_ld0_frac/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_frac_dp/i_a3stg_frac1/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_frac_dp/i_a3stg_frac1/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_frac_dp/i_a3stg_frac1/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_frac_dp/i_a3stg_frac1/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_frac_dp/i_a2stg_frac2a/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_frac_dp/i_a2stg_frac2a/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_frac_dp/i_a2stg_frac2a/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_frac_dp/i_a2stg_frac2a/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_frac_dp/i_a2stg_frac2/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_frac_dp/i_a2stg_frac2/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_frac_dp/i_a2stg_frac2/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_frac_dp/i_a2stg_frac2/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_frac_dp/i_a2stg_frac1/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_frac_dp/i_a2stg_frac1/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_frac_dp/i_a2stg_frac1/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_frac_dp/i_a2stg_frac1/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_frac_dp/i_a1stg_in2a/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_frac_dp/i_a1stg_in2a/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_frac_dp/i_a1stg_in2a/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_frac_dp/i_a1stg_in2a/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_frac_dp/i_a1stg_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_frac_dp/i_a1stg_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_frac_dp/i_a1stg_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_frac_dp/i_a1stg_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_frac_dp/i_a1stg_in1a/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_frac_dp/i_a1stg_in1a/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_frac_dp/i_a1stg_in1a/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_frac_dp/i_a1stg_in1a/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_frac_dp/i_a1stg_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_frac_dp/i_a1stg_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_frac_dp/i_a1stg_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_frac_dp/i_a1stg_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_exp_dp/i_add_exp_out3/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_exp_dp/i_add_exp_out3/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_exp_dp/i_add_exp_out3/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_exp_dp/i_add_exp_out3/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_exp_dp/i_add_exp_out2/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_exp_dp/i_add_exp_out2/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_exp_dp/i_add_exp_out2/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_exp_dp/i_add_exp_out2/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_exp_dp/i_add_exp_out1/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_exp_dp/i_add_exp_out1/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_exp_dp/i_add_exp_out1/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_exp_dp/i_add_exp_out1/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_exp_dp/i_a4stg_exp2/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_exp_dp/i_a4stg_exp2/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_exp_dp/i_a4stg_exp2/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_exp_dp/i_a4stg_exp2/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_exp_dp/i_a3stg_exp/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_exp_dp/i_a3stg_exp/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_exp_dp/i_a3stg_exp/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_exp_dp/i_a3stg_exp/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_exp_dp/i_a2stg_expadd2_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_exp_dp/i_a2stg_expadd2_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_exp_dp/i_a2stg_expadd2_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_exp_dp/i_a2stg_expadd2_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_exp_dp/i_a2stg_expa/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_exp_dp/i_a2stg_expa/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_exp_dp/i_a2stg_expa/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_exp_dp/i_a2stg_expa/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_exp_dp/i_a2stg_exp/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_exp_dp/i_a2stg_exp/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_exp_dp/i_a2stg_exp/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_exp_dp/i_a2stg_exp/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_exp_dp/i_a1stg_expadd3_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_exp_dp/i_a1stg_expadd3_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_exp_dp/i_a1stg_expadd3_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_exp_dp/i_a1stg_expadd3_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_exp_dp/i_a1stg_expadd3_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_exp_dp/i_a1stg_expadd3_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_exp_dp/i_a1stg_expadd3_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_exp_dp/i_a1stg_expadd3_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_exp_dp/i_a1stg_in2a/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_exp_dp/i_a1stg_in2a/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_exp_dp/i_a1stg_in2a/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_exp_dp/i_a1stg_in2a/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_exp_dp/i_a1stg_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_exp_dp/i_a1stg_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_exp_dp/i_a1stg_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_exp_dp/i_a1stg_in2/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_exp_dp/i_a1stg_in1a/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_exp_dp/i_a1stg_in1a/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_exp_dp/i_a1stg_in1a/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_exp_dp/i_a1stg_in1a/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_exp_dp/i_a1stg_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_exp_dp/i_a1stg_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_exp_dp/i_a1stg_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_exp_dp/i_a1stg_in1/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_ctl/i_a6stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_ctl/i_a6stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_ctl/i_a6stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_ctl/i_a6stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_ctl/i_a5stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_ctl/i_a5stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_ctl/i_a5stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_ctl/i_a5stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_ctl/i_a5stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_ctl/i_a5stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_ctl/i_a5stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_ctl/i_a5stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_ctl/i_a4stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_ctl/i_a4stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_ctl/i_a4stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_ctl/i_a4stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_ctl/i_a4stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_ctl/i_a4stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_ctl/i_a4stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_ctl/i_a4stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_ctl/i_a3stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_ctl/i_a3stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_ctl/i_a3stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_ctl/i_a3stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_ctl/i_a3stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_ctl/i_a3stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_ctl/i_a3stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_ctl/i_a3stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_ctl/i_a2stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_ctl/i_a2stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_ctl/i_a2stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_ctl/i_a2stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_ctl/i_a2stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_ctl/i_a2stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_ctl/i_a2stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_ctl/i_a2stg_opdec/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_ctl/i_a1stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_ctl/i_a1stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_ctl/i_a1stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_ctl/i_a1stg_id/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_add/fpu_add_ctl/i_a1stg_op/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_add/fpu_add_ctl/i_a1stg_op/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_add/fpu_add_ctl/i_a1stg_op/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_add/fpu_add_ctl/i_a1stg_op/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
bw_r_rf16x160/clk_gate_byte_wen_d1_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
bw_r_rf16x160/clk_gate_byte_wen_d1_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
bw_r_rf16x160/clk_gate_byte_wen_d1_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
bw_r_rf16x160/clk_gate_byte_wen_d1_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_in/fpu_in_dp/i_fp_srcb_in/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_in/fpu_in_dp/i_fp_srcb_in/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_in/fpu_in_dp/i_fp_srcb_in/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_in/fpu_in_dp/i_fp_srcb_in/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe15/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe15/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe15/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe15/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe14/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe14/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe14/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe14/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe13/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe13/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe13/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe13/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe12/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe12/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe12/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe12/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe11/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe11/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe11/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe11/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe10/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe10/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe10/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe10/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe9/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe9/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe9/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe9/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe8/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe8/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe8/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe8/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe7/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe7/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe7/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe7/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe6/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe6/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe6/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe6/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe5/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe5/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe5/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe5/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe4/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe4/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe4/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe4/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe3/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe3/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe3/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe3/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe2/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe2/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe2/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe2/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe1/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe1/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe1/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe1/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe0/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_pipe0/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe0/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_pipe0/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_div_wrptr/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_div_wrptr/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_div_wrptr/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_div_wrptr/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_wrptr/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -setup 0 [get_cells                               \
fpu_in/fpu_in_ctl/i_inq_wrptr/clk_gate_q_reg/main_gate]
set_clock_gating_check -rise -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_wrptr/clk_gate_q_reg/main_gate]
set_clock_gating_check -fall -hold 0 [get_cells                                \
fpu_in/fpu_in_ctl/i_inq_wrptr/clk_gate_q_reg/main_gate]
