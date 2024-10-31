library verilog;
use verilog.vl_types.all;
entity FIFO_MEM_CNTRL is
    generic(
        DATA_WIDTH      : integer := 8
    );
    port(
        W_CLK           : in     vl_logic;
        W_RST           : in     vl_logic;
        W_INC           : in     vl_logic;
        W_addr          : in     vl_logic_vector(2 downto 0);
        WR_DATA         : in     vl_logic_vector;
        FULL            : in     vl_logic;
        R_addr          : in     vl_logic_vector(2 downto 0);
        RD_DATA         : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
end FIFO_MEM_CNTRL;
