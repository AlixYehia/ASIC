module CRC (
    input   wire      DATA,
    input   wire      ACTIVE,
    input   wire      CLK,
    input   wire      RST,
    output  reg       CRC,
    output  reg       Valid
    );

reg [7:0] LFSR;     // declare 8-bit register

wire feedback; 

assign feedback = LFSR[0] ^ DATA;

parameter [7:0] Seed = 8'hD8;

//parameter [7:0] tabs = 8'b01000100;

//integer N;

reg [3:0] Counter_0;


always@(posedge CLK or negedge RST)
 begin
     if (!RST)
      begin
          LFSR <= Seed;
          CRC <= 1'b0;
          Valid <= 1'b0;
          Counter_0 <= 4'b0000;
      end
     else if (ACTIVE) 
      begin
          LFSR[7] <= feedback;
          LFSR[6] <= LFSR[7] ^ feedback;
          LFSR[5] <= LFSR[6];
          LFSR[4] <= LFSR[5];
          LFSR[3] <= LFSR[4];
          LFSR[2] <= LFSR[3] ^ feedback;
          LFSR[1] <= LFSR[2];
          LFSR[0] <= LFSR[1]; 
         /*
          for (N=6; N>=0; N=N-1)
           begin
               LFSR[7] <= feedback;
               if (tabs = 1)
                begin
                    LFSR[N] = LFSR[N-1] ^ feedback;
                end
                else
                 begin
                     LFSR[N] = LFSR[N-1];
                 end
           end
         */ 
      end
     else if (!ACTIVE)
      begin
          if (Counter_0 != 4'd8)
           begin

            {LFSR[6:0],CRC} <= LFSR;
               /*CRC <= LFSR[0];
               LFSR[] <= LFSR[2];
               LFSR[2] <= LFSR[3];
               LFSR[3] <= LFSR[4];
               LFSR[4] <= LFSR[5]; 
               LFSR[5] <= LFSR[6];
               LFSR[6] <= LFSR[7];*/
               Valid <= 1'b1;
               Counter_0 <= Counter_0 + 1;
           end
          else
           begin
               Valid <= 1'b0;
               Counter_0 <= 1'b0;

           end
      end
 end

endmodule