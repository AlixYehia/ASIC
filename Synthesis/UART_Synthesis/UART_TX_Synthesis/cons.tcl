
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
					   
set_dont_touch_network [get_clocks TX_CLK]


####################################################################################
           #########################################################
             #### Section 2 : set input/output delay on ports ####
           #########################################################
####################################################################################

set in_delay  [expr 0.3*8680.5555]
set out_delay [expr 0.3*8680.5555]

#Constrain Input Paths
set_input_delay $in_delay -clock TX_CLK [get_port P_DATA]
set_input_delay $in_delay -clock TX_CLK [get_port Data_Valid]
set_input_delay $in_delay -clock TX_CLK [get_port PAR_EN]
set_input_delay $in_delay -clock TX_CLK [get_port PAR_TYP]


#Constrain Output Paths
set_output_delay $out_delay -clock TX_CLK [get_port TX_OUT]
set_output_delay $out_delay -clock TX_CLK [get_port busy]

####################################################################################
           #########################################################
                  #### Section 3 : Driving cells ####
           #########################################################
####################################################################################

set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port P_DATA]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port Data_Valid]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port PAR_EN]
set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port PAR_TYP]

####################################################################################
           #########################################################
                  #### Section 4 : Output load ####
           #########################################################
####################################################################################

set_load 0.5 [get_port TX_OUT]
set_load 0.5 [get_port busy]

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
                  #### Section 8 : multicycle path ####
           #########################################################
####################################################################################


