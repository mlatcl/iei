---
title: "Channels, DPI, and the Good Regulator"
week: 6
layout: lecture
date: 2026-11-17
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  After Quiz 3, a short Week 5 close (exponential family named at
  θ=-λ). Then an information-theoretic overview: Shannon's noisy-channel
  coding / communication theorem (R≤C), mutual information as the
  channel currency, and the data-processing inequality as a statement
  (processing cannot create information). The session destination is a
  full overview of the Good Regulator Theorem: Ashby's requisite variety
  as a quantity bound, Conant–Ashby existence of an optimal deterministic
  policy H(A|S)=0 from concavity of entropy, two caveats, and the
  information-bottleneck gloss after the theorem.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO10, LO13]
duration_hours: 2
type: lecture
in_class_test:
  id: Q3
  duration_minutes: 10
  timing: start
  covers: [grouping, soft partitions / MI / KL, demon compartments, MaxEnt, exponential family named]
worksheet_due: W3
worksheet_released: W4
reading:
  - title: "A Mathematical Theory of Communication"
    author: "Shannon"
    chapter: "channel capacity; noisy channel coding"
    estimated_hours: 1
  - title: "Elements of Information Theory"
    author: "Cover and Thomas"
    chapter: "Chapter 7 (capacity); Theorem 2.8.1 (DPI)"
    estimated_hours: 1
  - title: "Every Good Regulator of a System Must Be a Model of That System"
    author: "Conant and Ashby"
    chapter: "whole paper (1970)"
    estimated_hours: 0.5
  - title: "An Introduction to Cybernetics"
    author: "Ashby"
    chapter: "requisite variety"
    estimated_hours: 0.5
---

