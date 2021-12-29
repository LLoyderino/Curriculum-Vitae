\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{curriculum}

% Sensitive data
\input{private_info}

\LoadClass[10pt]{article}

% Font
\usepackage[T1]{fontenc}
\usepackage[default]{raleway}

% Fontawesome
\usepackage{fontawesome}

% Importing packages
\usepackage{xcolor}
\usepackage[colorlinks = true,
            linkcolor = blue]{hyperref}
\usepackage[margin=3cm]{geometry}

% Removing page numbering
\pagenumbering{gobble}

% Title
\makeatletter
\renewcommand{\maketitle}{\bgroup\setlength{\parindent}{0pt}
  \begin{minipage}{0.5\textwidth}
    \begin{flushleft}
      \textbf{\Huge\@title}
    \end{flushleft}%\egroup
  \end{minipage}
  \begin{minipage}{0.5\textwidth}
    \begin{tabular}{p{4cm}p{0.2cm}p{4cm}}
      \faHome \Address && \faPhone \Phone \\
      \faEnvelope \Email && \faGithub \Github
    \end{tabular}
  \end{minipage}
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

% Taken from Jan Vorisek's template "Developer CV"
% You may read more in LICENSE-DeveloperCV.md
\usepackage{longtable} % Required for tables that span multiple pages
\setlength{\LTpre}{0pt} % Remove default whitespace before longtable
\setlength{\LTpost}{0pt} % Remove default whitespace after longtable

\setlength{\tabcolsep}{0pt} % No spacing between table columns

% Environment to hold a new list of entries
\newenvironment{entrylist}{
	\begin{longtable}[H]{l l}
}{
	\end{longtable}
}

\newcommand{\entry}[4]{% First argument for the leftmost date(s) text, second is for the bold entry heading, third is for the bold right-aligned entry qualifier and the fourth is for the entry description
	\parbox[t]{0.15\textwidth}{% 17.5% of the text width of the page
		#1 % Leftmost entry date(s) text
	}
  \parbox[t]{0.025\textwidth}{
    \VRule
  }
	& \parbox[t]{0.825\textwidth}{% 82.5% of the text width of the page
		\textbf{#2}% Entry heading text
		\hfill% Horizontal whitespace
		{\footnotesize \textbf{\textcolor{black}{#3}}}\\% Right-aligned entry qualifier text
		#4 % Entry description text
	}\\\\}

\newcommand{\tech}[4][]{
  \textbf{#2{\color{violet}#1}}
  \hfill
  (#3)\\
  #4 \\\\
}
