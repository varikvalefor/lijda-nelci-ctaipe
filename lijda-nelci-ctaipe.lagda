\documentclass{article}

\usepackage{ar}
\usepackage[bw]{agda}
\usepackage{ifsym}
\usepackage{amsthm}
\usepackage{amsmath}
\usepackage{amssymb}
\usepackage{parskip}
\usepackage{mathabx}
\usepackage{unicode-math}
\usepackage{newunicodechar}

\newunicodechar{∀}{\ensuremath{\mathnormal\forall}}
\newunicodechar{∷}{\ensuremath{\mathnormal\Colon}}
\newunicodechar{→}{\ensuremath{\mathnormal{\rightarrow}}}
\newunicodechar{₁}{\ensuremath{\mathnormal{_1}}}
\newunicodechar{∘}{\ensuremath{\mathnormal{\circ}}}
\newunicodechar{≡}{\ensuremath{\mathnormal{\equiv}}}

\newcommand\Sym\AgdaSymbol
\newcommand\D\AgdaDatatype
\newcommand\F\AgdaFunction
\newcommand\B\AgdaBound

\newtheorem{thm}{Theorem}

\title{le ctaipe be le su'u la .varik.\ cu nelci lo su'o lijda / The Proof of that VARIK Likes Some Religions}
\author{la .varik.\ .VALefor.}

\begin{document}
\maketitle

\section{le torveki / Summary}
\subsection{la .lojban.}
ni'o la .varik.\ cu nelci lo su'o lijda ni'i le su'u ga je ro da zo'u ga janai la .varik.\ cu nelci da gi tu'a da filri'a lo xamgu be fi zo'e po la .varik.\ jenai cu dukse lo ka ce'u filri'a lo xlali be fi zo'e po la .varik.\ gi tu'a lo su'o lijda cu filri'a lo xamgu be fi zo'e po la .varik.\ jenai cu dukse lo ka ce'u filri'a lo xlali be fi zo'e po la .varik.

\subsection{English}
\begin{thm}
	A religion $A$ exists such that VARIK likes $A$.
\end{thm}
\begin{proof}
	${}$

	For all $A$, if $A$ facilitates stuff (which is good by the standard of VARIK), then if false is that $A$ excessively facilitates stuff which is bad by the standard of VARIK, then VARIK likes $A$.

	A religion $A$ exists such that ($A$ facilitates stuff which is good by the standard of VARIK, and false is that $A$ excessively facilitates stuff which is bad by the standard of VARIK).

	Therefore, a religion $A$ exists such that VARIK likes $A$.
\end{proof}
\section{le vrici}

\begin{code}
open import Function
open import Data.These
open import Relation.Nullary
\end{code}

\section{le jicmu}

