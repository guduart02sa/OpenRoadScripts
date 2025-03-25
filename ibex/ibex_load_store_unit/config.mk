export DESIGN_NAME            = ibex_load_store_unit
export DESIGN_NICKNAME        = ibex_ibex_load_store_unit
export PLATFORM               = sky130hd


# Only include the ALU Verilog; other modules will be synthesized separately.
export VERILOG_FILES          = $(DESIGN_HOME)/src/ibex/ibex_load_store_unit.v
export SDC_FILE               = $(DESIGN_HOME)/sky130hd/ibex/$(DESIGN_NAME)/constraint.sdc


export CORE_UTILIZATION = 26
export PLACE_DENSITY_LB_ADDON = 0.1
export TNS_END_PERCENT = 100

# Set placement density appropriate for your ALU macro.
export PLACE_DENSITY          = 0.8

export IO_PLACER_H = met3
export IO_PLACER_V = met2

export PLACE_PINS_ARGS = -min_distance 2
#export SYNTH_HIERARCHICAL = 1
#export MAX_UNGROUP_SIZE = 0



# Include any extra TCL or utility scripts.
export ADDITIONAL_FILES = designs/sky130hd/ibex/fastroute.tcl


export PDN_TCL                = designs/sky130hd/ibex/pdn.tcl

