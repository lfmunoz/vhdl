################################################################################
# This Tcl script is meant to run from the Tcl Console in VIVADO after StellarIP
# generated the VIVADO project. This Tcl script will prepare to project for
# simulation in XSIM. Run the following command from the Tcl console:
#
#   source ../../../simulate/xsim/xsim.tcl
#
################################################################################


################################################################################
# Example: Loading testbench file
################################################################################
set PROJECT [get_project]

if {[string compare $PROJECT "vp780_fmc160_690t"] == 0} {
	add_files ../../../simulate/vhdl/testbench_690t.vhd
	set_property used_in_synthesis false [get_files  testbench_690t.vhd];
} elseif {[string compare $PROJECT "vp780_fmc160_1140t"] == 0} {
	add_files ../../../simulate/vhdl/testbench_1140t.vhd
   set_property used_in_synthesis false [get_files  testbench_1140t.vhd];
}

################################################################################
# Example: Loading single files
################################################################################
set file "../../../simulate/vhdl/tb_vp780_fmc126_cal.vhd"
add_files $file
set_property USED_IN_SYNTHESIS false [get_files $file]

add_files -fileset sim_1 ../../../simulate/xsim/sip_cmd.sip      
add_files -fileset sim_1 ../../../simulate/xsim/input.txt           

################################################################################
# Example:  Copying simulation files (not recommended, add instead)
################################################################################
file copy -force ../../../simulate/xsim/sip_cmd_690_980t_1140t.sip sip_cmd.sip
file copy -force ../../../simulate/xsim/input.txt input.txt

################################################################################
# Example 1: Loading list of files
################################################################################
set files [list \
../../../simulate/vhdl/vp780_host_if_emu/std_logic_textio.vhd \
../../../simulate/vhdl/vp780_host_if_emu/txt_util.vhd \
../../../simulate/vhdl/vp780_host_if_emu/generic_host_emu.vhd \
../../../simulate/vhdl/fmc126_model/dpram.vhd \
../../../simulate/vhdl/fmc126_model/fmc126_cpld.vhd \
../../../simulate/vhdl/fmc126_model/fmc126_model.vhd \
../../../simulate/vhdl/fmc126_model/i2c_slave_model.vhd \
../../../simulate/vhdl/fmc126_model/i2c_to_spi.vhd \
../../../simulate/vhdl/xilinx/fifo_generator_v9_1.vhd \
../../../simulate/vhdl/xilinx/BLK_MEM_GEN_V4_2.vhd \
]
add_files $files
set_property USED_IN_SYNTHESIS false [get_files $files]

set files [ list \
../../../simulate/vhdl/xilinx/fifo_generator_v9_1.vhd \
../../../simulate/vhdl/xilinx/BLK_MEM_GEN_V4_2.vhd \
]
set_property library XilinxCoreLib [get_files $files]

################################################################################
# Example 2: Loading a list of files (prefered method)
################################################################################
set vp780_list {
../../../simulate/vhdl/vp780_host_if_emu/std_logic_textio.vhd
../../../simulate/vhdl/vp780_host_if_emu/txt_util.vhd
../../../simulate/vhdl/vp780_host_if_emu/vp780_host_if_emu.vhd
../../../simulate/vhdl/vp780_host_if_emu/clkrst_vp780_emu.vhd
}

foreach sim_file $vp780_list {
	add_files $sim_file;
	set_property used_in_synthesis false [get_files  $sim_file];
}

################################################################################
# Example: Print statements
################################################################################
puts "Changing files to implement only..."
puts "Done"
puts "*** Completed ***"


