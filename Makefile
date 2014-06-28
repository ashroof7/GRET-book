DOC=main

all:
	pdflatex $(DOC).tex
	bibtex $(DOC)
	makeindex $(DOC).idx -s StyleInd.ist
	pdflatex $(DOC).tex
	pdflatex $(DOC).tex

clean:
	rm -f $(DOC).blg $(DOC).bbl $(DOC).aux $(DOC).log $(DOC).ilg $(DOC).ind $(DOC)-blx.bib $(DOC).ptc $(DOC).run.xml $(DOC).toc $(DOC).idx $(DOC).out $(DOC).bcf
