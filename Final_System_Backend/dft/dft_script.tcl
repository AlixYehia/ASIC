
########################### Define Top Module ############################
                                                   
set top_module SYS_TOP_DFT

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

########################### Formality Setup file ############################

set_svf $top_module.svf

################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries           #"
puts "###########################################"

#Add the path of the libraries to the search_path variable
lappend search_path /home/IC/Projects/System/std_cells
lappend search_path /home/IC/Projects/System/RTL/mux2X1
lappend search_path /home/IC/Projects/System/RTL/ALU
lappend search_path /home/IC/Projects/System/RTL/ASYNC_FIFO
lappend search_path /home/IC/Projects/System/RTL/Integer_Clock_Divider
lappend search_path /home/IC/Projects/System/RTL/Clock_Gating
lappend search_path /home/IC/Projects/System/RTL/DATA_SYNC
lappend search_path /home/IC/Projects/System/RTL/Register_File
lappend search_path /home/IC/Projects/System/RTL/PULSE_GEN
lappend search_path /home/IC/Projects/System/RTL/RST_SYNC
lappend search_path /home/IC/Projects/System/RTL/SYS_CTRL
lappend search_path /home/IC/Projects/System/RTL/CLKDIV_MUX
lappend search_path /home/IC/Projects/System/RTL/UART/UART_RX
lappend search_path /home/IC/Projects/System/RTL/UART/UART_TX
lappend search_path /home/IC/Projects/System/RTL/UART/UART
lappend search_path /home/IC/Projects/System/RTL/SYS_TOP_DFT

set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]  

######################## Reading RTL Files #################################

puts "###########################################"
puts "#             Reading RTL Files           #"
puts "###########################################"

set file_format  verilog
set file_format2 sverilog

# IMPORTANT: name of module inside the verilog file

analyze -format $file_format 	mux2X1.v
analyze -format $file_format 	ALU_16B.v
analyze -format $file_format 	Async_fifo.v
analyze -format $file_format 	BIT_SYNC.v
analyze -format $file_format 	fifo_mem.v
analyze -format $file_format 	fifo_rd.v
analyze -format $file_format 	fifo_wr.v
analyze -format $file_format2	Integer_Clock_Divider.sv
analyze -format $file_format	CLK_GATE.v
analyze -format $file_format	DATA_SYNC.v
analyze -format $file_format	Register_File.v
analyze -format $file_format	PULSE_GEN.v
analyze -format $file_format	RST_SYNC.v
analyze -format $file_format2	SYS_CTRL.sv
analyze -format $file_format	CLKDIV_MUX.v
analyze -format $file_format	UART_RX.v
analyze -format $file_format	UART_RX_deserializer.v
analyze -format $file_format	UART_RX_edge_bit_counter.v
analyze -format $file_format2	UART_RX_FSM.sv
analyze -format $file_format	UART_RX_data_sampling.v
analyze -format $file_format	UART_RX_parity_check.v
analyze -format $file_format	UART_RX_stop_check.v
analyze -format $file_format	UART_RX_strt_check.v
analyze -format $file_format2	UART_TX.sv
analyze -format $file_format2	UART_TX_FSM.sv
analyze -format $file_format2	UART_TX_MUX.sv
analyze -format $file_format2	UART_TX_parity_Calc.sv
analyze -format $file_format2	UART_TX_serializer.sv
analyze -format $file_format	UART.v
analyze -format $file_format	SYS_TOP_DFT.v   

# IMPORTANT: name of the DFT file from outside
elaborate -lib WORK SYS_TOP_DFT

###################### Defining toplevel ###################################

current_design $top_module

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"

#link

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design >> reports/check_design.rp

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

source ./cons.tcl

#################### Archirecture Scan Chains #########################
puts "###############################################"
puts "############ Configure scan chains ############"
puts "###############################################"

set_scan_configuration -clock_mixing no_mix  \
                       -style multiplexed_flip_flop \
                       -replace true -max_length 100  

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

#test_ready compile
compile -scan

################################################################### 
# Setting Test Timing Variables
################################################################### 

# Preclock Measure Protocol (default protocol)
set test_default_period 100
set test_default_delay 0
set test_default_bidir_delay 0
set test_default_strobe 20
set test_default_strobe_width 0

########################## Define DFT Signals ##########################

set_dft_signal -port [get_ports scan_clk]  -type ScanClock   -view existing_dft  -timing {30 60}
set_dft_signal -port [get_ports scan_rst]  -type Reset       -view existing_dft  -active_state 0
set_dft_signal -port [get_ports test_mode] -type Constant    -view existing_dft  -active_state 1 
set_dft_signal -port [get_ports test_mode] -type TestMode    -view spec          -active_state 1 
set_dft_signal -port [get_ports SE]        -type ScanEnable  -view spec          -active_state 1   -usage scan
set_dft_signal -port [get_ports SI]        -type ScanDataIn  -view spec 
set_dft_signal -port [get_ports SO]        -type ScanDataOut -view spec  

############################# Create Test Protocol #######################
                                           
create_test_protocol

###################### Pre-DFT Design Rule Checking #######################

dft_drc -verbose

############################# Preview DFT ##############################

preview_dft -show scan_summary

############################# Insert DFT ##############################

insert_dft

######################## Optimize Logic post DFT #######################

compile -scan -incremental

###################### Design Rule Checking #######################

dft_drc -verbose -coverage_estimate

##################### Close Formality Setup file ###########################

set_svf -off

#############################################################################
# Write out files
#############################################################################

write_file -format verilog -hierarchy -output netlists/$top_module.ddc
write_file -format verilog -hierarchy -output netlists/$top_module.v
write_sdf  sdf/$top_module.sdf
write_sdc  -nosplit sdc/$top_module.sdc

################# reporting #######################

report_area -hierarchy > area.rpt
report_power -hierarchy > power.rpt
report_timing -max_paths 100 -delay_type min > hold.rpt
report_timing -max_paths 100 -delay_type max > setup.rpt
report_clock -attributes > clocks.rpt
report_constraint -all_violators > constraints.rpt
report_port > ports.rpt
dft_drc -coverage_estimate > dft_drc_post_dft.rpt

################# starting graphical user interface #######################

#gui_start

#exit
