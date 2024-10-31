library verilog;
use verilog.vl_types.all;
entity UART_TX_FSM is
    port(
        Data_Valid      : in     vl_logic;
        PAR_EN          : in     vl_logic;
        ser_done        : in     vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        ser_en          : out    vl_logic;
        mux_sel         : out    vl_logic_vector(1 downto 0);
        busy            : out    vl_logic
    );
end UART_TX_FSM;
