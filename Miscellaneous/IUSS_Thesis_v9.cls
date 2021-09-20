% IUSS Pavia Thesis Template
% Gerard O'Reilly (initial version)
% Graeme Weatherill and Cecilia Nievas (Version 8)
% Volkan Ozsarac and Jimena Martin (Version 9)

% ------------- File Identification  ---------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{IUSS_Thesis_v8}

% ------- Load the Report Class and Basic Packages ---------
%\LoadClass[11pt,twoside,openright]{report}
\LoadClass[11pt, twoside]{report}  %jmt 07/09/2021

% --------- Inputs -------------------
\def\monthyear#1{\gdef\@monthyear{#1}} % Month and Year
\def\advisor#1{\gdef\@advisor{#1}} % Thesis Advisor
\def\thesis#1{\gdef\@thesis{#1}} % Individual Study / PhD
%\def\affiliation#1{\gdef\@affiliation{#1}} % Address
\def\authorheader#1{\gdef\@authorheader{#1}} % Authors for the header

% --------- Packages -------------------
\RequirePackage{todonotes}
\RequirePackage{ifthen} % to use of thens for abstract and ackn.
\RequirePackage{lipsum} % temporary package to fill document
\RequirePackage{blindtext} % temporary package to fill document
%\RequirePackage[square]{natbib} % Use natbib for bibtex (jmt 07/09/2021 I commented this line because it causes incompatibility with the bibliography style I selected)
\RequirePackage{sectsty} % needed to chnage section heading sizes
\RequirePackage{titlesec} % needed to chnage section heading sizes
\RequirePackage{graphicx} % needed for latest frontpage logo
\RequirePackage{amsmath} % use equations
\RequirePackage{fancyhdr} % use fancy pagestyle
\RequirePackage{setspace} % to set linespace
\RequirePackage{float} % figures
\RequirePackage{tabularx} % use table
\RequirePackage{longtable,booktabs,threeparttablex} % for multi-page table, also including long table environments jmt 09/09/2021
\RequirePackage[colorlinks=true,urlcolor=black,citecolor=black,linkcolor=black,bookmarksnumbered]{hyperref} % cross referencing
% Define the caption package and style of captions
\RequirePackage[small,labelfont={bf},textfont={bf},labelsep=period]{caption}
\RequirePackage{subcaption}
\setlength{\captionmargin}{0.7056cm}
\RequirePackage[T1]{fontenc}
\RequirePackage{ascii}
\RequirePackage{ebgaramond}
% \RequirePackage{garamondlibre}