\subsection{la'oi .\F{Prenu}.}
\paragraph{la .lojban.}
ni'o ga jo la'o zoi.\ \B a\ .zoi.\ ctaipe la'oi .\F{Prenu}.\ gi la'o zoi.\ \B a\ .zoi.\ prenu

\paragraph{English}
For all $A$, \F{Prenu} is the type of $A$ iff $A$ is a prenu.

\begin{code}
postulate Prenu : Set
\end{code}

\subsection{la'oi .\F{Lijda}.}
\paragraph{la .lojban.}
ni'o ga jo la'o zoi.\ \B a\ .zoi.\ ctaipe la'oi .\F{Lijda}.\ gi la'o zoi.\ \B a\ .zoi.\ lijda

\paragraph{English}
For all $A$, \F{Lijda} is the type of $A$ iff $A$ is a religion.

\begin{code}
postulate Lijda : Set
\end{code}

\subsection{la'o zoi.\ \F{lo-nu-sezyze'a-cu-se-filri'a-tu'a}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \F{lo-nu-sezyze'a-cu-se-filri'a-tu'a} \B l\ .zoi.\ gi lo nu ko'a goi lo prenu cu seljda la'o zoi.\ \B l\ .zoi.\ cu filri'a lo nu ko'a sezyze'a

\paragraph{English}
A proof of \F{lo-nu-sezyze'a-cu-se-filri'a-tu'a} \B l\ exists iff a prenu $A$ exists such that that (\B l\ is the religion of $A$) facilitates that $A$ improves $A$.

\begin{code}
postulate
  lo-nu-sezyze'a-cu-se-filri'a-tu'a : ∀ {a} → {A : Set a}
                                    → A → Set
\end{code}

\subsection{la'oi .\F{turnysarcu}.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \F{turnysarcu} \B l\ .zoi.\ gi lo ro seljda be la'o zoi.\ \B l\ .zoi.\ cu troci lo nu me'oi .coerce.\ lo nu binxo lo seljda be la'o zoi.\ \B l\ .zoi.

\paragraph{English}
A proof of \F{turnysarcu} \B l\ exists iff every seljda/``true follower'' of \B l\ attempts that coerces that becomes a follower of \B l. 

\begin{code}
postulate
  turnysarcu : Lijda → Set
\end{code}

\subsection{la'oi .\F{xairgau-darsygau}.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \F{xairgau-darsygau} \B l\ .zoi.\ gi la'o zoi.\ \B l\ .zoi.\ darsygau ja co'e lo nu lo seljda be la'o zoi.\ \B l\ .zoi.\ cu xairgau lo na seljda be la'o zoi.\ \B l\ .zoi.\ ki'u lo su'u na seljda la'o zoi.\ \B l zoi.

\paragraph{English}
A proof of \F{xairgau-darsygau} \B l\ exists iff (\B l\ encourages that the seljda/``true followers'' of \B l\ harm things which are not followers of \B l, and that harms is justified by that not follows the religion).

\begin{code}
postulate
  xairgau-darsygau : Lijda → Set
\end{code}

\subsection{la'o zoi.\ \F{dukse-xlafilri'a-tu'a-fa}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga naja ctaipe la'o zoi.\ \F{dukse-xlafilri'a-tu'a-fa} \B l\ .zoi.\ gi tu'a la'o zoi.\ \B l\ .zoi.\ cu dukse lo ka ce'u filri'a lo xlali be fi zo'e po la .varik.\ kei zo'e po la .varik.

\paragraph{English}
If a proof of \F{dukse-xlafilri'a-fa-tu'a} \B l\ exists, then the standard of VARIK indicates that \B l\ excessively facilitates stuff which is bad by the standard of VARIK.

\begin{code}
postulate dukse-xlafilri'a-fa-tu'a : ∀ {a} → {A : Set a} → A → Set
\end{code}

\subsection{la'o zoi.\ \F{\_cu-nelci\_}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \B a \Sym{cu-nelci} \B b\ .zoi.\ gi la'o zoi.\ \B a\ .zoi.\ nelci la'o zoi.\ \B b\ .zoi.

\paragraph{English}
A proof of \B a \Sym{cu-nelci} \B b\ exists iff \B a\ likes \B b.

\begin{code}
postulate _cu-nelci_ : ∀ {a} → {A : Set a} → Prenu → A → Set
\end{code}

\subsection{la'o zoi.\ \F{xagfilri'a-fa-tu'a}\ .zoi.}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'o zoi.\ \F{xagfilri'a-fa-tu'a} \B a\ .zoi.\ gi tu'a la'o zoi.\ \B a\ .zoi.\ filri'a lo xamgu be fi zo'e po la .varik.

\paragraph{English}
A proof of \F{xagfilri'a-fa-tu'a} \B a\ exists iff $A$ facilitates stuff which is good by the standard of VARIK.

\begin{code}
postulate xagfilri'a-fa-tu'a : ∀ {a} → {A : Set a} → A → Set
\end{code}

\subsection{la'oi .\F{jdafilri'a}.}
\paragraph{la .lojban.}
ni'o la .varik.\ cu na jinvi le su'u sarcu fa lo nu ciksi la'oi .\F{jdafilri'a}.\ bau la .lojban.

\paragraph{English}
VARIK not opines that necessary is that VARIK writes an English definition of \F{jdafilri'a}.

\begin{code}
postulate
  jdafilri'a : {L : Lijda}
             → lo-nu-sezyze'a-cu-se-filri'a-tu'a L
             → xagfilri'a-fa-tu'a L
\end{code}

\subsection{la'o zoi.\ \F{la-varik}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{la-varik}\ .zoi.\ cu du la .varik.

\paragraph{English}
\F{la-varik} is VARIK.

\begin{code}
postulate la-varik : Prenu
\end{code}

\subsection{la'o zoi.\ \F{xagfilri'a-jdanei}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{xagfilri'a-nelci}\ .zoi.\ ctaipe le su'u ro da zo'u ga naja tu'a da filri'a lo xamgu be fi zo'e po la .varik.\ jenai cu dukse lo ka ce'u filri'a lo xlali be fi zo'e po la .varik.\ kei fi zo'e po la .varik.\ gi la .varik.\ cu nelci da

\paragraph{English}
\F{xagfilri'a-nelci} is a proof of that for all $A$, if $A$ facilitates stuff which is good by the standard of VARIK, then if the standard of VARIK not indicates that $A$ excessively facilitates stuff which is bad by the standard of VARIK, then VARIK likes $A$.

\begin{code}
postulate
  xagfilri'a-nelci : ∀ {a} → {A : Set a} → {x : A}
                   → xagfilri'a-fa-tu'a x
                   → ¬ (dukse-xlafilri'a-fa-tu'a x)
                   → la-varik cu-nelci x
\end{code}

\section{la'o zoi.\ \F{la-varik-cu-jdanelci}\ .zoi.}
\paragraph{la .lojban.}
ni'o la'o zoi.\ \F{la-varik-cu-jdanelci}\ .zoi.\ ctaipe le su'u ro da poi ke'a lijda zo'u ga naja tu'a da filri'a lo nu sezyze'a kei jenai cu dukse lo ka ce'u filri'a lo xlali be fi zo'e po la .varik.\ kei zo'e po la .varik.\ gi la .varik.\ cu nelci da

\paragraph{English}
\F{la-varik-cu-jdanelci} is a proof of that for all religions $A$, if $A$ facilitates self-improvement, then if the standard of VARIK not indicates that $A$ excessively facilitates stuff which is bad by the standard of VARIK, then VARIK likes $A$.

\begin{code}
la-varik-cu-jdanelci : {L : Lijda}
                     → lo-nu-sezyze'a-cu-se-filri'a-tu'a L
                     → ¬ (dukse-xlafilri'a-fa-tu'a L)
                     → la-varik cu-nelci L
la-varik-cu-jdanelci x y = flip xagfilri'a-nelci y $ jdafilri'a x
\end{code}
\end{document}
