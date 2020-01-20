.PHONY: all clean distclean

TARGET=paper.pdf

all: $(TARGET)

DEPENDENCIES = agrosy.bib *.tex 

%.pdf : %.tex $(DEPENDENCIES)
	pdflatex $<;
	bibtex $*;
	pdflatex $<;
	pdflatex $<;

clean:
	rm -f *~
	rm -f *.aux *.idx *.log *.out *.toc *.nav *.snm
	rm -f *.bbl *.blg
	rm -f $(TARGET)
