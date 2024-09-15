onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /UART_TX_tb/P_DATA_tb
add wave -noupdate /UART_TX_tb/Data_Valid_tb
add wave -noupdate /UART_TX_tb/PAR_TYP_tb
add wave -noupdate /UART_TX_tb/PAR_EN_tb
add wave -noupdate /UART_TX_tb/RST_tb
add wave -noupdate /UART_TX_tb/CLK_tb
add wave -noupdate /UART_TX_tb/TX_OUT_tb
add wave -noupdate /UART_TX_tb/busy_tb
add wave -noupdate /UART_TX_tb/expec_frame
add wave -noupdate /UART_TX_tb/gener_frame
add wave -noupdate -expand -group FSM -color Tan /UART_TX_tb/DUT/U0_FSM/Data_Valid
add wave -noupdate -expand -group FSM /UART_TX_tb/DUT/U0_FSM/PAR_EN
add wave -noupdate -expand -group FSM -color Gold /UART_TX_tb/DUT/U0_FSM/ser_done
add wave -noupdate -expand -group FSM /UART_TX_tb/DUT/U0_FSM/ser_en
add wave -noupdate -expand -group FSM -color {Orange Red} /UART_TX_tb/DUT/U0_FSM/busy
add wave -noupdate -expand -group FSM /UART_TX_tb/DUT/U0_FSM/current_state
add wave -noupdate /UART_TX_tb/CLK_tb
add wave -noupdate -expand -group MUX -color Magenta /UART_TX_tb/DUT/U0_MUX/TX_OUT
add wave -noupdate -expand -group MUX /UART_TX_tb/DUT/U0_MUX/S_DATA
add wave -noupdate -expand -group MUX /UART_TX_tb/DUT/U0_MUX/par_bit
add wave -noupdate -expand -group MUX /UART_TX_tb/DUT/U0_MUX/mux_sel
add wave -noupdate -expand -group Ser /UART_TX_tb/DUT/U0_serializer/Data_Valid
add wave -noupdate -expand -group Ser -color Wheat /UART_TX_tb/DUT/U0_serializer/S_DATA
add wave -noupdate -expand -group Ser /UART_TX_tb/DUT/U0_serializer/ser_en
add wave -noupdate -expand -group Ser /UART_TX_tb/DUT/U0_serializer/counter
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {175067 ps} 0}
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
WaveRestoreZoom {161102 ps} {209035 ps}