\notes{Quiz 3 occupies the first ten minutes from 10:05 --- Weeks 4--5 as delivered (grouping, demon compartments and two ledgers, soft partitions / MI / KL, MaxEnt and the exponential family *named*). Continuous MaxEnt, $\log Z$ as CGF, Legendre, and Fisher geometry are *not* today's live path. Collect Worksheet 3 as they sit (due 10:00). Then Shannon capacity, DPI as a statement, and a full Good Regulator overview. Worksheet 4 is released at the close; due 1 December (start of lecture 8).}

\subsection{This Session}

\slidesincremental{
* Quiz 3 (ten minutes); collect Worksheet 3
* Week 5 close: $\theta=-\lambda$; MaxEnt $\to$ exponential family named
* Shannon: $R\le C$; capacity-achieving $p(x)$
* DPI: processing cannot create information
* Good Regulator: $H(A\mid S)=0$, with caveats
}

\notes{
**Time plan.** The slot is 10:05--11:55 (110 minutes, not 120). Quiz 3 is paper. Protect Shannon's communication theorem, the DPI moral, and the full GRT block (requisite variety versus existence, concavity argument, two caveats). Do not open Fisher, Legendre, or Crooks length.

| Clock | Block |
|------:|-------|
| 10:05--10:15 | Quiz 3 (paper); collect Worksheet 3 |
| 10:15--10:25 | Week 5 close: $\theta=-\lambda$; stop |
| 10:25--10:50 | Shannon communication theorem / channel capacity |
| 10:50--11:00 | Break |
| 11:00--11:20 | DPI statement; Markov moral; soft partitions callback |
| 11:20--11:50 | Good Regulator overview (full) |
| 11:50--11:55 | Release Worksheet 4; preview Week 7 |
}

\subsection{Quiz 3}

\notes{Invigilated paper test, no notes, no network, no LLMs. Ten questions on Weeks 4--5 as delivered: exclusive grouping $H=H(w)+\sum_i w_i H(p_i)$, soft partitions $H(G\mid X)$ / $I(X;G)$ / KL, the missing measure, Maxwell's demon as compartments and two ledgers, MaxEnt (die / discrete proof), and the exponential family named ($\theta=-\lambda$). Not CGF, not continuous MaxEnt, not Fisher, not Legendre, not Crooks, not GRT.}

\slidesincremental{
* Paper; no notes, no network, no LLMs
* Ten minutes
* Worksheet 3 in as you sit
}

\classtimertitled{10:05}{Quiz 3}

\include{_iei/includes/iei-notebook-setup.md}

\classtimertitled{10:15}{Quiz 3}

\subsection{Week 5 Close}

\newslides{Last Week's Close}

\slides{MaxEnt under moment constraints recovers an exponential family.}

\slidesincremental{
* Discrete proof: $p_i \propto e^{-\sum_k \lambda_k f_k(i)} / Z$
* Natural parameters: $\theta = -\lambda$
* Fitting the $\lambda$s is maximum likelihood --- named, not developed
}

\speakernotes{Five to ten minutes. Do not open continuous MaxEnt, $\log Z$ as CGF, or Legendre. Those stay in the Week 5 notes / deferred Fisher file. Pivot to channels.}

\notes{Week 5 earned the discrete MaxEnt stationarity condition and named the exponential family with $\theta=-\lambda$. Continuous MaxEnt, the cumulant-generating reading of $\log Z$, and Legendre duality $H=A-\theta\cdot\eta$ remain unread notes --- not today's live material. Today's object is the information-theoretic spine that leads to the Good Regulator.}

\subsection{Shannon's Communication Theorem}

\newslides{Shannon's Noisy Channel Coding Theorem}

\slides{A channel is a conditional $p(y\mid x)$. Rate cannot beat capacity.}

\slidesincremental{
* Mutual information $I(X;Y)$ is the channel currency
* Capacity $C = \max_{p(x)} I(X;Y)$
* No-go: reliable communication requires $R \le C$
* Prescription: the input $p(x)$ that achieves $C$
}

\speakernotes{Name Shannon's noisy-channel coding / communication theorem. Do not prove the coding theorems. The BSC plot from the capacity include is enough geometry for today.}

\notes{Shannon's communication theorem (noisy-channel coding) is the information-theoretic twin of Carnot: it forbids reliable rates above capacity and does not construct a code. Capacity $C=\max_{p(x)}I(X;Y)$ is the no-go number; the capacity-achieving input distribution is the prescription. Week 5 already made mutual information first-class via soft partitions; today that $I$ is the rate currency on a channel.}

\include{_information/includes/channel-capacity-chain-rule.md}

\addreading{@Shannon-mathematical48}{noisy channel coding / capacity}
\addreading{@Cover:elements91}{Chapter 7}
\addreading{@MacKay-information03}{Chapters 8--10}

\slides{
\includediagram{\diagramsDir/ml/bsc-capacity}{70%}
}

\classtimertitled{10:50}{Break}

\subsection{Data-Processing Inequality}

\classtimertitled{11:00}{DPI}

\newslides{Data-Processing Inequality}

\slides{If $X\to Y\to Z$ is Markov, processing cannot create information about $X$.}

\slidesincremental{
* Markov: $p(z\mid x,y)=p(z\mid y)$
* Statement: $I(X;Z)\le I(X;Y)$
* Soft partitions: leftover $H(G\mid X)$ already spent information
* Proof: Week 7 (Cover--Thomas 2.8.1)
}

\speakernotes{State DPI; do not board the two expansions unless ahead of clock. Moral only: you cannot process your way to more $I$. Week 7 proves it when multi-information is the object.}

\notes{The data-processing inequality is the no-go on $I$: further processing of $Y$ cannot increase information about $X$. Week 5's soft-partition leftover $H(G\mid X)$ is the same grammar --- a stochastic map spends mutual information. Full proof waits for Week 7; today the statement is enough to underwrite the Good Regulator tools (requisite variety needs enough $I$; DPI forbids manufacturing missing $I$).}

\slidesincremental{
* No-go: processing cannot create $I$
* Week 7: prove DPI; information bottleneck as prescription
}

\subsection{Good Regulator}

\classtimertitled{11:20}{Good Regulator}

\include{_information/includes/entropic-good-regulator.md}

\addreading{@Conant-Ashby70}{the Good Regulator Theorem}
\addreading{@Ashby-introduction56}{requisite variety; Shannon form}

\subsection{Define This Week}

\slidesincremental{
* What is channel capacity, and what does $R\le C$ forbid?
* State the data-processing inequality
* Requisite variety versus the Good Regulator Theorem
* Why $H(A\mid S)=0$, and why that model is weak?
* Why low $H(Z)$ is not the same as good?
}

\subsection{After This Lecture}

\notes{Quiz 3 opened the session. Worksheet 4 is released today (due 1 December, before Quiz 4). Week 7 deepens multi-information, proves DPI, and develops the information bottleneck as the prescription paired with DPI --- and as a gloss after GRT, not the theorem.}

\slidesincremental{
* Worksheet 4 out; due 1 December before Quiz 4
* Week 7: $I+H=C$, DPI proof, information bottleneck
}

\reading

\thanks

\references
