onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_pwm_ctr/clk_in
add wave -noupdate -radix unsigned /tb_pwm_ctr/dut/cnt
add wave -noupdate /tb_pwm_ctr/pwm_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {99315 ps} {100403 ps}
