library verilog;
use verilog.vl_types.all;
entity PULSE_GEN is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        lvl_sig         : in     vl_logic;
        pulse_sig       : out    vl_logic
    );
end PULSE_GEN;
