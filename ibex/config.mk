export DESIGN_NICKNAME = ibex
export DESIGN_NAME = ibex_core
export PLATFORM    = sky130hd

export VERILOG_FILES = $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/ibex_alu.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/ibex_branch_predict.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/ibex_compressed_decoder.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/ibex_controller.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/ibex_core.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/ibex_counter.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/ibex_cs_registers.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/ibex_csr.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/ibex_decoder.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/ibex_dummy_instr.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/ibex_ex_block.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/ibex_fetch_fifo.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/ibex_icache.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/ibex_id_stage.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/ibex_if_stage.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/ibex_load_store_unit.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/ibex_multdiv_fast.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/ibex_multdiv_slow.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/ibex_pmp.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/ibex_prefetch_buffer.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/ibex_register_file_ff.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/ibex_register_file_fpga.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/ibex_register_file_latch.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/ibex_wb_stage.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/prim_badbit_ram_1p.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/prim_clock_gating.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/prim_generic_clock_gating.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/prim_generic_ram_1p.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/prim_lfsr.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/prim_ram_1p.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/prim_secded_28_22_dec.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/prim_secded_28_22_enc.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/prim_secded_39_32_dec.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/prim_secded_39_32_enc.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/prim_secded_72_64_dec.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/prim_secded_72_64_enc.v \
            $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/prim_xilinx_clock_gating.v

export SDC_FILE      = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

# Adders degrade ibex setup repair
export ADDER_MAP_FILE :=

export CORE_UTILIZATION = 50
export PLACE_DENSITY_LB_ADDON = 0.1
export TNS_END_PERCENT = 50

export PLACE_DENSITY          = 0.75

export IO_PLACER_H = met3
export IO_PLACER_V = met2

export PLACE_PINS_ARGS = -min_distance 12


#export BLOCKS ?= 
export SYNTH_HIERARCHICAL = 1
export MAX_UNGROUP_SIZE = 0
export RTLMP_FLOW = 1

export BLOCKS ?= ibex_if_stage ibex_register_file_ff ibex_id_stage ibex_wb_stage ibex_load_store_unit

export ADDITIONAL_LEFS = ./results/sky130hs/ibex_ibex_ex_block/base/ibex_ex_block.lef
export ADDITIONAL_LIBS = ./results/sky130hs/ibex_ibex_ex_block/base/ibex_ex_block.lib

export FASTROUTE_TCL = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/fastroute.tcl

export REMOVE_ABC_BUFFERS = 1
