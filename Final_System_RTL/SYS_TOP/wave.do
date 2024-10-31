onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group {System_DUT_Signals
} /SYS_TOP_tb/RST_N_tb
add wave -noupdate -expand -group {System_DUT_Signals
} /SYS_TOP_tb/UART_CLK_tb
add wave -noupdate -expand -group {System_DUT_Signals
} /SYS_TOP_tb/REF_CLK_tb
add wave -noupdate -expand -group {System_DUT_Signals
} /SYS_TOP_tb/UART_RX_IN_tb
add wave -noupdate -expand -group {System_DUT_Signals
} /SYS_TOP_tb/UART_TX_O_tb
add wave -noupdate -expand -group {System_DUT_Signals
} /SYS_TOP_tb/parity_error_tb
add wave -noupdate -expand -group {System_DUT_Signals
} /SYS_TOP_tb/framing_error_tb
add wave -noupdate -expand -group UART -color Yellow /SYS_TOP_tb/DUT/U0_UART/RX_CLK
add wave -noupdate -expand -group UART -color Magenta /SYS_TOP_tb/DUT/U0_UART/RX_IN_S
add wave -noupdate -expand -group UART /SYS_TOP_tb/DUT/U0_UART/RX_OUT_V
add wave -noupdate -expand -group UART /SYS_TOP_tb/DUT/U0_UART/RX_OUT_P
add wave -noupdate -expand -group UART -color Pink /SYS_TOP_tb/DUT/U0_UART/TX_CLK
add wave -noupdate -expand -group UART -color Magenta -radix binary /SYS_TOP_tb/DUT/U0_UART/TX_IN_P
add wave -noupdate -expand -group UART -color {Green Yellow} -itemcolor {Green Yellow} /SYS_TOP_tb/DUT/U0_UART/TX_OUT_S
add wave -noupdate -expand -group UART -color Coral -itemcolor Coral /SYS_TOP_tb/DUT/U0_UART/TX_IN_V
add wave -noupdate -expand -group UART /SYS_TOP_tb/DUT/U0_UART/RST
add wave -noupdate -expand -group UART /SYS_TOP_tb/DUT/U0_UART/PAR_TYP
add wave -noupdate -expand -group UART /SYS_TOP_tb/DUT/U0_UART/PAR_EN
add wave -noupdate -expand -group UART -radix unsigned /SYS_TOP_tb/DUT/U0_UART/Prescale
add wave -noupdate -expand -group UART -color Goldenrod -itemcolor Goldenrod /SYS_TOP_tb/DUT/U0_UART/TX_OUT_V
add wave -noupdate -expand -group UART /SYS_TOP_tb/DUT/U0_UART/parity_error
add wave -noupdate -expand -group UART /SYS_TOP_tb/DUT/U0_UART/framing_error
add wave -noupdate -expand -group UART_RX_FSM -color Cyan /SYS_TOP_tb/DUT/U0_UART/U0_UART_RX/U0_FSM/current_state
add wave -noupdate -expand -group UART_RX_FSM -color Orange /SYS_TOP_tb/DUT/U0_UART/U0_UART_RX/U0_FSM/next_state
add wave -noupdate -expand -group UART_RX_FSM /SYS_TOP_tb/DUT/U0_UART/U0_UART_RX/U0_FSM/RX_IN
add wave -noupdate -expand -group UART_RX_FSM /SYS_TOP_tb/DUT/U0_UART/U0_UART_RX/U0_FSM/enable
add wave -noupdate -expand -group UART_RX_FSM -color Gold /SYS_TOP_tb/DUT/U0_UART/U0_UART_RX/U0_FSM/data_valid
add wave -noupdate -expand -group {UART_TX_FSM
} -color Cyan /SYS_TOP_tb/DUT/U0_UART/U0_UART_TX/U0_FSM/current_state
add wave -noupdate -expand -group {UART_TX_FSM
} -color Orange /SYS_TOP_tb/DUT/U0_UART/U0_UART_TX/U0_FSM/next_state
add wave -noupdate -expand -group {UART_TX_FSM
} /SYS_TOP_tb/DUT/U0_UART/U0_UART_TX/U0_FSM/Data_Valid
add wave -noupdate -expand -group System_Control -color Cyan /SYS_TOP_tb/DUT/U0_SYS_CTRL/current_state
add wave -noupdate -expand -group System_Control -color Orange /SYS_TOP_tb/DUT/U0_SYS_CTRL/next_state
add wave -noupdate -expand -group System_Control -color {Medium Slate Blue} /SYS_TOP_tb/DUT/U0_SYS_CTRL/ADDR_REG
add wave -noupdate -expand -group System_Control -color Magenta -radix unsigned /SYS_TOP_tb/DUT/U0_SYS_CTRL/ALU_OUT_REG
add wave -noupdate -expand -group System_Control /SYS_TOP_tb/DUT/U0_SYS_CTRL/ALU_EN
add wave -noupdate -expand -group System_Control /SYS_TOP_tb/DUT/U0_SYS_CTRL/CLK
add wave -noupdate -expand -group System_Control /SYS_TOP_tb/DUT/U0_SYS_CTRL/RST
add wave -noupdate -expand -group System_Control /SYS_TOP_tb/DUT/U0_SYS_CTRL/UART_RX_DATA
add wave -noupdate -expand -group System_Control -color Gold /SYS_TOP_tb/DUT/U0_SYS_CTRL/UART_RX_Valid
add wave -noupdate -expand -group System_Control /SYS_TOP_tb/DUT/U0_SYS_CTRL/FIFO_FULL
add wave -noupdate -expand -group System_Control /SYS_TOP_tb/DUT/U0_SYS_CTRL/FIFO_WR_DATA
add wave -noupdate -expand -group System_Control /SYS_TOP_tb/DUT/U0_SYS_CTRL/FIFO_WR_INC
add wave -noupdate -expand -group System_Control /SYS_TOP_tb/DUT/U0_SYS_CTRL/ALU_OUT
add wave -noupdate -expand -group System_Control /SYS_TOP_tb/DUT/U0_SYS_CTRL/ALU_OUT_Valid
add wave -noupdate -expand -group System_Control /SYS_TOP_tb/DUT/U0_SYS_CTRL/ALU_FUN
add wave -noupdate -expand -group System_Control /SYS_TOP_tb/DUT/U0_SYS_CTRL/CLKG_EN
add wave -noupdate -expand -group System_Control /SYS_TOP_tb/DUT/U0_SYS_CTRL/CLKDIV_EN
add wave -noupdate -expand -group System_Control /SYS_TOP_tb/DUT/U0_SYS_CTRL/Rd_Reg
add wave -noupdate -expand -group System_Control /SYS_TOP_tb/DUT/U0_SYS_CTRL/Rd_Reg_Valid
add wave -noupdate -expand -group System_Control /SYS_TOP_tb/DUT/U0_SYS_CTRL/Wr_Reg
add wave -noupdate -expand -group System_Control /SYS_TOP_tb/DUT/U0_SYS_CTRL/Addr
add wave -noupdate -expand -group System_Control /SYS_TOP_tb/DUT/U0_SYS_CTRL/RdEn
add wave -noupdate -expand -group System_Control /SYS_TOP_tb/DUT/U0_SYS_CTRL/WrEn
add wave -noupdate -expand -group System_Control /SYS_TOP_tb/DUT/U0_SYS_CTRL/ADDR_REG_CHECK
add wave -noupdate -expand -group System_Control /SYS_TOP_tb/DUT/U0_SYS_CTRL/ALU_OUT_REG_CHECK
add wave -noupdate -expand -group Register_File -childformat {{{/SYS_TOP_tb/DUT/U0_Register_File/Memory[3]} -radix unsigned} {{/SYS_TOP_tb/DUT/U0_Register_File/Memory[2]} -radix binary}} -expand -subitemconfig {{/SYS_TOP_tb/DUT/U0_Register_File/Memory[3]} {-color Sienna -height 15 -itemcolor Firebrick -radix unsigned} {/SYS_TOP_tb/DUT/U0_Register_File/Memory[2]} {-color Sienna -height 15 -itemcolor Firebrick -radix binary}} /SYS_TOP_tb/DUT/U0_Register_File/Memory
add wave -noupdate -expand -group Register_File /SYS_TOP_tb/DUT/U0_Register_File/WrData
add wave -noupdate -expand -group Register_File /SYS_TOP_tb/DUT/U0_Register_File/Adresss
add wave -noupdate -expand -group Register_File -color {Medium Slate Blue} -itemcolor Green /SYS_TOP_tb/DUT/U0_Register_File/WrEn
add wave -noupdate -expand -group Register_File -color Coral -itemcolor Green /SYS_TOP_tb/DUT/U0_Register_File/RdEn
add wave -noupdate -expand -group Register_File /SYS_TOP_tb/DUT/U0_Register_File/CLK
add wave -noupdate -expand -group Register_File /SYS_TOP_tb/DUT/U0_Register_File/RST
add wave -noupdate -expand -group Register_File -radix binary /SYS_TOP_tb/DUT/U0_Register_File/RdData
add wave -noupdate -expand -group Register_File /SYS_TOP_tb/DUT/U0_Register_File/RdData_Valid
add wave -noupdate -expand -group Register_File -color Blue -itemcolor Blue /SYS_TOP_tb/DUT/U0_Register_File/REG0
add wave -noupdate -expand -group Register_File -color Blue -itemcolor Blue /SYS_TOP_tb/DUT/U0_Register_File/REG1
add wave -noupdate -expand -group Register_File -color Blue -itemcolor Blue /SYS_TOP_tb/DUT/U0_Register_File/REG2
add wave -noupdate -expand -group Register_File -color Blue -itemcolor Blue /SYS_TOP_tb/DUT/U0_Register_File/REG3
add wave -noupdate -group {ALU
} /SYS_TOP_tb/DUT/U0_ALU_16B/A
add wave -noupdate -group {ALU
} /SYS_TOP_tb/DUT/U0_ALU_16B/B
add wave -noupdate -group {ALU
} /SYS_TOP_tb/DUT/U0_ALU_16B/EN
add wave -noupdate -group {ALU
} /SYS_TOP_tb/DUT/U0_ALU_16B/ALU_FUN
add wave -noupdate -group {ALU
} /SYS_TOP_tb/DUT/U0_ALU_16B/CLK
add wave -noupdate -group {ALU
} /SYS_TOP_tb/DUT/U0_ALU_16B/RST
add wave -noupdate -group {ALU
} /SYS_TOP_tb/DUT/U0_ALU_16B/ALU_OUT
add wave -noupdate -group {ALU
} /SYS_TOP_tb/DUT/U0_ALU_16B/OUT_VALID
add wave -noupdate -group {ALU
} /SYS_TOP_tb/DUT/U0_ALU_16B/ALU_OUT_Comb
add wave -noupdate -group {ALU
} /SYS_TOP_tb/DUT/U0_ALU_16B/OUT_VALID_Comb
add wave -noupdate -expand -group {ASYNC_FIFO
} -color Yellow /SYS_TOP_tb/DUT/U0_Async_fifo/i_w_clk
add wave -noupdate -expand -group {ASYNC_FIFO
} -color Firebrick /SYS_TOP_tb/DUT/U0_Async_fifo/i_w_rstn
add wave -noupdate -expand -group {ASYNC_FIFO
} -color Cyan -itemcolor Plum /SYS_TOP_tb/DUT/U0_Async_fifo/i_w_inc
add wave -noupdate -expand -group {ASYNC_FIFO
} -itemcolor Orange -radix unsigned /SYS_TOP_tb/DUT/U0_Async_fifo/i_w_data
add wave -noupdate -expand -group {ASYNC_FIFO
} -itemcolor Cyan /SYS_TOP_tb/DUT/U0_Async_fifo/o_full
add wave -noupdate -expand -group {ASYNC_FIFO
} -expand -group {Read domain} -color Tan /SYS_TOP_tb/DUT/U0_Async_fifo/i_r_clk
add wave -noupdate -expand -group {ASYNC_FIFO
} -expand -group {Read domain} -color Firebrick /SYS_TOP_tb/DUT/U0_Async_fifo/i_r_rstn
add wave -noupdate -expand -group {ASYNC_FIFO
} -expand -group {Read domain} -color Magenta -itemcolor Plum /SYS_TOP_tb/DUT/U0_Async_fifo/i_r_inc
add wave -noupdate -expand -group {ASYNC_FIFO
} -expand -group {Read domain} -color Gold -itemcolor Orange -radix unsigned /SYS_TOP_tb/DUT/U0_Async_fifo/o_r_data
add wave -noupdate -expand -group {ASYNC_FIFO
} -expand -group {Read domain} -color Cyan -itemcolor Cyan /SYS_TOP_tb/DUT/U0_Async_fifo/o_empty
add wave -noupdate -expand -group {ASYNC_FIFO
} /SYS_TOP_tb/DUT/U0_Async_fifo/r_addr
add wave -noupdate -expand -group {ASYNC_FIFO
} /SYS_TOP_tb/DUT/U0_Async_fifo/w_addr
add wave -noupdate -expand -group {ASYNC_FIFO
} /SYS_TOP_tb/DUT/U0_Async_fifo/w2r_ptr
add wave -noupdate -expand -group {ASYNC_FIFO
} /SYS_TOP_tb/DUT/U0_Async_fifo/r2w_ptr
add wave -noupdate -expand -group {ASYNC_FIFO
} /SYS_TOP_tb/DUT/U0_Async_fifo/gray_w_ptr
add wave -noupdate -expand -group {ASYNC_FIFO
} /SYS_TOP_tb/DUT/U0_Async_fifo/gray_rd_ptr
add wave -noupdate -expand -group {Integer Clock Divider TX} -color Firebrick /SYS_TOP_tb/DUT/U0_Integer_Clock_Divider_TX/i_rst_n
add wave -noupdate -expand -group {Integer Clock Divider TX} -expand -group REF_CLK /SYS_TOP_tb/DUT/U0_Integer_Clock_Divider_TX/i_ref_clk
add wave -noupdate -expand -group {Integer Clock Divider TX} -expand -group {GEN_CLK} -color Cyan /SYS_TOP_tb/DUT/U0_Integer_Clock_Divider_TX/o_div_clk
add wave -noupdate -expand -group {Integer Clock Divider TX} -expand -group {DIV_RATIO} -radix unsigned /SYS_TOP_tb/DUT/U0_Integer_Clock_Divider_TX/i_div_ratio
add wave -noupdate -expand -group {Integer Clock Divider TX} -color Firebrick /SYS_TOP_tb/DUT/U0_Integer_Clock_Divider_TX/i_clk_en
add wave -noupdate -expand -group {Integer Clock Divider TX} -color {Dark Orchid} /SYS_TOP_tb/DUT/U0_Integer_Clock_Divider_TX/CLK_DIV_EN
add wave -noupdate -expand -group {Integer Clock Divider TX} /SYS_TOP_tb/DUT/U0_Integer_Clock_Divider_TX/counter
add wave -noupdate -expand -group {Integer Clock Divider RX} -color Firebrick /SYS_TOP_tb/DUT/U1_Integer_Clock_Divider_RX/i_rst_n
add wave -noupdate -expand -group {Integer Clock Divider RX} -expand -group REF_CLK /SYS_TOP_tb/DUT/U1_Integer_Clock_Divider_RX/i_ref_clk
add wave -noupdate -expand -group {Integer Clock Divider RX} -expand -group GEN_CLK -color Cyan /SYS_TOP_tb/DUT/U1_Integer_Clock_Divider_RX/o_div_clk
add wave -noupdate -expand -group {Integer Clock Divider RX} -expand -group {DIV_RATIO} -radix unsigned /SYS_TOP_tb/DUT/U1_Integer_Clock_Divider_RX/i_div_ratio
add wave -noupdate -expand -group {Integer Clock Divider RX} -color Firebrick /SYS_TOP_tb/DUT/U1_Integer_Clock_Divider_RX/i_clk_en
add wave -noupdate -expand -group {Integer Clock Divider RX} -color {Dark Orchid} /SYS_TOP_tb/DUT/U1_Integer_Clock_Divider_RX/CLK_DIV_EN
add wave -noupdate -expand -group {Integer Clock Divider RX} /SYS_TOP_tb/DUT/U1_Integer_Clock_Divider_RX/counter
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 5} {874835446 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 390
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
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
WaveRestoreZoom {5776100 ps} {2431738224 ps}
