home = /Users/plg
default.Psychology_letter = $(home)/github/LaTeX/Psychology_letter/default.Psychology_letter
Psychology_letter.cls = $(home)/github/LaTeX/Psychology_letter/Psychology_letter.cls

all:	letter_latex letter_md

letter_latex:	letter_latex.tex $(Psychology_letter.cls)
	latexmk -pdf letter_latex.tex
	latexmk -c letter_latex.tex

letter_md:	letter_md.md $(default.Psychology_letter) $(Psychology_letter.cls)
	pandoc --pdf-engine=pdflatex --template=$(default.Psychology_letter) letter_md.md -o letter_md.pdf

clean:	
	latexmk -c
	rm letter_latex.pdf
	rm letter_md.pdf

