library verilog;
use verilog.vl_types.all;
entity SYS_TOP_tb is
    generic(
        REF_CLK_PERIOD  : integer := 20;
        UART_CLK_PERIOD : real    := 271.267000;
        DATA_WIDTH_tb   : integer := 8;
        ADDR_WIDTH_tb   : integer := 4;
        RF_Wr_CMD       : vl_logic_vector(0 to 7) := (Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0);
        RF_Rd_CMD       : vl_logic_vector(0 to 7) := (Hi1, Hi0, Hi1, Hi1, Hi1, Hi0, Hi1, Hi1);
        ALU_OPER_W_OP_CMD: vl_logic_vector(0 to 7) := (Hi1, Hi1, Hi0, Hi0, Hi1, Hi1, Hi0, Hi0);
        ALU_OPER_W_NOP_CMD: vl_logic_vector(0 to 7) := (Hi1, Hi1, Hi0, Hi1, Hi1, Hi1, Hi0, Hi1)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of REF_CLK_PERIOD : constant is 1;
    attribute mti_svvh_generic_type of UART_CLK_PERIOD : constant is 1;
    attribute mti_svvh_generic_type of DATA_WIDTH_tb : constant is 1;
    attribute mti_svvh_generic_type of ADDR_WIDTH_tb : constant is 1;
    attribute mti_svvh_generic_type of RF_Wr_CMD : constant is 1;
    attribute mti_svvh_generic_type of RF_Rd_CMD : constant is 1;
    attribute mti_svvh_generic_type of ALU_OPER_W_OP_CMD : constant is 1;
    attribute mti_svvh_generic_type of ALU_OPER_W_NOP_CMD : constant is 1;
end SYS_TOP_tb;
