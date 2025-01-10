# clk ip와 vio ip를 이용해서 Pwm파형 출력하기

top --> clk_in, pwm_out <br/>

submodule -->clk_in, out:clk_5mhz <br/>
submodule -->clk_in, pwm_out, out:duty_cnt <br/>
submodule -->clk_in,duty_cnt  out:pwm_out <br/>
