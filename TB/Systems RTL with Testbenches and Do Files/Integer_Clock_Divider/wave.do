onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color Red /Integer_Clock_Divider_tb/i_rst_n_tb
add wave -noupdate -expand -group {REF_CLK
} /Integer_Clock_Divider_tb/i_ref_clk_tb
add wave -noupdate -expand -group {GEN_CLK
} -color Cyan /Integer_Clock_Divider_tb/o_div_clk_tb
add wave -noupdate -expand -group {DIV_RATIO
} -radix unsigned /Integer_Clock_Divider_tb/i_div_ratio_tb
add wave -noupdate -expand -group CLK_DIV_EN -color {Indian Red} /Integer_Clock_Divider_tb/i_clk_en_tb
add wave -noupdate -expand -group CLK_DIV_EN -color {Blue Violet} /Integer_Clock_Divider_tb/DUT/CLK_DIV_EN
add wave -noupdate /Integer_Clock_Divider_tb/DUT/counter
add wave -noupdate -expand -group {CLK_LEVEL} -color Orange /Integer_Clock_Divider_tb/DUT/clk_level
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {516882 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
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
WaveRestoreZoom {0 ps} {369202 ps}
