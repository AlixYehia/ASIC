library verilog;
use verilog.vl_types.all;
entity UART_RX_parity_check is
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        RX_IN           : in     vl_logic;
        PAR_TYP         : in     vl_logic;
        Prescale        : in     vl_logic_vector(5 downto 0);
        edge_cnt        : in     vl_logic_vector(4 downto 0);
        bit_cnt         : in     vl_logic_vector(3 downto 0);
        par_chk_en      : in     vl_logic;
        sampled_bit     : in     vl_logic;
        P_DATA          : in     vl_logic_vector(7 downto 0);
        par_err         : out    vl_logic
    );
end UART_RX_parity_check;
