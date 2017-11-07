
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name check2 -dir "D:/3HA08/check2/planAhead_run_1" -part xc3s200tq144-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "music2.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {music2.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top music2 $srcset
add_files [list {music2.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s200tq144-4
