vlib work
vlog *.*v
vsim -voptargs=+acc work.UART_RX_tb
do wave.do
run -all