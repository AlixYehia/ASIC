library verilog;
use verilog.vl_types.all;
entity fifo_rd is
    generic(
        P_SIZE          : integer := 4
    );
    port(
        r_clk           : in     vl_logic;
        r_rstn          : in     vl_logic;
        r_inc           : in     vl_logic;
        sync_wr_ptr     : in     vl_logic_vector;
        rd_addr         : out    vl_logic_vector;
        empty           : out    vl_logic;
        gray_rd_ptr     : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of P_SIZE : constant is 1;
end fifo_rd;
