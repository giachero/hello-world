$(BINS): $(addsuffix .o,$(BINS))

# Compiling and linking binaries
%: %.o 
	@echo " [LD]  Compiling and Linking Excutable: $@"
	@$(CCACHE) $(CXX) $< -o $@