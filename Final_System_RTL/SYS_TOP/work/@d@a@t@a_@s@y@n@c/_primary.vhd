library verilog;
use verilog.vl_types.all;
entity DATA_SYNC is
    generic(
        NUM_STAGES      : integer := 2;
        BUS_WIDTH       : integer := 8
    );
    port(
        unsync_bus      : in     vl_logic_vector;
        bus_enable      : in     vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        sync_bus        : out    vl_logic_vector;
        enable_pulse    : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NUM_STAGES : constant is 1;
    attribute mti_svvh_generic_type of BUS_WIDTH : constant is 1;
end DATA_SYNC;
