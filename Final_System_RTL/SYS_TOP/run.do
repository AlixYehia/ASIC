vlib work
vlog *.*v
vsim -voptargs=+acc work.SYS_TOP_tb
do wave.do
run -all