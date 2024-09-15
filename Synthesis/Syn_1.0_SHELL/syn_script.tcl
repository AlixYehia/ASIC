
########################## Design Compiler Library Files ###############################

lappend search_path /home/IC/Labs/Ass_Syn_1.0/std_cells
lappend search_path /home/IC/Labs/Ass_Syn_1.0/rtl

set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"

## Standard Cell libraries
set target_library [list $TTLIB]

## Standard Cell & Hard Macros libraries
set link_library [list * $TTLIB]

######################### Reading RTL Files ##########################################

read_file -format verilog Down_Counter.v

link

######################### Mapping and optimization ##########################################

compile

###################################################################
# Write out Design after initial compile
###################################################################
#gives netlist
write_file -format verilog -output Down_Counter_mapped.v   

exit

################# to write the messages in a log file ############### 
# dc_shell -f syn_script.tcl > syn.log
