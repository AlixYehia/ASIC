
########################### Define Top Module ############################
                                                   
set top_module SYS_TOP

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

############################# Formality Setup File ##########################
                                                   
set_svf $top_module.svf

################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries          #"
puts "###########################################"

#Add the path of the libraries and RTL files to the search_path variable

set PROJECT_PATH /home/IC/Projects/System/
set LIB_PATH     /home/IC/lib/aci/sc-m

lappend search_path /home/IC/Projects/System/std_cells
lappend search_path $LIB_PATH/synopsys
lappend search_path $PROJECT_PATH/RTL/ALU
lappend search_path $PROJECT_PATH/RTL/ASYNC_FIFO
lappend search_path $PROJECT_PATH/RTL/Integer_Clock_Divider
lappend search_path $PROJECT_PATH/RTL/Clock_Gating
lappend search_path $PROJECT_PATH/RTL/DATA_SYNC
lappend search_path $PROJECT_PATH/RTL/Register_File
lappend search_path $PROJECT_PATH/RTL/PULSE_GEN
lappend search_path $PROJECT_PATH/RTL/RST_SYNC
lappend search_path $PROJECT_PATH/RTL/SYS_CTRL
lappend search_path $PROJECT_PATH/RTL/CLKDIV_MUX
lappend search_path $PROJECT_PATH/RTL/UART/UART_RX
lappend search_path $PROJECT_PATH/RTL/UART/UART_TX
lappend search_path $PROJECT_PATH/RTL/UART/UART
lappend search_path $PROJECT_PATH/RTL/SYS_TOP

set SSLIB "ss_library.db"
set TTLIB "tt_library.db"
set FFLIB "ff_library.db"

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

#ALU
analyze -format $file_format ALU_16B.v
#FIFO
analyze -format $file_format  BIT_SYNC.v
analyze -format $file_format  fifo_mem.v
analyze -format $file_format  fifo_rd.v
analyze -format $file_format  fifo_wr.v
analyze -format $file_format  Async_fifo.v
#CLK_DIVIDER MUX
analyze -format $file_format  CLKDIV_MUX.v
#CLK_DIVIDER
analyze -format $file_format2 Integer_Clock_Divider.sv
#CLK_GATING
analyze -format $file_format  CLK_GATE.v
#DATA_SYNC
analyze -format $file_format  DATA_SYNC.v
#REGISTER_FILE
analyze -format $file_format  Register_File.v
#PULSE_GENERATOR
analyze -format $file_format  PULSE_GEN.v
#RST_SYNC
analyze -format $file_format  RST_SYNC.v
#SYS_CONTROLLER
analyze -format $file_format2 SYS_CTRL.sv
#UART_RX
analyze -format $file_format  UART_RX.v
analyze -format $file_format  UART_RX_data_sampling.v
analyze -format $file_format  UART_RX_deserializer.v
analyze -format $file_format  UART_RX_edge_bit_counter.v
analyze -format $file_format2 UART_RX_FSM.sv
analyze -format $file_format  UART_RX_parity_check.v
analyze -format $file_format  UART_RX_stop_check.v
analyze -format $file_format  UART_RX_strt_check.v
#UART_TX
analyze -format $file_format2 UART_TX.sv
analyze -format $file_format2 UART_TX_FSM.sv
analyze -format $file_format2 UART_TX_MUX.sv
analyze -format $file_format2 UART_TX_parity_Calc.sv
analyze -format $file_format2 UART_TX_serializer.sv
#UART_TOP
analyze -format $file_format  UART.v
#SYS_TOP
analyze -format $file_format2 SYS_TOP.sv

elaborate -lib WORK SYS_TOP

###################### Defining toplevel ###################################

current_design $top_module

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"

link 

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design >> reports/check_design.rpt

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

source -echo ./cons.tcl

###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

compile 

##################### Close Formality Setup file ###########################

set_svf -off

#############################################################################
# Write out files
#############################################################################

write_file -format verilog -hierarchy -output netlists/$top_module.ddc
write_file -format verilog -hierarchy -output netlists/$top_module.v
write_sdf  sdf/$top_module.sdf
write_sdc  -nosplit sdc/$top_module.sdc

####################### reporting ##########################################

report_area -hierarchy > reports/area.rpt
report_power -hierarchy > reports/power.rpt
report_timing -delay_type min -max_paths 20 > reports/hold.rpt
report_timing -delay_type max -max_paths 20 > reports/setup.rpt
report_clock -attributes > reports/clocks.rpt
report_constraint -all_violators -nosplit > reports/constraints.rpt

############################################################################
# DFT Preparation Section
############################################################################

set flops_per_chain 100

set num_flops [sizeof_collection [all_registers -edge_triggered]]

set num_chains [expr $num_flops / $flops_per_chain + 1 ]

################# starting graphical user interface #######################

gui_start

#exit
