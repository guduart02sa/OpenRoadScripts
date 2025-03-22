export DESIGN_NAME            = ibex_alu
export DESIGN_NICKNAME        = ibex_ibex_alu
export PLATFORM               = sky130hd


# Only include the ALU Verilog; other modules will be synthesized separately.
export VERILOG_FILES          = $(DESIGN_HOME)/src/ibex/ibex_alu.v
export SDC_FILE               = $(DESIGN_HOME)/sky130hd/ibex/ibex_alu/constraint.sdc


export CORE_UTILIZATION = 40
export PLACE_DENSITY_LB_ADDON = 0.1
export TNS_END_PERCENT = 100

# Set placement density appropriate for your ALU macro.
export PLACE_DENSITY          = 0.75

#export SYNTH_HIERARCHICAL = 1
#export MAX_UNGROUP_SIZE = 0



# Include any extra TCL or utility scripts.
export ADDITIONAL_FILES = designs/sky130hd/ibex/fastroute.tcl
