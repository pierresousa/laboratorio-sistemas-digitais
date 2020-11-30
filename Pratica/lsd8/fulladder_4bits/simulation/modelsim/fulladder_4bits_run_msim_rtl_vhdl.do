transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/altera/13.0sp1/lsd8/fulladder_4bits/fulladder.vhd}
vcom -93 -work work {C:/altera/13.0sp1/lsd8/fulladder_4bits/fulladder_4bits.vhd}

vcom -93 -work work {C:/altera/13.0sp1/lsd8/fulladder_4bits/tb_fulladder_4bits.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_fulladder_4bits

add wave *
view structure
view signals
run -all
