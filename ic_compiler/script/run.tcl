## Author: Avik Bag, Austen Hall
## Course: ASIC II
## ICC Lab Script
## 03 - 06 - 2017
## Prof. Taskin

## Clear out any outstanding milkyway library with the same name
file delete -force $my_mw_lib

## This is used to start the GUI for capturing 
## the necessary maps for this project

#start_gui

## This creates a fresh copy of a milkyway library based 
## on the designated technology files and reference libraries
## all of which are defined in the setup file
create_mw_lib -technology $tech_file \
  -mw_reference_library $ref_file \
  $my_mw_lib -open 

## This imports the s15850 compiled ddc file that was generated
## in the previous dc_shell lab, and will be used for this lab
import_designs $ddc_file -format ddc -top $top_design

## Assign the required TLU plus files 
set_tlu_plus_files \
  -max_tluplus $tlup_max \
  -min_tluplus $tlup_min \
  -tech2itf_map $tlup_map


## Setting clock constraint
  create_clock gclk -period 6
  set_clock_transition 0.04 gclk
  set_clock_uncertainty 0.1 gclk
  set_clock_latency -max 0.4 gclk

## Sanity check for the libraries used and the TLU plus 
## files assigned
#check_library
check_tlu_plus_files

## Setting up Power and Ground pins and nets for floorplanning
derive_pg_connection \
  -power_net VDD \
  -power_pin VDD \
  -ground_net VSS \
  -ground_pin VSS \
  -create_ports top

## Floorplanning
create_floorplan \
  -control_type aspect_ratio \
  -core_aspect_ratio 1 \
  -core_utilization 0.8 \
  -start_first_row \
  -left_io2core 5.0 \
  -right_io2core 5.0 \
  -top_io2core 5.0 \
  -bottom_io2core 5.0 \

## Create floorplan placements
create_fp_placement -num_cpus 16 -timing_driven

## Generate the floorplan power rails
synthesize_fp_rail \
  -power_budget 1000 \
  -voltage_supply 1.2 \
  -target_voltage_drop 250 \
  -nets "VDD VSS" \
  -output_dir "./power.pna" \
  -create_virtual_rails M1 \
  -synthesize_power_plan \
  -synthesize_power_pads \
  -use_strap_ends_as_pads

## Committing the design options chosen in the above commands
commit_fp_rail

## Runnning clock tree synthesis with timing optimizations
clock_opt \
  -only_cts \
  -concurrent_clock_and_data \
  -no_clock_route


route_zrt_group \
  -all_clock_nets \
  -reuse_existing_global_route true

## Routing with power optimization
route_opt -initial_route_only 

route_opt \
  -skip_initial_route \
  -effort low
  -concurrent_clock_and_data

## Generate resulting netlist
  write_verilog "./output/res.v"

## Generate rc parasitics
  extract_rc
  write_parasitics -format sbpf -output "./output/res_parasitics.sbpf"


## Reports for the various parameters
report_timing > report/timing.rpt
report_power > report/power.rpt
report_clock_tree -summary > report/clock_tree.rpt
report_area > report/area.rpt
report_qor > report/qor.rpt

close_mw_lib -save
exit
