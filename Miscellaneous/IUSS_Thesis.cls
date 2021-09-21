% IUSS Pavia Thesis Template
% Gerard O'Reilly (initial version)
% Graeme Weatherill and Cecilia Nievas (Version 8)
% Volkan Ozsarac and Jimena Martin (Working Draft Version)

% ------------- File Identification  ---------------------
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{IUSS_Thesis}

% ------- Load the Report Class and Basic Packages ---------
\LoadClass[11pt, twoside]{report}  %jmt 07/09/2021

% Font sizes, in our case we have to look at 11pt as this is the default font size in our class
% Command             10pt    11pt    12pt
% \tiny               5       6       6
% \scriptsize         7       8       8
% \footnotesize       8       9       10
% \small              9       10      10.95
% \normalsize         10      10.95   12
% \large              12      12      14.4
% \Large              14.4    14.4    17.28
% \LARGE              17.28   17.28   20.74
% \huge               20.74   20.74   24.88
% \Huge               24.88   24.88   24.88

% ============================================================================
% Packages
% ============================================================================
% Remaining issues: Can we remove unnecessary packages? I do not think we need all of them. Let's check them when we have time
\RequirePackage{ifthen} % to use of thens for abstract and ackn.
\RequirePackage{sectsty} % needed to change section heading sizes
\RequirePackage{titlesec} % needed to change section heading sizes
\RequirePackage{graphicx} % needed for latest frontpage logo
\RequirePackage{amsmath} % use equations
\RequirePackage{fancyhdr} % use fancy pagestyle
\RequirePackage{setspace} % to set linespace
\RequirePackage{float} % figures
\RequirePackage{tabularx} % use table
\RequirePackage{geometry} % to customize page layout, implementing auto-centering and auto-balancing mechanisms
\RequirePackage{longtable,booktabs,threeparttablex} % for multi-page table, also including long table environments jmt 09/09/2021
\RequirePackage[colorlinks=true,urlcolor=black,citecolor=black,linkcolor=black,bookmarksnumbered]{hyperref} % cross referencing
% Define the caption package and style of captions
\RequirePackage[small,labelfont={bf},textfont={bf},labelsep=period]{caption}
\RequirePackage{subcaption}
\RequirePackage[T1]{fontenc}
% \RequirePackage{ascii} % makes available the graphical reprensentation of the ASCII characters as defined in the IBM PC Code Page 437 C0 Graphics., do we need this?
\RequirePackage[lining]{ebgaramond} % Default font
\RequirePackage[titletoc,title]{appendix} % do we need this? if so can we write why?
\RequirePackage{emptypage} % no headers or footers in empty pages
\RequirePackage{threeparttable}% jmt 07/09/2021
\RequirePackage{pdflscape}% jmt 07/09/2021
\RequirePackage{placeins}% jmt 07/09/2021 to use \FloatBarrier
\RequirePackage{adjustbox} % jmt 07/09/2021
\RequirePackage{multicol} % jmt 07/09/2021
\RequirePackage{makecell} % jmt 07/09/2021
\RequirePackage{multirow} % jmt 07/09/2021
\RequirePackage{nomencl} % jmt 07/09/2021
\RequirePackage{inputenc} % jmt 07/09/2021
\RequirePackage{tocloft} % CIN apparently, to center titles of List of Figs.
\RequirePackage{etoolbox} % not sure where we use but, I guess it was necessary, check this: http://mirrors.ibiblio.org/CTAN/macros/latex/contrib/etoolbox/etoolbox.pdf
\RequirePackage{nomencl} % Produce lists of symbols as in nomenclature
\RequirePackage{amssymb} % Defines Math symbols
\RequirePackage{ifthen} % Conditional commands in LATEX documents
\RequirePackage{enumitem} % To adjust items: http://ctan.org/pkg/enumitem 

% Footnote stuff
\RequirePackage{footnotebackref} % Makes footnote clickable both ways
\RequirePackage{setspace}  % set spacing
\RequirePackage[hang]{footmisc} % set style 

