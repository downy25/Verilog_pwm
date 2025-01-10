# clk ip와 vio ip를 이용해서 Pwm파형 출력하기

top --> clk_in, pwm_out

submodule -->clk_in, out:clk_5mhz
submodule -->clk_in, pwm_out, out:duty_cnt
submodule -->clk_in,duty_cnt  out:pwm_out
