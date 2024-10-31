
########### Reports & Netlist & GDS Generation ############

set top_module SYS_TOP

# Generate Post-PNR Gate Level Netlist
saveNetlist export/${top_module}.v 

# Generate Post-PNR Gate Level Netlist with PG Pins
saveNetlist export/${top_module}_pg.v -includePowerGround

# SPF File standard for defining netlist parasitics.
rcOut -spf export/${top_module}.spf

# Generate SDF File
delayCal -sdf export/${top_module}.sdf -version 3.0

#report power
report_power -outfile report/power.rpt

# Generate GDS File
streamOut export/${top_module}.gds -mapFile ./import/gds2InLayer.map -libName DesignLib -stripes 1 -units 2000 -mode ALL
