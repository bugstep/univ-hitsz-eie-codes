proc init { cellpath otherInfo } {
    set cell [get_bd_cells $cellpath]

    bd::mark_propagate_only $cell {C_REGS_BASEADDR C_REGS_HIGHADDR}
}

proc post_config_ip { cellpath otherInfo } {
    set cell [get_bd_cells $cellpath]
}

proc pre_propagate {cellpath otherInfo} {
    set cell [get_bd_cells $cellpath]
}

proc propagate {cellpath otherInfo} {
    # standard parameter propagation
    set cell [get_bd_cells $cellpath]
}

proc post_propagate {cellpath otherInfo} {
    set cell [get_bd_cells $cellpath]

    # Assign C_REGS_BASEADDR and C_REGS_HIGHADDR to show in dialogue
    set s_axi_seg [get_bd_addr_segs $cellpath/s_axi/reg0]
    set axi_master_segs [get_bd_addr_segs -quiet -of_object $s_axi_seg]

    if {[string length $axi_master_segs] > 0} {
        set s_axi_base 0xFFFFF
        set s_axi_high 0
        set s_axi_segs {}

        foreach axi_master_seg $axi_master_segs {
            set s_reg_offset [expr ([get_property offset $axi_master_seg] >> 12) & 0xFFFFF]
            set s_reg_range  [expr ([get_property range  $axi_master_seg] >> 12) & 0xFFFFF]
            set s_reg_high   [expr $s_reg_offset + $s_reg_range - 1]

            if {$s_axi_base > $s_reg_offset} { 
                set s_axi_base $s_reg_offset
            }
            if {$s_axi_high < $s_reg_high} { 
                set s_axi_high $s_reg_high  
            }
            tcl::lappend s_axi_segs [list $s_reg_offset $s_reg_high]
        }

        set_property CONFIG.C_REGS_BASEADDR [format "0x%05X000" $s_axi_base] $cell
        set_property CONFIG.C_REGS_HIGHADDR [format "0x%05XFFF" $s_axi_high] $cell
    } 
}
