###################################################################

# Created by write_sdc on Sun Oct 27 03:01:31 2024

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max ff_library -max_library ff_library -min ss_library -min_library ss_library
set_driving_cell -lib_cell BUFX2M -library ff_library -pin Y [get_ports test_mode]
set_driving_cell -lib_cell BUFX2M -library ff_library -pin Y [get_ports SE]
set_driving_cell -lib_cell BUFX2M -library ff_library -pin Y [get_ports {SI[3]}]
set_driving_cell -lib_cell BUFX2M -library ff_library -pin Y [get_ports {SI[2]}]
set_driving_cell -lib_cell BUFX2M -library ff_library -pin Y [get_ports {SI[1]}]
set_driving_cell -lib_cell BUFX2M -library ff_library -pin Y [get_ports {SI[0]}]
set_driving_cell -lib_cell BUFX2M -library ff_library -pin Y [get_ports UART_RX_IN]
set_load -pin_load 0.5 [get_ports {SO[3]}]
set_load -pin_load 0.5 [get_ports {SO[2]}]
set_load -pin_load 0.5 [get_ports {SO[1]}]
set_load -pin_load 0.5 [get_ports {SO[0]}]
set_load -pin_load 0.5 [get_ports UART_TX_O]
set_load -pin_load 0.5 [get_ports parity_error]
set_load -pin_load 0.5 [get_ports framing_error]
set_case_analysis 1 [get_ports test_mode]
create_clock [get_ports REF_CLK]  -period 20  -waveform {0 10}
set_clock_uncertainty -setup 0.2  [get_clocks REF_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks REF_CLK]
create_clock [get_ports UART_CLK]  -period 271.267  -waveform {0 135.633}
set_clock_uncertainty -setup 0.2  [get_clocks UART_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks UART_CLK]
create_generated_clock [get_pins U1_Integer_Clock_Divider_RX/o_div_clk]  -name UART_RX_CLK  -source [get_ports UART_CLK]  -master_clock UART_CLK  -divide_by 1  -add
set_clock_uncertainty -setup 0.2  [get_clocks UART_RX_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks UART_RX_CLK]
create_generated_clock [get_pins U0_Integer_Clock_Divider_TX/o_div_clk]  -name UART_TX_CLK  -source [get_ports UART_CLK]  -master_clock UART_CLK  -divide_by 32  -add
set_clock_uncertainty -setup 0.2  [get_clocks UART_TX_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks UART_TX_CLK]
create_generated_clock [get_pins U0_CLK_GATE/GATED_CLK]  -name ALU_CLK  -source [get_ports REF_CLK]  -master_clock REF_CLK  -divide_by 1  -add
set_clock_uncertainty -setup 0.2  [get_clocks ALU_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks ALU_CLK]
create_clock [get_ports scan_clk]  -name SCAN_CLK  -period 25  -waveform {0 12}
set_clock_uncertainty -setup 0.2  [get_clocks SCAN_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks SCAN_CLK]
set_input_delay -clock UART_CLK  54.2534  [get_ports UART_RX_IN]
set_input_delay -clock SCAN_CLK  5  [get_ports test_mode]
set_input_delay -clock SCAN_CLK  5  [get_ports {SI[3]}]
set_input_delay -clock SCAN_CLK  5  [get_ports {SI[2]}]
set_input_delay -clock SCAN_CLK  5  [get_ports {SI[1]}]
set_input_delay -clock SCAN_CLK  5  [get_ports {SI[0]}]
set_input_delay -clock SCAN_CLK  5  [get_ports SE]
set_output_delay -clock UART_TX_CLK  54.2534  [get_ports UART_TX_O]
set_output_delay -clock UART_CLK  54.2534  [get_ports parity_error]
set_output_delay -clock UART_CLK  54.2534  [get_ports framing_error]
set_output_delay -clock SCAN_CLK  5  [get_ports {SO[3]}]
set_output_delay -clock SCAN_CLK  5  [get_ports {SO[2]}]
set_output_delay -clock SCAN_CLK  5  [get_ports {SO[1]}]
set_output_delay -clock SCAN_CLK  5  [get_ports {SO[0]}]
set_clock_groups -asynchronous -name REF_CLK_1 -group [list [get_clocks REF_CLK] [get_clocks ALU_CLK]] -group [list [get_clocks UART_CLK] [get_clocks UART_TX_CLK] [get_clocks UART_RX_CLK]] -group [get_clocks SCAN_CLK]

set_case_analysis 1 [get_ports test_mode]
set_case_analysis 0 [get_ports SE]
