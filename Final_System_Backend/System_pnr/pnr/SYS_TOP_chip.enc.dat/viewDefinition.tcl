create_library_set -name max_library\
   -timing\
    [list ../std_cells/libs/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.lib]
create_library_set -name typ_library\
   -timing\
    [list ../std_cells/libs/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.lib]
create_library_set -name min_library\
   -timing\
    [list ../std_cells/libs/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.lib]
create_constraint_mode -name func_mode\
   -sdc_files\
    [list ../DFT/sdc/SYS_TOP_func.sdc]
