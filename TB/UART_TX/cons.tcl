
# Constraints
# ----------------------------------------------------------------------------
#
# 1. Master Clock Definitions
#
# 2. Clock Uncertainties
#
# 3. Clock Latencies 
#
# 4. set input/output delay on ports
#
# 5. Driving cells
#
# . Output load

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Clock Latencies     # not needed defualt value is 0 since makes no difference in timming
# 3. Clock Uncertainties
# 4. Clock Transitions
# 5. Clock Dont touch
####################################################################################

#################################### FUNC Clocks ###################################
#set CLK_NAME TX_CLK
set CLK_PERIOD 8680.5555
set CLK_SETUP_SKEW 0.25
set CLK_HOLD_SKEW 0.05
set CLK_RISE 0.1
set CLK_FALL 0.1
set CLK_LAT 0

create_clock -name TX_CLK -period $CLK_PERIOD -waveform "0 [expr $CLK_PERIOD/2]" [get_ports CLK]
set_clock_latency $CLK_LAT [get_clocks TX_CLK]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks TX_CLK]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks TX_CLK]
set_clock_transition -rise $CLK_RISE  [get_clocks TX_CLK]
set_clock_transition -fall $CLK_FALL  [get_clocks TX_CLK]

#################################### SCAN Clocks ###################################
set DFT_CLK_NAME DFTCLK
set DFT_CLK_PER 10000
set DFT_CLK_SETUP_SKEW 0.025
set DFT_CLK_HOLD_SKEW 0.01
set DFT_CLK_LAT 0
set DFT_CLK_RISE 0.05
set DFT_CLK_FALL 0.05

create_clock -name $DFT_CLK_NAME -period $DFT_CLK_PER -waveform "0 [expr $DFT_CLK_PER/2]" [get_ports scan_clk]
set_clock_uncertainty -setup $DFT_CLK_SETUP_SKEW [get_clocks $DFT_CLK_NAME]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks $DFT_CLK_NAME]
set_clock_transition -rise $DFT_CLK_RISE  [get_clocks $DFT_CLK_NAME]
set_clock_transition -fall $DFT_CLK_FALL  [get_clocks $DFT_CLK_NAME]
set_clock_latency $DFT_CLK_LAT [get_clocks $DFT_CLK_NAME]
					   

set_dont_touch_network [list [get_clocks TX_CLK] [get_ports RST] $DFT_CLK_NAME [get_ports scan_rst]]


####################################################################################
           #########################################################
                  #### Section 2 : Clocks Relationships ####
           #########################################################
####################################################################################

set_clock_groups -asynchronous -group [get_clocks TX_CLK]     \
                               -group [get_clocks "$DFT_CLK_NAME"] 


####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
           #########################################################
####################################################################################

set in_delay  [expr 0.3*8680.5555]
set out_delay [expr 0.3*8680.5555]

set in2_delay  [expr 0.3*$DFT_CLK_PER]
set out2_delay [expr 0.3*$DFT_CLK_PER]

#Constrain Input Paths
set_input_delay $in_delay -clock TX_CLK [get_port P_DATA]
set_input_delay $in_delay -clock TX_CLK [get_port Data_Valid]
set_input_delay $in_delay -clock TX_CLK [get_port PAR_EN]
set_input_delay $in_delay -clock TX_CLK [get_port PAR_TYP]

#Constrain Scan Input Paths
set_input_delay $in2_delay -clock $DFT_CLK_NAME [get_port test_mode]
set_input_delay $in2_delay -clock $DFT_CLK_NAME [get_port SI]
set_input_delay $in2_delay -clock $DFT_CLK_NAME [get_port SE]


#Constrain Output Paths
set_output_delay $out_delay -clock TX_CLK [get_port TX_OUT]
set_output_delay $out_delay -clock TX_CLK [get_port busy]

#Constrain Scan Output Paths
set_output_delay $out2_delay -clock $DFT_CLK_NAME [get_port SO]


####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################

#functional ports
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port P_DATA]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port Data_Valid]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port PAR_EN]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port PAR_TYP]

#scan ports
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port test_mode]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port SI]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port SE]

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################

#functional ports
set_load 0.5 [get_port TX_OUT]
set_load 0.5 [get_port busy]

#scan ports
set_load 0.5  [get_port SO]

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis

set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################

set_wire_load_model -name tsmc13_wl30 -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c

####################################################################################
           #########################################################
                  #### Section 8 : Case Analysis ####
           #########################################################
####################################################################################

set_case_analysis 0 [get_port test_mode]

####################################################################################
           #########################################################
                  #### Section 9 : multicycle path ####
           #########################################################
####################################################################################


