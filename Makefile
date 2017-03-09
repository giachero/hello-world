#
# Author: Andrea Giachero <Andrea.Giachero@mib.infn.it>
# Date  : 9 March 2017
# Desc  : Simple Makefile 
#

# Define binaries to compile 
BINS := $(patsubst %.cc,%,$(wildcard *.cc))

# Define targets
all: $(BINS)

# Compile binaries
include mainrules.mk

clean:
	@echo " [RM] Cleaning up directory: $(notdir $(CURDIR))"
	@rm -f $(BINS) *.o *~
