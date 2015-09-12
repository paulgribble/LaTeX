% A \documentclass for the Brain and Mind letterhead
% 
% Paul Gribble
% paul@gribblelab.org
% 
\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesPackage{BMI_letter}[2014/08/08 v0.01 Brain and Mind letterhead]
\LoadClass[10pt,letterpaper]{article}

% page margins and paragraph spacing
\RequirePackage[top=1.0in, left=1.0in, right=1.0in, bottom=1.2in, includefoot]{geometry}
\setlength{\parskip}{2.0ex}
\setlength{\parindent}{0pt}

\usepackage{setspace}

% font
%\RequirePackage[protrusion=true,expansion=true]{microtype} % Better typography
%\RequirePackage[T1]{fontenc}
%\linespread{1.05}
%\RequirePackage[scaled=0.92]{helvet}
%\RequirePackage[scaled=1.02]{inconsolata}
%\usepackage[bitstream-charter]{mathdesign} % Charter BT

% FONTS
\RequirePackage{fontspec}
\RequirePackage{microtype}
\setmainfont[BoldFont={Guardian TextEgyp Medium}]{Guardian TextEgyp}\linespread{1.25}
\setsansfont[Scale=1.1]{Helvetica Neue}
\setmonofont{Consolas}

\RequirePackage{graphicx}
\RequirePackage{ifthen}

\RequirePackage{fancyhdr}
\setlength{\headheight}{45.79982pt}

% BMI logo on page 1 or else nothing
\fancyhead{}
\fancyhead[L]{\ifthenelse{\value{page}=1}
  {\hspace{-.57in}\includegraphics[width=1.71in]{BrainMindInst_RGB.pdf}\vspace{0pt}}  { } }
\renewcommand{\headrulewidth}{0.0pt}

% BMI footer on page 1 or else just the page number
\fancyfoot{}
\fancyfoot[L]{\ifthenelse{\value{page}=1}
  {\scriptsize\selectfont\sffamily\setstretch{1.2}\textbf{Brain and Mind Institute, Western University}, Natural
    Sciences Centre, Rm. 120\\1151 Richmond St. N., London, ON, Canada N6A 5B7
    | t. 519.661.2111 ext. 86057 | www.uwo.ca/bmi}
  {\thepage} }
\renewcommand{\footrulewidth}{0.0pt}

% Western purple
\RequirePackage{color}
\definecolor{uwopurple}{rgb}{0.263,0.161,0.420}

% for clickable URLs
\RequirePackage{hyperref}

% activate the fancy headers and footers
\thispagestyle{fancy}

\newcommand{\thedate}[1]{
        \vspace*{0.0ex}
        \noindent
        \@date
	\vspace{1.0ex}
}

\newcommand{\recipient}[1]{
	\noindent
	#1
	\vspace{1.5ex}
}

\newcommand{\regarding}[1]{
	\noindent
	\textbf{Re: #1}
	\vspace{1.5ex}
}

\newcommand{\greeting}[1]{
	\noindent
	#1
}

\raggedright

\newcommand{\closingsig}[1]{
	\vspace{3.0ex}
	\noindent
	#1
	\vspace{2.0ex}

	\noindent
	\includegraphics[height=20mm]{signature.pdf}\vspace{0.0ex}\\
	\vspace{1.0ex}

	\noindent
	\textbf{Paul L. Gribble, Ph.D.}\\
	Professor\\
	Brain and Mind Institute, Dept. Psychology\\
	Dept. Physiology \& Pharmacology\\
	Western University Canada\\
	{paul@gribblelab.org | www.gribblelab.org}
}

\newcommand{\closingnosig}[1]{
	\vspace{3.0ex}
	\noindent
	#1
	\vspace{25mm}

	\noindent
	\textbf{Paul L. Gribble, Ph.D.}\\
	Professor\\
	Brain and Mind Institute, Dept. Psychology\\
	Dept. Physiology \& Pharmacology\\
	Western University Canada\\
	{paul@gribblelab.org | www.gribblelab.org}
}


\endinput
