LATEX	= pdflatex -8bit
BIBTEX	= bibtex
GH	= open

TARGET=medetel

PDF=$(TARGET).pdf
SRC=$(TARGET).tex

default: view

.PHONY : pdf view clean

pdf : $(PDF)

view: pdf
	$(GH) $(TARGET).pdf

%.pdf : %.tex %.bib
	$(LATEX) $*; \
	$(BIBTEX) $*; \
	$(LATEX) $*; \
	$(LATEX) $*;

clean:
	rm -f *.aux *.log *.blg *.bbl *.dvi *.ps *.pdf *.toc *.lot *.lof
 




