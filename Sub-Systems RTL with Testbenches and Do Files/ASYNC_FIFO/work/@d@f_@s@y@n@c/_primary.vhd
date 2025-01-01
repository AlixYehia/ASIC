library verilog;
use verilog.vl_types.all;
entity DF_SYNC is
    generic(
        NUM_STAGES      : integer := 2
    );
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        ptr             : in     vl_logic_vector(3 downto 0);
        q2_ptr          : out    vl_logic_vector(3 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NUM_STAGES : constant is 1;
end DF_SYNC;
