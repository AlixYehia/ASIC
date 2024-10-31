library verilog;
use verilog.vl_types.all;
entity FIFO_RD is
    port(
        R_CLK           : in     vl_logic;
        R_RST           : in     vl_logic;
        R_INC           : in     vl_logic;
        rq2_wptr        : in     vl_logic_vector(3 downto 0);
        R_ptr           : out    vl_logic_vector(3 downto 0);
        R_addr          : out    vl_logic_vector(2 downto 0);
        EMPTY           : out    vl_logic
    );
end FIFO_RD;
