% Preprint class file by Paul Gribble
%
% adapted from the Overleaf template for
% the Genetics Society of America's GENETICS Journal
% Version: 1.7, 2018/07/25
% Produced by Overleaf (www.overleaf.com)
%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{preep}[08/12/2018, v1.0]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions*
\LoadClass[letterpaper]{article}

% Page Setup
\RequirePackage[letterpaper, margin=1.0in]{geometry}
%\setlength{\headheight}{13.59999pt}
\RequirePackage{fancyhdr}       % header and footer controls

% Typography
\RequirePackage{mathpazo}       % for Palatino serif font
\RequirePackage{microtype}        % Better typography
\RequirePackage[T1]{fontenc}      % Better typography
\linespread{1.05}         % needed for Palatino, trust me
\RequirePackage{mathtools}        % makes equations better
\RequirePackage[english]{babel}     % hyphenation etc for English
\RequirePackage{xcolor}

% Figures
\RequirePackage{graphicx}       % for importing graphics into figures
\RequirePackage{float}          % better control of figure placement
\RequirePackage[labelfont=bf]{caption}  % make caption labels boldface

% Citations & Bibliography
\RequirePackage{natbib}         % for our chosen bibliography style

% Authors and Affiliations
\RequirePackage{authblk}        % authors and affiliations
\renewcommand*{\Authfont}{\normalsize}
\renewcommand*{\Affilfont}{\footnotesize} % smaller font for author affiliations

% Miscellaneous
\RequirePackage{lipsum}         % for filler text
\RequirePackage{hologo}         % for nice LaTeX logo

% Page Headers and Footers
\pagestyle{fancy}
\fancyhf{}
\rhead{\small\thepage}
\newcommand\shorttitle[1]{\def\@shorttitle{#1}} % running head
\lhead{\itshape\@shorttitle}

\fancypagestyle{firstpage}{%
  \renewcommand{\headrulewidth}{0pt}
  \lhead{}
  \rhead{\itshape\small\today}
}

% Customize Section Headings
\RequirePackage[compact]{titlesec}
\titleformat*{\section}{\large\bfseries}
\titleformat*{\subsection}{\normalsize\bfseries}
\titleformat*{\subsubsection}{\normalsize\itshape}

\RequirePackage{environ}
\NewEnviron{frontmatter}{\twocolumn[\BODY]\saythanks}

% Keyword and Abstract commands
\newcommand{\keywords}[1]{\def\@keywords{#1}}
\renewcommand{\abstract}[1]{\def\@abstract{#1}}

% Custom title page
\renewcommand{\@maketitle}{\bgroup\setlength{\parindent}{0pt}
\pagestyle{firstpage}
\begin{flushleft}
{\raggedright \LARGE \textbf \@title\par}
\vskip12pt
{\raggedright \@author\par}
\vskip12pt%
\end{flushleft}\egroup
\vskip12pt
{\small\textbf{Abstract:} \@abstract}
\vskip24pt
}%



