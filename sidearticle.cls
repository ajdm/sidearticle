\NeedsTeXFormat{LaTeX2e}
\ProvidesFile{sidearticle.cls}[2014/10/21 v0.1 Side Article]

%%%%%%%%%%%%
% Packages %
%%%%%%%%%%%%
\LoadClassWithOptions{article}
\RequirePackage{amsmath}
\RequirePackage{sidenotes}
\RequirePackage[maxfloats=45]{morefloats}
\RequirePackage{marginfix}
\RequirePackage{siunitx}
\RequirePackage{booktabs}
\captionsetup{font=footnotesize, skip=4pt}

\RequirePackage{microtype}


%%%%%%%%%%%%%%%
% Page layout %
%%%%%%%%%%%%%%%
\RequirePackage{geometry}
\geometry{a4paper, textwidth=370pt, textheight=599pt, left=50pt, marginparsep=20pt, marginparwidth=130pt, footskip=40pt}
\frenchspacing


%%%%%%%%%%%%%
% Maketitle %
%%%%%%%%%%%%%
\def\maketitle{%
  \begin{center}
  \par\fontsize{18pt}{16pt}\selectfont\textbf{\@title}%
  \vspace{1em}%
  \par\fontsize{16pt}{14pt}\selectfont{\scshape\@author}%
  \vspace{1em}%
  \par\fontsize{14pt}{12pt}\selectfont{\scshape\@date}%
  \vspace{2em}%
  \end{center}
}%


%%%%%%%%%%%%%%%%%%%%%%%%%
% Fullwidth environment %
%%%%%%%%%%%%%%%%%%%%%%%%%
\newlength{\overhang}
\setlength{\overhang}{\marginparwidth}
\addtolength{\overhang}{\marginparsep}
%
\newenvironment{fullwidth}
  {\ifthenelse{\boolean{@twoside}}%
     {\begin{adjustwidth*}{}{-\overhang}}%
     {\begin{adjustwidth}{}{-\overhang}}%
  }%
  {\ifthenelse{\boolean{@twoside}}%
    {\end{adjustwidth*}}%
    {\end{adjustwidth}}%
  }


%%%%%%%%%
% Fonts %
%%%%%%%%%
\renewcommand{\normalsize}{\fontsize{12pt}{15pt}\selectfont}%
\renewcommand{\footnotesize}{\fontsize{8pt}{10pt}\selectfont}%
%
\RequirePackage{fontspec}%
\RequirePackage{unicode-math}%
\setmainfont{Minion Pro}%
\setmonofont[Scale=MatchLowercase]{DejaVu Sans Mono}%
\setsansfont[Scale=MatchLowercase]{Myriad Pro}%
\setmathfont[Scale=MatchLowercase]{XITS Math}%
\setmathfont[range=\mathup/{num,latin,Latin,greek,Greek}]{Minion Pro}%
\setmathfont[range=\mathbfup/{num,latin,Latin,greek,Greek}]{MinionPro-Bold}% 
\setmathfont[range=\mathit/{num,latin,Latin,greek,Greek}]{MinionPro-It}%
\setmathfont[range=\mathbfit/{num,latin,Latin,greek,Greek}]{MinionPro-BoldIt}%


%%%%%%%%%%%%
% Headings %
%%%%%%%%%%%%
\RequirePackage{titlesec,titletoc}%
\setcounter{secnumdepth}{0}%
\titleformat{\section}{\fontsize{14pt}{16pt}\selectfont\bfseries}{\thesection}{0.5em}{}%
\titleformat{\subsection}{\fontsize{14pt}{16pt}\selectfont\itshape}{\thesubsection}{0.5em}{}%
\titleformat{\subsubsection}{\fontsize{12pt}{14pt}\selectfont}{\thesubsubsection}{0.5em}{}%
\titlespacing*{\section}{0pt}{2em}{1em}%
\titlespacing*{\subsection}{0pt}{1em}{1em}%
\titlespacing*{\subsubsection}{0pt}{1em}{0em}%


%%%%%%%%%%%%%%%%%%%%%%%
% Headers and footers %
%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{fancyhdr}%
\renewcommand{\headrulewidth}{0pt}%
\renewcommand{\footrulewidth}{0pt}%
\fancyhf{}%
{\fancyfoot[LE,RO]{\thepage}}%
\fancypagestyle{plain}{%
  \fancyhf{}%
}%


%%%%%%%%%%%%%%%%%%%%
% Cross-references %
%%%%%%%%%%%%%%%%%%%%
\RequirePackage{prettyref}
\newrefformat{tab}{Table \ref{#1}}
\newrefformat{fig}{Figure \ref{#1}}
