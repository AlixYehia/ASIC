library verilog;
use verilog.vl_types.all;
entity UART_RX_strt_check is
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        strt_chk_en     : in     vl_logic;
        Prescale        : in     vl_logic_vector(5 downto 0);
        edge_cnt        : in     vl_logic_vector(4 downto 0);
        bit_cnt         : in     vl_logic_vector(3 downto 0);
        sampled_bit     : in     vl_logic;
        strt_glitch     : out    vl_logic
    );
end UART_RX_strt_check;
