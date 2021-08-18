\ProvidesClass{seedproposal}[2021/08/18]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrartcl}}
\DeclareOption{english}{\PassOptionsToPackage{ngerman,main=english}{babel}}
\DeclareOption{ngerman}{\PassOptionsToPackage{ngerman}{babel}}
\ExecuteOptions{ngerman} % set default value as "english"

\ProcessOptions\relax
\LoadClass[
    numbers=endperiod
    version=last]{scrartcl}

\RequirePackage{babel}
\RequirePackage{amsmath,amssymb}
\RequirePackage{lmodern}
\RequirePackage{textcomp} % provide euro and other symbols
\RequirePackage{upquote} % for straight quotes in verbatim environments
\RequirePackage[usenames,dvipsnames]{xcolor}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{eso-pic}
\RequirePackage{tabto}
\RequirePackage{microtype}
\RequirePackage[scaled]{helvet}
\RequirePackage[T1]{fontenc}
\usepackage[utf8]{inputenc}

\UseMicrotypeSet[protrusion]{basicmath} % disable protrusion for true type fonts

\setlength{\parindent}{0pt}
\setlength{\parskip}{0em}
\setlength{\baselineskip}{0pt}

% colors

\definecolor{lmugreen}{rgb}{0.01,0.58,0.25}

% hyperlinks

\usepackage[
    breaklinks,
    colorlinks,
    linkcolor=RoyalBlue,
    urlcolor=RoyalBlue,
    citecolor=RoyalBlue]{hyperref}

% update font to helvetica

\renewcommand\familydefault{\sfdefault}

% color the paragraphs
\definecolor{origins}{RGB}{49,115,180}
\addtokomafont{paragraph}{\color{origins}}
\addtokomafont{section}{\color{origins}}
\addtokomafont{subsection}{\color{origins}}

% add logo
\AddToShipoutPictureBG*{%
    \AtPageUpperLeft{%
        \put(.65\paperwidth,-.2\paperheight){\includegraphics[scale=0.5]{Logo_Origins_RGB.jpg}}
    }%
}

% command to typeset proposal data

\newcommand{\info}[2]{\paragraph{#1}\tabto{5cm} #2}


% less space between the \paragraphs
\RedeclareSectionCommands[
  beforeskip=0\baselineskip,
  runin=true,
  afterskip=0em]{paragraph}

\RedeclareSectionCommands[
    beforeskip=0.5em,
    afterskip=0.5em,
]{section,subsection}

\author{}
\date{}
\title{}

% no new page after title
\let\endtitlepage\relax

\newcommand{\makehead}[1]{
\begin{titlepage}
    \vspace*{-2cm}
    \begin{Huge}\textbf{Seed Money}\end{Huge}\\[1cm]
    \begin{Large}\textcolor{origins}{\textbf{Application}}\end{Large}\\[0em]
    \textcolor{origins}{\rule[0.25em]{0.7\textwidth}{2.5pt}}
    \info{Call for proposals:}{#1}\\
    \textcolor{origins}{\rule[0.25em]{0.7\textwidth}{2.5pt}}
\end{titlepage}
}

\endinput