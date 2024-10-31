library verilog;
use verilog.vl_types.all;
entity BIT_SYNC is
    generic(
        NUM_STAGES      : integer := 2;
        BUS_WIDTH       : integer := 1
    );
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        ASYNC           : in     vl_logic_vector;
        SYNC            : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NUM_STAGES : constant is 1;
    attribute mti_svvh_generic_type of BUS_WIDTH : constant is 1;
end BIT_SYNC;
