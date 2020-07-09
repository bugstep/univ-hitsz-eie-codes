source scripts/project.tcl

reset_run impl_1
reset_run synth_1

# set synthesis and implementation settings
set_property STEPS.PHYS_OPT_DESIGN.IS_ENABLED true [get_runs impl_1]
set_property strategy Performance_Explore [get_runs impl_1]

launch_runs synth_1
wait_on_run synth_1

launch_runs impl_1 -to_step write_bitstream
wait_on_run impl_1

set f [open vivado.log r]
set s [read $f]
close $f

if {[regexp {CRITICAL WARNING: \[Route} $s]} {
    puts "The design did not met all timing constraints."
    exit 1
} else {
    exit 0
}


close_project
