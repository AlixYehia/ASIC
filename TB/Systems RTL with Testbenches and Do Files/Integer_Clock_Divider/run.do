vlib work
vlog *.*v
vsim -voptargs=+acc work.Integer_Clock_Divider_tb
do wave.do
run -all