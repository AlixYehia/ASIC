library verilog;
use verilog.vl_types.all;
entity SYS_TOP is
    generic(
        DATA_WIDTH      : integer := 8;
        ADDR_WIDTH      : integer := 4
    );
    port(
        RST_N           : in     vl_logic;
        UART_CLK        : in     vl_logic;
        REF_CLK         : in     vl_logic;
        UART_RX_IN      : in     vl_logic;
        UART_TX_O       : out    vl_logic;
        parity_error    : out    vl_logic;
        framing_error   : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of ADDR_WIDTH : constant is 1;
end SYS_TOP;
