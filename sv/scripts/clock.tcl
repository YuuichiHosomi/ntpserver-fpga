#
# Vivado (TM) v2014.4 (64-bit)
#
# tmp.tcl: Tcl script for re-creating project 'clock'
#
# Generated by Vivado on Sun Nov 04 10:30:49 EST 2018
# IP Build 1070531 on Tue Nov 18 01:10:18 MST 2014
#
# This file contains the Vivado Tcl commands for re-creating the project to the state*
# when this script was generated. In order to re-create the project, please source this
# file in the Vivado Tcl Shell.
#
# * Note that the runs in the created project will be configured the same way as the
#   original project, however they will not be launched automatically. To regenerate the
#   run results please launch the synthesis/implementation runs as needed.
#
#*****************************************************************************************
# NOTE: In order to use this script for source control purposes, please make sure that the
#       following files are added to the source control system:-
#
# 1. This project restoration tcl script (tmp.tcl) that was generated.
#
# 2. The following source(s) files that were local or imported into the original project.
#    (Please see the '$orig_proj_dir' and '$origin_dir' variable setting below at the start of the script)
#
#    <none>
#
# 3. The following remote source files that were added to the original project:-
#
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/types_pkg.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/util_pkg.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/disp_ctl.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/disp_lut.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/disp_dark.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/disp_sr.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/version_pkg.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/cpu/cpu.bd"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/tsc.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/dac.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/bcdtime.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/disp.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/syspll.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/regs.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/io.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/fan.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/clock.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/ip/ocxo_clk_pll/ocxo_clk_pll.xci"
#    "/home/guest/cae/fpga/ntpserver/sv/xdc/pin.xdc"
#    "/home/guest/cae/fpga/ntpserver/sv/xdc/timing.xdc"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/types_pkg.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/util_pkg.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/disp_ctl.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/disp_lut.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/disp_dark.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/disp_sr.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/tsc.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/dac.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/bcdtime.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/disp.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/syspll.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/version_pkg.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/regs.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/io.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/fan.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/clock.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/tb_pkg.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/cpu_test.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/hdl/clock_tb.sv"
#    "/home/guest/cae/fpga/ntpserver/sv/ip/ocxo_clk_pll/ocxo_clk_pll_clk_wiz.v"
#    "/home/guest/cae/fpga/ntpserver/sv/ip/ocxo_clk_pll/ocxo_clk_pll.v"
#
#*****************************************************************************************

# Set the reference directory for source file relative paths (by default the value is script directory path)
set origin_dir "."

# get the directory where this script resides
set thisDir [file dirname [info script]]
# source common utilities
source -notrace $origin_dir/../scripts/utils.tcl

# Set the directory path for the original project from where this script was exported
set orig_proj_dir "[file normalize "$origin_dir/clock"]"

# Create project
create_project -force clock ./clock

# Set the directory path for the new project
set proj_dir [get_property directory [current_project]]

# Set project properties
set obj [get_projects clock]
set_property "board_part" "em.avnet.com:microzed_7010:part0:1.0" $obj
set_property "default_lib" "work" $obj
set_property "simulator_language" "Mixed" $obj
set_property "source_mgmt_mode" "DisplayOnly" $obj

source "$thisDir/files.tcl"

# Add the VHDL design sources
add_source_files sources_1 $vlog_src "SystemVerilog"

# Block design sources
add_source_files    sources_1 $xlx_blk
set_source_property sources_1 $xlx_blk "generate_synth_checkpoint" "0"

# IP sources
add_source_files    sources_1 $xlx_ip
set_source_property sources_1 $xlx_ip "synth_checkpoint_mode" "Singular"


# Top level component name
set obj [get_filesets sources_1]
set_property "top" "clock" $obj


# Add the design constraints
add_source_files constrs_1 $xlx_xdc "XDC"

#set obj [get_filesets constrs_1]
#set_property "target_constrs_file" "[file normalize "$origin_dir/xdc/pin.xdc"]" $obj


# Add the VHDL simulation sources
add_source_files sim_1 $vlog_sim "SystemVerilog"

# Set 'sim_1' fileset properties
set obj [get_filesets sim_1]
set_property "runtime" "100us" $obj
set_property "source_set" "" $obj
set_property "top" "clock_tb" $obj
set_property "xsim.simulate.runtime" "100us" $obj


# Create 'synth_1' run (if not found)
if {[string equal [get_runs -quiet synth_1] ""]} {
  create_run -name synth_1 -part xc7z010clg400-1 -flow {Vivado Synthesis 2014} -strategy "Vivado Synthesis Defaults" -constrset constrs_1
} else {
  set_property strategy "Vivado Synthesis Defaults" [get_runs synth_1]
  set_property flow "Vivado Synthesis 2014" [get_runs synth_1]
}
set obj [get_runs synth_1]

# set the current synth run
current_run -synthesis [get_runs synth_1]


# Create 'impl_1' run (if not found)
if {[string equal [get_runs -quiet impl_1] ""]} {
  create_run -name impl_1 -part xc7z010clg400-1 -flow {Vivado Implementation 2014} -strategy "Vivado Implementation Defaults" -constrset constrs_1 -parent_run synth_1
} else {
  set_property strategy "Vivado Implementation Defaults" [get_runs impl_1]
  set_property flow "Vivado Implementation 2014" [get_runs impl_1]
}
set obj [get_runs impl_1]
set_property "steps.write_bitstream.args.bin_file" "1" $obj

# set the current impl run
current_run -implementation [get_runs impl_1]


# If successful, "touch" a file so the make utility will know it's done 
touch {.setup.done}

puts "INFO: Project created:clock"
