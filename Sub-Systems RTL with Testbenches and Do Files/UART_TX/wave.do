onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /UART_TX_tb/P_DATA_tb
add wave -noupdate -color Pink /UART_TX_tb/RST_tb
add wave -noupdate /UART_TX_tb/CLK_tb
add wave -noupdate -expand -group FSM -color Tan /UART_TX_tb/DUT/U0_FSM/Data_Valid
add wave -noupdate -expand -group FSM /UART_TX_tb/DUT/U0_FSM/PAR_EN
add wave -noupdate -expand -group FSM -color Gold /UART_TX_tb/DUT/U0_FSM/ser_done
add wave -noupdate -expand -group FSM /UART_TX_tb/DUT/U0_FSM/ser_en
add wave -noupdate -expand -group FSM -color {Orange Red} /UART_TX_tb/DUT/U0_FSM/busy
add wave -noupdate -expand -group FSM /UART_TX_tb/DUT/U0_FSM/current_state
add wave -noupdate -expand -group MUX -color Magenta /UART_TX_tb/DUT/U0_MUX/TX_OUT
add wave -noupdate -expand -group MUX /UART_TX_tb/DUT/U0_MUX/S_DATA
add wave -noupdate -expand -group MUX /UART_TX_tb/DUT/U0_MUX/par_bit
add wave -noupdate -expand -group MUX /UART_TX_tb/DUT/U0_MUX/mux_sel
add wave -noupdate -expand -group Ser /UART_TX_tb/DUT/U0_serializer/Data_Valid
add wave -noupdate -expand -group Ser -color Wheat /UART_TX_tb/DUT/U0_serializer/S_DATA
add wave -noupdate -expand -group Ser /UART_TX_tb/DUT/U0_serializer/ser_en
add wave -noupdate -expand -group Ser /UART_TX_tb/DUT/U0_serializer/counter
add wave -noupdate -expand -group Ser /UART_TX_tb/DUT/U0_serializer/parallel_data
add wave -noupdate -expand -group check_frame /UART_TX_tb/check_frame/expec_frame
add wave -noupdate -expand -group check_frame /UART_TX_tb/check_frame/gener_frame
add wave -noupdate -expand -group parity /UART_TX_tb/DUT/U0_parity_Calc/P_DATA
add wave -noupdate -expand -group parity /UART_TX_tb/DUT/U0_parity_Calc/PAR_TYP
add wave -noupdate -expand -group parity /UART_TX_tb/DUT/U0_parity_Calc/par_bit
add wave -noupdate -expand -group parity /UART_TX_tb/DUT/U0_parity_Calc/parallel_data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {11937 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 70
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {93169 ps}
