% A \documentclass for the Dept. Psychology letterhead
% 
% Paul Gribble
% pgribble@uwo.ca
% 
\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesPackage{Psychology_letter}[2022/09/04 v0.01 Psychology letterhead]
\LoadClass[12pt,letterpaper]{article}

% page margins and paragraph spacing
\RequirePackage[letterpaper, top=1.8in, left=1.125in, right=1.125in, bottom=1.5in, headsep=0.597in, headheight=49.93233pt, footskip=14.08003pt]{geometry}
\setlength{\parskip}{2.0ex}
\setlength{\parindent}{0pt}

\RequirePackage{setspace}


% FONTS

% base latex
%
%\RequirePackage[scaled]{helvet}
%\RequirePackage[garamond]{mathdesign}\linespread{1.05}
%\RequirePackage{textcomp}
%\RequirePackage{microtype}
%\RequirePackage[T1]{fontenc}

% fontspec
%
\RequirePackage{fontspec}
\setmainfont
    [Ligatures=TeX,
      BoldFont={* Bold}]
    {Adobe Garamond Pro}\linespread{1.05}

\setsansfont
    [Ligatures=TeX,
      UprightFont={* Regular},
      BoldFont={* Medium},
      Scale=0.83]
    {BentonSans}

\setmonofont[Scale=0.80]{Monaco}



\RequirePackage{graphicx}
\RequirePackage{ifthen}

\RequirePackage{fancyhdr}

%\RequirePackage{showframe}

\makeatletter
\newcommand*{\bigcdot}{}% Check if undefined
\DeclareRobustCommand*{\bigcdot}{%
  \mathbin{\mathpalette\bigcdot@{}}%
}
\newcommand*{\bigcdot@scalefactor}{.6}
\newcommand*{\bigcdot@widthfactor}{1.15}
\newcommand*{\bigcdot@}[2]{%
  % #1: math style
  % #2: unused
  \sbox0{$#1\vcenter{}$}% math axis
  \sbox2{$#1\cdot\m@th$}%
  \hbox to \bigcdot@widthfactor\wd2{%
    \hfil
    \raise\ht0\hbox{%
      \scalebox{\bigcdot@scalefactor}{%
        \lower\ht0\hbox{$#1\bullet\m@th$}%
      }%
    }%
    \hfil
  }%
}
\makeatother

\RequirePackage{xcolor}
\definecolor{westernpurple}{RGB}{79,38,131}

% SSC logo on page 1 or else nothing
\fancyhead{}
\fancyhead[L]{\ifthenelse{\value{page}=1}
  {\hspace{-.565in}\includegraphics[height=0.578in]{SSC_Stacked_CMYK.pdf}\vspace{0pt}}  { } }
\fancyhead[R]{\ifthenelse{\value{page}=1}
	{\textcolor{westernpurple}{\sffamily Department of Psychology}}{ } }
\renewcommand{\headrulewidth}{0.0pt}

% Psychology footer on page 1 or else just the page number
\fancyfoot{}
\fancyfoot[L]{\ifthenelse{\value{page}=1}
  {\footnotesize\selectfont\sffamily\center\textbf{Western University $\bigcdot$ Department of Psychology}\\Western Interdisciplinary Research Building, Rm 3190\\London, Ontario $\bigcdot$ Canada $\bigcdot$ N6A 3K7\\Telephone: 519-661-2111 ext 86057 $\bigcdot$ Fax: 519-661-3961 $\bigcdot$ www.psychology.uwo.ca}
  {\thepage} }
\renewcommand{\footrulewidth}{0.0pt}

% Western purple
\RequirePackage{color}
\definecolor{uwopurple}{rgb}{0.263,0.161,0.420}

% for clickable URLs
\RequirePackage[colorlinks]{hyperref}
\hypersetup{
  urlcolor=blue
}


% activate the fancy headers and footers
\thispagestyle{fancy}

\newcommand{\thedate}[1]{
        \noindent
        #1
	\vspace{1.0ex}
}

\newcommand{\recipient}[1]{
	\noindent
	#1
	\vspace{6.0ex}
}

\newcommand{\regarding}[1]{
	\noindent
	{\textbf{Re: #1}}
	\vspace{2.0ex}
}

\newcommand{\greeting}[1]{
	\noindent
	#1
}

\raggedright

\newcommand{\closingsig}[1]{
	\vspace{2.0ex}
	\noindent
	#1
	\vspace{2.0ex}

	\noindent
	\includegraphics[height=15mm]{signature.jpg}\vspace{0.0ex}\\
	\vspace{1.0ex}

	\noindent
	Paul L. Gribble, Ph.D.\\
	Professor\\
	Dept. Psychology\\
	Dept. Physiology \& Pharmacology\\
%	Western University Canada\\
	{pgribble@uwo.ca $\bigcdot$ www.gribblelab.org}
}

\newcommand{\closingnosig}[1]{
	\vspace{2.0ex}
	\noindent
	#1
	\vspace{25mm}

	\noindent
	Paul L. Gribble, Ph.D.\\
	Professor\\
	Dept. Psychology\\
	Dept. Physiology \& Pharmacology\\
%	Western University Canada\\
	{pgribble@uwo.ca $\bigcdot$ www.gribblelab.org}
}


\endinput
