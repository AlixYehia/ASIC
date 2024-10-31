vlib work
vlog *.*v
vsim -voptargs=+acc work.RST_SYNC_tb
do wave.do
run -all