% References
\RequirePackage[american]{babel} % manages culturally-determined typographical (and other) rules for a wide range of languages
\RequirePackage[square, authoryear]{natbib} % bibliography style
\RequirePackage{csquotes} % to insert quotations

% ============================================================================
% Title Page Inputs
% ============================================================================
% Remaining issues: I do not think we need all of these now, 
% - we use @date instead of monthyear
% - we use @title instead of thesis
% - we use @author instead of author header
% - we used @advisor for both advisors and their affiliation see frontmatter.tex

%\def\monthyear#1{\gdef\@monthyear{#1}} % Month and Year
\def\advisor#1{\gdef\@advisor{#1}} % Thesis Advisor
%\def\thesis#1{\gdef\@thesis{#1}} % Individual Study / PhD
%\def\affiliation#1{\gdef\@affiliation{#1}} % Address
%\def\authorheader#1{\gdef\@authorheader{#1}} % Authors for the header
%\newcommand*{\@advisors}{\@advisor}
%\newcommand*{\advisors}[1]{\def\@advisors{#1}}
% ============================================================================
% Page setup
% ============================================================================
% Remaining issues: - 

\urlstyle{sf}
%\setlist{itemsep=0pt} What is this?
\setlength{\captionmargin}{20pt}
\geometry{a4paper,left=3.5cm, right =3.5cm,
top=6cm, bottom=4.7cm, bindingoffset=0.5cm}
\pagestyle{fancy}
\fancyhead{}
\fancyhead[CO]{\textbf{\fontsize{9}{10}\selectfont \@title}}
\fancyhead[CE]{\textbf{\fontsize{9}{10}\selectfont \@author}}
\fancyhead[RO,LE]{\textbf{\fontsize{9}{10}\selectfont \thepage}}
\renewcommand{\headrulewidth}{0.4pt}
% \renewcommand{\footrulewidth}{0.4pt}
\fancyfoot{}

% ============================================================================
% Title Page
% ============================================================================
% Remaining issues: I adjusted spacing as I wanted, it is not exactly the same as the one in word. Nonetheless, they look fine to me

\renewcommand{\maketitle}{
    \thispagestyle{empty}
    \begin{center}
    \begin{doublespacing}
    \vspace*{-2cm}
    \begin{figure}[h]
    \centering
    \includegraphics[width=3.47in]  {Miscellaneous/Logo_IUSS.jpg}
    \end{figure}
    \vspace{1cm}
    \textbf{\fontsize{12}{13}\selectfont Scuola Universitaria Superiore IUSS Pavia}\\
    \vspace{1cm}
    \textbf{\fontsize{14}{17}\selectfont  {\@title}}\\
    \vspace{1cm}
    {\fontsize{11}{12}\selectfont A Thesis Submitted in Partial Fulfilment of the Requirements\\
    for the Degree of Doctor of Philosophy in}\\
    \textbf{\fontsize{14}{17}\selectfont EARTHQUAKE ENGINEERING AND \\
    ENGINEERING SEISMOLOGY} \\
    % \textbf{\fontsize{14}{17}\selectfont RISK AND EMERGENCY MANAGEMENT \\
    % WEATHER RELATED RISK} \\
    \vspace{1cm}
    {\fontsize{11}{12}\selectfont  Obtained in the framework of the Doctoral Program in \\
    Understanding and Managing Extremes}\\
    \vspace{0.5cm}
    {\fontsize{11}{12}\selectfont  by}\\
    \vspace{0.5cm}
    {\fontsize{12}{13}\selectfont \textbf{\@author}}\\
    {\fontsize{12}{13}\selectfont \@advisor}
    \vspace{1cm}
    {\fontsize{11}{12}\selectfont \@date}
    \end{doublespacing}        
    \end{center}
}

% ============================================================================
% Table of Contents
% ============================================================================
% Remaining issues: 

\setlength{\cftbeforechapskip}{2ex}
\setlength{\cftbeforesecskip}{0.5ex}
% Dots
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftsubsecleader}{\cftdotfill{\cftdotsep}}

% Font size and styles
% Necessary to make chapter uppercase letters
\makeatletter
\renewcommand{\@pnumwidth}{1.75em}
\renewcommand{\@tocrmarg}{2.75em}
\patchcmd{\l@chapter}
  {\cftchapfont #1}%   search pattern
  {\cftchapfont {#1}}% replace by
  {}%                  success
  {}%                  failure
\makeatother
\renewcommand\cftchapfont{\small\MakeUppercase} % 10pt uppercase letters
\renewcommand\cftchapaftersnum{.} % add dot after the chapter number
\renewcommand{\cftsecfont}{\small\scshape} % 10pt small caps letters
\renewcommand{\cftsubsecfont}{\small\normalfont} % 10pt normal
\renewcommand{\cftchappagefont}{\small\normalfont} % 10pt normal
\renewcommand{\cftsecpagefont}{\small\normalfont} % 10pt normal
\renewcommand{\cftsubsecpagefont}{\small\normalfont} % 10pt normal

\newcommand{\makeToC} {
\cleardoublepage
\phantomsection 
\addcontentsline{toc}{chapter}{Table of Contents} %include the table of content location in the index
% \renewcommand{\contentsname}{\centerline{\fontsize{14}{17}\selectfont TABLE OF CONTENTS}} %jmt 06/09/2021
% \setlength{\cftbeforetoctitleskip}{0em} %jmt 10/09/2021 to remove space before the title position
% \setlength{\cftaftertoctitleskip}{1.8em} %jmt 10/09/2021 to remove space after the title position

\renewcommand{\contentsname}{\centerline{\fontsize{14}{17}\selectfont}} %VO assign empty name
\part*{TABLE OF CONTENTS} % Insert table of contents as parts (do this for all Abstract, Acknowledgements, ToC, LoF, LoS, LoT)
\vspace{-4.1cm} 
\tableofcontents % Insert table of contents
\thispagestyle{empty} % I added this because these page numbers are not shown in word template
}

% ============================================================================
% Titles' format
% ============================================================================
% Remaining issues: I might have messed up with the structure of headings, we need to reduce spacing of the headings

%-----The following lines allowed to bold equations that are included in the titles
\makeatletter
\DeclareRobustCommand*{\bfseries}{%
  \not@math@alphabet\bfseries\mathbf
  \fontseries\bfdefault\selectfont
  \boldmath
}
\makeatother
% vo 08/09/2021: I updated the format and spacing
\titleclass{\part}{top} % make part like a chapter
\titleformat{\part}
	{\centering\normalfont\fontsize{14pt}{17}\bfseries\MakeUppercase}{}{0pt}{}
\titleformat{\chapter} 
	{\normalfont\fontsize{14pt}{17}\bfseries\MakeUppercase}{\thechapter.}{0.1cm}{} % Says 0.5cm but this looks very large
\titleformat{\section} 
	{\normalfont\fontsize{11pt}{12}\bfseries\scshape}{\thesection}{0.2cm}{} % Says 0.63cm but this looks very large
\titleformat{\subsection} 
	{\normalfont\fontsize{11pt}{12}\bfseries}{\thesubsection}{0.3cm}{} % Says 1cm but this looks very large
\titleformat{\subsubsection}[runin] 
	{\itshape\fontsize{11pt}{12}\bfseries}{\thesubsubsection\space\space}{0cm}{}
\setcounter{secnumdepth}{5} % to show numbering in \subsubsection
\setcounter{tocdepth}{2} %shows all levels incl. paragraph
\renewcommand{\thesubsubsection}{\normalfont\textbf{(\alph{subsubsection})}}

% These look much wider than expected, I think we should reduce
%\titlespacing{command}{left spacing}{before spacing}{after spacing}[right]
% \titlespacing*{\part}{0pt}{60pt}{18pt}
% \titlespacing*{\chapter}{0pt}{60pt}{18pt}
% \titlespacing*{\section}{0pt}{6pt}{6pt}
% \titlespacing*{\subsection}{0pt}{6pt}{6pt}
% \titlespacing*{\subsubsection}{0pt}{6pt}{1ex}


\titlespacing*{\part}{0pt}{26pt}{6pt}
\titlespacing*{\chapter}{0pt}{26pt}{6pt}
\titlespacing*{\section}{0pt}{0pt}{-6pt}
\titlespacing*{\subsection}{0pt}{0pt}{-6pt}
\titlespacing*{\subsubsection}{0pt}{0pt}{1ex}



% ============================================================================
% Body
% ============================================================================
% Remaining issues: Should we set a line spacing for a body text?

\setlength\parindent{0pt} %No indentation
\setlength{\parskip}{13pt} %Space after paragraphs
% Define the linespacing 
\renewcommand{\baselinestretch}{1.0}
% \linespread{1.18} % 13/11

% Bullet-point lists, and enumarate
\setlist[itemize,1]{leftmargin=*,labelindent=0mm,labelsep=4.5mm,itemsep=1pt,align=left, topsep=0pt}
\setlist[enumerate,1]{label=\roman*), leftmargin=*,labelindent=0mm,labelsep=0mm,itemsep=1pt,align=left, topsep=0pt}

% Table caption
\captionsetup[table]{labelfont={bf},textfont={bf}, format=hang, labelsep=period, justification=raggedright, singlelinecheck = false, width=\textwidth}

% for figures: caption label is italic, the caption text is bold / italic
\captionsetup[figure]{labelfont={bf},textfont={bf}, format=hang, labelsep=period, width=\textwidth}

%Footnote styles:
%This command should be placed before the first \footnote command.
%\renewcommand{\thefootnote}{\arabic{footnote}} 	ex.: 1, 2, 3...
%\renewcommand{\thefootnote}{\roman{footnote}} 	ex. : i, ii, iii...
%\renewcommand{\thefootnote}{\Roman{footnote}} 	ex.: I, II, III...
%\renewcommand{\thefootnote}{\alph{footnote}} 	     ex.: a, b, c...
%\renewcommand{\thefootnote}{\Alph{footnote}} 	ex.: A, B, C...
\renewcommand{\thefootnote}{\fontsize{11pt}{12}\textsuperscript{\alph{footnote}}} % Footnote format
\setlength{\footnotemargin}{2mm} % space between counter and footnote

% set footnoterule distance to text, width, distance to footnote
\makeatletter
\def\footnoterule{\kern 15\p@
  \hrule \@width 2in \kern 15\p@} % the \hrule is .4pt high    
\makeatother
% ============================================================================
% Nomenclatures jmt 07/09/2021 & 08/09/2021
% ============================================================================
% Remaining issues: - 

% \renewcommand{\nomname}{\makebox[\linewidth]{List of Symbols}}%
\renewcommand{\nomname}{\centerline{\fontsize{14}{17}\selectfont List of Symbols} }
\makenomenclature
\renewcommand{\nomgroup}[1]{%
\item[\bfseries
\ifthenelse{\equal{#1}{A}}{Acronyms}{%
\ifthenelse{\equal{#1}{S}}{Symbols}{%
\ifthenelse{\equal{#1}{N}}{Number sets}{}}}%
]}

 

% ============================================================================
% Abstract
% ============================================================================
% Remaining issues: - 

% Remaining issues: - 
\renewenvironment{abstract} {
\cleardoublepage
\phantomsection
\addcontentsline{toc}{chapter}{Abstract} 
\thispagestyle{empty}
\part*{ABSTRACT}
\normalfont
\thispagestyle{empty} % I added this because these page numbers are not shown in word template
\begin{quote}}
{\end{quote}
%\newpage	
%\phantomsection
%% Create a blank page after
%\thispagestyle{empty}
%\mbox{}
}

% ============================================================================
% Acknowledgements
% ============================================================================
% Remaining issues: - 
\newenvironment{acknowledgements} {
\cleardoublepage
\phantomsection
\addcontentsline{toc}{chapter}{Acknowledgements} 
\part*{ACKNOWLEDGEMENTS}
\normalfont
\thispagestyle{empty}
\begin{quote}}
{\end{quote}}

% ============================================================================
% List of Figures
% ============================================================================
% Remaining issues: - 
% jmt 07/09/2021: I updated the format
\newcommand{\makeLoF} {
\cleardoublepage
\phantomsection
\addcontentsline{toc}{chapter}{List of Figures}

% \renewcommand{\listfigurename}{\centerline{\fontsize{14}{17}\selectfont LIST OF FIGURES}} %jmt 06/09/2021
%\renewcommand{\listfigurename}{\hfill\bfseries\large LIST OF FIGURES \hfill}
%\renewcommand{\cftafterloftitle}{\hfill}
% \setlength{\cftbeforeloftitleskip}{0em} %jmt 10/09/2021 to remove space before the title position
% \setlength{\cftafteroftitleskip}{1.8em} %jmt 10/09/2021 to remove space after the title position

\renewcommand{\listfigurename}{\centerline{\fontsize{14}{17}\selectfont}} %VO assign empty name
\part*{LIST OF FIGURES}
\vspace{-4.1cm} 
\small\listoffigures
\thispagestyle{empty} % I added this because these page numbers are not shown in word template
}
% ============================================================================
% List of Tables
% ============================================================================
% Remaining issues: - 
% jmt 07/09/2021: I updated the format
\newcommand{\makeLoT} {
\cleardoublepage
\phantomsection
\addcontentsline{toc}{chapter}{List of Tables} 

% \renewcommand{\listtablename}{\centerline{\fontsize{14}{17}\selectfont LIST OF TABLES}} %jmt 06/09/2021
%\renewcommand{\listtablename}{\hfill\bfseries\large LIST OF TABLES \hfill}
%\renewcommand{\cftafterlottitle}{\hfill}
% \setlength{\cftbeforelottitleskip}{0em} %jmt 10/09/2021 to remove space before the title possition
% \setlength{\cftafterlottitleskip}{1.8em} %jmt 10/09/2021 to remove space after the title possition

\renewcommand{\listtablename}{\centerline{\fontsize{14}{17}\selectfont}} %VO assign empty name
\part*{LIST OF TABLES}
\vspace{-4.1cm}
\small\listoftables
\thispagestyle{empty} % I added this because these page numbers are not shown in word template
}
% ============================================================================
% List of Symbols
% ============================================================================
% Remaining issues: - 

\newcommand{\makeLoS} {
    \cleardoublepage
    \phantomsection
    \addcontentsline{toc}{chapter}{List of Symbols} 
    \printnomenclature
    \thispagestyle{empty} % I added this because these page numbers are not shown in word template
}

% ============================================================================
% Bibliography 
% ============================================================================

% Remaining issues: -
\newcommand{\makebib}{
    \addcontentsline{toc}{chapter}{References}
    \patchcmd{\thebibliography}{\chapter*}{\part*}{}{}
    \renewcommand\bibname{\centerline{\fontsize{14}{17}\selectfont References}}
    \nocite{*}\bibliographystyle{Miscellaneous/iuss} 
    \bibliography{References.bib}
    \thispagestyle{empty} % I added this because these page numbers are not shown in word template
}

% ============================================================================
% Tables 
% ============================================================================
% Remaining issues: It looks like Table captions are indented for some reason
% jmt 07/09/2021
\newcolumntype{+}{>{\global\let\currentrowstyle\relax}}
\newcolumntype{^}{>{\currentrowstyle}}
\newcommand{\rowstyle}[1]{\gdef\currentrowstyle{#1}#1\ignorespaces}

\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

% ============================================================================
% Removal of the first page numbers for each chapter
% ============================================================================
% Remaining issues:
\makeatletter
\renewcommand\chapter{\if@openright\cleardoublepage\else\clearpage\fi
 \thispagestyle{empty}%
 \global\@topnum\z@
 \@afterindentfalse
 \secdef\@chapter\@schapter}
\makeatother
