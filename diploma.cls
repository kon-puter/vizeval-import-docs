%%
%% This is file `diploma.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% VersionInfo.dtx
%% Introduction.dtx
%% UserManual.dtx
%% ImplementationBeginning.dtx
%% Constants.dtx
%% VariablesDeclaration.dtx
%% BaseClassAndPackages.dtx
%% OptionsDeclaration.dtx
%% PageGeometryDeclarations.dtx
%% PublicMacros.dtx
%% InternalMacros.dtx
%% ImplementationFinale.dtx
%%
%% Toto dílo podléhá licenci CC BY-NC-ND 3.0 CZ, https://creativecommons.org/licenses/by-nc-nd/3.0/cz/
%% Můžete jej šířit a používat pro nekomerční účely, musí však být uveden autor a dokument nelze měnit.
%%
%% This work is licensed under CC BY-NC-ND 3.0 CZ, https://creativecommons.org/licenses/by-nc-nd/3.0/cz/deed.en
%% You may distribute it and use it for non-commercial purposes, but the author must be mentioned and the document can not be changed.
%%

%% Dílo jsem uprvil a v souhlasu s CC BY-NC-ND 3.0 CZ nemohu zdroj dále šířit.
\def\fileversion{5.04}
\def\filedate{2022/07/01}
\def\docdate{1. července 2022}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{diploma}[\filedate\space \fileversion\space diploma LaTeX document class]
\RequirePackage{ifthen}
\RequirePackage[utf8]{inputenc}
\newcommand{\Dipl@MaturitaThesis}{0}
\newcommand{\Dipl@CzechLanguage}{0}
\newcommand{\Dipl@EnglishLanguage}{1}
\newcommand{\Dipl@SlovakLanguage}{2}
\newtoks\Dipl@ThesisAuthor
\Dipl@ThesisAuthor={No author name is given}
\newtoks\Dipl@ThesisSupervisor
\Dipl@ThesisSupervisor={No supervisor name is given}
\newtoks\Dipl@StudyProgram
\Dipl@StudyProgram={No study program is given}
\newtoks\Dipl@CzechThesisTitle
\Dipl@CzechThesisTitle={No Czech or Slovak thesis title is given}
\newtoks\Dipl@EnglishThesisTitle
\Dipl@EnglishThesisTitle={}
\newtoks\Dipl@SubmissionYear
\Dipl@SubmissionYear={No submission year is given}
\newtoks\Dipl@ThesisAssignmentFileName
\Dipl@ThesisAssignmentFileName={}
\newtoks\Dipl@Acknowledgement
\Dipl@Acknowledgement={}
\newtoks\Dipl@CzechAbstract
\Dipl@CzechAbstract={No Czech or Slovak abstract is given}
\newtoks\Dipl@CzechKeywords
\Dipl@CzechKeywords={No Czech or Slovak keywords are given}
\newtoks\Dipl@EnglishAbstract
\Dipl@EnglishAbstract={No English abstract is given}
\newtoks\Dipl@EnglishKeywords
\Dipl@EnglishKeywords={No English keywords are given}
\newtoks\Dipl@Acronyms
\Dipl@Acronyms={}
\newtoks\Dipl@Declaration
\newtoks\Dipl@BabelLanguageOptions
\newtoks\Dipl@ThesisCaption
\newtoks\Dipl@SupervisorCaption
\newtoks\Dipl@StudyProgramCaption
\newtoks\Dipl@SubmissionYearCaption
\newtoks\Dipl@FacultyLogoFileName
\newtoks\Dipl@CzechAbstractCaption
\Dipl@CzechAbstractCaption={Anotace}
\newtoks\Dipl@EnglishAbstractCaption
\Dipl@EnglishAbstractCaption={Annotation}
\newcounter{Dipl@CurrentThesisType}
\setcounter{Dipl@CurrentThesisType}{\Dipl@MaturitaThesis}
\newcounter{Dipl@CurrentThesisLanguage}
\setcounter{Dipl@CurrentThesisLanguage}{\Dipl@CzechLanguage}
\LoadClass[11pt,openany]{book}
% \RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}
\RequirePackage{geometry}
\RequirePackage{booktabs}
\RequirePackage{graphicx}
\RequirePackage{longtable}
\RequirePackage{caption}
\RequirePackage{rotating}
\RequirePackage{setspace}
\RequirePackage{theorem}
\RequirePackage{titlesec}
\RequirePackage[nottoc,notindex,chapter]{tocbibind}
\RequirePackage{xcolor}
\RequirePackage{pdfpages}
\RequirePackage[a-1b]{pdfx}
\DeclareOption{czech}
{
    \setcounter{Dipl@CurrentThesisLanguage}{\Dipl@CzechLanguage}
    \Dipl@BabelLanguageOptions={english,main=czech}
    \Dipl@SupervisorCaption={Vedoucí práce}
    \Dipl@StudyProgramCaption={Obor}
    \Dipl@SubmissionYearCaption={Školní rok}
    \Dipl@FacultyLogoFileName={Figures/logo-spsei.png}
    \Dipl@Declaration={Prohlašuji, že předložená práce je mým původním dílem, které jsem vypracoval samostatně. Veškerou literaturu a další zdroje, z nichž jsem při zpracování čerpal, v práci řádně cituji a jsou uvedeny v seznamu použité literatury a zdrojů informací.}
}
\DeclareOption{maturita}
{
    \setcounter{Dipl@CurrentThesisType}{\Dipl@MaturitaThesis}
    \Dipl@ThesisCaption={Maturitní práce}
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\RequirePackage[\the\Dipl@BabelLanguageOptions]{babel}
\babelprovide[transforms = oneletter.nobreak]{czech} 
\babelprovide[transforms = hyphen.repeat]{czech}

\geometry{a4paper}
\newgeometry{paper=a4paper, twoside=false, includefoot, nohead, nomarginpar, left=25mm, right=25mm, top=25mm, bottom=25mm}
\savegeometry{Dipl@OneSide}
\newgeometry{a4paper, twoside=false, nofoot, nohead, nomarginpar, left=25mm, right=25mm, top=25mm, bottom=25mm}
\savegeometry{Dipl@OneSideNoFoot}
\newgeometry{a4paper, twoside, includefoot, nohead, nomarginpar, left=35mm, right=25mm, top=25mm, bottom=25mm}
\savegeometry{Dipl@TwoSide}
\newgeometry{a4paper, twoside, nofoot, nohead, nomarginpar, left=35mm, right=25mm, top=25mm, bottom=25mm}

\savegeometry{Dipl@TwoSideNoFoot}
\loadgeometry{Dipl@OneSide}
\newcommand{\ThesisAuthor}[1]{\Dipl@ThesisAuthor={#1}}
\newcommand{\ThesisSupervisor}[1]{\Dipl@ThesisSupervisor={#1}}
\newcommand{\StudyProgram}[1]{\Dipl@StudyProgram={#1}}
\newcommand{\CzechThesisTitle}[1]{\Dipl@CzechThesisTitle={#1}}
\newcommand{\EnglishThesisTitle}[1]{\Dipl@EnglishThesisTitle={#1}}
\newcommand{\SubmissionYear}[1]{\Dipl@SubmissionYear={#1}}
\newcommand{\ThesisAssignmentFileName}[1]{\Dipl@ThesisAssignmentFileName={#1}}
\newcommand{\Acknowledgement}[1]{\Dipl@Acknowledgement={#1}}
\newcommand{\CzechAbstract}[1]{\Dipl@CzechAbstract={#1}}
\newcommand{\CzechKeywords}[1]{\Dipl@CzechKeywords={#1}}
\newcommand{\EnglishAbstract}[1]{\Dipl@EnglishAbstract={#1}}
\newcommand{\EnglishKeywords}[1]{\Dipl@EnglishKeywords={#1}}
\newcommand{\AddAcronym}[2]{\Dipl@AddTokens{\Dipl@Acronyms}{#1&--&#2\\}}
\newcommand{\MakeTitlePages}
{
    \pagestyle{empty}
    \Dipl@TitlePage
    \Dipl@ThesisAssignmentPages
    \Dipl@DeclarationPage
    \Dipl@AbstractsKeywordsPage
    \Dipl@AcknowledgementPage
    \pagestyle{plain}
    \tableofcontents\clearpage
    \Dipl@WriteAcronymsPage
}
{\theorembodyfont{\itshape}\newtheorem{definition}{\Dipl@LanguageDependentText{Definice}{Definícia}{Definition}}}
{\theorembodyfont{\itshape}\newtheorem{theorem}{\Dipl@LanguageDependentText{Věta}{Veta}{Theorem}}}
\newenvironment{proof}
{\par\noindent\textbf{\proofname}}
{\mbox{}\hspace*{5pt}\hfill\hbox{\vrule height5pt depth0pt width5pt}\par\medskip}
{\theorembodyfont{\rmfamily}\newtheorem{remark}{\Dipl@LanguageDependentText{Poznámka}{Poznámka}{Remark}}}
{\theoremstyle{break}\theorembodyfont{\rmfamily}\newtheorem{Dipl@examplebody}{\Dipl@LanguageDependentText{Příklad}{Príklad}{Example}}}
\newenvironment{example}
{\begin{Dipl@examplebody}}
{
     \nopagebreak\mbox{}\hspace*{5pt}\hfill\hbox{\vrule height5pt depth0pt width5pt}
\end{Dipl@examplebody}
}
\newcommand{\Dipl@TitlePage}
{
    \loadgeometry{Dipl@OneSideNoFoot}
    \thispagestyle{empty}
    \begin{center}
        \huge
        \sffamily
        {\Large\MakeUppercase{Střední průmyslová škola elektrotechniky a informatiky, Ostrava, příspěvková organizace}}\par
        {\includegraphics[height=30mm]{\the\Dipl@FacultyLogoFileName}}\par
        \vspace{25mm}
        \textbf{\Huge\Dipl@LanguageDependentText{\the\Dipl@CzechThesisTitle}{\the\Dipl@CzechThesisTitle}{\the\Dipl@EnglishThesisTitle}}
        \par
        \bigskip
        {\Large\Dipl@LanguageDependentText{\the\Dipl@EnglishThesisTitle}{\the\Dipl@EnglishThesisTitle}{\the\Dipl@CzechThesisTitle}}
        \par
        \bigskip
        \bigskip
        \the\Dipl@ThesisAuthor\par
        \vspace{15mm}
        {\Large\MakeUppercase{\the\Dipl@ThesisCaption}}\par
        \vfill
        {
            \Large
            \begin{tabular}{ll}
                \the\Dipl@SupervisorCaption:     & \the\Dipl@ThesisSupervisor \\
                \the\Dipl@StudyProgramCaption:   & \the\Dipl@StudyProgram     \\
                \the\Dipl@SubmissionYearCaption: & \the\Dipl@SubmissionYear
            \end{tabular}
        }
    \end{center}
    \clearpage
    \restoregeometry
}
\newcommand{\Dipl@ThesisAssignmentPages}
{
    \ifthenelse{\equal{\the\Dipl@ThesisAssignmentFileName}{\empty}}
    {
        \begin{center}
            \Large\sffamily\bfseries
            \Dipl@LanguageDependentText{Nezapomeňte vložit zadání práce.}{Nezabudnite vložiť zadanie.}{Do not forget to insert the thesis assignment.}
        \end{center}
        \clearpage
    }
    {
        \includepdf[pages=-]{\the\Dipl@ThesisAssignmentFileName}
    }
}
\newcommand{\Dipl@DeclarationPage}
{
    \mbox{}
    \vfill
    \section*{\Dipl@LanguageDependentText{Prohlášení}{Prehlásenie}{Declaration}}
    \the\Dipl@Declaration\par
    \vspace{10mm}
    \hbox{\hbox to 0.5\hsize{%
        V Ostravě dne {\dotfill}
        \hspace{20mm}}\hbox to 0.5\hsize{\dotfill\quad}}
    \smallskip
    \hbox{\hbox to 0.5\hsize{}\hbox to 0.5\hsize{\hfil\the\Dipl@ThesisAuthor\hfil}}
    \clearpage
}
\newcommand{\Dipl@AbstractsKeywordsPage}
{
    \ifthenelse{\value{Dipl@CurrentThesisLanguage}=\Dipl@SlovakLanguage}
    {
        \begin{otherlanguage}{slovak}
            \section*{\the\Dipl@CzechAbstractCaption}
            \the\Dipl@CzechAbstract
            \section*{Kľúčové slová}
            \the\Dipl@CzechKeywords
        \end{otherlanguage}
    }
    {
        \begin{otherlanguage}{czech}
            \section*{\the\Dipl@CzechAbstractCaption}
            \the\Dipl@CzechAbstract
            \section*{Klíčová slova}
            \the\Dipl@CzechKeywords
        \end{otherlanguage}
    }
    \par
    \vspace{30mm plus 0mm minus 30mm}
    \begin{otherlanguage}{english}
        \section*{\the\Dipl@EnglishAbstractCaption}
        \the\Dipl@EnglishAbstract
        \section*{Keywords}
        \the\Dipl@EnglishKeywords
    \end{otherlanguage}
    \clearpage
}
\newcommand{\Dipl@AcknowledgementPage}
{
    \ifthenelse{\equal{\the\Dipl@Acknowledgement}{\empty}}
    {\relax}
    {
        \mbox{}
        \vfill
        \section*{\Dipl@LanguageDependentText{Poděkování}{Poďakovanie}{Acknowledgement}}
        \the\Dipl@Acknowledgement
        \clearpage
    }
}
\newcommand{\Dipl@WriteAcronymsPage}
{
    \ifthenelse{\equal{\the\Dipl@Acronyms}{\empty}}
    {\relax}
    {
        \Dipl@LanguageDependentText
        {
            \chapter*{Seznam použitých zkratek a symbolů}
            \addcontentsline{toc}{chapter}{Seznam použitých symbolů a zkratek}
        }
        {
            \chapter*{Zoznam použitých skratiek a symbolov}
            \addcontentsline{toc}{chapter}{Zoznam použitých symbolov a skratiek}
        }
        {
            \chapter*{List of symbols and abbreviations}
            \addcontentsline{toc}{chapter}{List of symbols and abbreviations}
        }
        \begin{longtable*}[l]{p{0.2\textwidth}cp{0.7\textwidth}}
            \the\Dipl@Acronyms
        \end{longtable*}
        \clearpage
    }
}
\titleformat{\chapter}[display]{\sffamily\huge\bfseries}{\chaptertitlename\ \thechapter}{20pt}{\Huge}
\titleformat{\section}{\sffamily\Large\bfseries}{\thesection}{1em}{}
\titleformat{\subsection}{\sffamily\large\bfseries}{\thesubsection}{1em}{}
\titleformat{\subsubsection}{\sffamily\normalsize\bfseries}{\thesubsubsection}{1em}{}
\titleformat{\paragraph}[runin]{\sffamily\normalsize\bfseries}{\theparagraph}{1em}{}
\titleformat{\subparagraph}[runin]{\sffamily\normalsize\bfseries}{\thesubparagraph}{1em}{}
\newcommand{\Dipl@OldAppendix}{\appendix}
\renewcommand{\appendix}
{
    \Dipl@OldAppendix
    \Dipl@LanguageDependentText
    {
        \addcontentsline{toc}{chapter}{Přílohy}
    }
    {
        \addcontentsline{toc}{chapter}{Prílohy}
    }
    {
        \addcontentsline{toc}{chapter}{Appendices}
    }
}
\newcommand{\Dipl@LanguageDependentText}[3]{\ifthenelse{\value{Dipl@CurrentThesisLanguage}=\Dipl@CzechLanguage}{#1}{\ifthenelse{\value{Dipl@CurrentThesisLanguage}=\Dipl@SlovakLanguage}{#2}{#3}}}
\newcommand{\Dipl@AddTokens}[2]{\expandafter \global#1\expandafter{\the#1#2}}
\catcode30=12
\onehalfspacing
\setcounter{tocdepth}{2}
\setcounter{secnumdepth}{5}
\widowpenalty=9000
\clubpenalty=9000
\hypersetup{unicode=true, colorlinks=true, linkcolor=black, urlcolor=black, citecolor=black}
\addto{\captionsczech}{\renewcommand{\refname}{Literatura}}
\addto{\captionsslovak}{\renewcommand{\refname}{Literatúra}}
\AtBeginDocument%
{
    \shorthandoff{-}
    \Dipl@LanguageDependentText
    {
        \selectlanguage{czech}
    }
    {
        \selectlanguage{slovak}
    }
    {
        \selectlanguage{english}
    }
}



\setlength {\marginparwidth }{2cm} 
\endinput
%%
%% End of file `diploma.cls'.
