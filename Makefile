sources = $(wildcard *.md)
targets = $(sources:.md=.html)

.PHONY: all
all: $(targets)

%.html: %.md
	Rscript -e 'rmarkdown::render("$<")'

.PHONY: clean
clean:
	rm -f $(targets)
