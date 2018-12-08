all:	doc.pdf

doc.pdf:	doc.tex formatting.tex refs.bib
	latexmk -pdf doc.tex
	latexmk -c doc.tex formatting.tex
	rm -r doc.bbl

clean:
	rm -f doc.pdf
