\def\fileversion{1.0}
\def\filedate{2015/10/07}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cranfieldChart}[\filedate\space Version \fileversion\space by
Thibaud Levasseur]

\LoadClass{article}

%%%%%%%%%%%%%%%%%%%%%
%	Packages		%
%%%%%%%%%%%%%%%%%%%%%

% Marges
\RequirePackage {geometry}
\RequirePackage {fancyhdr}
\RequirePackage {titlesec}

% Images
\RequirePackage {graphicx}
\RequirePackage {color}
\RequirePackage {epic,eepic}
\usepackage{tikz}
% Texte et calculs
\RequirePackage {slantsc}
\RequirePackage {calc}
\RequirePackage {ifthen}
\RequirePackage {lastpage}
\RequirePackage {etoolbox}
\RequirePackage {changepage}

\RequirePackage [backend=bibtex,style=numeric]{biblatex}
\DeclareTextFontCommand{\helvetica}{\fontfamily{phv}\selectfont}

\pagestyle{fancy}
\fancyhead[R]{\includegraphics[width=40mm]{ressources/logo.pdf}}

%Cranfield color
%see https://intranet.cranfield.ac.uk/som/Pages/Colours.aspx
\definecolor{Cranfield_PrussianBlue}{RGB}{0,17,37}
\definecolor{Cranfield_CoolGrey}{RGB}{39,39,41}

\renewcommand{\maketitle}[5]{%
	\fontfamily{phv}
	\thispagestyle{empty}
	\begin{picture}(183,250)(27,27)

		\put(280,300){\includegraphics[width=65mm]{ressources/logo.pdf}}
		\put(-300,50){\includegraphics[angle=30,width=180mm]{ressources/square.pdf}}
		\put(-400,-500){

			\begin{tikzpicture}[rotate=30,every node/.style={draw}]
				\begin{scope}
					\clip [rounded corners=.5cm] (-5,-5) rectangle coordinate (centerpoint) (20,10cm);
					\node [inner sep=0pt] at (centerpoint) {\includegraphics[angle=30,width=50.0cm]{ressources/#5}};
				\end{scope}
			\end{tikzpicture}
		}
		\put(-70,300){
			\begin{minipage}[t]{90mm}
				\color{Cranfield_PrussianBlue}\Huge \helvetica{#1}
				\paragraph{}
				\Large \helvetica{#2}
			\end{minipage}
		}
		%\put(-50,250){\color{Cranfield_PrussianBlue}\Large \helvetica{#2}}
		\put(200,-350){\color{Cranfield_CoolGrey} \Large \helvetica{#3}}
		\put(229,-370){\color{Cranfield_CoolGrey} \Large \helvetica{#4}}
		\put(407,-390){\color{Cranfield_CoolGrey} \Large \helvetica{\today}}
	\end{picture}
	\newpage
}
