to enable texlive on MacOS to 'see' the letter .cls file and the signature and the logo:

mkdir -p /Users/plg/Library/texmf/tex/latex/local

ln -s /Users/plg/github/LaTeX/Psychology_letter/Psychology_letter.cls /Users/plg/Library/texmf/tex/latex/local/Psychology_letter.cls

ln -s /Users/plg/github/LaTeX/Psychology_letter/SSC_Stacked_CMYK.pdf /Users/plg/Library/texmf/tex/latex/local/SSC_Stacked_CMYK.pdf

ln -s /Users/plg/Documents/Home/signature.jpg /Users/plg/Library/texmf/tex/latex/local/signature.jpg


for urw-garamond font:

wget http://tug.org/fonts/getnonfreefonts/install-getnonfreefonts
sudo texlua install-getnonfreefonts
sudo getnonfreefonts -a --sys
updmap -sys
