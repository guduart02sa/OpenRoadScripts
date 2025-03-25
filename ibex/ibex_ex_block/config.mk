export DESIGN_NAME            = ibex_ex_block
export DESIGN_NICKNAME        = ibex_ibex_ex_block
export PLATFORM               = sky130hs


# Only include the ALU Verilog; other modules will be synthesized separately.
export VERILOG_FILES          = $(DESIGN_HOME)/src/ibex/ibex_ex_block.v \
$(DESIGN_HOME)/src/ibex/ibex_alu.v \
$(DESIGN_HOME)/src/ibex/ibex_multdiv_fast.v

export SDC_FILE               = $(DESIGN_HOME)/sky130hd/ibex/$(DESIGN_NAME)/constraint.sdc


export CORE_UTILIZATION = 20
export CORE_ASPECT_RATIO = 3 
export PLACE_DENSITY_LB_ADDON = 0.1
export TNS_END_PERCENT = 50

# Set placement density appropriate for your ALU macro.
export PLACE_DENSITY          = 0.45

export IO_PLACER_H = met3
export IO_PLACER_V = met2

export PLACE_PINS_ARGS = -min_distance 4
#export SYNTH_HIERARCHICAL = 1
#export MAX_UNGROUP_SIZE = 0



# Include any extra TCL or utility scripts.
export ADDITIONAL_FILES = designs/sky130hd/ibex/fastroute.tcl


export PDN_TCL                = designs/sky130hd/ibex/pdn.tcl

