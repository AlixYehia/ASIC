onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group {Write domain} -color Yellow /ASYNC_FIFO_tb/W_CLK_tb
add wave -noupdate -expand -group {Write domain} -color Firebrick /ASYNC_FIFO_tb/W_RST_tb
add wave -noupdate -expand -group {Write domain} -color Cyan /ASYNC_FIFO_tb/W_INC_tb
add wave -noupdate -expand -group {Write domain} /ASYNC_FIFO_tb/WR_DATA_tb
add wave -noupdate -expand -group {Write domain} -color Green /ASYNC_FIFO_tb/FULL_tb
add wave -noupdate -expand -group {Read domain} -color Tan /ASYNC_FIFO_tb/R_CLK_tb
add wave -noupdate -expand -group {Read domain} -color Firebrick /ASYNC_FIFO_tb/R_RST_tb
add wave -noupdate -expand -group {Read domain} -color Magenta /ASYNC_FIFO_tb/R_INC_tb
add wave -noupdate -expand -group {Read domain} /ASYNC_FIFO_tb/RD_DATA_tb
add wave -noupdate -expand -group {Read domain} -color Green /ASYNC_FIFO_tb/EMPTY_tb
add wave -noupdate /ASYNC_FIFO_tb/read_process/expected_data
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {481467 ps} 0}
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
WaveRestoreZoom {456983 ps} {599107 ps}
