library verilog;
use verilog.vl_types.all;
entity ASYNC_FIFO is
    generic(
        DATA_WIDTH      : integer := 8;
        NUM_STAGES      : integer := 2
    );
    port(
        W_CLK           : in     vl_logic;
        W_RST           : in     vl_logic;
        W_INC           : in     vl_logic;
        R_CLK           : in     vl_logic;
        R_RST           : in     vl_logic;
        R_INC           : in     vl_logic;
        WR_DATA         : in     vl_logic_vector;
        FULL            : out    vl_logic;
        RD_DATA         : out    vl_logic_vector;
        EMPTY           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of NUM_STAGES : constant is 1;
end ASYNC_FIFO;
