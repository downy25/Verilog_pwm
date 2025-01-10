module top_pwm_ctr(clk_in,pwm_out);
	input clk_in; //5MHz
	output pwm_out;
	
	wire clk_5mhz;
	wire [12:0] duty_cnt;
	
	clk_5mhz uut001
   (
        // Clock out ports
        .clk_out1(clk_5mhz),     // output clk 5Mhz
        // Clock in ports
        .clk_in1(clk_in)      // input clk_in1
    );
    vio_0 uut002 (
        .clk(clk_5mhz),                // input wire clk
        .probe_out0(duty_cnt)  // output wire [12 : 0] probe_out0
    );
	pwm_ctr uut01(clk_5mhz,pwm_out,duty_cnt);
endmodule
module pwm_ctr(clk_in,pwm_out,duty_cnt);
	input clk_in; //5MHz
	input [12:0] duty_cnt;
	output pwm_out;
	
	reg [12:0] cnt;
	reg pwm_out;
	
	initial begin
		cnt = 13'd0;
		pwm_out = 1'b1;
	end
	
	always @(posedge clk_in) begin
		if( cnt == duty_cnt)  //fpga올릴때 문제가됨 duty_cnt를 넣을수가 없음
			pwm_out = 1'b0;
		else if( cnt >= 13'd4999) begin
			pwm_out = 1'b1;
			cnt = 13'd0;
		end
			cnt = cnt + 1'd1;
	end
	
endmodule