onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /UART_RX_tb/check_frame/RX_IN_task
add wave -noupdate -radix unsigned /UART_RX_tb/Prescale_tb
add wave -noupdate /UART_RX_tb/PAR_EN_tb
add wave -noupdate /UART_RX_tb/PAR_TYP_tb
add wave -noupdate -color Yellow /UART_RX_tb/data_valid_tb
add wave -noupdate /UART_RX_tb/P_DATA_tb
add wave -noupdate /UART_RX_tb/TX_CLK_PERIOD
add wave -noupdate -expand -group FSM /UART_RX_tb/DUT/U0_FSM/CLK
add wave -noupdate -expand -group FSM /UART_RX_tb/DUT/U0_FSM/RST
add wave -noupdate -expand -group FSM /UART_RX_tb/DUT/U0_FSM/RX_IN
add wave -noupdate -expand -group FSM /UART_RX_tb/DUT/U0_FSM/PAR_EN
add wave -noupdate -expand -group FSM -color Turquoise -radix unsigned /UART_RX_tb/DUT/U0_FSM/edge_cnt
add wave -noupdate -expand -group FSM -color Magenta -radix unsigned /UART_RX_tb/DUT/U0_FSM/bit_cnt
add wave -noupdate -expand -group FSM /UART_RX_tb/DUT/U0_FSM/current_state
add wave -noupdate -expand -group FSM /UART_RX_tb/DUT/U0_FSM/next_state
add wave -noupdate -expand -group FSM -expand -group {data_sampling
} -color Orange /UART_RX_tb/DUT/U0_data_sampling/RX_IN
add wave -noupdate -expand -group FSM -expand -group {data_sampling
} -color Plum /UART_RX_tb/DUT/U0_data_sampling/sampled_bit
add wave -noupdate -expand -group FSM -expand -group {data_sampling
} /UART_RX_tb/DUT/U0_data_sampling/sampled_data
add wave -noupdate -expand -group FSM -expand -group Errors -color {Sea Green} /UART_RX_tb/DUT/U0_FSM/par_err
add wave -noupdate -expand -group FSM -expand -group Errors -color {Sea Green} /UART_RX_tb/DUT/U0_FSM/strt_glitch
add wave -noupdate -expand -group FSM -expand -group Errors -color {Sea Green} /UART_RX_tb/DUT/U0_FSM/stp_err
add wave -noupdate -expand -group FSM -expand -group Enables -color White /UART_RX_tb/DUT/U0_FSM/strt_chk_en
add wave -noupdate -expand -group FSM -expand -group Enables -color {Yellow Green} /UART_RX_tb/DUT/U0_FSM/par_chk_en
add wave -noupdate -expand -group FSM -expand -group Enables -color Maroon /UART_RX_tb/DUT/U0_FSM/stp_chk_en
add wave -noupdate -expand -group FSM -expand -group Enables -color Khaki /UART_RX_tb/DUT/U0_FSM/deser_en
add wave -noupdate -expand -group FSM -expand -group Enables -color Blue /UART_RX_tb/DUT/U0_FSM/dat_samp_en
add wave -noupdate -expand -group FSM -expand -group Enables -color Blue /UART_RX_tb/DUT/U0_FSM/enable
add wave -noupdate -expand -group FSM -color Yellow /UART_RX_tb/DUT/U0_FSM/data_valid
add wave -noupdate -group Edge_bit_Counter /UART_RX_tb/DUT/U0_edge_bit_counter/CLK
add wave -noupdate -group Edge_bit_Counter /UART_RX_tb/DUT/U0_edge_bit_counter/RST
add wave -noupdate -group Edge_bit_Counter -radix decimal /UART_RX_tb/DUT/U0_edge_bit_counter/Prescale
add wave -noupdate -group Edge_bit_Counter /UART_RX_tb/DUT/U0_edge_bit_counter/PAR_EN
add wave -noupdate -group Edge_bit_Counter /UART_RX_tb/DUT/U0_edge_bit_counter/enable
add wave -noupdate -group Edge_bit_Counter -radix decimal /UART_RX_tb/DUT/U0_edge_bit_counter/bit_cnt
add wave -noupdate -group Edge_bit_Counter -radix decimal /UART_RX_tb/DUT/U0_edge_bit_counter/edge_cnt
add wave -noupdate -group Edge_bit_Counter -radix unsigned /UART_RX_tb/DUT/U0_edge_bit_counter/frame_size
add wave -noupdate -group parity /UART_RX_tb/DUT/U0_parity_check/PAR_TYP
add wave -noupdate -group parity /UART_RX_tb/DUT/U0_parity_check/sampled_bit
add wave -noupdate -group parity /UART_RX_tb/DUT/U0_parity_check/par_err
add wave -noupdate -group parity /UART_RX_tb/DUT/U0_parity_check/parity
add wave -noupdate -group parity /UART_RX_tb/DUT/U0_parity_check/P_DATA
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {751705925216 fs} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 73
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
WaveRestoreZoom {800189724500 fs} {807050156500 fs}
