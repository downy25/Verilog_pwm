module tb_pwm_ctr;
	reg clk_in; //5MHz
	reg [12:0] duty_cnt;
	wire pwm_out;
	
	pwm_ctr dut(
		.clk_in(clk_in),
		.pwm_out(pwm_out),
		.duty_cnt(duty_cnt));
		
	initial begin
		clk_in <= 1'b0;
	end
	always #20 clk_in <= ~clk_in;
	
	initial begin
		#0 duty_cnt <= 13'd2499; //duty ratio 50%
		#1000000  duty_cnt <= 13'd499; //duty ratio 10%
		#1000000  $stop;
	end

endmodule