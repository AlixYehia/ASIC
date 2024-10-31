library verilog;
use verilog.vl_types.all;
entity fifo_wr is
    generic(
        P_SIZE          : integer := 4
    );
    port(
        w_clk           : in     vl_logic;
        w_rstn          : in     vl_logic;
        w_inc           : in     vl_logic;
        sync_rd_ptr     : in     vl_logic_vector;
        w_addr          : out    vl_logic_vector;
        gray_w_ptr      : out    vl_logic_vector;
        full            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of P_SIZE : constant is 1;
end fifo_wr;
