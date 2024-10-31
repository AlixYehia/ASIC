#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Tue Oct 29 17:46:59 2024                #
#                                                     #
#######################################################

#@(#)CDS: First Encounter v08.10-p004_1 (32bit) 11/04/2008 14:34 (Linux 2.6)
#@(#)CDS: NanoRoute v08.10-p008 NR081027-0018/USR58-UB (database version 2.30, 67.1.1) {superthreading v1.11}
#@(#)CDS: CeltIC v08.10-p002_1 (32bit) 10/23/2008 22:04:14 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CTE v08.10-p016_1 (32bit) Oct 26 2008 15:11:51 (Linux 2.6.9-67.0.10.ELsmp)
#@(#)CDS: CPE v08.10-p009

setUIVar rda_Input ui_topcell SYS_TOP
setUIVar rda_Input ui_netlist /home/ahesham/Projects/System_pnr/DFT/netlists/SYS_TOP.v
setUIVar rda_Input ui_timelib,min /home/ahesham/Projects/System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib
setUIVar rda_Input ui_timelib,max /home/ahesham/Projects/System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib
setUIVar rda_Input ui_timelib /home/ahesham/Projects/System_pnr/std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib
setUIVar rda_Input ui_leffile {/home/ahesham/Projects/System_pnr/std_cells/lef/tsmc13fsg_7lm_tech.lef /home/ahesham/Projects/System_pnr/std_cells/lef/tsmc13_m_macros.lef /home/ahesham/Projects/System_pnr/pnr/import/SYS_TOP.lef}
setUIVar rda_Input ui_captbl_file /home/ahesham/Projects/System_pnr/std_cells/captables/tsmc13fsg.capTbl
setUIVar rda_Input ui_timingcon_file /home/ahesham/Projects/System_pnr/DFT/sdc/SYS_TOP.sdc
setUIVar rda_Input ui_pwrnet VDD
setUIVar rda_Input ui_gndnet VSS
commitConfig
create_library_set -name min_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib"
create_library_set -name max_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib"
create_library_set -name typ_library -timing "../std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib"
create_constraint_mode -name func_mode -sdc_files {../DFT/sdc/SYS_TOP_func.sdc}
create_constraint_mode -name func_mode -sdc_files {../DFT/sdc/SYS_TOP_capture.sdc}
floorPlan -d 240.47 160.47 4.0 4.0 4.0 4.0
addRing -spacing_bottom 0.5 -width_left 1 -width_bottom 1 -width_top 1 -spacing_top 0.5 -layer_bottom METAL5 -center 1 -stacked_via_top_layer METAL7 -width_right 1 -around core -jog_distance 0.205 -offset_bottom 0.205 -layer_top METAL5 -threshold 0.205 -offset_left 0.205 -spacing_right 0.5 -spacing_left 0.5 -offset_right 0.205 -offset_top 0.205 -layer_right METAL6 -nets {VSS VDD } -stacked_via_bottom_layer METAL1 -layer_left METAL6
zoomBox -10.030 163.364 31.003 121.800
zoomBox -1.903 162.489 13.547 135.543
zoomBox -3.372 153.579 14.232 139.512
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
addStripe -block_ring_top_layer_limit METAL7 -max_same_layer_jog_length 0.8 -padcore_ring_bottom_layer_limit METAL5 -set_to_set_distance 60 -stacked_via_top_layer METAL7 -padcore_ring_top_layer_limit METAL7 -spacing 0.5 -merge_stripes_value 0.205 -layer METAL6 -block_ring_bottom_layer_limit METAL5 -width 1 -nets {VSS VDD } -stacked_via_bottom_layer METAL1
windowSelect -17.636 127.282 72.391 38.316
deselectAll
zoomBox -20.466 129.759 49.928 79.174
zoomBox -5.974 114.451 10.550 107.204
selectWire 5.6000 0.8000 6.6000 159.5900 6 VDD
deleteSelectedFromFPlan
selectWire 4.1000 2.3000 5.1000 158.0900 6 VSS
deleteSelectedFromFPlan
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
saveFPlan /home/ahesham/Projects/System_pnr/pnr/SYS_TOP.fp
uiSetTool ruler
zoomBox -7.200 138.779 26.936 113.487
uiSetTool ruler
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage 1 0
panPage -1 0
uiSetTool select
zoomBox -13.922 121.623 48.337 61.840
setLayerPreference hinst -isVisible 0
setLayerPreference fence -isVisible 0
setLayerPreference guide -isVisible 0
setLayerPreference obstruct -isVisible 0
setLayerPreference region -isVisible 0
setLayerPreference screen -isVisible 0
setLayerPreference inst -isVisible 0
setLayerPreference stdCell -isVisible 0
setLayerPreference coverCell -isVisible 0
setLayerPreference block -isVisible 0
setLayerPreference io -isVisible 0
setLayerPreference areaIo -isVisible 0
setLayerPreference net -isVisible 0
setLayerPreference power -isVisible 0
setLayerPreference term -isVisible 0
setLayerPreference ruler -isVisible 0
setLayerPreference text -isVisible 0
setLayerPreference relFPlan -isVisible 0
setLayerPreference yieldCell -isVisible 0
setLayerPreference yieldMap -isVisible 0
setLayerPreference sdpConnect -isVisible 0
setLayerPreference densityMap -isVisible 0
setLayerPreference hinst -isVisible 1
setLayerPreference fence -isVisible 1
setLayerPreference guide -isVisible 1
setLayerPreference obstruct -isVisible 1
setLayerPreference region -isVisible 1
setLayerPreference screen -isVisible 1
setLayerPreference inst -isVisible 1
setLayerPreference stdCell -isVisible 1
setLayerPreference coverCell -isVisible 1
setLayerPreference block -isVisible 1
setLayerPreference io -isVisible 1
setLayerPreference areaIo -isVisible 1
setLayerPreference net -isVisible 1
setLayerPreference power -isVisible 1
setLayerPreference term -isVisible 1
setLayerPreference ruler -isVisible 1
setLayerPreference text -isVisible 1
setLayerPreference relFPlan -isVisible 1
setLayerPreference yieldCell -isVisible 1
setLayerPreference yieldMap -isVisible 1
setLayerPreference sdpConnect -isVisible 1
setLayerPreference densityMap -isVisible 1
setLayerPreference hinst -isSelectable 0
setLayerPreference fence -isSelectable 0
setLayerPreference guide -isSelectable 0
setLayerPreference obstruct -isSelectable 0
setLayerPreference region -isSelectable 0
setLayerPreference screen -isSelectable 0
setLayerPreference inst -isSelectable 0
setLayerPreference stdCell -isSelectable 0
setLayerPreference coverCell -isSelectable 0
setLayerPreference block -isSelectable 0
setLayerPreference io -isSelectable 0
setLayerPreference areaIo -isSelectable 0
setLayerPreference net -isSelectable 0
setLayerPreference power -isSelectable 0
setLayerPreference term -isSelectable 0
setLayerPreference ruler -isSelectable 0
setLayerPreference text -isSelectable 0
setLayerPreference relFPlan -isSelectable 0
setLayerPreference yieldCell -isSelectable 0
setLayerPreference yieldMap -isSelectable 0
setLayerPreference sdpConnect -isSelectable 0
setLayerPreference densityMap -isSelectable 0
setLayerPreference hinst -isSelectable 1
setLayerPreference fence -isSelectable 1
setLayerPreference guide -isSelectable 1
setLayerPreference obstruct -isSelectable 1
setLayerPreference region -isSelectable 1
setLayerPreference screen -isSelectable 1
setLayerPreference inst -isSelectable 1
setLayerPreference stdCell -isSelectable 1
setLayerPreference coverCell -isSelectable 1
setLayerPreference block -isSelectable 1
setLayerPreference io -isSelectable 1
setLayerPreference areaIo -isSelectable 1
setLayerPreference net -isSelectable 1
setLayerPreference power -isSelectable 1
setLayerPreference term -isSelectable 1
setLayerPreference ruler -isSelectable 1
setLayerPreference text -isSelectable 1
setLayerPreference relFPlan -isSelectable 1
setLayerPreference yieldCell -isSelectable 1
setLayerPreference yieldMap -isSelectable 1
setLayerPreference sdpConnect -isSelectable 1
setLayerPreference densityMap -isSelectable 1
setLayerPreference hinst -isVisible 0
setLayerPreference fence -isVisible 0
setLayerPreference guide -isVisible 0
setLayerPreference obstruct -isVisible 0
setLayerPreference region -isVisible 0
setLayerPreference screen -isVisible 0
setLayerPreference inst -isVisible 0
setLayerPreference stdCell -isVisible 0
setLayerPreference coverCell -isVisible 0
setLayerPreference block -isVisible 0
setLayerPreference io -isVisible 0
setLayerPreference areaIo -isVisible 0
setLayerPreference net -isVisible 0
setLayerPreference power -isVisible 0
setLayerPreference term -isVisible 0
setLayerPreference ruler -isVisible 0
setLayerPreference text -isVisible 0
setLayerPreference relFPlan -isVisible 0
setLayerPreference yieldCell -isVisible 0
setLayerPreference yieldMap -isVisible 0
setLayerPreference sdpConnect -isVisible 0
setLayerPreference densityMap -isVisible 0
setLayerPreference hinst -isVisible 1
setLayerPreference fence -isVisible 1
setLayerPreference guide -isVisible 1
setLayerPreference obstruct -isVisible 1
setLayerPreference region -isVisible 1
setLayerPreference screen -isVisible 1
setLayerPreference inst -isVisible 1
setLayerPreference stdCell -isVisible 1
setLayerPreference coverCell -isVisible 1
setLayerPreference block -isVisible 1
setLayerPreference io -isVisible 1
setLayerPreference areaIo -isVisible 1
setLayerPreference net -isVisible 1
setLayerPreference power -isVisible 1
setLayerPreference term -isVisible 1
setLayerPreference ruler -isVisible 1
setLayerPreference text -isVisible 1
setLayerPreference relFPlan -isVisible 1
setLayerPreference yieldCell -isVisible 1
setLayerPreference yieldMap -isVisible 1
setLayerPreference sdpConnect -isVisible 1
setLayerPreference densityMap -isVisible 1
setLayerPreference hinst -isVisible 0
setLayerPreference fence -isVisible 0
setLayerPreference guide -isVisible 0
setLayerPreference obstruct -isVisible 0
setLayerPreference region -isVisible 0
setLayerPreference screen -isVisible 0
setLayerPreference inst -isVisible 0
setLayerPreference stdCell -isVisible 0
setLayerPreference coverCell -isVisible 0
setLayerPreference block -isVisible 0
setLayerPreference io -isVisible 0
setLayerPreference areaIo -isVisible 0
setLayerPreference net -isVisible 0
setLayerPreference power -isVisible 0
setLayerPreference term -isVisible 0
setLayerPreference ruler -isVisible 0
setLayerPreference text -isVisible 0
setLayerPreference relFPlan -isVisible 0
setLayerPreference yieldCell -isVisible 0
setLayerPreference yieldMap -isVisible 0
setLayerPreference sdpConnect -isVisible 0
setLayerPreference densityMap -isVisible 0
setLayerPreference hinst -isVisible 1
setLayerPreference fence -isVisible 1
setLayerPreference guide -isVisible 1
setLayerPreference obstruct -isVisible 1
setLayerPreference region -isVisible 1
setLayerPreference screen -isVisible 1
setLayerPreference inst -isVisible 1
setLayerPreference stdCell -isVisible 1
setLayerPreference coverCell -isVisible 1
setLayerPreference block -isVisible 1
setLayerPreference io -isVisible 1
setLayerPreference areaIo -isVisible 1
setLayerPreference net -isVisible 1
setLayerPreference power -isVisible 1
setLayerPreference term -isVisible 1
setLayerPreference ruler -isVisible 1
setLayerPreference text -isVisible 1
setLayerPreference relFPlan -isVisible 1
setLayerPreference yieldCell -isVisible 1
setLayerPreference yieldMap -isVisible 1
setLayerPreference sdpConnect -isVisible 1
setLayerPreference densityMap -isVisible 1
setLayerPreference hinst -isVisible 0
setLayerPreference fence -isVisible 0
setLayerPreference guide -isVisible 0
setLayerPreference obstruct -isVisible 0
setLayerPreference region -isVisible 0
setLayerPreference screen -isVisible 0
setLayerPreference inst -isVisible 0
setLayerPreference stdCell -isVisible 0
setLayerPreference coverCell -isVisible 0
setLayerPreference block -isVisible 0
setLayerPreference io -isVisible 0
setLayerPreference areaIo -isVisible 0
setLayerPreference net -isVisible 0
setLayerPreference power -isVisible 0
setLayerPreference term -isVisible 0
setLayerPreference ruler -isVisible 0
setLayerPreference text -isVisible 0
setLayerPreference relFPlan -isVisible 0
setLayerPreference yieldCell -isVisible 0
setLayerPreference yieldMap -isVisible 0
setLayerPreference sdpConnect -isVisible 0
setLayerPreference densityMap -isVisible 0
setLayerPreference hinst -isVisible 1
setLayerPreference fence -isVisible 1
setLayerPreference guide -isVisible 1
setLayerPreference obstruct -isVisible 1
setLayerPreference region -isVisible 1
setLayerPreference screen -isVisible 1
setLayerPreference inst -isVisible 1
setLayerPreference stdCell -isVisible 1
setLayerPreference coverCell -isVisible 1
setLayerPreference block -isVisible 1
setLayerPreference io -isVisible 1
setLayerPreference areaIo -isVisible 1
setLayerPreference net -isVisible 1
setLayerPreference power -isVisible 1
setLayerPreference term -isVisible 1
setLayerPreference ruler -isVisible 1
setLayerPreference text -isVisible 1
setLayerPreference relFPlan -isVisible 1
setLayerPreference yieldCell -isVisible 1
setLayerPreference yieldMap -isVisible 1
setLayerPreference sdpConnect -isVisible 1
setLayerPreference densityMap -isVisible 1
zoomBox 263.765 156.997 138.541 99.337
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { 1 6 } -blockPinTarget { nearestRingStripe nearestTarget } -padPinPortConnect { allPort oneGeom } -checkAlignedSecondaryPin 1 -blockPin useLef -allowJogging 1 -crossoverViaBottomLayer 1 -allowLayerChange 1 -targetViaTopLayer 7 -crossoverViaTopLayer 7 -targetViaBottomLayer 1 -nets { VSS VDD }
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
zoomBox -8.616 162.480 77.344 65.201
zoomBox -6.721 131.971 67.456 92.104
zoomBox -4.287 120.986 22.797 100.612
saveFPlan /home/ahesham/Projects/System_pnr/pnr/SYS_TOP.fp
setLayerPreference hinst -isVisible 0
setLayerPreference fence -isVisible 0
setLayerPreference guide -isVisible 0
setLayerPreference obstruct -isVisible 0
setLayerPreference region -isVisible 0
setLayerPreference screen -isVisible 0
setLayerPreference inst -isVisible 0
setLayerPreference stdCell -isVisible 0
setLayerPreference coverCell -isVisible 0
setLayerPreference block -isVisible 0
setLayerPreference io -isVisible 0
setLayerPreference areaIo -isVisible 0
setLayerPreference net -isVisible 0
setLayerPreference power -isVisible 0
setLayerPreference term -isVisible 0
setLayerPreference ruler -isVisible 0
setLayerPreference text -isVisible 0
setLayerPreference relFPlan -isVisible 0
setLayerPreference yieldCell -isVisible 0
setLayerPreference yieldMap -isVisible 0
setLayerPreference sdpConnect -isVisible 0
setLayerPreference densityMap -isVisible 0
setLayerPreference hinst -isVisible 1
setLayerPreference fence -isVisible 1
setLayerPreference guide -isVisible 1
setLayerPreference obstruct -isVisible 1
setLayerPreference region -isVisible 1
setLayerPreference screen -isVisible 1
setLayerPreference inst -isVisible 1
setLayerPreference stdCell -isVisible 1
setLayerPreference coverCell -isVisible 1
setLayerPreference block -isVisible 1
setLayerPreference io -isVisible 1
setLayerPreference areaIo -isVisible 1
setLayerPreference net -isVisible 1
setLayerPreference power -isVisible 1
setLayerPreference term -isVisible 1
setLayerPreference ruler -isVisible 1
setLayerPreference text -isVisible 1
setLayerPreference relFPlan -isVisible 1
setLayerPreference yieldCell -isVisible 1
setLayerPreference yieldMap -isVisible 1
setLayerPreference sdpConnect -isVisible 1
setLayerPreference densityMap -isVisible 1
setLayerPreference hinst -isVisible 0
setLayerPreference fence -isVisible 0
setLayerPreference guide -isVisible 0
setLayerPreference obstruct -isVisible 0
setLayerPreference region -isVisible 0
setLayerPreference screen -isVisible 0
setLayerPreference inst -isVisible 0
setLayerPreference stdCell -isVisible 0
setLayerPreference coverCell -isVisible 0
setLayerPreference block -isVisible 0
setLayerPreference io -isVisible 0
setLayerPreference areaIo -isVisible 0
setLayerPreference net -isVisible 0
setLayerPreference power -isVisible 0
setLayerPreference term -isVisible 0
setLayerPreference ruler -isVisible 0
setLayerPreference text -isVisible 0
setLayerPreference relFPlan -isVisible 0
setLayerPreference yieldCell -isVisible 0
setLayerPreference yieldMap -isVisible 0
setLayerPreference sdpConnect -isVisible 0
setLayerPreference densityMap -isVisible 0
setLayerPreference hinst -isVisible 1
setLayerPreference fence -isVisible 1
setLayerPreference guide -isVisible 1
setLayerPreference obstruct -isVisible 1
setLayerPreference region -isVisible 1
setLayerPreference screen -isVisible 1
setLayerPreference inst -isVisible 1
setLayerPreference stdCell -isVisible 1
setLayerPreference coverCell -isVisible 1
setLayerPreference block -isVisible 1
setLayerPreference io -isVisible 1
setLayerPreference areaIo -isVisible 1
setLayerPreference net -isVisible 1
setLayerPreference power -isVisible 1
setLayerPreference term -isVisible 1
setLayerPreference ruler -isVisible 1
setLayerPreference text -isVisible 1
setLayerPreference relFPlan -isVisible 1
setLayerPreference yieldCell -isVisible 1
setLayerPreference yieldMap -isVisible 1
setLayerPreference sdpConnect -isVisible 1
setLayerPreference densityMap -isVisible 1
setDrawView ameba
setDrawView fplan
panPage -1 0
panPage 1 0
panPage -1 0
panPage 1 0
panPage -1 0
panPage 1 0
panPage -1 0
panPage 1 0
panPage -1 0
panPage 1 0
panPage -1 0
panPage 1 0
panPage -1 0
panPage 1 0
panPage -1 0
zoomOut
zoomOut
panPage -1 0
panPage 1 0
zoomBox 276.765 -31.194 -247.834 170.439
panPage -1 0
zoomOut
fit
zoomOut
zoomOut
zoomBox -318.052 194.847 276.235 -52.065
uiSetTool select
zoomBox -29.913 173.440 -15.620 190.591
setDrawView place
setLayerPreference hinst -isVisible 0
setLayerPreference fence -isVisible 0
setLayerPreference guide -isVisible 0
setLayerPreference obstruct -isVisible 0
setLayerPreference region -isVisible 0
setLayerPreference screen -isVisible 0
setLayerPreference inst -isVisible 0
setLayerPreference stdCell -isVisible 0
setLayerPreference coverCell -isVisible 0
setLayerPreference block -isVisible 0
setLayerPreference io -isVisible 0
setLayerPreference areaIo -isVisible 0
setLayerPreference net -isVisible 0
setLayerPreference power -isVisible 0
setLayerPreference term -isVisible 0
setLayerPreference ruler -isVisible 0
setLayerPreference text -isVisible 0
setLayerPreference relFPlan -isVisible 0
setLayerPreference yieldCell -isVisible 0
setLayerPreference yieldMap -isVisible 0
setLayerPreference sdpConnect -isVisible 0
setLayerPreference densityMap -isVisible 0
zoomBox 253.153 145.323 205.751 63.433
zoomBox 245.739 134.328 225.390 75.987
zoomBox 246.174 120.824 228.228 113.108
zoomBox 241.444 121.006 238.043 117.597
zoomBox 240.954 120.517 239.021 118.621
zoomBox 240.871 120.353 239.873 119.633
selectPhyPin 240.4700 120.0000 240.6700 120.2000 3 {SO[1]}
deselectAll
selectPhyPin 240.4700 120.0000 240.6700 120.2000 3 {SO[1]}
setLayerPreference hinst -isVisible 1
setLayerPreference fence -isVisible 1
setLayerPreference guide -isVisible 1
setLayerPreference obstruct -isVisible 1
setLayerPreference region -isVisible 1
setLayerPreference screen -isVisible 1
setLayerPreference inst -isVisible 1
setLayerPreference stdCell -isVisible 1
setLayerPreference coverCell -isVisible 1
setLayerPreference block -isVisible 1
setLayerPreference io -isVisible 1
setLayerPreference areaIo -isVisible 1
setLayerPreference net -isVisible 1
setLayerPreference power -isVisible 1
setLayerPreference term -isVisible 1
setLayerPreference ruler -isVisible 1
setLayerPreference text -isVisible 1
setLayerPreference relFPlan -isVisible 1
setLayerPreference yieldCell -isVisible 1
setLayerPreference yieldMap -isVisible 1
setLayerPreference sdpConnect -isVisible 1
setLayerPreference densityMap -isVisible 1
deselectAll
zoomBox 246.432 146.916 208.582 32.480
zoomBox 245.338 131.322 213.346 76.626
zoomBox 242.632 122.937 225.971 97.343
zoomBox -17.105 141.078 72.921 17.977
zoomBox -9.775 124.426 32.410 64.603
zoomBox -5.077 113.756 16.682 93.196
zoomBox -3.231 112.912 5.524 103.270
zoomBox -1.235 111.086 2.707 107.869
zoomBox -0.839 110.686 0.609 109.436
selectObject IO_Pin SE
deselectAll
selectPhyPin -0.1000 110.1000 0.1000 110.3000 2 SE
deselectAll
selectObject IO_Pin SE
deselectAll
zoomBox -8.085 160.358 86.010 39.024
zoomBox -6.325 157.684 37.929 103.095
zoomBox -4.409 153.965 10.305 141.111
zoomBox -1.643 152.715 3.611 143.764
zoomBox -0.976 151.091 2.136 148.069
zoomBox 263.235 153.106 147.915 43.446
zoomBox 253.537 148.272 197.828 108.715
zoomBox 245.917 145.379 223.522 123.777
zoomBox 244.817 142.716 232.219 134.643
zoomBox 242.308 141.333 238.198 139.294
zoomBox -15.337 118.262 73.099 0.113
zoomBox -14.863 90.086 32.729 37.996
zoomBox -1.584 78.603 -1.689 77.246
zoomBox -18.166 124.806 74.514 18.154
zoomBox -7.787 99.372 35.281 55.343
zoomBox -6.657 89.225 9.622 65.490
zoomBox -1.407 83.683 7.939 72.910
zoomBox -1.252 81.189 2.051 76.234
zoomBox -0.685 80.722 0.864 79.660
zoomBox -16.398 108.358 45.330 15.854
zoomBox -3.655 83.610 24.616 49.130
zoomBox -2.562 76.182 8.252 58.320
zoomBox -1.603 72.835 2.764 69.363
verifyGeometry -noMinArea
verifyConnectivity -type all -noAntenna -error 1000 -warning 50
setDrawView place
setDrawView ameba
setDrawView fplan
selectObject Module U0_UART
deselectAll
setLayerPreference allM1 -isVisible 0
setLayerPreference allM1 -isVisible 1
setLayerPreference allM1 -isVisible 0
setLayerPreference allM1 -isVisible 1
setLayerPreference allM1 -isVisible 0
zoomOut
uiSetTool move
selectObject Module U0_UART
setObjFPlanBox Module U0_UART 136.0165 7.53 235.238 73.7425
uiSetTool select
zoomBox 117.671 85.365 258.283 -5.370
deselectAll
selectObject Module U0_UART
uiSetTool move
setObjFPlanBox Module U0_UART 136.6655 4.515 235.8855 70.525
setObjFPlanBox Module U0_UART 136.9845 3.7365 236.2045 69.7465
uiSetTool select
zoomBox 131.745 75.273 247.027 -2.915
zoomBox 132.077 73.471 242.230 -1.270
uiSetTool move
setObjFPlanBox Module U0_UART 137.2395 4.1 236.4595 70.11
setObjFPlanBox Module U0_UART 137.7995 4.175 236.6095 70.185
setObjFPlanBox Module U0_UART 142.403 4.3995 241.213 70.4095
setObjFPlanBox Module U0_UART 137.891 4.1 236.291 70.11
setObjFPlanBox Module U0_UART 137.685 4.1 236.085 70.11
uiSetTool select
zoomBox 246.130 -0.296 197.525 25.765
zoomBox 242.626 1.480 228.682 8.165
zoomBox 236.638 3.552 235.194 5.171
uiSetTool move
setObjFPlanBox Module U0_UART 138.068 4.1015 236.468 70.1115
setObjFPlanBox Module U0_UART 138.483 4.1015 236.473 70.1115
setObjFPlanBox Module U0_UART 138.473 4.0985 236.463 70.1085
setObjFPlanBox Module U0_UART 138.8785 4.108 236.4585 70.118
setObjFPlanBox Module U0_UART 139.3145 4.1145 236.4845 70.1245
setObjFPlanBox Module U0_UART 139.2925 4.11 236.4625 70.12
setObjFPlanBox Module U0_UART 139.6675 4.165 236.4275 70.175
setObjFPlanBox Module U0_UART 140.11 4.1085 236.46 70.1185
uiSetTool select
zoomBox 253.861 46.806 110.949 103.582
zoomBox 246.698 51.226 127.272 104.189
uiSetTool move
setObjFPlanBox Module U0_UART 140.220 4.100 236.160 75.751
setObjFPlanBox Module U0_UART 140.220 4.100 236.160 84.383
uiSetTool select
uiSetTool move
setObjFPlanBox Module U0_UART -62.297 74.1405 33.643 154.5005
uiSetTool select
panPage -1 0
panPage 1 0
zoomOut
uiSetTool move
setObjFPlanBox Module U0_UART -99.4015 76.5175 -3.4615 156.8775
setObjFPlanBox Module U0_UART 100.109 37.606 196.049 117.966
uiSetTool select
zoomBox -37.711 184.235 285.255 -25.887
deselectAll
selectObject Module U0_UART
deselectAll
selectObject Module U0_UART
setLayerPreference allM1 -isVisible 1
setLayerPreference allM1 -isVisible 0
deselectAll
selectObject Module U0_UART
deselectAll
selectObject Module U0_UART
deselectAll
selectObject Module U0_UART
deselectAll
selectObject Module U0_UART
zoomBox -19.292 117.704 29.554 62.541
zoomBox -6.670 109.468 10.741 95.981
zoomBox -2.512 102.332 0.771 98.711
deselectAll
selectObject Module U0_UART
