SVG_FILES = $(wildcard figures/*.svg)
PDF_FILES = $(addprefix figures/,$(notdir $(SVG_FILES:.svg=.pdf)))

all:svgfigures

svgfigures:$(PDF_FILES)

figures/%.pdf:figures/%.svg
		inkscape -z -D --export-pdf=$@ $<
