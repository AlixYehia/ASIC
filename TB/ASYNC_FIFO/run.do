vlib work
vlog *.*v
vsim -voptargs=+acc work.ASYNC_FIFO_tb
do wave.do
run -all