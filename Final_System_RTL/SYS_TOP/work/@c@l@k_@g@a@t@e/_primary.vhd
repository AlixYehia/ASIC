library verilog;
use verilog.vl_types.all;
entity CLK_GATE is
    port(
        CLK_EN          : in     vl_logic;
        CLK             : in     vl_logic;
        GATED_CLK       : out    vl_logic
    );
end CLK_GATE;