\RequirePackage[titletoc,title]{appendix}
\RequirePackage{emptypage} % no headers in empty pages
\RequirePackage{threeparttable}% jmt 07/09/2021
\RequirePackage{pdflscape}% jmt 07/09/2021
\usepackage{placeins}% jmt 07/09/2021 to use \FloatBarrier
\RequirePackage{adjustbox} % jmt 07/09/2021
\RequirePackage{multicol} % jmt 07/09/2021
\RequirePackage{makecell} % jmt 07/09/2021
\RequirePackage{multirow} % jmt 07/09/2021
\RequirePackage{nomencl} % jmt 07/09/2021
\RequirePackage{inputenc} % jmt 07/09/2021
% % % % % % % % % % % % %  % % % % % % % % % % % % % % % % %
%\RequirePackage{setspace,blindtext,etoolbox}
%\RequirePackage[ paperheight =297mm,paperwidth  =210mm,  % or: "paper=a4paper"
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


%\RequirePackage{background}
%\backgroundsetup{
%	scale=1,
%	angle=0,
%	opacity=1,  %% adjust
%	contents={\includegraphics[width=\paperwidth,height=\paperheight]{bg_page_for_IUSS_template.pdf}}
%}

%% ------- New commands ---------------- jmt 06/09/2021 I commented these lines
%\newcommand\numberthis{\addtocounter{equation}{1}\tag{\theequation}} %  numbering of aligned equations
%
%% Define font size: (CIN):
%\renewcommand{\normalsize}{\fontsize{11pt}{11pt}\selectfont}
%
%% Define the linespacing 
%\linespread{1.18}
%\renewcommand\@dotsep{1}
%\pagenumbering{gobble}

% % Define section heading sizes
% \titleformat{\chapter}{\Large\bfseries}{\thechapter.}{0.1cm}{} %CIN
% %\titleformat{\chapter}{\LARGE\bfseries}{\thechapter.}{0.5cm}{}
% \titlespacing*{\chapter}{0cm}{0cm}{0.5cm}
% \titleformat{\section}{\Large\bfseries\scshape}{\thesection.}{0.2cm}{} %CIN
% %\sectionfont{\bfseries\Large}
% %\sectionfont{\bfseries\scshape} %CIN
% \titleformat{\subsection}{\bfseries}{\thesubsection.}{0.3cm}{} %CIN
% %\subsectionfont{\bfseries}{0.1cm}

% % Define the headers
% \pagestyle{fancy}
% \fancyhf{} 
% \fancyhead{} % clear first
% \fancyfoot{} % clear first
% \fancyhead[CE]{\small\textbf{\@authorheader}}
% \fancyhead[CO]{\small\textbf{\@title}}
% \fancyhead[RO,LE]{\small\textbf{\thepage}}
% \renewcommand{\headrulewidth}{0.5 pt}          %this prints a line under the header

% %set the number of sectioning levels that get number and appear in the contents
% \setcounter{secnumdepth}{4}
% \setcounter{tocdepth}{3} 

\newcommand*{\@advisors}{}
\newcommand*{\advisors}[1]{\def\@advisors{#1}}

% ==================================================================================================
% Page setup
% ==================================================================================================
\RequirePackage{geometry}

\geometry{a4paper,left=3.5cm, right =3.5cm,
top=6cm, bottom=4.7cm, bindingoffset=0.5cm}
\pagestyle{fancy}
\fancyhead{}
\fancyhead[CO]{\textbf{\fontsize{9}{10}\selectfont \@title}}
\fancyhead[CE]{\textbf{\fontsize{9}{10}\selectfont \@author}}
\fancyhead[RO,LE]{\textbf{\fontsize{9}{10}\selectfont \thepage}}
\renewcommand{\headrulewidth}{0.4pt}
%\renewcommand{\footrulewidth}{0.4pt}
\fancyfoot{}

% ==================================================================================================
% Titles' format
% ==================================================================================================
%-----The following lines allowed to bold equations that are included in the titles
\makeatletter
\DeclareRobustCommand*{\bfseries}{%
  \not@math@alphabet\bfseries\mathbf
  \fontseries\bfdefault\selectfont
  \boldmath
}
\makeatother
% vo 08/09/2021: I updated the format and spacing
\usepackage{calc}
\titleclass{\part}{top} % make part like a chapter
\titleformat{\part}
	{\centering\normalfont\fontsize{14pt}{17}\bfseries}{}{0.0cm}{\MakeUppercase} 
\titleformat{\chapter} 
	{\normalfont\fontsize{14pt}{17}\bfseries}{\makebox[30pt][l]{\thechapter.}}{0.0cm}{\MakeUppercase}
\titleformat{\section} 
	{\filright\normalfont\fontsize{11pt}{12}\bfseries}{\makebox[30pt][l]{\thesection}}{0.0cm}{\scshape} 
\titleformat{\subsection} 
	{\filright\normalfont\fontsize{11pt}{12}\bfseries}{\makebox[30pt][l]{\thesubsection}}{0.0cm}{}
\titleformat{\subsubsection}[runin] 
	{\itshape\fontsize{11pt}{12}\bfseries}{\thesubsubsection\space\space}{0cm}{}
\setcounter{secnumdepth}{5} % to show numbering in \subsubsection
\setcounter{tocdepth}{2} %shows all levels incl. paragraph
\renewcommand{\thesubsubsection}{\alph{subsubsection}}

%\titlespacing{command}{left spacing}{before spacing}{after spacing}[right]
%\titlespacing*{\part}{0pt}{60pt}{18pt}
%\titlespacing*{\chapter}{0pt}{60pt}{18pt}
%\titlespacing*{\section}{0pt}{6pt}{6pt}
%\titlespacing*{\subsection}{0pt}{6pt}{6pt}
%\titlespacing*{\subsubsection}{0pt}{6pt}{6pt}

%\titlespacing{command}{left spacing}{before spacing}{after spacing}[right]
\titlespacing*{\part}{0cm}{0cm}{0.6350cm}
\titlespacing*{\chapter}{0cm}{0cm}{0.6350cm}
\titlespacing*{\section}{0cm}{0cm}{0.2117cm}
\titlespacing*{\subsection}{0cm}{0cm}{0.2117cm}
\titlespacing*{\subsubsection}{0cm}{0cm}{0.2117cm}

% ==================================================================================================
% Body
% ==================================================================================================
\setlength\parindent{0cm} %No indentation
\setlength{\parskip}{0.4586cm} %Space after paragraphs

% Bullet-point lists
\RequirePackage{enumitem}% http://ctan.org/pkg/enumitem
\setlist[itemize,1]{leftmargin=*,labelindent=0mm,labelsep=6.3mm,itemsep=0.1058cm}

% Table caption
\captionsetup[table]{labelfont={bf},textfont={bf}, format=hang, labelsep=period}


% for figures: caption label is italic, the caption text is bold / italic
\captionsetup[figure]{labelfont={bf},textfont={bf}, format=hang, labelsep=period}

% ==================================================================================================
% Nomenclatures jmt 07/09/2021 & 08/09/2021
% ==================================================================================================
\RequirePackage{nomencl}
\RequirePackage{amssymb}
\renewcommand{\nomname}{\makebox[\linewidth]{List of Symbols}}%
\makenomenclature


\usepackage{ifthen}
  \renewcommand{\nomgroup}[1]{%
  \item[\bfseries
  \ifthenelse{\equal{#1}{A}}{Acronyms}{%
  \ifthenelse{\equal{#1}{S}}{Symbols}{%
  \ifthenelse{\equal{#1}{N}}{Number sets}{}}}%
  ]}

% ==================================================================================================
% Table of content
% ==================================================================================================
%
%\setlength\cftbeforelottitleskip{18pt}
%\setlength\cftaftertoctitleskip{18pt}
\setlength{\cftbeforechapskip}{2ex}
\setlength{\cftbeforesecskip}{0.5ex}
\renewcommand{\cftchapfont}{\fontsize{10}{11}\selectfont}
\renewcommand{\cftchappagefont}{\fontsize{10}{11}\selectfont}  
\renewcommand{\cftdot}{}   



%% Because of the font change, the page number becomes too large for the
%% horizontal space LaTeX reserves for it by default. Without the following
%% redefines to fix it, this would cause the Chapter entry page numbers
%% to extend a few points into the right margin. The horror! 
\makeatletter
\renewcommand{\@pnumwidth}{1.75em}
\renewcommand{\@tocrmarg}{2.75em}
% \makeatother jimena: I had to comment this command because it was causing issues



% --------- Title Page ----------------
\renewcommand{\maketitle}{
\thispagestyle{empty}
   \begin{center}
   \begin{doublespacing}
    \vspace*{-2cm}
            \begin{figure}[h]
            \centering
            \includegraphics[width=3.47in]  {Figures/Logo_IUSS.jpg}
            \end{figure}
            
            \textbf{\fontsize{12}{13}\selectfont Scuola Universitaria Superiore IUSS Pavia}\\
            \vspace{1cm}
            \textbf{\fontsize{14}{17}\selectfont  {\@title}}\\
            \vspace{0.5cm}
            {\fontsize{11}{12}\selectfont A Thesis Submitted in Partial Fulfilment of the Requirements 
            for the Degree of Doctor of Philosophy in}\\
            \textbf{\fontsize{14}{17}\selectfont EARTHQUAKE ENGINEERING AND \\
            ENGINEERING SEISMOLOGY/ \\
            RISK AND EMERGENCY MANAGEMENT / \\
            WEATHER RELATED RISK}\\
             \vspace{1cm}
            {\fontsize{11}{12}\selectfont  Obtained in the framework of the Doctoral Program in \\
            Understanding and Managing Extremes}\\
            \vspace{0.5cm}
            {\fontsize{11}{12}\selectfont  by}\\
            \vspace{0.5cm}
            {\fontsize{12}{13}\selectfont \textbf{\@author}}\\
            {\fontsize{12}{13}\selectfont Supervisors\\ 
            \@advisor\\}
            \vspace{0.5cm}
            {\fontsize{11}{12}\selectfont December, 2021}
   \end{doublespacing}        
   \end{center}
}

% ---------- Abstract ----------------
\renewenvironment{abstract} {
\cleardoublepage
\phantomsection
\addcontentsline{toc}{chapter}{Abstract} 
\thispagestyle{empty}
\part*{ABSTRACT}
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
\part*{ACKNOWLEDGEMENTS}
\normalfont
\begin{quote}}
{\end{quote}}

% ---------- Table of Contents ----------------
\usepackage{tocloft}

\newcommand{\makeTOC} {
\cleardoublepage
\phantomsection 
\renewcommand{\contentsname}{\centerline{\fontsize{14}{17}\selectfont TABLE OF CONTENTS}} %jmt 06/09/2021
\addcontentsline{toc}{chapter}{Table of Contents} %include the table of content location in the index
\renewcommand{\cftsecfont}{\scshape}
\renewcommand{\cftchapfont}{\uppercase}

\tableofcontents
}

% ---------- List of Figures ---------------- jmt 07/09/2021: I updated the format
\newcommand{\makeLOF} {
\cleardoublepage
\phantomsection
\renewcommand{\listfigurename}{\centerline{\fontsize{14}{17}\selectfont LIST OF FIGURES}} %jmt 06/09/2021
%\renewcommand{\listfigurename}{\hfill\bfseries\large LIST OF FIGURES \hfill}
%\renewcommand{\cftafterloftitle}{\hfill}
\addcontentsline{toc}{chapter}{List of Figures} 
\listoffigures
}

% ---------- List of Tables ---------------- jmt 07/09/2021: I updated the format
\newcommand{\makeLOT} {
\cleardoublepage
\phantomsection
\renewcommand{\listtablename}{\centerline{\fontsize{14}{17}\selectfont LIST OF TABLES}} %jmt 06/09/2021
%\renewcommand{\listtablename}{\hfill\bfseries\large LIST OF TABLES \hfill}
%\renewcommand{\cftafterlottitle}{\hfill}
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
	\vspace*{0cm}
	\large \bfseries LIST OF SYMBOLS
\end{center}
\vspace{0.5cm}
\begin{quote}}
{\end{quote}}

%% -------- Frontmatter ----------
%\newcommand{\makeFrontmatter} {
%\pagestyle{empty}
%\pagenumbering{roman}
%\maketitle                  % create a title page from the preamble info
%\ifthenelse{\equal{\abstractFile}{y}}{\include{abstract}}{}
%\ifthenelse{\equal{\acknowledgementsFile}{y}}{\include{acknowledgements}}{}
%\makeTOC
%\makeLOF
%\makeLOT
%\ifthenelse{\equal{\listofsymbolsFile}{y}}{\include{listofsymbols}}{}
%\cleardoublepage
%\phantomsection	
%\pagestyle{fancy}
%\pagenumbering{arabic}
%}
% -------- Frontmatter ----------
\newcommand{\makeFrontmatter} {
\pagestyle{empty}
\pagenumbering{roman}
\maketitle
\cleardoublepage
\maketitle
\begin{abstract}
This report contains guidelines for formatting a UME PhD Thesis using \LaTeX.
%\blindtext
\end{abstract}
\begin{acknowledgements}
Acknowledegements can be provided here (though it is not compulsory to include them). 
\end{acknowledgements}
\makeTOC
\makeLOF
\makeLOT
\printnomenclature
\cleardoublepage
\phantomsection	
\pagestyle{fancy}
\pagenumbering{arabic}
}

%% -------- Bibliography ----------  jmt 07/09/2021 I commented this lines, to add the format specified right after
%\newcommand{\makeBib}[1] {
%\cleardoublepage
%\phantomsection	
%\addcontentsline{toc}{chapter}{References}
%\renewcommand{\bibname}{\bfseries\large REFERENCES}
%\bibliographystyle{iuss}  
%\bibliography{refs}
%}
% ==================================================================================================
% Tables jmt 07/09/2021
% ==================================================================================================

\newcolumntype{+}{>{\global\let\currentrowstyle\relax}}
\newcolumntype{^}{>{\currentrowstyle}}
\newcommand{\rowstyle}[1]{\gdef\currentrowstyle{#1}#1\ignorespaces}

\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

% ==================================================================================================
% References jmt 07/09/2021
% ==================================================================================================
% jmt for now we can use this format for the references, but it must be updated
\usepackage[american]{babel} 
\usepackage[autostyle]{csquotes} 
\usepackage[maxcitenames =  2, authordate, backend=biber, natbib]{biblatex-chicago}


% %----------Remove page numbers from first page of chapter
% \makeatletter
% \renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
%  \thispagestyle{empty}%
%  \global\@topnum\z@
%  \@afterindentfalse
%  \secdef\@chapter\@schapter}
% \makeatother