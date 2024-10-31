library verilog;
use verilog.vl_types.all;
entity Async_fifo is
    generic(
        D_SIZE          : integer := 16;
        F_DEPTH         : integer := 8;
        P_SIZE          : integer := 4
    );
    port(
        i_w_clk         : in     vl_logic;
        i_w_rstn        : in     vl_logic;
        i_w_inc         : in     vl_logic;
        i_r_clk         : in     vl_logic;
        i_r_rstn        : in     vl_logic;
        i_r_inc         : in     vl_logic;
        i_w_data        : in     vl_logic_vector;
        o_r_data        : out    vl_logic_vector;
        o_full          : out    vl_logic;
        o_empty         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of D_SIZE : constant is 1;
    attribute mti_svvh_generic_type of F_DEPTH : constant is 1;
    attribute mti_svvh_generic_type of P_SIZE : constant is 1;
end Async_fifo;
