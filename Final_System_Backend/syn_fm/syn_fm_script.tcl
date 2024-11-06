
############################  Search PATH ################################

set top_module SYS_TOP



lappend search_path /home/IC/lib/aci/sc-m/synopsys

lappend search_path /home/IC/Projects/System/syn

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
lappend search_path /home/IC/Projects/System/RTL/SYS_TOP


####################### Read Reference tech libs ########################
 

set SSLIB "/home/IC/lib/aci/sc-m/synopsys/ss_library.db"
set TTLIB "/home/IC/lib/aci/sc-m/synopsys/tt_library.db"
set FFLIB "/home/IC/lib/aci/sc-m/synopsys/ff_library.db"


######################### Formality Setup File ###########################

# Synopsys setup variable
set synopsys_auto_setup true

# Formality Setup File
set_svf $top_module.svf


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
read_sverilog  -container Ref "SYS_TOP.sv"


# Read Reference technology libraries
read_db -container Ref [list $SSLIB $TTLIB $FFLIB]


# set the top Reference Design
set_reference_design SYS_TOP
set_top SYS_TOP

###################################################################
#################### Implementation Container #####################
###################################################################

# Read Implementation Design Files
read_verilog -container Imp -netlist "/home/IC/Projects/System/syn/netlists/SYS_TOP.v"

# Read Implementation technology libraries
read_db -container Imp [list $SSLIB $TTLIB $FFLIB]

# set the top Implementation Design
set_implementation_design SYS_TOP
set_top SYS_TOP


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
