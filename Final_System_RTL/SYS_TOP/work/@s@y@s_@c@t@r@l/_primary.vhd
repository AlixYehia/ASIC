library verilog;
use verilog.vl_types.all;
entity SYS_CTRL is
    generic(
        ADDR_WIDTH      : integer := 4;
        DATA_WIDTH      : integer := 8
    );
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        UART_RX_DATA    : in     vl_logic_vector;
        UART_RX_Valid   : in     vl_logic;
        FIFO_FULL       : in     vl_logic;
        FIFO_WR_DATA    : out    vl_logic_vector;
        FIFO_WR_INC     : out    vl_logic;
        ALU_OUT         : in     vl_logic_vector;
        ALU_OUT_Valid   : in     vl_logic;
        ALU_EN          : out    vl_logic;
        ALU_FUN         : out    vl_logic_vector(3 downto 0);
        CLKG_EN         : out    vl_logic;
        CLKDIV_EN       : out    vl_logic;
        Rd_Reg          : in     vl_logic_vector;
        Rd_Reg_Valid    : in     vl_logic;
        Wr_Reg          : out    vl_logic_vector;
        Addr            : out    vl_logic_vector;
        RdEn            : out    vl_logic;
        WrEn            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
end SYS_CTRL;
