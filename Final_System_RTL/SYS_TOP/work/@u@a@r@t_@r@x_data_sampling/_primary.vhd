library verilog;
use verilog.vl_types.all;
entity UART_RX_data_sampling is
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        RX_IN           : in     vl_logic;
        Prescale        : in     vl_logic_vector(5 downto 0);
        dat_samp_en     : in     vl_logic;
        edge_cnt        : in     vl_logic_vector(4 downto 0);
        sampled_bit     : out    vl_logic
    );
end UART_RX_data_sampling;
