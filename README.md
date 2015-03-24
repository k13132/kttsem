# Šablona pro odevzdání semestrálních prací na K13132

Tento repositář obsahuje základní adresářovou strukturu sloužící pro psaní semestrálních prací na K13132 FEL ČVUT v Praze v prostředí LaTeX. 


Základní zavedení šablony pro odevzdávání semestrální práce v českém jazyce se provede následovně:

```
\documentclass{kttsem}
```

V případě anglického kurzu je nutné využít volby *en*:

```
\documentclass[en]{kttsem}
```

Dále je nutné definovat informace o předmětu, autorech a případně o vedoucím semestrálního projektu:
```
\courseName{Počítačové sítové technoglogie}
\courseCode{A4P32PKS}
\title{Jmeno práce}
\author{Autor 1 \\ Autor 2 \\ Autor 3}
\supervisor{Vedoucí Práce}
\date{Praha, Únor 2015}
```

Následně je možné již jen psát vlastní text
```
\begin{document}
\maketitle
\tableofcontents
\newpage
 
% Vlastni text semestralni prave
\end{document}
```
