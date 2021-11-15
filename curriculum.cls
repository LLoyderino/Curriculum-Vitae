\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{curriculum}

\LoadClass[10pt]{article}

% Importing packages
\usepackage{xcolor}
\usepackage[colorlinks = true,
            linkcolor = blue]{hyperref}
\usepackage[margin=3cm]{geometry}

% Removing page numbering
\pagenumbering{gobble}

% Move title on the left
\makeatletter
\renewcommand{\maketitle}{\bgroup\setlength{\parindent}{0pt}
  \begin{flushleft}
    \textbf{\Huge\@title}
  \end{flushleft}\egroup
}
\makeatother

% Title
\title{\Name\ \Surname}
\author{}
\date{}

% Vertical line
\usepackage{array, xcolor}
\definecolor{lightgray}{gray}{0.8}
\newcolumntype{L}{>{\raggedleft}p{0.13\textwidth}}
\newcolumntype{R}{p{0.8\textwidth}}
\newcommand\VRule{\color{lightgray}\vrule width 0.5pt}
