/**
 * This module transforms bars and coordinates into red green and blue outputs.
 */
module bar_display(bars, x_coord, y_coord, fsm_clk, red, green, blue);
	/* Define inputs */
	input [15:0] bars [15:0];
	input [9:0] x_coord;
	input [9:0] y_coord;
	input fsm_clk;
	output reg [3:0] red;
	output reg [3:0] green;
	output reg [3:0] blue;

	always @ (bars, x_coord, y_coord, fsm_clk, red, green, blue)
	begin : MAIN_DISPLAY
		red = 4'b1111;
		green = 4'b1111;
		blue = 4'b1111;
	end
endmodule // End of the bar_display module.