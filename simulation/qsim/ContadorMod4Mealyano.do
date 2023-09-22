onerror {exit -code 1}
vlib work
vcom -work work ContadorMod4Mealyano.vho
vcom -work work Waveform.vwf.vht
vsim  -c -t 1ps -L cycloneive -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.ContadorMod4Mealyano_vhd_vec_tst
vcd file -direction ContadorMod4Mealyano.msim.vcd
vcd add -internal ContadorMod4Mealyano_vhd_vec_tst/*
vcd add -internal ContadorMod4Mealyano_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

