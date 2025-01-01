library verilog;
use verilog.vl_types.all;
entity FIFO_WR is
    port(
        W_CLK           : in     vl_logic;
        W_RST           : in     vl_logic;
        W_INC           : in     vl_logic;
        wq2_rptr        : in     vl_logic_vector(3 downto 0);
        W_ptr           : out    vl_logic_vector(3 downto 0);
        W_addr          : out    vl_logic_vector(2 downto 0);
        FULL            : out    vl_logic
    );
end FIFO_WR;
