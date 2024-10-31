library verilog;
use verilog.vl_types.all;
entity ALU_16B is
    generic(
        OPER_WIDTH      : integer := 8;
        OUT_WIDTH       : vl_notype
    );
    port(
        A               : in     vl_logic_vector;
        B               : in     vl_logic_vector;
        EN              : in     vl_logic;
        ALU_FUN         : in     vl_logic_vector(3 downto 0);
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        ALU_OUT         : out    vl_logic_vector;
        OUT_VALID       : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of OPER_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of OUT_WIDTH : constant is 3;
end ALU_16B;
