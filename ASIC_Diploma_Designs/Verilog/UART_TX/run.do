vlib work
vlog *.*v
vsim -voptargs=+acc work.UART_TX_tb
do wave.do
run -all