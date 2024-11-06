
####################################################################################
# Constraints
# ----------------------------------------------------------------------------
#
# 0. Design Compiler variables
#
# 1. Master Clock Definitions
#
# 2. Generated Clock Definitions
#
# 3. Clock Uncertainties
#
# 4. Clock Latencies 
#
# 5. Clock Relationships
#
# 6. set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load

####################################################################################
           #########################################################
                  #### Section 0 : DC Variables ####
           #########################################################
#################################################################################### 

# Prevent assign statements in the generated netlist (must be applied before compile command)
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################

# REF CLOCK (50 MHz)
set CLK1_NAME REF_CLK
set CLK1_PER 20

# UART_RX CLOCK (115.2 KHz * 32)
set CLK2_NAME UART_CLK
set CLK2_PER 271.267

# Skew
set CLK_SETUP_SKEW 0.2
set CLK_HOLD_SKEW 0.1


#1. Master Clocks

create_clock -name $CLK1_NAME -period $CLK1_PER -waveform "0 [expr $CLK1_PER/2]" [get_ports REF_CLK]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $CLK1_NAME]
set_clock_uncertainty -hold $CLK_HOLD_SKEW   [get_clocks $CLK1_NAME]

create_clock -name $CLK2_NAME -period $CLK2_PER -waveform "0 [expr $CLK2_PER/2]" [get_ports UART_CLK]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $CLK2_NAME]
set_clock_uncertainty -hold $CLK_HOLD_SKEW   [get_clocks $CLK2_NAME]


#2. Generated clocks

# UART_RX
create_generated_clock -master_clock $CLK2_NAME -source [get_ports UART_CLK] \
                       -name "RX_CLK" [get_port U1_Integer_Clock_Divider_RX/o_div_clk] \
                       -divide_by 1
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks "RX_CLK"]
set_clock_uncertainty -hold $CLK_HOLD_SKEW   [get_clocks "RX_CLK"]

# UART_TX
create_generated_clock -master_clock $CLK2_NAME -source [get_ports UART_CLK] \
                       -name "TX_CLK" [get_port U0_Integer_Clock_Divider_TX/o_div_clk] \
                       -divide_by 32
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks "TX_CLK"]
set_clock_uncertainty -hold $CLK_HOLD_SKEW   [get_clocks "TX_CLK"]

# ALU
create_generated_clock -master_clock $CLK1_NAME -source [get_ports REF_CLK] \
                       -name "ALU_CLK" [get_port U0_CLK_GATE/GATED_CLK] \
                       -divide_by 1
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks "ALU_CLK"]
set_clock_uncertainty -hold $CLK_HOLD_SKEW   [get_clocks "ALU_CLK"]


# Clocks
set_dont_touch_network [get_clocks [list UART_CLK REF_CLK RX_CLK TX_CLK ALU_CLK]]
# Resets
set_dont_touch_network [get_ports [list RST_N SYNC_RST_REF SYNC_RST_UART]]

####################################################################################
           #########################################################
             #### Section 2 : Clocks Relationship ####
           #########################################################
####################################################################################

set_clock_groups -asynchronous -group [get_clocks "$CLK1_NAME ALU_CLK"]  \
                               -group [get_clocks "$CLK2_NAME RX_CLK TX_CLK"] \

####################################################################################
           #########################################################
             #### Section 3 : #set input/output delay on ports ####
           #########################################################
####################################################################################

set in_delay  [expr 0.2*$CLK2_PER]
set out_delay [expr 0.2*$CLK2_PER]

#Constrain Input Paths
set_input_delay  $in_delay  -clock $CLK2_NAME  [get_port UART_RX_IN]

#Constrain Output Paths
set_output_delay $out_delay -clock TX_CLK	   [get_port UART_TX_O]
set_output_delay $out_delay -clock $CLK2_NAME  [get_port parity_error]
set_output_delay $out_delay -clock $CLK2_NAME  [get_port framing_error]

####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################

set_driving_cell -library ff_library -lib_cell BUFX2M -pin Y [get_port UART_RX_IN]

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################

set_load 0.5 [get_port UART_TX_O]
set_load 0.5 [get_port parity_error]
set_load 0.5 [get_port framing_error]

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis

set_operating_conditions -max ff_library -max_library ff_library -min ss_library -min_library ss_library

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################

#set_wire_load_model -name w20 -library ff_library

