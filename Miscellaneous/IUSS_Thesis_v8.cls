% IUSS Pavia Thesis Template
% Main structure started by Gerard O'Reilly <gerard.oreilly@iusspavia.it>
% Modified and completed by Graeme Weatherill and Cecilia Nievas
% version 8

% ------------- File Identification  ---------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{IUSS_Thesis_v8}

% ------- Load the Report Class and Basic Packages ---------
\LoadClass[10pt,twoside,openright]{report}

% --------- Inputs -------------------
\def\monthyear#1{\gdef\@monthyear{#1}} % Month and Year
\def\advisor#1{\gdef\@advisor{#1}} % Thesis Advisor
\def\thesis#1{\gdef\@thesis{#1}} % Individual Study / PhD
%\def\affiliation#1{\gdef\@affiliation{#1}} % Address
\def\authorheader#1{\gdef\@authorheader{#1}} % Authors for the header

% --------- Packages -------------------
\usepackage{todonotes}
\RequirePackage{ifthen} % to use of thens for abstract and ackn.
\RequirePackage{lipsum} % temporary package to fill document
\RequirePackage[square]{natbib} % Use natbib for bibtex
\RequirePackage{sectsty} % needed to chnage section heading sizes
\RequirePackage{titlesec} % needed to chnage section heading sizes
\RequirePackage{graphicx} % needed for latest frontpage logo
\RequirePackage{amsmath} % use equations
\RequirePackage{fancyhdr} % use fancy pagestyle
\RequirePackage{setspace} % to set linespace
\RequirePackage{float} % figures
\RequirePackage{tabularx} % use table
\RequirePackage{booktabs} % using table
\RequirePackage{longtable} % for multi-page table
\RequirePackage[colorlinks=true,urlcolor=black,citecolor=black,linkcolor=black,bookmarksnumbered]{hyperref} % cross referencing
% Define the caption package and style of captions
\RequirePackage[small,labelfont={bf},textfont={bf},labelsep=period]{caption}
\RequirePackage{subcaption}
\setlength{\captionmargin}{20pt}
% Define the packages for garamond font style (addition .zip file needed)
\RequirePackage[T1]{fontenc}
\RequirePackage{ascii}
\RequirePackage[urw-garamond]{mathdesign}
\RequirePackage{garamondx}
\usepackage[titletoc,title]{appendix}
% % % % % % % % % % % % %  % % % % % % % % % % % % % % % % %
%\usepackage{setspace,blindtext,etoolbox}
%\usepackage[ paperheight =297mm,paperwidth  =210mm,  % or: "paper=a4paper"
%textheight =190mm,textwidth  =150mm,
%layoutvoffset= 0mm,layouthoffset= 00mm, includeheadfoot,
%showframe=false, showcrop=true]{geometry}
%\makeatletter
% \patchcmd{<cmd>}{<search>}{<replace>}{<success>}{<failure>}
%\patchcmd{\Gm@pageframes}{\ifGm@showcrop}{%
%	\ifGm@showcrop
%	\setlength{\Gm@layouthoffset}{20mm}%
%	\ifodd\count\z@
%	\setlength{\Gm@layouthoffset}{10mm}%
%	\else
%	\addtolength{\Gm@layouthoffset}{40mm}
%	\fi%
	
%\setlength{\textheight}{200mm}
% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % %
%\RequirePackage{ebgaramond}
%\renewcommand{\rmdefault}{ptm}
\urlstyle{sf}
\RequirePackage{tocloft} %CIN apparently, to center titles of List of Figs.
\RequirePackage{enumitem}
\setlist{itemsep=0pt}
\usepackage{multirow}

%\usepackage{background}
%\backgroundsetup{
%	scale=1,
%	angle=0,
%	opacity=1,  %% adjust
%	contents={\includegraphics[width=\paperwidth,height=\paperheight]{bg_page_for_IUSS_template.pdf}}
%}

% ------- New commands ----------------
\newcommand\numberthis{\addtocounter{equation}{1}\tag{\theequation}} %  numbering of aligned equations

% Define font size: (CIN):
\renewcommand{\normalsize}{\fontsize{11pt}{11pt}\selectfont}

% Define the linespacing 
\linespread{1.18}
\renewcommand\@dotsep{1}
\pagenumbering{gobble}

% Define section heading sizes
\titleformat{\chapter}{\Large\bfseries}{\thechapter.}{0.1cm}{} %CIN
%\titleformat{\chapter}{\LARGE\bfseries}{\thechapter.}{0.5cm}{}
\titlespacing*{\chapter}{0cm}{0cm}{0.5cm}
\titleformat{\section}{\Large\bfseries\scshape}{\thesection.}{0.2cm}{} %CIN
%\sectionfont{\bfseries\Large}
%\sectionfont{\bfseries\scshape} %CIN
\titleformat{\subsection}{\bfseries}{\thesubsection.}{0.3cm}{} %CIN
%\subsectionfont{\bfseries}{0.1cm}

% Define the headers
\pagestyle{fancy}
\fancyhf{} 
\fancyhead{} % clear first
\fancyfoot{} % clear first
\fancyhead[CE]{\small\textbf{\@authorheader}}
\fancyhead[CO]{\small\textbf{\@title}}
\fancyhead[RO,LE]{\small\textbf{\thepage}}
\renewcommand{\headrulewidth}{0.5 pt}          %this prints a line under the header

%set the number of sectioning levels that get number and appear in the contents
\setcounter{secnumdepth}{4}
\setcounter{tocdepth}{3} 

% -------- Page Geometry ---------------
\paperheight=297mm
\paperwidth=210mm

% 1 inch + hoffset + oddsidemargin = 40 mm but it needs to be adjusted, don't know why
\hoffset=-1in
\oddsidemargin=37mm
\textwidth=140mm

\voffset=34.6mm
\topmargin=-8mm
\headheight=4mm
\headsep=8mm
\textheight=190mm

\evensidemargin=35mm
\marginparsep=0mm
\marginparwidth=0mm
\footskip=0mm

\headwidth=\textwidth
\parindent=0mm

% --------- Title Page ----------------
\renewcommand{\maketitle}{
\addcontentsline{toc}{chapter}{Title Page}
\thispagestyle{empty}
\begin{center}
			\begin{figure}
			\centering
			\includegraphics[width=0.5\textwidth]{Logo_IUSS.jpg}
			\end{figure}
	\vspace*{0.5cm}			
			{\textbf{Scuola Universitaria Superiore IUSS Pavia} \par}
	\vspace*{1cm}
			{\large \MakeUppercase{\textbf{\@title}} \par}
	\vspace*{1cm}
			{\@thesis Submitted in Partial Fulfilment  of the Requirements  \\
			 for the Degree of Doctor of Philosophy in \\ \vspace{0.5cm}
			\textbf{EARTHQUAKE ENGINEERING}\\ \vspace{0cm} 
			\textbf{AND}\\ \vspace{0cm}
			\textbf{ENGINEERING SEISMOLOGY} \par}
	\vspace*{0.7cm}
			{Obtained in the framework of the Doctoral Programme in \par}			
	\vspace*{0cm}
			{Understanding and Managing Extremes \par}	
	\vspace*{0.7cm}
			{by \par}
	\vspace*{0.7cm}
			{\textbf{\@author} \par}
	\vspace*{1.3cm}			
			{\@monthyear \par}
\end{center}
\newpage	
\phantomsection
% Create a blank page after
\thispagestyle{empty}
\mbox{}
\newpage	
\phantomsection
% Repeat the page
\begin{center}
			\begin{figure}
			\centering
			\includegraphics[width=0.5\textwidth]{Logo_IUSS.jpg}
			\end{figure}
	\vspace*{0.5cm}				
			{\textbf{Scuola Universitaria Superiore IUSS Pavia} \par}
	\vspace*{1cm}
			{\large \MakeUppercase{\textbf{\@title}} \par}
	\vspace*{1cm}
			{\@thesis submitted in partial fulfilment  of the requirements  \\
			 for the degree of Doctor of Philosophy in \\ \vspace{0.5cm}
			\textbf{EARTHQUAKE ENGINEERING}\\ \vspace{0cm} 
			\textbf{AND}\\ \vspace{0cm}
			\textbf{ENGINEERING SEISMOLOGY} \par}
	\vspace*{0.7cm}
			{Obtained in the framework of the Doctoral Programme in \par}			
	\vspace*{0cm}
			{Understanding and Managing Extremes \par}	
	\vspace*{0.7cm}
			{by \par}
	\vspace*{0.7cm}
			{\textbf{\@author} \par}
	\vspace*{0cm}
			{Supervisor: \@advisor \par}
	\vspace*{1.3cm}
			{\@monthyear \par}
\end{center}
}

% ---------- Abstract ----------------
\renewenvironment{abstract} {
\cleardoublepage
\phantomsection
\addcontentsline{toc}{chapter}{Abstract} 
\thispagestyle{empty}
\vspace*{1.5cm}
\large\bfseries\centering  ABSTRACT
\vspace{0.6cm}
\normalfont
\begin{quote}}
{\end{quote}
%\newpage	
%\phantomsection
%% Create a blank page after
%\thispagestyle{empty}
%\mbox{}
}

% ---------- Acknowledgements ----------------
\newenvironment{acknowledgements} {
\cleardoublepage
\phantomsection
\addcontentsline{toc}{chapter}{Acknowledgements} 
\thispagestyle{empty}
\vspace*{1.5cm}
\large\bfseries\centering  ACKNOWLEDGEMENTS
\vspace{0.6cm}
\normalfont
\begin{quote}}
{\end{quote}}

% ---------- Table of Contents ----------------
\newcommand{\makeTOC} {
\cleardoublepage
\phantomsection 
\renewcommand{\contentsname}{\hfill\bfseries\large TABLE OF CONTENTS \hfill}
\renewcommand{\cftaftertoctitle}{\hfill}
\addcontentsline{toc}{chapter}{Table of Contents} 
\tableofcontents
}

% ---------- List of Figures ----------------
\newcommand{\makeLOF} {
\cleardoublepage
\phantomsection
\renewcommand{\listfigurename}{\hfill\bfseries\large LIST OF FIGURES \hfill}
\renewcommand{\cftafterloftitle}{\hfill}
%\renewcommand{\cftloftitlefont}{\hspace*{\fill}\large\bfseries} %CIN
\addcontentsline{toc}{chapter}{List of Figures} 
\listoffigures
}

% ---------- List of Tables ----------------
\newcommand{\makeLOT} {
\cleardoublepage
\phantomsection
\renewcommand{\listtablename}{\hfill\bfseries\large LIST OF TABLES \hfill}
\renewcommand{\cftafterlottitle}{\hfill}
\addcontentsline{toc}{chapter}{List of Tables} 
\listoftables
}

% ---------- List of Symbols ----------------
\newenvironment{listofsymbols} {
\cleardoublepage
\phantomsection
\addcontentsline{toc}{chapter}{List of Symbols} 
\thispagestyle{empty}
\begin{center}
	\vspace*{1.5cm}
	\large \bfseries LIST OF SYMBOLS
\end{center}
\vspace{0.5cm}
\begin{quote}}
{\end{quote}}

% -------- Frontmatter ----------
\newcommand{\makeFrontmatter} {
\pagestyle{empty}
\pagenumbering{roman}
\maketitle                  % create a title page from the preamble info
\ifthenelse{\equal{\abstractFile}{y}}{\include{abstract}}{}
\ifthenelse{\equal{\acknowledgementsFile}{y}}{\include{acknowledgements}}{}
\makeTOC
\makeLOF
\makeLOT
\ifthenelse{\equal{\listofsymbolsFile}{y}}{\include{listofsymbols}}{}
\cleardoublepage
\phantomsection	
\pagestyle{fancy}
\pagenumbering{arabic}
}

% -------- Bibliography ----------
\newcommand{\makeBib}[1] {
\cleardoublepage
\phantomsection	
\addcontentsline{toc}{chapter}{References}
\renewcommand{\bibname}{\bfseries\large REFERENCES}
\bibliographystyle{iuss}  
\bibliography{refs}
}

%----------Remove page numbers from first page of chapter
\makeatletter
\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
 \thispagestyle{empty}%
 \global\@topnum\z@
 \@afterindentfalse
 \secdef\@chapter\@schapter}
\makeatother