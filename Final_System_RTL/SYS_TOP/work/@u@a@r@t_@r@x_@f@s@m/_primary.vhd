library verilog;
use verilog.vl_types.all;
entity UART_RX_FSM is
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        RX_IN           : in     vl_logic;
        PAR_EN          : in     vl_logic;
        Prescale        : in     vl_logic_vector(5 downto 0);
        edge_cnt        : in     vl_logic_vector(4 downto 0);
        bit_cnt         : in     vl_logic_vector(3 downto 0);
        par_err         : in     vl_logic;
        strt_glitch     : in     vl_logic;
        stp_err         : in     vl_logic;
        dat_samp_en     : out    vl_logic;
        enable          : out    vl_logic;
        deser_en        : out    vl_logic;
        stp_chk_en      : out    vl_logic;
        strt_chk_en     : out    vl_logic;
        par_chk_en      : out    vl_logic;
        data_valid      : out    vl_logic
    );
end UART_RX_FSM;
