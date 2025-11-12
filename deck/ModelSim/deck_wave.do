# Deck testbench wave.do file, Cameron Archibald B00893056
onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label CLK /testbench/CLK
add wave -noupdate -label SHUFFLE_START /testbench/SHUFFLE_START
add wave -noupdate -label SHUFFLE_READY /testbench/SHUFFLE_READY
add wave -noupdate -label SEED -radix unsigned /testbench/SEED
add wave -noupdate -label CARD_START /testbench/CARD_START
add wave -noupdate -label CARD_READY /testbench/CARD_READY
add wave -noupdate -label CARD -radix unsigned /testbench/CARD
add wave -noupdate -label TB_STATE -format literal /testbench/STATE
add wave -noupdate -label LFSR_STATE -format literal /testbench/deck_inst/STATE
add wave -noupdate -label LFSR_STATE -format literal /testbench/deck_inst/lfsr/STATE
add wave -noupdate -label CIRCULAR_STATE -format literal /testbench/deck_inst/circular/STATE

TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 73
configure wave -valuecolwidth 64
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {2000 ns}
