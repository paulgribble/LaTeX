custom.latex = /Users/plg/github/LaTeX/markdowndoc/custom.latex

doc.pdf:	doc.md refs.bib
	pandoc -s doc.md \
	--filter pandoc-crossref \
	--filter pandoc-citeproc \
	-V papersize=letter \
	-V fontsize=12pt \
	-V geometry:margin=1.1in \
	-V linestretch=1.0 \
	-V mainfont="Palatino" \
	-V mainfontoptions="Numbers=Lining,Ligatures=Common" \
	-V sansfont="Helvetica" \
	-V subparagraph \
	--pdf-engine=xelatex \
	-H $(custom.latex) \
	-o doc.pdf

