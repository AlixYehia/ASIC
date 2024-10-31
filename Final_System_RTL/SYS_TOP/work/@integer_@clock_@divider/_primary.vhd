library verilog;
use verilog.vl_types.all;
entity Integer_Clock_Divider is
    port(
        i_ref_clk       : in     vl_logic;
        i_rst_n         : in     vl_logic;
        i_clk_en        : in     vl_logic;
        i_div_ratio     : in     vl_logic_vector(7 downto 0);
        o_div_clk       : out    vl_logic
    );
end Integer_Clock_Divider;
