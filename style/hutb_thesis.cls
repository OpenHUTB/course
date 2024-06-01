\ProvidesClass{hutb_thesis}
\NeedsTeXFormat{LaTeX2e}
[2023/05/19 v0.1 Thesis Template for HUTB]

\LoadClass{article}
% 键值对
\RequirePackage{xkeyval}
% 中文
\RequirePackage{ctex}

\makeatletter % change default title style
\renewcommand*\maketitle{%
    \begin{center}% 居中标题
        %\bfseries % 默认粗体
        {\heiti\zihao{0}\textbf{\@title} \par} % LARGE字号
        \vskip 1em% %%%  标题下面只有1em的缩进或margin
        {\global\let\author\@empty}%
        {\global\let\date\@empty}%
        \thispagestyle{empty} %  不设置页面样式
    \end{center}%
  \setcounter{footnote}{0}%
}

%封面表格

\define@key{coverinfo}{classid}{\def\hutb@classid{#1}}
\define@key{coverinfo}{class}{\def\hutb@class{#1}}
\define@key{coverinfo}{title}{\def\hutb@title{#1}}
\define@key{coverinfo}{academy}{\def\hutb@academy{#1}}
\define@key{coverinfo}{major}{\def\hutb@major{#1}}
\define@key{coverinfo}{stuname}{\def\hutb@stuname{#1}}
\define@key{coverinfo}{stuid}{\def\hutb@stuid{#1}}
\define@key{coverinfo}{teachers}{\def\hutb@teachers{#1}}
\define@key{coverinfo}{year}{\def\hutb@year{#1}}
\define@key{coverinfo}{month}{\def\hutb@month{#1}}
\define@key{coverinfo}{day}{\def\hutb@day{#1}}

\newcommand{\coverinfo}[1]{
    \setkeys{coverinfo}{#1}
    \begin{center}
    \renewcommand\arraystretch{2}
    \begin{tabular}{c@{~~}c}
    \makebox[4em][s]{\heiti\zihao{-4}\textbf{课程}} &：\underline{\makebox[22em][c]{\heiti\zihao{-4}\bfseries\hutb@class}}\\
    \makebox[4em][s]{\heiti\zihao{-4}\textbf{编号}} &：\underline{\makebox[22em][c]{\heiti\zihao{-4}\bfseries\hutb@classid}}\\
    \makebox[4em][s]{\heiti\zihao{-4}\textbf{题目}} &：\underline{\makebox[22em][c]{\heiti\zihao{-4}\bfseries\hutb@title}}\\
    \makebox[4em][s]{\heiti\zihao{-4}\textbf{学院}} &：\underline{\makebox[22em][c]{\heiti\zihao{-4}\bfseries\hutb@academy}}\\
    \makebox[4em][s]{\heiti\zihao{-4}\textbf{专业}} &：\underline{\makebox[22em][c]{\heiti\zihao{-4}\bfseries\hutb@major}}\\
    \makebox[4em][s]{\heiti\zihao{-4}\textbf{姓名}} &：\underline{\makebox[22em][c]{\heiti\zihao{-4}\bfseries\hutb@stuname}}\\
    \makebox[4em][s]{\heiti\zihao{-4}\textbf{学号}} &：\underline{\makebox[22em][c]{\heiti\zihao{-4}\bfseries\hutb@stuid}}\\
    \makebox[4em][s]{\heiti\zihao{-4}\textbf{任课教师}} &：\underline{\makebox[22em][c]{\heiti\zihao{-4}\bfseries\hutb@teachers}}\\
    \makebox[4em][s]{\heiti\zihao{-4}\textbf{提交日期}} &：\underline{\makebox[22em][c]{\heiti\zihao{-4}\bfseries\hutb@year 年\hutb@month 月\hutb@day 日}}\\
    \end{tabular}
    \end{center}
}


\makeatother


\endinput