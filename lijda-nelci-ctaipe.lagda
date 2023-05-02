\documentclass{article}

\usepackage{ar}
\usepackage[bw]{agda}
\usepackage{ifsym}
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

\title{le ctaipe be le du'u la .varik.\ cu nelci lo su'o lijda}
\author{la .varik.\ .VALefor.}

\begin{document}
\maketitle

\section{le torveki}
ni'o la .varik.\ cu nelci lo su'o lijda ni'i le su'u ga je la .varik.\ cu nelci zo'e poi tu'a ke'a filri'a lo xamgu be fi zo'e po la .varik.\ jenai cu dukse lo ka ce'u filri'a lo xlali be fi zo'e po la .varik.\ gi tu'a lo su'o lijda cu filri'a lo xamgu be fi zo'e po la .varik.\ jenai cu dukse lo ka ce'u filri'a lo xlali be fi zo'e po la .varik.

\section{le vrici}

\begin{code}
open import Function
open import Data.These
open import Relation.Nullary
\end{code}

\section{le jicmu}

\subsection{la'oi .\F{Prenu}.}
ni'o ga jo la'o zoi.\ \B a\ .zoi.\ ctaipe la'oi .\F{Prenu}.\ gi la'o zoi.\ \B a\ .zoi.\ prenu

\begin{code}
postulate Prenu : Set
\end{code}

\subsection{la'oi .\F{Lijda}.}
ni'o ga jo la'o zoi.\ \B a\ .zoi.\ ctaipe la'oi .\F{Lijda}.\ gi la'o zoi.\ \B a\ .zoi.\ lijda

\begin{code}
postulate Lijda : Set
\end{code}

\subsection{la'o zoi.\ \F{lo-nu-sezyze'a-cu-se-filri'a-tu'a}\ .zoi.}
ni'o ga jo ctaipe la'o zoi.\ \F{lo-nu-sezyze'a-cu-se-filri'a-tu'a} \B l\ .zoi.\ gi lo nu ko'a goi lo prenu cu seljda la'o zoi.\ \B l\ .zoi.\ cu filri'a lo nu ko'a sezyze'a

\begin{code}
postulate
  lo-nu-sezyze'a-cu-se-filri'a-tu'a : ∀ {a} → {A : Set a}
                                    → A → Set
\end{code}

\subsection{la'oi .\F{turnysarcu}.}
ni'o ga jo ctaipe la'o zoi.\ \F{turnysarcu} \B l\ .zoi.\ gi lo ro seljda be la'o zoi.\ \B l\ .zoi.\ cu troci lo nu me'oi .coerce.\ lo nu binxo lo seljda be la'o zoi.\ \B l\ .zoi.

\begin{code}
postulate
  turnysarcu : Lijda → Set
\end{code}

\subsection{la'oi .\F{xairgau-darsygau}.}
ni'o ga jo ctaipe la'o zoi.\ \F{xairgau-darsygau} \B l\ .zoi.\ gi la'o zoi.\ \B l\ .zoi.\ darsygau ja co'e lo nu lo seljda be la'o zoi.\ \B l\ .zoi.\ cu xairgau lo na seljda be la'o zoi.\ \B l\ .zoi.

\begin{code}
postulate
  xairgau-darsygau : Lijda → Set
\end{code}

\subsection{la'o zoi.\ \F{dukse-xlafilri'a-tu'a-fa}\ .zoi.}
ni'o ga naja ctaipe la'o zoi.\ \F{dukse-xlafilri'a-tu'a-fa} \B l\ .zoi.\ gi tu'a la'o zoi.\ \B l\ .zoi.\ cu dukse lo ka ce'u filri'a lo xlali be fi zo'e po la .varik.\ kei zo'e po la .varik.

\begin{code}
postulate dukse-xlafilri'a-fa-tu'a : ∀ {a} → {A : Set a} → A → Set
\end{code}

\subsection{la'o zoi.\ \F{\_cu-nelci\_}\ .zoi.}
ni'o ga jo ctaipe la'o zoi.\ \B a \Sym{cu-nelci} \B b\ .zoi.\ gi la'o zoi.\ \B a\ .zoi.\ nelci la'o zoi.\ \B b\ .zoi.

\begin{code}
postulate _cu-nelci_ : ∀ {a} → {A : Set a} → Prenu → A → Set
\end{code}

\subsection{la'o zoi.\ \F{xagfilri'a-fa-tu'a}\ .zoi.}
ni'o ga jo ctaipe la'o zoi.\ \F{xagfilri'a-fa-tu'a} \B a\ .zoi.\ gi tu'a la'o zoi.\ \B a\ .zoi.\ filri'a lo xamgu be fi zo'e po la .varik.

\begin{code}
postulate xagfilri'a-fa-tu'a : ∀ {a} → {A : Set a} → A → Set
\end{code}

\subsection{la'oi .\F{jdafilri'a}.}
ni'o la .varik.\ cu na jinvi le du'u sarcu fa lo nu ciksi la'oi .\F{jdafilri'a}.\ bau la .lojban.

\begin{code}
postulate
  jdafilri'a : {L : Lijda}
             → lo-nu-sezyze'a-cu-se-filri'a-tu'a L
             → xagfilri'a-fa-tu'a L
\end{code}

\subsection{la'o zoi.\ \F{la-varik}\ .zoi.}
ni'o la'o zoi.\ \F{la-varik}\ .zoi.\ cu du la .varik.

\begin{code}
postulate la-varik : Prenu
\end{code}

\subsection{la'o zoi.\ \F{xagfilri'a-jdanei}\ .zoi.}
ni'o la'o zoi.\ \F{xagfilri'a-nelci}\ .zoi.\ ctaipe le du'u ro da zo'u ga naja tu'a da filri'a lo xamgu be fi zo'e po la .varik.\ jenai cu dukse lo ka ce'u filri'a lo xlali be fi zo'e po la .varik.\ kei fi zo'e po la .varik.\ gi la .varik.\ cu nelci da

\begin{code}
postulate
  xagfilri'a-nelci : ∀ {a} → {A : Set a} → {x : A}
                   → xagfilri'a-fa-tu'a x
                   → ¬ (dukse-xlafilri'a-fa-tu'a x)
                   → la-varik cu-nelci x
\end{code}

\section{la'o zoi.\ \F{la-varik-cu-jdanelci}\ .zoi.}
ni'o la .varik. cu na jinvi le du'u sarcu fa lo nu ciksi la'o zoi.\ \F{la-varik-cu-jdanelci}\ .zoi.\ bau la .lojban.

\begin{code}
la-varik-cu-jdanelci : {L : Lijda}
                     → lo-nu-sezyze'a-cu-se-filri'a-tu'a L
                     → ¬ (dukse-xlafilri'a-fa-tu'a L)
                     → la-varik cu-nelci L
la-varik-cu-jdanelci x y = flip xagfilri'a-nelci y $ jdafilri'a x
\end{code}
\end{document}
