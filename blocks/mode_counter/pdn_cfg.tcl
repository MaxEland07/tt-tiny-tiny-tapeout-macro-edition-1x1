# Power grid for a macro that sits inside a Tiny Tapeout tile.
#
# A Tiny Tapeout tile may only use met1 to met4, and its power comes down vertical met4 straps.
# So this macro stops one layer lower: nothing on met4, and its power pins are horizontal met3
# straps. The tile's met4 straps run straight over the macro and drop vias onto these pins.
#
#   met1  standard cell rails (horizontal)
#   met2  thin vertical straps that tie the rails together
#   met3  horizontal straps, the VPWR and VGND pins the tile connects to

source $::env(SCRIPTS_DIR)/openroad/common/set_global_connections.tcl
set_global_connections

set_voltage_domain -name CORE -power $::env(VDD_NET) -ground $::env(GND_NET)

define_pdn_grid -name stdcell_grid -starts_with POWER -voltage_domain CORE -pins met3

add_pdn_stripe -grid stdcell_grid -layer met2 -width 0.6 -pitch 20 -offset 5 -spacing 1.7 -starts_with POWER
add_pdn_stripe -grid stdcell_grid -layer met3 -width 1.6 -pitch 20 -offset 5 -spacing 1.7 -starts_with POWER
add_pdn_stripe -grid stdcell_grid -layer met1 -width 0.48 -followpins

add_pdn_connect -grid stdcell_grid -layers "met1 met2"
add_pdn_connect -grid stdcell_grid -layers "met2 met3"
