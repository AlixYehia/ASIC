library verilog;
use verilog.vl_types.all;
entity UART_RX_edge_bit_counter is
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        Prescale        : in     vl_logic_vector(5 downto 0);
        PAR_EN          : in     vl_logic;
        enable          : in     vl_logic;
        bit_cnt         : out    vl_logic_vector(3 downto 0);
        edge_cnt        : out    vl_logic_vector(4 downto 0)
    );
end UART_RX_edge_bit_counter;
