Run System from inside of SYS_TOP folder as all RTL files paths included in SYS_TOP.sv 

NOTE:
---------------------------
don't change SYS_TOP.sv extension as UART FSMs are in system Verilog so including them in .v file will cause error due to typedef enum bit part.