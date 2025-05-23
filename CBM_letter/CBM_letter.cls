% A \documentclass for the Brain and Mind letterhead
%
% Paul Gribble
% pgribble@uwo.ca
%
\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesPackage{CBM_letter}[2024/07/03 v0.01 Center for Brain and Mind letterhead]
\LoadClass[11pt,letterpaper]{article}

% page margins and paragraph spacing
\RequirePackage[letterpaper, top=1.8in, left=1.125in, right=1.125in, bottom=1.5in, headsep=0.597in, headheight=46.1223pt, footskip=0.675in]{geometry}
\setlength{\parskip}{2.0ex}
\setlength{\parindent}{0pt}

\RequirePackage{setspace}

% FONTS

% base latex
\RequirePackage{textcomp}
\RequirePackage{microtype}
\RequirePackage[T1]{fontenc}
\RequirePackage[english]{babel}
\RequirePackage{newpx}
\RequirePackage{newpxmath}
\linespread{1.05}


%\RequirePackage{lmodern}
% \RequirePackage{fontspec}
% \RequirePackage{textcomp}
% \RequirePackage{microtype}
% \RequirePackage[T1]{fontenc}

%\RequirePackage{mathpazo}\linespread{1.05} % Palatino
%\RequirePackage{newtx} % Times
%\RequirePackage[scaled]{helvet}
%\renewcommand\familydefault{\sfdefault}

%\setmainfont[BoldFont={Helvetica Neue Bold}]{Helvetica Neue}\linespread{1.0833}
%\setmainfont[BoldFont={SF UI Display Bold}]{SF UI Display}\linespread{1.0833}
%\setmainfont[BoldFont={* Bold}]{Equity Text B}\linespread{1.0833}
%\setmainfont[BoldFont={* Bold}]{Palatino}\linespread{1.05}
%\setmainfont[BoldFont={* Bold}]{Adobe Caslon Pro}%\linespread{1.05}
%\setmainfont[BoldFont={* Semibold},Numbers=Lining]{Lyon Text}
%\setmainfont[BoldFont={* Bold}]{Equity Text A}
% \setmainfont[BoldFont={* Bold}]{Minion Pro}
% \setsansfont[BoldFont={BentonSans Bold}]{BentonSans}
% \setmonofont[Scale=0.80]{Monaco}

\RequirePackage{graphicx}
\RequirePackage{ifthen}

\RequirePackage{fancyhdr}

%\RequirePackage{showframe}

% BMI logo on page 1 or else nothing
\fancyhead{}
\fancyhead[L]{\ifthenelse{\value{page}=1}
  {\hspace{-.565in}\includegraphics[height=0.578in]{Simplified-Western-Logos-Centre-for-Brain-and-Mind-Stacked-Positive-RGB.png}\vspace{0pt}}  { } }
\renewcommand{\headrulewidth}{0.0pt}

% BMI footer on page 1 or else just the page number
\fancyfoot{}
\fancyfoot[L]{\ifthenelse{\value{page}=1}
  {\scriptsize\selectfont\sffamily\textbf{Center for Brain and Mind, Western University}, Western Interdisciplinary Research Building, Rm 3190\\1151 Richmond St. N., London, ON, Canada N6A 3K7
    | t. 519.661.2111 ext. 86057} % | www.uwo.ca/bmi}
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
        \@date
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
	\includegraphics[height=15mm]{signature.png}\vspace{0.0ex}\\
	\vspace{1.0ex}

	\noindent
	Paul L. Gribble, Ph.D.\\
	Professor\\
	Centre for Brain and Mind\\
	Dept. Psychology\\
	Dept. Physiology \& Pharmacology\\
%	Western University Canada\\
	{pgribble@uwo.ca $\vert$ www.gribblelab.org}
}

\newcommand{\closingnosig}[1]{
	\vspace{2.0ex}
	\noindent
	#1
	\vspace{25mm}

	\noindent
	Paul L. Gribble, Ph.D.\\
	Professor\\
	Centre for Brain and Mind\\
	Dept. Psychology\\
	Dept. Physiology \& Pharmacology\\
%	Western University Canada\\
	{pgribble@uwo.ca $\vert$ www.gribblelab.org}
}


\endinput
