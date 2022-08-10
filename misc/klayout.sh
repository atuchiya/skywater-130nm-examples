#!/usr/bin/bash

CONFIG_FILE=/foss/designs/klayoutrc
LIBRARIES=/headless/.klayout/libraries
KLAYOUT_TECH=/headless/.klayout/tech/sky130A
LIB_REF=/foss/pdk/sky130A/libs.ref

# copy GDS files as libraries
if [ ! -e ${LIBRARIES} ]; then
	mkdir ${LIBRARIES}
	cp ${LIB_REF}/sky130_fd_pr/gds/sky130_fd_pr.gds ${LIBRARIES}/
	cp ${LIB_REF}/sky130_fd_sc_hd/gds/sky130_fd_sc_hd.gds ${LIBRARIES}/
fi

# set DRC/LVS rules
if [ ! -e ${KLAYOUT_TECH}/drc ]; then
	mkdir ${KLAYOUT_TECH}/drc
	cp ${KLAYOUT_TECH}/sky130A.lydrc ${KLAYOUT_TECH}/drc/
fi
if [ ! -e ${KLAYOUT_TECH}/lvs ]; then
	mkdir ${KLAYOUT_TECH}/lvs
	cp ${KLAYOUT_TECH}/sky130A.lylvs ${KLAYOUT_TECH}/lvs/
fi

# launch Klayout
klayout -c $CONFIG_FILE

#EOF

