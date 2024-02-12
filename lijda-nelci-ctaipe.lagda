\documentclass{article}

\usepackage{ar}
\usepackage[bw]{agda}
\usepackage{ifsym}
\usepackage{amsthm}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{parskip}
\usepackage{mathabx}
\usepackage{hyphenat}
\usepackage{unicode-math}
\usepackage{newunicodechar}

\newunicodechar{∀}{\ensuremath{\mathnormal\forall}}
\newunicodechar{∷}{\ensuremath{\mathnormal\Colon}}
\newunicodechar{→}{\ensuremath{\mathnormal{\rightarrow}}}
\newunicodechar{₁}{\ensuremath{\mathnormal{_1}}}
\newunicodechar{∘}{\ensuremath{\mathnormal{\circ}}}
\newunicodechar{≡}{\ensuremath{\mathnormal{\equiv}}}
\newunicodechar{λ}{\ensuremath{\mathnormal\lambda}}

\newcommand\Sym\AgdaSymbol
\newcommand\D\AgdaDatatype
\newcommand\F\AgdaFunction
\newcommand\B\AgdaBound
\newcommand\OpP[1]{\AgdaOperator{\AgdaPostulate{#1}}}

\hyphenation{VA-RIK}

\newtheorem{thm}{Theorem}

\title{le ctaipe be le su'u la .varik.\ cu nelci lo su'o lijda / The Proof of that VARIK Likes Some Religions}
\author{la .varik.\ .VALefor.}

\begin{document}
\maketitle

\section{le torveki / Summary}
\subsection{la .lojban.}
ni'o la .varik.\ cu nelci lo su'o lijda ni'i le su'u\ldots
\begin{itemize}
	\item ga je ro da zo'u ga janai da selnei la .varik.\ gi tu'a da filri'a lo xamgu be fi zo'e po la .varik.\ jenai cu dukse fi zo'e po la .varik.\ fe lo ka ce'u filri'a lo xlali be fi zo'e po la .varik.\ gi
	\item tu'a lo su'o lijda cu filri'a lo xamgu be fi zo'e po la .varik.\ jenai cu dukse fi zo'e po la .varik.\ fe lo ka ce'u filri'a lo xlali be fi zo'e po la .varik.
\end{itemize}

\subsection{English}
\begin{thm}
	A religion $A$ exists such that VARIK likes $A$.
\end{thm}
\begin{proof}
	${}$

	For all $A$, if $A$ facilitates stuff which is good by the standard of VARIK, then if false is that $A$ excessively facilitates stuff which is bad by the standard of VARIK, then VARIK likes $A$.

	A religion $A$ exists such that ($A$ facilitates stuff which is good by the standard of VARIK, and false is that $A$ excessively facilitates stuff which is bad by the standard of VARIK).

	Therefore, a religion $A$ exists such that VARIK likes $A$.
\end{proof}
\section{le vrici / The Miscellaneous}

\begin{code}
open import Function
open import Data.Product
  using (
    _,_;
    Σ
  )
open import Relation.Nullary
  using (
    ¬_
  )
\end{code}

\section{le jicmu / The Basic}

\subsection{la'oi .\AgdaPostulate{Prenu}.}
\paragraph{la .lojban.}
ni'o ro da zo'u da ctaipe la'oi .\AgdaPostulate{Prenu}.\ jo cu prenu

\paragraph{English}
For all $A$, \AgdaPostulate{Prenu} is the type of $A$ iff $A$ is a prenu.

\begin{code}
postulate Prenu : Set
\end{code}

\subsection{la'oi .\AgdaRecord{Lijda}.}
\paragraph{la .lojban.}
ni'o ro da zo'u da ctaipe la'oi .\AgdaRecord{Lijda}.\ jo cu lijda

\paragraph{English}
For all $A$, \AgdaRecord{Lijda} is the type of $A$ iff $A$ is a religion.

\begin{code}
postulate Lijda : Set
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{lo-nu-sezyze'a-cu-se-filri'a-tu'a}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \AgdaPostulate{lo-nu-sezyze'a-cu-se-filri'a-tu'a} \B l\ .zoi.\ gi lo nu la'oi .\B{l}.\ lijda ko'a goi lo prenu cu filri'a lo nu ko'a sezyze'a

\paragraph{English}
A proof of \AgdaPostulate{lo-nu-sezyze'a-cu-se-filri'a-tu'a} \B l\ exists iff a prenu $A$ exists such that \B l facilitates that $A$ improves $A$.

\begin{code}
postulate
  lo-nu-sezyze'a-cu-se-filri'a-tu'a : ∀ {a} → {A : Set a}
                                    → A → Set
\end{code}

\subsection{la'oi .\AgdaPostulate{turnysarcu}.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \AgdaPostulate{turnysarcu} \B l\ .zoi.\ gi lo ro seljda be la'oi .\B{l}.\ cu troci lo nu bapli lo nu binxo lo seljda be la'oi .\B{l}.

\paragraph{English}
A proof of \AgdaPostulate{turnysarcu} \B l\ exists iff every seljda/``true follower'' of \B l\ attempts to coerce becoming a follower of \B l.

\begin{code}
postulate turnysarcu : Lijda → Set
\end{code}

\subsection{la'oi .\AgdaPostulate{xairgau-darsygau}.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \AgdaPostulate{xairgau-darsygau} \B l\ .zoi.\ gi ko'a goi la'oi .\B{l}.\ darsygau pe'a ru'e lo nu lo seljda be ko'a cu xairgau ko'e goi lo na seljda be ko'a ki'u lo su'u ko'e na seljda ko'a

\paragraph{English}
A proof of \AgdaPostulate{xairgau-darsygau} \B l\ exists iff (some prenu $A$ exists such that ($A$ not is not a seljda/``true follower'' of \B l, and \B l\ encourages that the seljda/``true followers'' of \B l\ harm $A$, and harming $A$ is justified by that $A$ is not a seljda/``true follower'' of \B l)).

\begin{code}
postulate xairgau-darsygau : Lijda → Set
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{dukse-xlafilri'a-tu'a-fa}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga naja ctaipe la'o zoi.\ \AgdaPostulate{dukse-xlafilri'a-tu'a-fa} \B l\ .zoi.\ gi tu'a la'oi .\B{l}.\ dukse fi zo'e po la .varik.\ fe lo ka ce'u filri'a lo xlali be fi zo'e po la .varik.

\paragraph{English}
If a proof of \AgdaPostulate{dukse-xlafilri'a-fa-tu'a} \B l\ exists, then the standard of VARIK indicates that \B l\ excessively facilitates stuff which is bad by the standard of VARIK.

\begin{code}
postulate dukse-xlafilri'a-fa-tu'a : ∀ {a} → {A : Set a} → A → Set
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{\AgdaUnderscore{}cu-nelci\AgdaUnderscore}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \B a \OpP{cu-nelci} \B b\ .zoi.\ gi la'oi .\B{a}.\ nelci la'oi .\B{b}.

\paragraph{English}
A proof of \B a \OpP{cu-nelci} \B b\ exists iff \B a\ likes \B b.

\begin{code}
postulate _cu-nelci_ : ∀ {a} → {A : Set a} → Prenu → A → Set
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{xagfilri'a-fa-tu'a}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \AgdaPostulate{xagfilri'a-fa-tu'a} \B a\ .zoi.\ gi tu'a la'oi .\B{a}.\ filri'a lo xamgu be fi zo'e po la .varik.

\paragraph{English}
A proof of \AgdaPostulate{xagfilri'a-fa-tu'a} \B a\ exists iff \B a\ facilitates stuff which is good by the standard of VARIK.

\begin{code}
postulate xagfilri'a-fa-tu'a : ∀ {a} → {A : Set a} → A → Set
\end{code}

\subsection{la'oi .\AgdaPostulate{jdafilri'a}.}
\paragraph{la .lojban.}
ni'o la'oi .\AgdaPostulate{jdafi'ri'a}.\ ctaipe le su'u ro da zo'u ga janai da filri'a lo xamgu be fi zo'e po la .varik.\ gi lo nu da lijda ko'a goi lo prenu cu filri'a lo nu ko'a sezyze'a

\paragraph{English}
\AgdaPostulate{jdafilri'a} is a proof of that for all $A$, if $A$ facilitates that some prenu $T$ improves $T$, then $A$ facilitates stuff which is good by the standard of VARIK.

\begin{code}
postulate
  jdafilri'a : ∀ {a} → {A : Set a}
             → {L : A}
             → lo-nu-sezyze'a-cu-se-filri'a-tu'a L
             → xagfilri'a-fa-tu'a L
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{la-varik}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \AgdaPostulate{la-varik}\ .zoi.\ du la .varik.

\paragraph{English}
\AgdaPostulate{la-varik} is VARIK.

\begin{code}
postulate la-varik : Prenu
\end{code}

\subsection{la'o zoi.\ \AgdaPostulate{xagfilri'a-jdanei}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \AgdaPostulate{xagfilri'a-nelci}\ .zoi.\ ctaipe le su'u ro da zo'u ga janai da selnei la .varik.\ gi tu'a da filri'a lo xamgu be fi zo'e po la .varik.\ jenai cu dukse fi zo'e po la .varik.\ fe lo ka ce'u filri'a lo xlali be fi zo'e po la .varik.

\paragraph{English}
\AgdaPostulate{xagfilri'a-nelci} is a proof of that for all $A$, if $A$ facilitates stuff which is good by the standard of VARIK, then if the standard of VARIK not indicates that $A$ excessively facilitates stuff which is bad by the standard of VARIK, then VARIK likes $A$.

\begin{code}
postulate
  xagfilri'a-nelci : ∀ {a} → {A : Set a} → {x : A}
                   → xagfilri'a-fa-tu'a x
                   → ¬ (dukse-xlafilri'a-fa-tu'a x)
                   → la-varik cu-nelci x
\end{code}

\section{la'o zoi.\ \F{varik-xagynei}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{varik-xagynei}\ .zoi.\ ctaipe le su'u ro da zo'u ga janai la .varik.\ cu nelci da gi tu'a da filri'a lo nu sezyze'a kei jenai cu dukse fi zo'e po la .varik.\ fe lo ka ce'u filri'a lo xlali be fi zo'e po la .varik.

\paragraph{English}
\F{varik-xagynei} is a proof of that for all $A$, if $A$ facilitates that some prenu $P$ improves $P$, then if the standard of VARIK not indicates that $A$ excessively facilitates stuff which is bad by the standard of VARIK, then VARIK likes $A$.

\begin{code}
varik-xagynei : ∀ {a} → {A : Set a}
              → {x : A}
              → lo-nu-sezyze'a-cu-se-filri'a-tu'a x
              → ¬ (dukse-xlafilri'a-fa-tu'a x)
              → la-varik cu-nelci x
varik-xagynei x y = flip xagfilri'a-nelci y $ jdafilri'a x
\end{code}

\section{la'o zoi.\ \F{le-lijda-nelci-ctaipe}\ .zoi.}
\paragraph{la .lojban.}
ni'o ko'a goi la'o zoi.\ \F{le-lijda-nelci-ctaipe}\ .zoi.\ ctaipe le su'u la .varik.\ cu nelci lo su'o lijda  .i la .varik.\ cu stidi lo nu tcidu le torveki fa lo ro na jimpe be fi ko'a be'o poi ke'a djica lo nu ke'a jimpe fi ko'a

\paragraph{English}
\F{le-lijda-nelci-ctaipe} is a proof of that VARIK likes some religion\@.  For all $A$, if $A$ not understands about \F{le-lijda-nelci-ctaipe}, then if $A$ desires that $A$ understands about \F{le-lijda-nelci-ctaipe}, then VARIK recommends that $A$ reads the summary.

\begin{code}
le-lijda-nelci-ctaipe : Σ Lijda $ λ L → la-varik cu-nelci L
le-lijda-nelci-ctaipe = L , varik-xagynei filri'at narxlat
  where
  postulate
    L : Lijda
    filri'at : lo-nu-sezyze'a-cu-se-filri'a-tu'a L
    narxlat : ¬ (dukse-xlafilri'a-fa-tu'a L)
\end{code}
\end{document}
