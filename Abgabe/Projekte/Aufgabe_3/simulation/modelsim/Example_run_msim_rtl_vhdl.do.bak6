transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home_sdb/home_prak/basic_ti/Dokumente/Aufgabe_3/src/Schieber.vhdl}
vcom -93 -work work {/home_sdb/home_prak/basic_ti/Dokumente/Aufgabe_3/src/Zaehler.vhdl}

vcom -93 -work work {/home_sdb/home_prak/basic_ti/Dokumente/Aufgabe_3/src/Schieber_tb.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  Schieber_tb

add wave *
view structure
view signals
run -all
