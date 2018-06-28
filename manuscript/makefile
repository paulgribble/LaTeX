latexfile = ms
figures = figure1.pdf
biblio = refs

$(latexfile).pdf: $(latexfile).tex $(figures) formatting.tex
	latexmk -bibtex -pdf -quiet -silent $(latexfile)
	latexmk -c
	rm *.bbl

view:	$(latexfile).pdf
	open $(latexfile).pdf

clean:
	rm -f $(latexfile).log $(latexfile).aux $(latexfile).bbl $(latexfile).blg $(latexfile).out $(latexfile).pdf formatting.aux
