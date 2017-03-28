`define BAR_SPACING 1
`define PIXELS_PER_BAR 40

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
	
	int _x_coord;
	int _y_coord;
	int bar_index;
	int _current_bar_value;
	int _capped_bar_value;

	always @ (bars, x_coord, y_coord, fsm_clk, red, green, blue)
	begin : MAIN_DISPLAY
		// Static cast of the input x coordinate to integer.
		_x_coord = int'(x_coord);
		_y_coord = int'(y_coord);

		bar_index = x_coord / `PIXELS_PER_BAR;
		_current_bar_value = 480 - (((int'(bars[bar_index]) + 1) * 480) >> 16);
		
		// If we are in the first two pixels of a bar we show black for visual clarity.
		if (_x_coord % `PIXELS_PER_BAR >= `BAR_SPACING && _y_coord >= _current_bar_value) begin
			red = 4'b1111;
			green = 4'b1111;
			blue = 4'b1111;
		end else begin
			red = 4'b0000;
			green = 4'b0000;
			blue = 4'b0000;
		end
	end
endmodule // End of the bar_display module.