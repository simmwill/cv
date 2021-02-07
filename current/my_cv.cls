\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_cv}[2020/01/28 wes_cv]

\LoadClass{article}
\RequirePackage{titlesec}
\RequirePackage{hyperref}
\urlstyle{same}

\setlength{\parindent}{0pt}		% New paragraphs by default not indented

\newcommand{\name}[1]{%
  \centerline{\LARGE{#1}}			% Name command
}

\newcommand\contact[5]{%
    \centerline{%
        \makebox[0pt][c]{%
            #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3		% Contact info command
            \ #4 \ \ #5%
        }%
    }%
}

\titleformat{\section}         				% Customise the \section command 
  {\Large\bfseries\sffamily\raggedright} 		% Make the \section headers large (\Large),
                               						% small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      					% Can be used to give a prefix to all sections, like 'Section ...'
  {}                           					% Can be used to insert code before the heading
  [\titlerule]                 					% Inserts a horizontal line after the heading

\titleformat{\subsection}			% Defining subsections
  {\normalsize\sffamily\bfseries}
  {}{0em}
  {}

\titlespacing\subsection{0pt}{12pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}

\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}

\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}

\newcommand{\subitemss}[2]{%		
    \begin{itemize}					% Two subitems
	    \setlength\itemsep{0em}
	    \item #1
	    \item #2
    \end{itemize}%
}

\newcommand{\subitemsss}[3]{%		
    \begin{itemize}
	    \setlength\itemsep{0em}		% Three subitems
	    \item #1
	    \item #2
	    \item #3
    \end{itemize}%
}

\newcommand{\subitemssss}[4]{%		
    \begin{itemize}
	    \setlength\itemsep{0em}		% Four subitems
	    \item #1
	    \item #2
	    \item #3
	    \item #4
    \end{itemize}%
}

% allows (anticipated) to align with top of line in degree year section
\newcommand*\raiseup[1]{%
        \begingroup
        \setbox0\hbox{\scriptsize\strut #1}%
        \leavevmode
        \raise\dimexpr \ht\strutbox - \ht0\box0
        \endgroup
}
