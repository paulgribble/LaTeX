all:	letter_latex letter_md

letter_latex:	letter_latex.tex BMI_letter.cls
	xelatex letter_latex
	xelatex letter_latex

letter_md:	letter_md.md default.BMI_letter BMI_letter.cls
	pandoc --template=default.BMI_letter --latex-engine=xelatex letter_md.md -o letter_md.pdf

clean:	
	rm letter_latex.pdf
	rm letter_md.pdf

