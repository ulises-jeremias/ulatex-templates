%% This program is free software; you can redistribute  it and/or modify it under the  terms of the GNU General Public  License as published by the Free Software Foundation; either  version 2 of the License, or (at your option) any later version.

%% This program  is distributed in the  hope that it will be useful, but WITHOUT ANY  WARRANTY;   without  even   the  implied   warranty  of MERCHANTABILITY  or FITNESS  FOR A  PARTICULAR PURPOSE. See  the GNU
%% General Public License for more details.

%% This file was created by Ulises Jeremias Cornejo Fandos <ulisescf.24@gmail.com>
%% Last Updated at: 25/10/2020

\ProcessOptions\relax
\LoadClass[twoside,a4paper,10pt,twocolumn,spanish]{article}
\usepackage[utf8]{inputenc} 
\usepackage{csquotes}
%\usepackage{xpatch}
\usepackage[spanish]{babel}
%-------------------------------------------------------------
% TEXT
\usepackage[T1]{fontenc}        % Use T1 codification
\usepackage{mathptmx}           % Adobe Times Roman as default font  
\usepackage[dvipsnames]{xcolor} % color text
%-------------------------------------------------------------
% PAGE DIMENSIONS
\usepackage{geometry} 
\geometry{top=2.25cm} 
\geometry{bottom=2.25cm} 
\geometry{left=2cm} 
\geometry{right=2cm} 
%-----------------------------------------------------------
% Header and footer
\usepackage{fancyhdr} 
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt} 
\lhead{}\chead{}\rhead{}
%-----------------------------------------------------------
% CONFIGURATION OF SECTIONS AND SUBSECTION
\usepackage{titlesec}
\titleformat*{\section}{\fontsize{10}{12}\rmfamily\bfseries\upshape}
\titlespacing*{\section}{0pt}{1.5ex}{0.8ex}
\titleformat*{\subsection}{\fontsize{10}{12}\rmfamily\bfseries\upshape}
\titlespacing*{\subsection}{0pt}{1.2ex}{0.6ex}
\renewcommand\thesection{\Roman{section}}   % number the sections with roman numerals
\setcounter{secnumdepth}{1}                 % does not number subsections
%--------------------------------------------------------------
% CONFIGURATION FOR AUTHORS AND AFFILIATIONS
\usepackage{varwidth}
\usepackage[affil-it]{authblk}
\newcommand{\ufiliation}[2]{\affil[#1]{\protect\begin{varwidth}[t]{\linewidth}\protect\centering {\it #2} \protect\end{varwidth}}}
\newcommand{\uauthor}[2]{\author[#1]{\bf #2}}
\newcommand{\ucorresponding}[2]{\author[#1]{\bf #2\thanks{}}}
\newcommand{\uemail}[1]{\begin{NoHyper}                        % email address
                      \let\thefootnote\relax\footnotetext{#1}
                      \end{NoHyper}
                      }  
\renewcommand\Affilfont{\itshape\small}
%--------------------------------------------------------------                     
% TITLE AND SUMMARY SETUP                   
%\usepackage[titles,subfigure]{tocloft}   
\newcommand{\udate}[1]{\date{\vspace{-2ex}\small{#1}}}
\newcommand{\utitle}[2]{\title{\large{\bf{#1 \\ \vspace{1.5ex} #2 }}}}
\newcommand{\usummary}[1]{\small{#1 \par}\vspace{1.5ex}}
\newcommand{\ukeywords}[1]{\small{\emph{#1} \par}\vspace{1.5ex}}
\newcommand{\uDOI}[1]{\small{\normalfont{#1}}\vspace{0ex}}
%-------------------------------------------------------------
% HYPERLINKS CONFIGURATION
\usepackage[colorlinks = true,
            linkcolor = black,
            urlcolor  = blue,
            citecolor = blue]{hyperref} 
%-------------------------------------------------------------
% CONFIGURATION OF TABLES AND FIGURES HEADINGS
\usepackage[format=plain,
            font=small,
            labelfont=it,
            textfont=it,
            belowskip=-5pt,
            aboveskip=3pt]{caption}
%-----------------------------------------------------------------
% FIGURES
\usepackage{graphicx} 
\usepackage{float} % Allows you to use option [H] to position the figure.
\usepackage{subfig} 
%-----------------------------------------------------------------
% BOARDS
\usepackage{booktabs} 
\usepackage{array} 
\makeatletter
% thick line for table
\newcommand{\uthickhline}{              
   \noalign {\ifnum 0=`}\fi \hrule height 1.5pt
    \futurelet \reserved@a \@xhline
}
\renewcommand\spanishtablename{TABLA}
%-------------------------------------------------------------
% Equations
\usepackage[nodisplayskipstretch]{setspace} % spacing between eq. and text
\usepackage{amsmath,bm}   % \bm: equations in bold
\usepackage{units}        % \unit[VALUE]{UNIT}
%-----------------------------------------------------------------
% LISTS
\usepackage{paralist} % useful for setting up lists
\usepackage{enumitem} % allows modifying the space between items
%-----------------------------------------------------------------
% BIBLIOGRAPHY
%\usepackage{natbib}
%\usepackage[numbers]{natbib} 
\usepackage[backend=biber,style=nature]{biblatex}
\DeclareNameAlias{author}{given-family}
\addbibresource{referencias.bib}
\DeclareFieldFormat{labelnumberwidth}{\mkbibbrackets{#1}}
\DeclareFieldFormat{journaltitle}{#1\isdot}

% NEW
\ExecuteBibliographyOptions{doi=false}
\DeclareFieldFormat{doilink}{%
\iffieldundef{doi}{#1}%
{\href{http://dx.doi.org/\thefield{doi}}{#1}}}

\DeclareBibliographyDriver{article}{%
  \usebibmacro{bibindex}%
  \usebibmacro{begentry}%
  \usebibmacro{author/translator+others}%
  \setunit{\labelnamepunct}\newblock
  \usebibmacro{title}%
  \newunit
  \printlist{language}%
  \newunit\newblock
  \usebibmacro{byauthor}%
  \newunit\newblock
  \usebibmacro{bytranslator+others}%
  \newunit\newblock
  \printfield{version}%
  \newunit\newblock
  %\usebibmacro{in:}%
  \printtext[doilink]{%
  \usebibmacro{journal+issuetitle}%
  \newunit
  \usebibmacro{byeditor+others}%
  \newunit
  \usebibmacro{note+pages}%
  \setunit{\space}%
  }%
  \printtext[doilink]{%
  (\usebibmacro{date})%
  }%
  \newunit\newblock
  \iftoggle{bbx:isbn}
    {\printfield{issn}}
    {}%
  \newunit\newblock
  \usebibmacro{doi+eprint+url}%
  \newunit\newblock
  \usebibmacro{addendum+pubstate}%
  \setunit{\bibpagerefpunct}\newblock
  \usebibmacro{pageref}%
  \usebibmacro{finentry}}

%==============================================================
% Default edition setup
\pagestyle{empty}               % delete no. page and header
