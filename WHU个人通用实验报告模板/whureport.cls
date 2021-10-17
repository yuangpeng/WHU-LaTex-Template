\LoadClass{article}
\RequirePackage{xeCJK}
\RequirePackage{CJKnumb}
\RequirePackage{ctex}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}
\RequirePackage{listings}
\RequirePackage{array}
\RequirePackage{mathtools}
\RequirePackage{float}
\RequirePackage{indentfirst}
\RequirePackage{zhnumber}
\RequirePackage{booktabs}
\RequirePackage{amsmath,xparse}
\RequirePackage{caption}
\RequirePackage{pgfplots, pgfplotstable}
\RequirePackage{subfigure}
\RequirePackage{filecontents}
\RequirePackage{chronosys}
\RequirePackage{lipsum}
\RequirePackage{epstopdf}
\RequirePackage{multicol}
\RequirePackage{multirow}


\linespread{1.2}
\geometry{top=1in,bottom=1in,left=1in,right=1in}
\setcounter{secnumdepth}{3}
\renewcommand\thesection{\chinese{section}、}
\renewcommand\thesubsection{\arabic{section}\thinspace.\thinspace\arabic{subsection}}
\renewcommand\thesubsubsection{\thesubsection\thinspace.\thinspace\arabic{subsubsection}}
\newlist{clause}{enumerate}{1}
\setlist[clause]{fullwidth,itemindent=2em,label=(\arabic*)}
\newCJKfontfamily[song]\song{SimSun}[AutoFakeBold]


\titleformat*{\section}{\large\bfseries}
\titleformat*{\subsection}{\normalsize\bfseries}
\titleformat*{\subsubsection}{\normalsize\bfseries}
\graphicspath{{figures/}{figure/}{pictures/}{picture/}{pic/}{pics/}{image/}{images/}}
\titlespacing{\subsection}{0em}{*4}{*1.5}
\titlespacing{\subsubsection}{0em}{*4}{*1.5}


% c++模板
\RequirePackage{xcolor}
\definecolor{commentColor}{RGB}{53,129,34}
\definecolor{keywordColor}{RGB}{172, 62, 158}
\definecolor{stringColor}{RGB}{194, 62, 42}
\definecolor{preprocessorColor}{RGB}{114, 75, 48}
\definecolor{characterColor}{RGB}{31, 53, 207}
\definecolor{numberColor}{RGB}{166, 166, 166}
\definecolor{oglobalColor}{RGB}{97, 64, 154}
\definecolor{globalColor}{RGB}{89, 127, 134}
\definecolor{functionColor}{RGB}{56,36,124}

\RequirePackage{fontspec}
\newfontfamily\sff{JetBrainsMono-Regular}

\lstset{language=C++,
basicstyle=\sffamily\sff,
keywordstyle=\color{keywordColor}\sffamily\sff,
commentstyle=\color{commentColor}\sffamily\sff,
stringstyle=\color{stringColor}\sffamily\sff,
showstringspaces=false,
columns=fullflexible,keepspaces,
numbers=left,
numberstyle=\color{numberColor}\footnotesize\sff,
escapechar=\$,
morecomment=*[s][\color{stringColor}\sffamily\sff]{<}{>},
morecomment=[s][\color{characterColor}\sffamily\sff]{'}{'},
keywords=[2]{std, cout, cin},
keywordstyle = [2]{\color{oglobalColor}\sffamily\sff},
keywords=[3]{endl, printf, scanf, setw, setfill, setbase, setprecision, time, ctime, rand},
keywordstyle = [3]{\color{functionColor}\sffamily\sff},
keywords=[4]{\#include},
keywordstyle =[4]{\color{preprocessorColor}\sffamily\sff},
literate={
    {<<}{{{\color{black}<<}}}1
    {>>}{{{\color{black}>>}}}1
    {*}{{{*}}}1
    {0}{{{\color{characterColor}0}}}1
    {1}{{{\color{characterColor}1}}}1
    {2}{{{\color{characterColor}2}}}1
    {3}{{{\color{characterColor}3}}}1
    {4}{{{\color{characterColor}4}}}1
    {5}{{{\color{characterColor}5}}}1
    {6}{{{\color{characterColor}6}}}1
    {7}{{{\color{characterColor}7}}}1
    {8}{{{\color{characterColor}8}}}1
    {9}{{{\color{characterColor}9}}}1},
tabsize=4
}


% 代码格式和颜色定义
%\definecolor{dkgreen}{rgb}{0,0.6,0}
%\definecolor{gray}{rgb}{0.5,0.5,0.5}
%\definecolor{comment}{rgb}{0.56,0.64,0.68}
%\lstset{
%  frame=tb,
%  aboveskip=3mm,
%  belowskip=3mm,
%  xleftmargin=2em,
%  xrightmargin=2em,
%  showstringspaces=false,
%  columns=flexible,
%  framerule=1pt,
%  rulecolor=\color{gray!35},
%  backgroundcolor=\color{gray!5},
%  basicstyle={\small\ttfamily},
%  numbers=none,
%  numberstyle=\tiny\color{gray},
%  keywordstyle=\color{blue},
%  commentstyle=\color{comment},
%  stringstyle=\color{dkgreen},
%  breaklines=true,
%  breakatwhitespace=true,
%  tabsize=2,
%}


% 页眉页脚
\pagestyle{fancy}
\fancyhead[L]{
\begin{minipage}[c]{0.06\textwidth}
  \includegraphics[height=3.5mm]{figures_DO_NOT_DELETE/whulogo}
\end{minipage}
\begin{minipage}[c]{0.4\textwidth}
  武汉大学
\end{minipage}
}
\fancyhead[R]{\id / \myname}
\fancyfoot[C]{\thepage}


% 首页头部
\newcommand{\major}{\mymajor}
\newcommand{\name}{\myname}
\newcommand{\stuid}{\id}
\newcommand{\newdate}{\today}
\newcommand{\course}{\mycourse}
\newcommand{\newtitle}{\exname}

\newcommand{\makeheader}{
\thispagestyle{empty}
\begin{figure}[h]
  \begin{minipage}{0.6\linewidth}
    \centerline{\includegraphics[width=\linewidth]{figures_DO_NOT_DELETE/head.png}}
  \end{minipage}
  \hfill
  \begin{minipage}{.4\linewidth}
    \raggedleft
    \begin{tabular*}{.8\linewidth}{ll}
      专业： & \underline\major   \\
      姓名： & \underline\name    \\
      学号： & \underline\stuid   \\
      日期： & \underline\newdate \\
    \end{tabular*}
  \end{minipage}
\end{figure}

\begin{table}[!htbp]
  \centering
  \begin{tabular*}{\linewidth}{llllll}
    课程名称： & \underline\course   &   实验名称： & \underline\newtitle 
  \end{tabular*}
\end{table}
}