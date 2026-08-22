---
title: "Multi-Information and von Neumann Entropy"
week: 7
layout: lecture
date: 2026-11-24
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  In-class Quiz 3, then Watanabe's multi-information, the conservation
  law \(I+H=C\), and the argument that the classical limit \(I=C\) forces
  a move to von Neumann entropy. First attempt at the two “purely
  entropic interpretation” questions.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO10, LO11]
duration_hours: 2
type: lecture
in_class_test:
  id: Q3
  duration_minutes: 10
  slot: start
  covers: [LO8, LO9]
worksheet_released: W4
reading:
  - title: "Quantum Computation and Quantum Information"
    author: "Nielsen and Chuang"
    chapter: "Chapter 11"
    estimated_hours: 2
    required: false
---

\notes{Quiz 3 occupies the first ten minutes. Then multi-information and the passage to quantum probability. Worksheet 4 is released; due at the start of lecture 8 (1 December). That is a one-week turnaround.}

\subsection{This Session}

\slidesincremental{
* Quiz 3 (ten minutes)
* Multi-information; \(I+H=C\)
* Why \(I=C\) forces von Neumann entropy
}

\notes{
**Time plan (120 minutes)**

| Minutes | Block |
|--------:|-------|
| 0–10 | Quiz 3 (Moodle; LO8–LO9) |
| 10–55 | Multi-information versus mutual information; \(I+H=C\) |
| 55–65 | Break |
| 65–100 | Classical limit \(I=C\Rightarrow H=0\); von Neumann entropy; matrix exponential family |
| 100–120 | First attempt at the two “purely entropic” questions; release Worksheet 4 |
}

\subsection{Quiz 3}

\notes{Ten MCQs on the Fisher metric, natural gradient, and dual flatness. New parameterised family. Feedback before lecture 8 if possible; Quiz 4 does not depend on this score.}

\subsection{Multi-Information}

\include{_physics/includes/i-plus-h-equals-c.md}

\include{_information-game/includes/submodularity-multi-information.md}

\notes{STUB. Mutual information is the pairwise case. Multi-information (Watanabe) is \(I=\sum h_i-H\ge 0\). With \(\sum h_i=C\), \(I+H=C\). That conservation is the no-go: you cannot have both high stored correlation and high free uncertainty without bound. The joint you may still hold is the prescription. Analogy: \(I\) stored correlation, \(H\) free uncertainty. Chain rule from week 2 is the algebraic source. This is LO10.}

\subsection{The Inaccessible Game}

\include{_information-game/includes/inaccessible-game-introduction.md}

\subsection{Von Neumann Entropy}

\include{_physics/includes/origin-paradox-shannon-von-neumann.md}

\include{_information/includes/the-matrix-exponential-family.md}

\notes{STUB. Classically \(I=C\) forces \(H=0\), a delta. A pure entangled state has \(S(\rho)=-\mathrm{Tr}(\rho\log\rho)=0\) with positive marginal entropies. Matrix exponential family is the quantum MaxEnt family. This is LO11.}

\subsection{Purely Entropic Readings: First Attempt}

\notes{STUB. Schottky: the two-state heat-capacity peak as a finite-capacity information reservoir filling and emptying. Good Regulator: a regulator that is a model of the system, restated as a constraint on \(I\) and \(H\). Students will not finish these today. Worksheet 4 and lecture 8 complete them.}

\slidesincremental{
* Schottky, entropically: a two-state reservoir
* Good Regulator, entropically: a constraint on \(I\) and \(H\)
* Finish these in week 8
}

\subsection{Define This Week}

\slidesincremental{
* Multi-information versus mutual information?
* What is von Neumann entropy?
* What is the matrix exponential family?
}

\subsection{This Week's Pair}

\notes{No-go: classically \(I=C\) forces \(H=0\). Prescription: the joint you may still hold; quantum, the state \(\rho\).}

\include{_information/includes/entropy-nogo-pair.md}

\subsection{After This Lecture}

\notes{Worksheet 4: multi-information, von Neumann, limits on intelligence. Due 1 December, *before* Quiz 4. Quiz 4 is the first ten minutes of lecture 8.}

\slidesincremental{
* Worksheet 4 released; due 1 December
* Quiz 4: 1 December, first ten minutes
}

\reading

\thanks

\references
