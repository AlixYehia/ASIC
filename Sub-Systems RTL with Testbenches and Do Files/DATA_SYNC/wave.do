onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /DATA_SYNC_tb/unsync_bus_tb
add wave -noupdate -color Yellow /DATA_SYNC_tb/bus_enable_tb
add wave -noupdate /DATA_SYNC_tb/CLK_tb
add wave -noupdate -color Firebrick /DATA_SYNC_tb/RST_tb
add wave -noupdate -color {Sky Blue} /DATA_SYNC_tb/sync_bus_tb
add wave -noupdate -color Plum /DATA_SYNC_tb/enable_pulse_tb
add wave -noupdate -expand -group {DUT
} /DATA_SYNC_tb/DUT/sync_reg
add wave -noupdate -expand -group {DUT
} -color Cyan /DATA_SYNC_tb/DUT/enable_flop
add wave -noupdate -expand -group {DUT
} -color Pink /DATA_SYNC_tb/DUT/enable_pulse_comb
add wave -noupdate -expand -group {DUT
} /DATA_SYNC_tb/DUT/mux_select
add wave -noupdate -color Black /DATA_SYNC_tb/DUT/NUM_STAGES
add wave -noupdate -color Black /DATA_SYNC_tb/DUT/BUS_WIDTH
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {31786 ps} 0}
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
WaveRestoreZoom {0 ps} {73500 ps}
