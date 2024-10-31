library verilog;
use verilog.vl_types.all;
entity UART_RX is
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        RX_IN           : in     vl_logic;
        Prescale        : in     vl_logic_vector(5 downto 0);
        PAR_EN          : in     vl_logic;
        PAR_TYP         : in     vl_logic;
        data_valid      : out    vl_logic;
        P_DATA          : out    vl_logic_vector(7 downto 0);
        parity_error    : out    vl_logic;
        framing_error   : out    vl_logic
    );
end UART_RX;
