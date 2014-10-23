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
\captionsetup{font=footnotesize, skip=4pt}

\RequirePackage{microtype}


%%%%%%%%%%%%%%%
% Page layout %
%%%%%%%%%%%%%%%
\RequirePackage{geometry}
\geometry{a4paper, textwidth=370pt, textheight=599pt, left=50pt, marginparsep=20pt, marginparwidth=130pt, footskip=40pt}



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

