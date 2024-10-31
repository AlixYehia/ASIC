library verilog;
use verilog.vl_types.all;
entity UART_TX_parity_Calc is
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        P_DATA          : in     vl_logic_vector(7 downto 0);
        Data_Valid      : in     vl_logic;
        busy            : in     vl_logic;
        PAR_TYP         : in     vl_logic;
        par_bit         : out    vl_logic
    );
end UART_TX_parity_Calc;
