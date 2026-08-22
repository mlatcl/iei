---
title: "Shannon Entropy and the Partition Function"
week: 2
layout: lecture
date: 2026-10-20
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  Shannon entropy as a measure of uncertainty, and its formal equivalence
  to thermodynamic entropy. The partition function as a generating function
  for mean energy, entropy, and free energy. The chain rule and the
  statement of channel capacity are introduced as scaffolding, not as
  outcomes.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO2, LO3]
duration_hours: 2
type: lecture
in_class_test: null
worksheet_due: W1
reading:
  - title: "A Mathematical Theory of Communication"
    author: "Shannon"
    chapter: "Sections 1–6"
    estimated_hours: 2
  - title: "Information Theory, Inference, and Learning Algorithms"
    author: "MacKay"
    chapter: "Chapters 1–4"
    estimated_hours: 3
---

\notes{Worksheet 1 is due at the start of this session. No class test. Quiz 1 is in seven days: Boltzmann, partition function, Shannon entropy, on a *new* example.}

\subsection{This Session}

\slidesincremental{
* Shannon \(H\); Boltzmann \(S = kH\)
* Partition function as a generating function
* Chain rule and channel capacity (statements)
}

\notes{
**Time plan (120 minutes)**

| Minutes | Block |
|--------:|-------|
| 0–10 | Collect Worksheet 1; preview Quiz 1 (27 October) |
| 10–55 | Shannon axioms; why \(H\) measures information; equivalence to Boltzmann |
| 55–65 | Break |
| 65–100 | Canonical ensemble; \(Z\) as generating function; bath revisited |
| 100–120 | Chain rule; channel capacity (statement); three framings named |
}

\subsection{Shannon Entropy}

\include{_policy/includes/shannon-information.md}

\notes{STUB. Derive \(H = -\sum p_i\log p_i\) from the Shannon axioms. Fair coin, biased coin, uniform over eight outcomes. Thermodynamic entropy \(S = kH\): same object, different operational reading. \(H\) is the no-go half of Shannon: it bounds what a code cannot do. The distribution \(p\) is the prescription: it *is* the code, or the belief. This is LO2.}

\subsection{The Partition Function}

\notes{STUB. Canonical ensemble from the bath. \(Z(\beta) = \sum_i e^{-\beta E_i}\). Mean energy \(U = -\partial_\beta\log Z\), \(F = -\beta^{-1}\log Z\), \(S = \beta(U-F)\). Compute these for the two-state system. This is LO3. \(Z\) is the constructive twin of last week's second-law no-go: it tells you what \(U\), \(S\), and \(F\) *are*. Equilibrium versus non-equilibrium: the canonical ensemble *is* an equilibrium construction. Finite-time driving leaves that manifold; the cost is still only named.}

\slidesincremental{
* \(U = -\partial_\beta \log Z\)
* \(F = -\beta^{-1}\log Z\)
* Bath justifies the canonical ensemble
}

\subsection{Scaffolding, Not Outcomes}

\notes{STUB. Chain rule: \(H(X,Y) = H(X) + H(Y|X)\). Needed in week 7 for multi-information. Channel capacity: you cannot send faster than \(C\). That is the week's cleanest no-go. The capacity-achieving input \(p(x)\) is the prescription: this is the distribution you should use. Data-processing inequality: processing cannot create information — another no-go. Mention, do not prove. None of these is a learning outcome; the pair is the reason they are here.}

\slidesincremental{
* No-go: \(R \le C\); processing cannot create information
* Prescription: the \(p(x)\) that achieves \(C\)
* Chain rule: needed in week 7
}

\subsection{Three Framings, First Pass}

\notes{Information, thermodynamic, and Bayesian readings of the same \(H\) are named today. The intended comparison is LO7, week 4. A student who answers “how is entropy understood today?” with only Shannon is not finished.}

\slidesincremental{
* Same \(H\); three operational assumptions
* Synthesis is week 4
}

\subsection{Define This Week}

\slidesincremental{
* Why is entropy a sensible measure of information?
* Equilibrium versus non-equilibrium? (first cut)
* Channel capacity? (statement)
}

\notes{Interpret later: how entropy is understood today (week 4, then week 7); chain rule as the source of multi-information (week 7).}

\subsection{This Week's Pair}

\notes{No-go: \(R\le C\); the data-processing inequality. Prescription: the capacity-achieving input; \(Z\) as a generating function.}

\include{_information/includes/entropy-nogo-pair.md}

\subsection{After This Lecture}

\notes{Quiz 1 at the start of lecture 3 (27 October): ten Moodle questions, ten minutes, two-state system and a binary source — not the three-state / die examples from Worksheet 1. Device required. No notes. LLM exercise: ask whether Shannon entropy is a bound or a recipe.}

\slidesincremental{
* Quiz 1: 27 October, first ten minutes
* LLM: is Shannon entropy a bound or a recipe?
}

\reading

\thanks

\references
