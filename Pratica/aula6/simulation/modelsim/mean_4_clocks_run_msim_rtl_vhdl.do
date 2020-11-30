transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/altera/13.0sp1/aula6/mean_4_clocks.vhd}

vcom -93 -work work {C:/altera/13.0sp1/aula6/tb_mean_4_clocks.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_mean_4_clocks

add wave *
view structure
view signals
run -all
