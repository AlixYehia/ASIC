library verilog;
use verilog.vl_types.all;
entity RST_SYNC is
    generic(
        NUM_STAGES      : integer := 2
    );
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        SYNC_RST        : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NUM_STAGES : constant is 1;
end RST_SYNC;
