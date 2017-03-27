/**
 * This module is only required for testing purposes.
 *
 * It converts the switch inputs into a formatted array of
 * 16 bit integer values. Since there are 18 switches, the
 * SW0-SW15 inputs will be used to toggle whether an input
 * is on or not. The rest of the switches will be used for
 * the actual size of the `on` inputs.
 */
module convert_inputs(switches, output_array);
	// Input switches.
	input [17:0] switches;
	
	// Output port. A 16 element array of 16 bit values.
	output reg [15:0] output_array [15:0];
	
	integer i;
		
	// The logic for converting the inputs to the array.
	always @ (switches, output_array)
	begin : CONVERT_INPUTS
		// For each of the switches, set all the values in the entry to the switch value.
		for (i = 0; i <= 15; i = i + 1) begin
			if (switches[i] == 1'b1) begin
				output_array[i] = 16'b1;
			end
			else begin
				output_array[i] = 16'b0;
			end
		end
	end
endmodule // End of module convert_inputs.