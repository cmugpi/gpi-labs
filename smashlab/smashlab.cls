%******************************************************************************%
%*                                  Classes                                   *%
%******************************************************************************%

% Define Class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{plaid-homework}[2020/09/15 Homework Template by Sayan & Deepayan]

% Inherit `article' document type
\LoadClass[10pt]{article}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

%******************************************************************************%
%*                                  Packages                                  *%
%******************************************************************************%

% For defining page setup
\RequirePackage[textwidth=16.5cm, textheight=23.5cm]{geometry}
\oddsidemargin0cm

% For font encoding
\RequirePackage[utf8]{inputenc} 
% For special symbols
\RequirePackage{textcomp}

% For writing better classes and packages
\RequirePackage{etoolbox}

% For working with math and symbols by the American Mathematical Society
\RequirePackage{amsmath, amssymb, amsfonts, amsthm}
% For better, more beautiful math support
\RequirePackage{mathtools}
% For formatting math such as differentials
\RequirePackage{commath} 
% For formatting higher order integrals
\RequirePackage{esint}

% For better, more beautiful code support (including syntax coloring!)
\RequirePackage{listings}

% For supporting more colors
\RequirePackage[usenames,svgnames]{xcolor}

% For pretty page headers
\RequirePackage{fancyhdr}
% For pretty verbatim environments
\RequirePackage{fancyvrb}
% For customizing footnotes
\RequirePackage[hang,flushmargin]{footmisc}

% For stronger enumeration control
\RequirePackage{enumitem}
\setlength{\itemsep}{-1ex}

% For better hyperlink controls
\RequirePackage{hyperref} 
% Alter default link colors
\hypersetup{          
    colorlinks=true,
    filecolor=magenta,
    urlcolor=cyan,
}

% For image support
\RequirePackage{graphicx}
\graphicspath{
    % default path for graphics, i.e. upload all images to assets/ 
    {assets/}
}
% For creating your own vector graphics
\RequirePackage{tikz}
% For creating your own plots
\RequirePackage{pgfplots}
\pgfplotsset{compat=1.7}
% For patterned outputs, like in plots
\usetikzlibrary{patterns} 
% For creating figures and subfigures
% \RequirePackage{caption}
% \RequirePackage{subcaption}
% For positioning figures
\RequirePackage{float}

% For conditionals in LaTeX
\RequirePackage{ifthen}
% For multi-line comments
\RequirePackage{comment}
% For easy placeholder text generation
\RequirePackage{lipsum}

% For horizontally centering the \not command
\RequirePackage{centernot}

%******************************************************************************%
%*                                  Spacing                                   *%
%******************************************************************************%

% Paragraph Spacing Options
\setlength{\parindent}{0pt}
\setlength{\parskip}{5pt plus 1pt}

% Header Spacing Options
\setlength{\headsep}{1.7em}
\setlength{\headheight}{30pt}

% Line Spacing Options
\renewcommand{\baselinestretch}{1.25}

%******************************************************************************%
%*                                  Headers                                   *%
%******************************************************************************%

% Page Header (Normal)
\pagestyle{plain}
\lhead{\fancyplain{}{\textbf{Homework~\homework}}} 
\rhead{\fancyplain{}{\name\linebreak\andrewid}}
\chead{\fancyplain{}{\texttt{\course}}}

% Page Header (First)
\newcommand{\passport}[1]{%
    \thispagestyle{plain}
    \begin{flushright}
    \textbf{\name} \\
    \course:~Section~\recitation \\
    Professor:~\professor \\
    \ifthenelse{\equal{#1}{}}{\today}{#1}
    \end{flushright}
}

% Title
\renewcommand{\title}[1]{%
    \begin{center}
        {\Large\textbf{#1}}
    \end{center}
    \vspace{0.25em}
    \hrule
    \vspace{1em}
} 

%******************************************************************************%
%*                                    Code                                    *%
%******************************************************************************%

% SML Programming Declaration
\lstdefinelanguage{sml}{
basicstyle=\small\ttfamily,
  captionpos=b,
  tabsize=2,
  columns=fixed,
  breaklines=true,
  numbers=none,
  numberstyle=\small\ttfamily,
  morekeywords= {
    unit, int, bool, real, char, string,
    fn, fun,
    if, then, else,
    case, of,
    EQUAL, GREATER, LESS,
    SOME, NONE, let, in, end, val
  },
  morestring=[b]",
  morecomment=[s]{(*}{*)},
}

% Code Typsetting Settings
\lstset{
  language=C++,                      % the language of the code
  basicstyle=\small\ttfamily,        % code font and style
  % numbers=left,                    % line number location
  % numberstyle=\tiny\color{Blue},   % line-number font style
  % stepnumber=1,                    % the step between two line-numbers 
                                     % above, 1 = print numbers on each line
  numbersep=5pt,                     % space from line-numbers to code
  backgroundcolor=\color{white},     % choose background color
  showspaces=false,                  % do not show underline spaces in code
  showstringspaces=false,            % do not underline spaces within strings
  showtabs=false,                    % do not underline tabs within strings
  % frame=single,                    % adds a frame around the code
  % rulecolor=\color{black},         % if not set, the frame-color may change
                                     % on line-breaks within not-uniform text 
                                     % coloring
  tabsize=2,                         % sets default tabsize to 2 spaces
  captionpos=b,                      % sets the caption-position to bottom
  breaklines=true,                   % sets automatic line breaking
  breakatwhitespace=false,           % sets auto breaks only at whitespace
  keywordstyle=\color{DarkMagenta},  % keyword coloring
  commentstyle=\color{ForestGreen},  % comment coloring
  stringstyle=\color{Maroon},        % string literal 
  morecomment=[l][\color{RoyalBlue}]{\#} % more coloring for special strings
}

%******************************************************************************%
%*                             Macros: Formatting                             *%
%******************************************************************************%

% Problem
% Usage: \problem{number}{problem statement}
\newcommand{\problem}[2]{
    \noindent{\bf Problem #1}
    \noindent{#2}
    \vspace{0.75em}
    \hrule
    \vspace{.5em}
}

% Spaced Partition
\newcommand{\spacepart}{
    \vspace{5em}
}

% Star Partition
\newcommand{\starpart}{
    \begin{center} 
    \texttt{*}
    \end{center}
}

%******************************************************************************%
%*                                Macros: Math                                *%
%******************************************************************************%

% Mathematical Functions
\renewcommand{\abs}[1]{\lvert #1 \rvert}            % absolute value
\newcommand{\logn}{\log n}                          % log n
\newcommand{\logp}[1]{\log{\left({#1}\right}}       % parenthesized log

% Strings
\newcommand{\enc}[1]{\langle #1 \rangle}            % encoding
\newcommand{\blanksymbol}{\text{\textvisiblespace}} % blank space
\renewcommand{\epsilon}{\varepsilon}                % epsilon/empty string

% Sets
\renewcommand{\emptyset}{\varnothing}               % empty set
\newcommand{\U}{\mathcal{U}}                        % universal set
\newcommand{\binary}{\{0 , 1\}}                     % binary

% Sets of Numbers
\newcommand{\N}{\mathbb{N}}                         % natural numbers
\newcommand{\Z}{\mathbb{Z}}                         % integers
\newcommand{\R}{\mathbb{R}}                         % real numbers
\newcommand{\Q}{\mathbb{Q}}                         % rational numbers

% Set Operations
\newcommand{\union}{\cup}                           % union
\newcommand{\intersection}{\cap}                    % intersection

% Probability
\renewcommand{\Pr}{\mathbb{P}}                      % probability
\newcommand{\E}{\mathbb{E}}                         % expectation 
\newcommand{\V}{\mathbb{V}}                         % variance
\newcommand*{\Comb}[2]{C^{#1}_{#2}}                 % combinations
\newcommand{\distas}[1]{\overset{#1}{\sim}}         % distributions

% Asymptotic Analysis
\renewcommand{\O}{O}                                % big O
\renewcommand{\o}{o}                                % little o
\newcommand{\Om}{\Omega}                            % big Omega
\newcommand{\om}{\omega}                            % little Omega
\newcommand{\Th}{\Theta}                            % Theta

% Proofs 
\newcommand{\im}{\item[$\implies$]}                 % implies as bullets
\newcommand{\QED}{\hfill \qedsymbol}                % QED box
\newcommand{\QEDtext}{\hfill \textsc{qed}}          % QED text
\newcommand{\micdrop}{\QED}

% Induction
\newcommand{\pn}{P$\left(n\right)$ }
\newcommand{\pk}{P$\left(k\right)$ }
\newcommand{\pkpo}{P$\left(k+1\right)$ }
\newcommand{\px}[1]{P$\left(#1\right)$}
\newcommand{\st}{\text{ s.t. }}                             
\newcommand{\RHS}{\underline{RHS:}~}
\newcommand{\LHS}{\underline{LHS:}~}
\newcommand{\BC}{\underline{Base Case:}~}
\newcommand{\BCS}{\underline{Base Cases:}~}
\newcommand{\IH}{\underline{Induction Hypothesis:}~}
\newcommand{\IS}{\underline{Induction Step:}~}

% Calculus
% Usage: \deriv {dependent var} {independent var}
\newcommand{\deriv}[2]{\frac{d #1}{d #2}}
% Usage: \partderiv {dependent var} {independent var}
\newcommand{\partderiv}[2]{\frac{\partial #1}{\partial #2}} 
% Usage: \eval {function} {var=lower bound} {upper bound}
\renewcommand{\eval}[3]{\left.#1\right\rvert_{#2}^{#3}}
% Usage: \di
\DeclareMathOperator{\di}{d\!}

%******************************************************************************%
%*                            Macros: Conditional                             *%
%******************************************************************************%

% If Exists
% Docstring: Render #2 if #1 exists.
\newcommand{\ifexists}[2]{%
    \ifthenelse{\equal{#1}{}}{}{#2}%
}

% If Exists Two
% Docstring: Render #3 if #1 and #2 exist.
\newcommand{\ifexiststwo}[3]{%
    \ifexists{#1}{\ifexists{#2}{#3}}%
}

%******************************************************************************%
%*                    Macros: Theoretical Computer Science                    *%
%******************************************************************************%

% Reductions
\newcommand{\karp}{\leq^P_m}
\newcommand{\lsr}{\leq^L_m}

% Complexity Classes
\newcommand{\poly}{\text{poly}}
\newcommand{\ccp}{{\sf P}}
\newcommand{\ccnp}{{\sf NP}}
\newcommand{\ccconp}{{\sf coNP}}
\newcommand{\ccrp}{{\sf RP}}
\newcommand{\cccorp}{{\sf coRP}}
\newcommand{\cczpp}{{\sf ZPP}}
\newcommand{\cce}{{\sf E}}
\newcommand{\ccexp}{{\sf EXP}}
\newcommand{\ccnexp}{{\sf NEXP}}
\newcommand{\cctime}{{\sf TIME}}
\newcommand{\ccl}{{\sf L}}
\newcommand{\ccnl}{{\sf NL}}
\newcommand{\ccnc}{{\sf NC}}
\newcommand{\ccconl}{{\sf coNL}}
\newcommand{\pspace}{{\sf PSPACE}}

% Problems
\newcommand{\tcol}{\textsf{3-COL}}
\newcommand{\tsat}{\textsf{3-SAT}}
\newcommand{\is}{\textsf{INDEPENDENT-SET}}
\newcommand{\clique}{\textsf{CLIQUE}}
\newcommand{\vc}{\textsf{VERTEX-COVER}}
\newcommand{\nae}{\textsf{NAE-3SAT}}
\newcommand{\csat}{\textsf{CIRCUIT-SAT}}

%******************************************************************************%
%*                               Macros: Logic                                *%
%******************************************************************************%

% Logical Operators
\renewcommand{\t}{\ true}
\newcommand{\lime}{\lim E}
\newcommand{\limu}{\lim I^u}
\newcommand{\limv}{\lim I^v}
\newcommand{\limw}{\lim I^w}
\newcommand{\landi}{\land I}
\newcommand{\landl}{\land E_1}
\newcommand{\landr}{\land E_2}

% Proof Trees
\newcommand{\assume}[2]{\infer[#1]{#2}{}}
\newcommand{\assumeid}[1]{\infer[\textsf{id}]{#1}{}}
\newcommand{\assumesf}[2]{\infer[\textsf{#1}]{#2}{}}
\newcommand{\assumeu}[1]{\infer[u]{#1}{}}
\newcommand{\assumev}[1]{\infer[v]{#1}{}}
\newcommand{\assumew}[1]{\infer[w]{#1}{}}
\newcommand{\deducedots}[2]{\deduce{#1}{\deduce{\vdots\strut}{#2}}}
\newcommand{\deducechar}[3]{\deduce{#1}{\deduce{\mathcal{#3}\strut}{#2}}}
\newcommand{\deducecal}[2]{\deduce{#1}{\mathcal{#2}}}
\newcommand{\deducetext}[2]{\deduce{#1}{#2}}
\newcommand{\atomic}[1]{\infer[\downarrow\uparrow]{#1 \uparrow}{#1 \downarrow}}

% Sequent Calculus
\newcommand{\seq}{\Longrightarrow}
\newcommand{\lseq}{\Vdash}

% Linear Logic
\newcommand{\jtrue}{\;\mbox{\it true}}
\newcommand{\jres}{\;\mbox{\it res}}
\newcommand{\jures}{\;\mbox{\it ures}}
\newcommand{\lolli}{\multimap}
\newcommand{\tensor}{\otimes}
\newcommand{\with}{\&}
\newcommand{\paar}{\mathbin{\bindnasrepma}}
\newcommand{\bang}{{!}}
\newcommand{\whynot}{{?}}