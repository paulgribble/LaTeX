% A \documentclass for the Brain and Mind letterhead
% 
% Paul Gribble
% paul@gribblelab.org
% 
\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesPackage{BMI_letter}[2014/08/08 v0.01 Brain and Mind letterhead]
\LoadClass[11pt,letterpaper]{article}

% page margins and paragraph spacing
\RequirePackage[letterpaper, top=1.8in, left=1.125in, right=1.125in, bottom=1.5in, headsep=0.597in, headheight=45.8523pt, footskip=0.675in]{geometry}
\setlength{\parskip}{2.0ex}
\setlength{\parindent}{0pt}

\RequirePackage{setspace}

% FONTS
\RequirePackage{fontspec}
\usepackage{textcomp}
\RequirePackage{microtype}

%\setmainfont[BoldFont={Helvetica Neue Bold}]{Helvetica Neue}\linespread{1.0833}
%\setmainfont[BoldFont={SF UI Display Bold}]{SF UI Display}\linespread{1.0833}
%\setmainfont[BoldFont={* Bold}]{Equity Text B}\linespread{1.0833}
%\setmainfont[BoldFont={* Bold}]{Palatino}\linespread{1.05}
\setmainfont[BoldFont={* Bold}]{Adobe Caslon Pro}%\linespread{1.05}
\setsansfont[BoldFont={BentonSans Bold}]{BentonSans}
\setmonofont{Monaco}

\RequirePackage{graphicx}
\RequirePackage{ifthen}

\RequirePackage{fancyhdr}

%\RequirePackage{showframe}

% BMI logo on page 1 or else nothing
\fancyhead{}
\fancyhead[L]{\ifthenelse{\value{page}=1}
  {\hspace{-.565in}\includegraphics[height=0.578in]{BrainMindInst_RGB.pdf}\vspace{0pt}}  { } }
\renewcommand{\headrulewidth}{0.0pt}

% BMI footer on page 1 or else just the page number
\fancyfoot{}
\fancyfoot[L]{\ifthenelse{\value{page}=1}
  {\scriptsize\selectfont\sffamily\setstretch{1.2}\textbf{Brain and Mind Institute, Western University}, Western Interdisciplinary Research Building, Rm 3190\\1151 Richmond St. N., London, ON, Canada N6A 5B7
    | t. 519.661.2111 ext. 86057 | www.uwo.ca/bmi}
  {\thepage} }
\renewcommand{\footrulewidth}{0.0pt}

% Western purple
\RequirePackage{color}
\definecolor{uwopurple}{rgb}{0.263,0.161,0.420}

% for clickable URLs
\RequirePackage[colorlinks]{hyperref}

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
	Re: #1
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
	Brain and Mind Institute, Dept. Psychology\\
	Dept. Physiology \& Pharmacology\\
	Western University Canada\\
	{paul@gribblelab.org $\vert$ www.gribblelab.org}
}

\newcommand{\closingnosig}[1]{
	\vspace{2.0ex}
	\noindent
	#1
	\vspace{25mm}

	\noindent
	Paul L. Gribble, Ph.D.\\
	Professor\\
	Brain and Mind Institute, Dept. Psychology\\
	Dept. Physiology \& Pharmacology\\
	Western University Canada\\
	{paul@gribblelab.org $\vert$ www.gribblelab.org}
}


\endinput
