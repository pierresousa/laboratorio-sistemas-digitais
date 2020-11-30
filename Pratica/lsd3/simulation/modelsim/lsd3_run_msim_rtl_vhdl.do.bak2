transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/altera/13.0sp1/lsd3/lsd3.vhd}

vcom -93 -work work {C:/altera/13.0sp1/lsd3/tb_lsd3.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_lsd3

add wave *
view structure
view signals
run -all
