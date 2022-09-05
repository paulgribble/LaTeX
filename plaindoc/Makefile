latexfile = doc

$(latexfile).pdf: *.tex refs.bib
	latexmk -xelatex doc.tex
	latexmk -c -bibtex

view:	$(latexfile).pdf
	open $(latexfile).pdf

clean:	
	latexmk -C -bibtex
