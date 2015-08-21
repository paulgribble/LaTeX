latexfile = article
figures = figure1.pdf
biblio = refs
texengine = xelatex

$(latexfile).pdf: $(latexfile).tex $(figures)
	$(texengine) $(latexfile)
	bibtex $(latexfile)
	while ($(texengine) $(latexfile) ; \
	grep -q "Rerun to get cross\|Rerun to get citations" $(latexfile).log ) do true ; \
	done
	rm -f $(latexfile).log $(latexfile).aux $(latexfile).bbl $(latexfile).blg $(latexfile).out

view:	$(latexfile).pdf
	open $(latexfile).pdf

clean:
	rm -f $(latexfile).log $(latexfile).aux $(latexfile).bbl $(latexfile).blg $(latexfile).out $(latexfile).pdf
