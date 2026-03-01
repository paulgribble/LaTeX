to enable texlive on MacOS to 'see' the letter .cls file and the signature and the logo:

mkdir -p /Users/plg/Library/texmf/tex/latex/local

ln -s /Users/plg/github/LaTeX/CBM_letter/CBM_letter.cls /Users/plg/Library/texmf/tex/latex/local/CBM_letter.cls

ln -s /Users/plg/github/LaTeX/CBM_letter/Simplified-Western-Logos-Centre-for-Brain-and-Mind-Stacked-Positive-RGB.png /Users/plg/Library/texmf/tex/latex/local/Simplified-Western-Logos-Centre-for-Brain-and-Mind-Stacked-Positive-RGB.png

ln -s /Users/plg/Documents/Home/signature.jpg /Users/plg/Library/texmf/tex/latex/local/signature.jpg
