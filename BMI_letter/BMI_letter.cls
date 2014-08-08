% A \documentclass for the Brain and Mind letterhead
% 
% Paul Gribble
% paul@gribblelab.org
% 
\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesPackage{BMI_letter}[2014/08/08 v0.01 Brain and Mind letterhead]
\LoadClass{article}

% page margins and paragraph spacing
\RequirePackage[top=1.0in, left=1.0in, right=1.0in, bottom=1.25in, includefoot]{geometry}
\setlength{\parskip}{1.5ex}
\setlength{\parindent}{0pt}

% font
\RequirePackage[protrusion=true,expansion=true]{microtype} % Better typography
\RequirePackage[T1]{fontenc}
\RequirePackage{helvet}                        % Helvetica
\renewcommand*\familydefault{\sfdefault}

\RequirePackage{graphicx}
\RequirePackage{ifthen}

\RequirePackage{fancyhdr}
\setlength{\headheight}{46pt}

% BMI logo on page 1 or else nothing
\fancyhead{}
\fancyhead[L]{\ifthenelse{\value{page}=1}
  {\hspace{-.57in}\includegraphics[width=1.71in]{BrainMindInst_RGB.pdf}\vspace{0pt}}  { } }
\renewcommand{\headrulewidth}{0.0pt}

% BMI footer on page 1 or else just the page number
\fancyfoot{}
\fancyfoot[L]{\ifthenelse{\value{page}=1}
  {\footnotesize\selectfont\sffamily \textbf{Brain and Mind Institute, Western University}, Natural
    Sciences Centre, Rm. 120\\1151 Richmond St. N., London, ON, Canada N6A 5B7
    | t. 519.661.2111 ext. 86057 | {\color{uwopurple}\href{http://www.uwo.ca/bmi}{www.uwo.ca/bmi}}}
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
	\@date
	\vspace{2.0ex}
}

\newcommand{\recipient}[1]{
	#1
	\vspace{2.5ex}
}

\newcommand{\regarding}[1]{
	\textbf{Re: #1}
	\vspace{1.5ex}
}

\newcommand{\greeting}[1]{
	#1
}

\newcommand{\closingsig}[1]{
	\vspace{2.0ex}
	Sincerely,
	\vspace{2.0ex}

	\includegraphics[width=4.0cm]{signature.pdf}\vspace{0.0ex}\\

	\textbf{Paul L. Gribble, Ph.D.}\\
	Professor\\
	Dept. Psychology\\
	Dept. Physiology \& Pharmacology\\
	Western University Canada\\
	{\color{uwopurple}paul@gribblelab.org | \href{http://www.gribblelab.org}{www.gribblelab.org}}
}

\newcommand{\closingnosig}[1]{
	\vspace{2.0ex}
	Sincerely,
	\vspace{25mm}

	\textbf{Paul L. Gribble, Ph.D.}\\
	Professor\\
	Dept. Psychology\\
	Dept. Physiology \& Pharmacology\\
	Western University Canada\\
	{\color{uwopurple}paul@gribblelab.org | \href{http://www.gribblelab.org}{www.gribblelab.org}}
}


\endinput
