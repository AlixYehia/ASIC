library verilog;
use verilog.vl_types.all;
entity UART_RX_deserializer is
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        bit_cnt         : in     vl_logic_vector(3 downto 0);
        deser_en        : in     vl_logic;
        sampled_bit     : in     vl_logic;
        P_DATA          : out    vl_logic_vector(7 downto 0)
    );
end UART_RX_deserializer;
