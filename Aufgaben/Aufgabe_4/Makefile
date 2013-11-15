# project name
PROJECT=aufgabe_4
# vhdl files
FILES = src/Entprellung.vhdl src/LED.vhdl src/Zaehler.vhdl
# testbench zaehler
#SIMTOP = zaehler_tb
#SIMFILES = testbench/zaehler_tb.vhdl
# testbench alles
SIMTOP = led_tb
SIMFILES = testbench/LED_tb.vhdl
# Simu break condition
GHDL_SIM_OPT    = --assert-level=error
#GHDL_SIM_OPT    = --stop-time=500ns

SIMDIR = simu
SYNTHFILES = bin/aufgabe_4/netgen/synthesis

GHDL_CMD        = ghdl
GHDL_FLAGS      = --ieee=synopsys --warn-no-vital-generic

VIEW_CMD        = /usr/bin/gtkwave

ghdl-compile :                                                                                              
	 mkdir -p simu                                                                                               
	 $(GHDL_CMD) -i $(GHDL_FLAGS) --workdir=simu --work=work $(SIMFILES) $(FILES)                                
	 $(GHDL_CMD) -m $(GHDL_FLAGS) --workdir=simu --work=work $(SIMTOP)                                           
	 @mv $(SIMTOP) simu/$(SIMTOP)                                                                                
                                                                                                              
ghdl-run :                                                                                                    
	@$(SIMDIR)/$(SIMTOP) $(GHDL_SIM_OPT) --vcdgz=$(SIMDIR)/$(SIMTOP).vcdgz                                      
                                                                                                             
ghdl-view:                                                                                                    
	gunzip --stdout $(SIMDIR)/$(SIMTOP).vcdgz | $(VIEW_CMD) --vcd                                               
                                                                                                             
ghdl-clean :                                                                                                  
	$(GHDL_CMD) --clean --workdir=simu 
