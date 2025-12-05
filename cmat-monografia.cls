%% Clase para monografías del CMat
%%
%% Autor: Gonzalo Tornaría <tornaria@cmat.edu.uy>
%%
\ProvidesClass{cmat-monografia}
  [2017/11/23 v0.2 CMat clase de monografía]
%% 2016/11/23 v0.2:
%%  - posición del título
%% 2016/10/31 v0.1:
%%  - ajusta geometría
%% 2016/10/12 v0.0:
%%  - primera version

\NeedsTeXFormat{LaTeX2e}[1995/12/01]

\def\mono@class{amsbook}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\mono@class}}
\ProcessOptions\relax

\PassOptionsToClass{11pt}{\mono@class}

\LoadClass{\mono@class}[2014/09/29]

%%% Page geometry

\RequirePackage{geometry}
\geometry{a4paper}
\geometry{text={147mm,207.9mm}} % 0.7 of A4
\geometry{hcentering}

%%% Title page

\def\author#1{\gdef\@author{#1}}
\def\subtitle#1{\gdef\@subtitle{#1}}
\def\director#1{\gdef\@director{#1}}
\def\codirector#1{\gdef\@codirector{#1}}
\def\inst#1{\gdef\@inst{#1}}
\def\coinst#1{\gdef\@coinst{#1}}
\let\@author\@empty
\let\@subtitle\@empty
\let\@director\@empty
\let\@codirector\@empty
\let\@inst\@empty
\let\@coinst\@empty

\renewcommand\maketitle{\begin{titlepage}%
\setcounter{page}{0}
\ifx\@inst\@coinst\let\@coinst\@empty\fi
\parskip 1mm\relax
\begin{center}\relax
    \null\vskip-0pt\vskip-17mm\relax
  {\LARGE\sc Trabajo monogr\'afico\par}\relax
    \vskip 35mm\relax
%% TITULO
\vbox to 50mm{%
    \rule{\textwidth}{4pt}\par
  {\Huge \bf \@title \par}\relax
    \vskip 1mm\relax
  {\huge \@subtitle \par}\relax
    \rule{\textwidth}{4pt}\par
    \vskip 0mm plus 1fil\relax
}%
%%
    \vskip 20mm\relax
%% AUTOR
\vbox to 25mm{%
  {\huge \@author \par}\relax
    \vskip 5mm\relax
  {\Large \@date \par}\relax
    \vskip 0mm plus 1fil\relax
}%
%%
    \vskip 20mm\relax
%% ORIENTADOR
\vbox to 50mm{%
\ifx\@codirector\@empty
  {\Large Orientador:\par}\else
  {\Large Orientadores:\par}\fi
    \vskip 4mm\relax
\ifx\@codirector\@empty
  {\large \@director \par}\relax
  {\large \@inst \par}\relax
\else
\ifx\@coinst\@empty
  {\large \@director \par}\relax
  {\large \@codirector \par}\relax
    \vskip 1mm\relax
  {\large \@inst \par}\relax
\else
  {\large \@director \par}\relax
  {\large \@inst \par}\relax
    \vskip 2mm\relax
  {\large \@codirector \par}\relax
  {\large \@coinst \par}\relax
\fi\fi
    \vskip 0mm plus 1fil\relax
}%
%%
\end{center}\par
\vskip-25mm
\vfill
{\raggedleft\sc
 Licenciatura en Matem\'atica\par
 Universidad de la Rep\'ublica\par
 Montevideo, Uruguay\par
}\relax
\vskip-20mm\relax
\end{titlepage}%
%\thispagestyle{empty}
\setcounter{page}{0}
\cleardoublepage
}


%%% Abstract

\def\abstract{}
\renewenvironment{abstract}[1][\abstractname]{%
  %\thispagestyle{empty}
  \null\vfil
  \@beginparpenalty\@lowpenalty
  \begin{center}%
    \bfseries {#1}
    \@endparpenalty\@M
  \end{center}}%
 {\par\vfil\null\clearpage
  %\thispagestyle{empty}%
  \cleardoublepage}

%%% Nombres en español
\def\abstractname{Resumen}
\def\contentsname{\'Indice general}
\def\chaptername{Cap\'itulo}

\endinput
