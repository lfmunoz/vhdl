#
# set_process_props
#
# This procedure sets properties as requested during script generation (either
# all of the properties, or only those modified from their defaults).
#


xfile add  Src/sip_fmc14x_8lane/types.vhd		   ;# project set
lib_vhdl new xil_defaultlib                        ;# create library # project set
lib_vhdl add_file xil_defaultlib types.vhd         ;# add types.vhd to xil_defaultlib # project set

set_property target_language VHDL [current_project]

# Bitgen
project set "Enable BitStream Compression" "true" -process "Generate Programming File"

