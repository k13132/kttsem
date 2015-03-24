\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kttsem}[2015/02/16 v0.1 (Ing. Milos Kozak)]

\newif\if@en \@enfalse
\DeclareOption{en}{\@entrue}


\ProcessOptions \relax

\LoadClass[twoside,a4paper,11pt]{article}
\RequirePackage[margin=2.5cm,left=2.5cm,bottom=3cm,top=3cm]{geometry}


\RequirePackage{graphicx}
\RequirePackage[utf8]{inputenc}

% Informace o skole - mozno menit dynamicky skrze optiony
\if@en
	\newcommand\University{Czech Technical University in Prague}
	\newcommand\Faculty{Faculty of Electrical Engineering}
	\newcommand\Department{Department of Telecommunication Engineering}
	\newcommand\projectName{Project report}
	\def\supervisorName{Supervisor}
	\def\courseNameTitle{Course name}
	\def\courseCodeTitle{Course code}
	\RequirePackage[english]{babel}
\else
	\RequirePackage[czech]{babel}	
	\newcommand\University{\v{C}esk\'{e} vysok\'{e} u\v{c}en\'{\i} technick\'{e} v Praze}
	\newcommand\Faculty{Fakulta elektrotechnick\'{a}}
	\newcommand\Department{Katedra telekomunika\v{c}n\'{\i} techniky}
	\newcommand\projectName{Z{\'a}v{\v e}re{\v c}n{\' a} zpr{\' a}va}
	\def\supervisorName{Vedouc\'{\i} pr\'{a}ce}	
	\def\courseNameTitle{N\'{a}zev p\v{r}edm\v{e}tu}
	\def\courseCodeTitle{K\'{o}d p\v{r}edm\v{e}tu}
\fi



\def \@supervisor{Unknown}
\newcommand{\supervisor}[1]{ \def \@supervisor{#1} }

\def\@courseCode{courseCode}
\def\@courseName{courseName}
\newcommand{\courseCode}[1]{ \def \@courseCode{#1} }
\newcommand{\courseName}[1]{ \def \@courseName{#1} }


\renewcommand\maketitle{\par
	% Volba stylu uvodni stranky
	\@maketitle

	\global\let\thanks\relax
	\global\let\maketitle\relax
	\global\let\@maketitle\relax
	\global\let\@thanks\@empty
	\global\let\@author\@empty
	\global\let\@date\@empty
	\global\let\@title\@empty
	\global\let\title\relax
	\global\let\author\relax
	\global\let\date\relax
	\global\let\and\relax
}

\def\@maketitle{%

	\begin{center}%
		\large\sffamily
			\University\\ \vglue 2mm
			\Faculty\\ \vglue 2mm
			\Department\\
		
		\vglue 20mm
		\includegraphics[width=50mm]{images/LogoCVUT}
		\vglue 30mm
		{\LARGE\bfseries\@title}\\
		\vglue 5mm
		{\large\sffamily \projectName } \\
		\vglue 10mm	
		{\large\emph{\@author}}\\
		\vglue 30mm
		{\large 
			
			\begin{tabular}{rl}
				 \textbf{\supervisorName}: & \@supervisor \\[2mm]
				 \textbf{\courseNameTitle}:&  \@courseName \\[2mm]
				 \textbf{\courseCodeTitle}:&  \@courseCode
			\end{tabular}
		} 
		\vglue 20mm
		\@date
		
		
	\end{center}%
	\thispagestyle{empty}
	% Strana 2
	\newpage
}


\RequirePackage{xcolor}
\RequirePackage[pdftex]{hyperref}
\hypersetup{
	colorlinks   = true,
	citecolor    = blue,
	linkcolor	 = blue,
	urlcolor	 = blue,
}

% Zapsani metadat do PDF souboru
\makeatletter
\AtBeginDocument{
	\hypersetup{
		pdftitle = {\projectName: \@title},
		pdfauthor = {\@author},
		pdfsubject = {\@courseCode - \@courseName},
	}
}
\makeatother