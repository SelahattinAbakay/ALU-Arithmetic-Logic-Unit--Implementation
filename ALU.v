module alu

(
input [16:0] opcode,
input[7:0] in_1,
input [7:0] in_2,
output zero, carry ,
output reg [31:0 ]result
);
always@(opcode)
begin
case(opcode)
17'b00000000000110011 : result = in_1 + in_2; 
17'b01000000000110011 : result = in_1 - in_2 ;
17'b00000000010110011 : result = in_1 << in_2;
17'b00000000100110011 : result = (in_1 < in_2) ? 1:0;
17'b00000000110110011 : result = (in_1 < in_2) ? 1:0;
17'b00000001000110011 : result = in_1^in_2;
17'b00000001010110011 : result = in_1 >> in_2;
17'b00000001010110011 : result = in_1 >> in_2;
17'b00000001100110011 : result = in_1 | in_2;
17'b00000001110110011 : result = in_1 & in_2;
endcase
end

endmodule