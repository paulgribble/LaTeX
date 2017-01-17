texengine = xelatex

all:	letter_latex letter_md

letter_latex:	letter_latex.tex BMI_letter.cls
	$(texengine) letter_latex.tex
	while ($(texengine) letter_latex.tex ; \
		grep -q "Rerun to get" letter_latex.log ) do true ; \
	done
	rm -fr letter_latex.aux letter_latex.log letter_latex.aux letter_latex.out

letter_md:	letter_md.md default.BMI_letter BMI_letter.cls
	pandoc --template=default.BMI_letter --latex-engine=xelatex letter_md.md -o letter_md.pdf

clean:	
	rm letter_latex.pdf
	rm letter_md.pdf

