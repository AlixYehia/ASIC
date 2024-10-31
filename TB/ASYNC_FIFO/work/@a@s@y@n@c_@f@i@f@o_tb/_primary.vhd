library verilog;
use verilog.vl_types.all;
entity ASYNC_FIFO_tb is
    generic(
        DATA_WIDTH_tb   : integer := 8;
        W_CLK_PERIOD    : integer := 10;
        R_CLK_PERIOD    : integer := 25
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH_tb : constant is 1;
    attribute mti_svvh_generic_type of W_CLK_PERIOD : constant is 1;
    attribute mti_svvh_generic_type of R_CLK_PERIOD : constant is 1;
end ASYNC_FIFO_tb;
