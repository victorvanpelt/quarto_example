# Makefile

# Define the paths to your qmd files
analyze = 5_code/stata_example.qmd
present = 4_drafts/presentation_example.qmd
draft = 4_drafts/paper_example.qmd

# Target to run all qmd files in order
all: $(analyze) $(present) $(draft)
	quarto render $(analyze)
	quarto render $(present)
	quarto render $(draft)

# Phony targets are not real files, but just commands
.PHONY: all