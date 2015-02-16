################################################################################
# This Tcl script is meant to run from the Tcl Console in ISE after StellarIP
# generated the ISE project. This Tcl script will prepare to project for
# simulation in ISIM. Run the following command from the Tcl console:
#
#   source ../../simulate/isim/isim.tcl
#
################################################################################


################################################################################
# This section copies files required by the simulation into the project
# directory. Examples are the SIP script and MIF files.
################################################################################
puts "Coping simulation files..."

file copy -force ../../simulate/isim/sip_cmd.sip sip_cmd.sip
file copy -force ../../simulate/isim/input.txt input.txt

puts "Done"

################################################################################
# This section adds simulation only file to the project.
# For example models for memories, FMC cards.
################################################################################
xfile add ../../simulate/tb_jesd204b_kc705.vhd -view simulation

xfile add ../../simulate/vhdl/std_logic_textio.vhd     -view simulation
xfile add ../../simulate/vhdl/txt_util.vhd 	           -view simulation
xfile add ../../simulate/vhdl/generic_host_emu.vhd    -view simulation

################################################################################
# Change the view association of files in implementation to prevent these files
# are used during simulation. This is required when IP is replaced by a model.
################################################################################
puts "Changing files to implement only..."

xfile add ../../simulate/vhdl/jesd204b_kc705.vhd    -view simulation

puts "Done "

puts "*** Completed ***"











