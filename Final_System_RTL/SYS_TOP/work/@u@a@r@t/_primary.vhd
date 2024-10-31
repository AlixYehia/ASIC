library verilog;
use verilog.vl_types.all;
entity UART is
    port(
        TX_CLK          : in     vl_logic;
        TX_IN_P         : in     vl_logic_vector(7 downto 0);
        TX_IN_V         : in     vl_logic;
        TX_OUT_S        : out    vl_logic;
        TX_OUT_V        : out    vl_logic;
        RST             : in     vl_logic;
        PAR_TYP         : in     vl_logic;
        PAR_EN          : in     vl_logic;
        RX_CLK          : in     vl_logic;
        RX_IN_S         : in     vl_logic;
        Prescale        : in     vl_logic_vector(5 downto 0);
        RX_OUT_P        : out    vl_logic_vector(7 downto 0);
        RX_OUT_V        : out    vl_logic;
        parity_error    : out    vl_logic;
        framing_error   : out    vl_logic
    );
end UART;
