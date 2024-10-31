library verilog;
use verilog.vl_types.all;
entity fifo_mem is
    generic(
        D_SIZE          : integer := 16;
        F_DEPTH         : integer := 8;
        P_SIZE          : integer := 4
    );
    port(
        w_clk           : in     vl_logic;
        w_rstn          : in     vl_logic;
        w_full          : in     vl_logic;
        w_inc           : in     vl_logic;
        w_addr          : in     vl_logic_vector;
        r_addr          : in     vl_logic_vector;
        w_data          : in     vl_logic_vector;
        r_data          : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of D_SIZE : constant is 1;
    attribute mti_svvh_generic_type of F_DEPTH : constant is 1;
    attribute mti_svvh_generic_type of P_SIZE : constant is 1;
end fifo_mem;
