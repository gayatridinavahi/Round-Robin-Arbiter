onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /tb/clk
add wave -noupdate -format Logic /tb/rst
add wave -noupdate -format Logic /tb/rboss
add wave -noupdate -format Logic /tb/reng
add wave -noupdate -format Logic /tb/rboy
add wave -noupdate -format Literal -radix unsigned /tb/printer
add wave -noupdate -format Literal /tb/KABALI/state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1555 ps} 0}
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {2672 ps}
