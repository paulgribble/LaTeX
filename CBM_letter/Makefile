home = /Users/plg
default_CBM_letter = $(home)/github/LaTeX/CBM_letter/default_CBM_letter.tex
CBM_letter.cls = $(home)/github/LaTeX/CBM_letter/CBM_letter.cls

all:	letter_latex letter_md

letter_latex:	letter_latex.tex $(CBM_letter.cls)
	latexmk -xelatex letter_latex.tex
	latexmk -c letter_latex.tex

letter_md:	letter_md.md $(default_CBM_letter) $(CBM_letter.cls)
	pandoc --pdf-engine=xelatex --template=$(default_CBM_letter) letter_md.md -o letter_md.pdf

clean:
	rm letter_latex.pdf
	rm letter_md.pdf

