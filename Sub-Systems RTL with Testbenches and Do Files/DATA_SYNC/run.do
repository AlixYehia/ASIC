vlib work
vlog *.*v
vsim -voptargs=+acc work.DATA_SYNC_tb
do wave.do
run -all