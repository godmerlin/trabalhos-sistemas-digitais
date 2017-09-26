module piscaLeds(
	input CLOCK_50,
	input [3:0] KEY,
	input [9:0] SW,
	output [7:0]LEDG,
	output [9:0]LEDR
);
reg [27:0] contador =0;
reg l = 0;
reg temp = 1;
assign LEDG[0] = ~l;
assign LEDG[1] = l;
assign LEDG[2] = ~l;
assign LEDG[3] = l;
assign LEDG[4] = ~l;
assign LEDG[5] = l;
assign LEDG[6] = ~l;
assign LEDG[7] = l;
assign LEDR[0] = ~l;
assign LEDR[1] = l;
assign LEDR[2] = ~l;
assign LEDR[3] = l;
assign LEDR[4] = ~l;
assign LEDR[5] = l;
assign LEDR[6] = ~l;
assign LEDR[7] = l;
assign LEDR[8] = ~l;
assign LEDR[9] = l;

always @(posedge CLOCK_50) begin
	contador = contador + temp;
if (SW[0]==1)begin
if (contador == 25000000) begin // 0,5 segundos
	l=~l;
	contador = 0;
	end
end
if (SW[1]==1)begin
if (contador == 50000000) begin // 1 segundo
	l=~l;
	contador = 0;
	end
end
if (SW[2]==1)begin
if (contador == 100000000) begin // 2 segundos
	l=~l;
	contador = 0;
	end
end
if (SW[3]==1)begin
if (contador == 150000000) begin // 3 segundos
	l=~l;
	contador = 0;
	end
end
end
endmodule
