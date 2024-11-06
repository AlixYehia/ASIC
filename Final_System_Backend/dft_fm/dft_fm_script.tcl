
###################################################################
########################### Variables #############################
###################################################################

################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries           #"
puts "###########################################"

#Add the path of the libraries to the search_path variable
lappend search_path /home/IC/Projects/System/std_cells
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
lappend search_path /home/IC/Projects/System/RTL/mux2X1

lappend search_path /home/IC/Projects/System/dft

set SSLIB "ss_library.db"
set TTLIB "tt_library.db"
set FFLIB "ff_library.db"


###################################################################
############################ Guidance #############################
###################################################################

# Synopsys setup variable
set synopsys_auto_setup true

# Formality Setup File
set_svf "/home/IC/Projects/System/dft/SYS_TOP_DFT.svf"

###################################################################
###################### Reference Container ########################
###################################################################

#ALU
read_verilog  -container Ref "ALU_16B.v"
#FIFO
read_verilog  -container Ref "BIT_SYNC.v"
read_verilog  -container Ref "fifo_mem.v"
read_verilog  -container Ref "fifo_rd.v"
read_verilog  -container Ref "fifo_wr.v"
read_verilog  -container Ref "Async_fifo.v"
#CLK_DIVIDER MUX
read_verilog  -container Ref "CLKDIV_MUX.v"
#CLK_DIVIDER
read_sverilog -container Ref "Integer_Clock_Divider.sv"
#CLK_GATING
read_verilog  -container Ref "CLK_GATE.v"
#DATA_SYNC
read_verilog  -container Ref "DATA_SYNC.v"
#REGISTER_FILE
read_verilog  -container Ref "Register_File.v"
#PULSE_GENERATOR
read_verilog  -container Ref "PULSE_GEN.v"
#RST_SYNC
read_verilog  -container Ref "RST_SYNC.v"
#SYS_CONTROLLER
read_sverilog -container Ref "SYS_CTRL.sv"
#UART_RX
read_verilog  -container Ref "UART_RX.v"
read_verilog  -container Ref "UART_RX_data_sampling.v"
read_verilog  -container Ref "UART_RX_deserializer.v"
read_verilog  -container Ref "UART_RX_edge_bit_counter.v"
read_sverilog -container Ref "UART_RX_FSM.sv"
read_verilog  -container Ref "UART_RX_parity_check.v"
read_verilog  -container Ref "UART_RX_stop_check.v"
read_verilog  -container Ref "UART_RX_strt_check.v"
#UART_TX
read_sverilog  -container Ref "UART_TX.sv"
read_sverilog  -container Ref "UART_TX_FSM.sv"
read_sverilog  -container Ref "UART_TX_MUX.sv"
read_sverilog  -container Ref "UART_TX_parity_Calc.sv"
read_sverilog  -container Ref "UART_TX_serializer.sv"
#UART_TOP
read_verilog   -container Ref "UART.v"
#SYS_TOP
read_verilog  -container Ref "SYS_TOP_DFT.v"
#mux
read_verilog  -container Ref mux2X1.v

# Read Reference technology libraries
read_db -container Ref [list $SSLIB $TTLIB $FFLIB]

# set the top Reference Design 
set_reference_design SYS_TOP_DFT
set_top SYS_TOP_DFT

###################################################################
#################### Implementation Container #####################
###################################################################

# Read Implementation Design Files
read_verilog -container Imp -netlist "/home/IC/Projects/System/dft/netlists/SYS_TOP_DFT.v"

# Read Implementation technology libraries
read_db -container Imp [list $SSLIB $TTLIB $FFLIB]

# set the top Implementation Design
set_implementation_design SYS_TOP_DFT
set_top SYS_TOP_DFT

########################## Don't verify ###########################

# do not verify scan in & scan out ports as a compare point as it is existed only after synthesis and not existed in the RTL

#scan in
set_dont_verify_points -type port Ref:/WORK/*/SI
set_dont_verify_points -type port Imp:/WORK/*/SI

#scan_out
set_dont_verify_points -type port Ref:/WORK/*/SO
set_dont_verify_points -type port Imp:/WORK/*/SO


############################### contants ##########################

# all atpg enable (test_mode, scan_enable) are zero during formal compare

#test_mode
set_constant Ref:/WORK/*/test_mode 0
set_constant Imp:/WORK/*/test_mode 0

#scan_enable
set_constant Ref:/WORK/*/SE 0
set_constant Imp:/WORK/*/SE 0


###################### Matching Compare points ####################

match

######################### Run Verification ########################

set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

########################### Reporting ############################# 
report_passing_points > "passing_points.rpt"
report_failing_points > "failing_points.rpt"
report_aborted_points > "aborted_points.rpt"
report_unverified_points > "unverified_points.rpt"


start_gui


