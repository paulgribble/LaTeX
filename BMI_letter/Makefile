home = /Users/plg
default.BMI_letter = $(home)/github/LaTeX/BMI_letter/default.BMI_letter
BMI_letter.cls = $(home)/github/LaTeX/BMI_letter/BMI_letter.cls

all:	letter_latex letter_md

letter_latex:	letter_latex.tex $(BMI_letter.cls)
	latexmk -pdf letter_latex.tex
	latexmk -c letter_latex.tex

letter_md:	letter_md.md $(default.BMI_letter) $(BMI_letter.cls)
	pandoc --template=$(default.BMI_letter) letter_md.md -o letter_md.pdf

clean:	
	rm letter_latex.pdf
	rm letter_md.pdf

