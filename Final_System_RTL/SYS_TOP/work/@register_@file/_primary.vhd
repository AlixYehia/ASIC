library verilog;
use verilog.vl_types.all;
entity Register_File is
    generic(
        ADDR_WIDTH      : integer := 4;
        DATA_WIDTH      : integer := 8;
        MEM_DEPTH       : integer := 16
    );
    port(
        WrData          : in     vl_logic_vector;
        Adresss         : in     vl_logic_vector;
        WrEn            : in     vl_logic;
        RdEn            : in     vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        RdData          : out    vl_logic_vector;
        RdData_Valid    : out    vl_logic;
        REG0            : out    vl_logic_vector;
        REG1            : out    vl_logic_vector;
        REG2            : out    vl_logic_vector;
        REG3            : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of MEM_DEPTH : constant is 1;
end Register_File;
