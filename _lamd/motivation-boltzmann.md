---
title: "Motivation; Boltzmann, Free Energy, Entropy"
week: 1
layout: lecture
date: 2026-10-13
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  Entropy offers no-go theorems; probability tells us what to do. We
  meet that split in two motivations — perpetual motion, and the
  bandwidth gap between humans and machines from *The Atomic Human* —
  and then in the Boltzmann distribution and the free-energy
  decomposition $F = U - TS$.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO1]
duration_hours: 2
type: lecture
in_class_test: null
worksheet_released: W1
reading:
  - title: "The Atomic Human"
    author: "Lawrence"
    chapter: "Chapter 1"
    estimated_hours: 2
    required: false
  - title: "Thermodynamics and an Introduction to Thermostatistics"
    author: "Callen"
    chapter: "Chapters 1–4 (postulates); 5–6 (maximum work, Helmholtz)"
    estimated_hours: 2
    required: false
  - title: "Generative AI and Stochastic Thermodynamics"
    author: "Welling, Lu and Holdijk"
    chapter: "Chapter 3"
    estimated_hours: 1
    required: false
---

\notes{First meeting. FW26. Two hours; no class test. Worksheet 1 is released and due at the start of lecture 2 (20 October). Clock time for the slot is still to be confirmed.}

\subsection{This Session}

\slidesincremental{
* Room FW26; eight Tuesdays from today
* Entropy forbids; probability prescribes
* Today: perpetual motion, human bandwidth, Laplace, Boltzmann
}

\notes{
**Time plan (120 minutes)**

| Minutes | Block |
|--------:|-------|
| 0–15 | Course mechanics; the questions list; the theme |
| 15–45 | Perpetual motion; *Atomic Human* bandwidth; Laplace's demon and gremlin |
| 45–55 | Boltzmann distribution as the prescription |
| 55–65 | Break |
| 65–100 | Free-energy decomposition: $TS$ is the subtraction, $F$ is what remains |
| 100–120 | Name dissipation; Schottky named; Worksheet 1; LLM exercise |
}

\subsection{Course Mechanics}

\notes{Eight lectures, Tuesdays, this room. Four in-class Moodle quizzes, ten minutes, at the start of lectures 3, 5, 7 and 8. Students need a device. No notes, no network, no LLMs during the quiz. Four take-home worksheets, each a notebook plus a short reflection. Worksheets are released in the odd-numbered lectures and due at the start of the next even-numbered lecture, except Worksheet 4, which is due at the start of lecture 8.}

\slidesincremental{
* Four Moodle quizzes (start of lectures 3, 5, 7, 8)
* Four worksheets (notebook + reflection)
* After each lecture: pose the central idea to an LLM from three sides
}

\subsection{Questions We Will Return To}

\notes{The questions page is published today. Students should meet the whole list. They should not expect to answer most of it. Two stages: *define* (textbook answer, usually this week or the week the object is introduced) and *interpret* (the course's own reading, often week 4 or weeks 7–8).}

\slidesincremental{
* Meet the questions today
* Define later; interpret later still
* Two of them only make sense after week 7
}

\include{_information/includes/entropy-nogo-probability-prescription.md}

\subsection{Motivation}

\include{_information/includes/perpetual-motion-superintelligence-analogy.md}

\notes{That is entropy as a no-go for engines. There is a second motivation, about us rather than about cars. Human communication sits at about 2000 bits per minute; machines sit at billions. *The Atomic Human* [@Lawrence-atomic24] takes that bandwidth gap as the defining constraint on human intelligence: we are locked in relative to the machine. That is also a no-go. It does not tell you how to think. It tells you that you cannot think at machine bandwidth.}

\include{_books/includes/the-atomic-human.md}

\include{_ai/includes/embodiment-factors-short.md}

\include{_physics/includes/laplace-portrait.md}
\include{_physics/includes/laplaces-determinism.md}

\notes{Laplace's "intelligence sufficiently vast" is the superintelligence claim in 1814 language. The demon is a no-go: you do not have the model, the data, or the compute. Three pages later the gremlin is the prescription: probability is relative, in part to this ignorance, in part to our knowledge. That is the week's pair before any calculation.}

\subsection{Entropy and the Boltzmann Distribution}

\include{_physics/includes/entropy-intro.md}

\notes{STUB. Derive $p_i \propto e^{-E_i/kT}$ and $Z$. This is the prescription. Given the energies and the bath, probability tells you the occupation. The second law has already said you cannot put all the mass on the ground state while matching a prescribed mean energy. Boltzmann is what you should do instead.}

\include{_physics/includes/coldness-and-temperature.md}

\subsection{Free Energy Decomposition}

\notes{STUB. $U = \langle E \rangle$, $S = -k\sum p_i \log p_i$, $F = U - TS = -kT\log Z$. Available energy is what remains after the entropic no-go has taken its cut: $U$ is what you have, $TS$ is unavailable, $F$ is what probability and the bath still allow you to do. Name the subtraction; do not yet call it a Legendre transform — that waits for week 4, when the same move produces $H = A - \theta\cdot\eta$. This is LO1.}

\slidesincremental{
* No-go: you cannot occupy as you please
* Prescription: $p_i = e^{-\beta E_i}/Z$
* Accounting: $F = U - TS$
}

\include{_books/includes/welling-lu-holdijk.md}
\include{_information/includes/welling-boltzmann-free-energy.md}

\addreading{@Callen-thermostatistics85}{Chapters 1--4}
\addreading{@Callen-thermostatistics85}{Chapters 5--6}

\subsection{Thermodynamic Bath and Schottky's Anomaly}

\notes{STUB. A thermodynamic bath is the large system that justifies the canonical ensemble: it fixes $T$ and exchanges energy. The two-state system $E\in\{0,\varepsilon\}$ is the running example for Worksheet 1 and Quiz 1. Its heat capacity has a peak (Schottky's anomaly). Name the peak today; the purely entropic reading waits until weeks 7–8.}

\slidesincremental{
* Bath: why the canonical ensemble exists
* Two-state system: Schottky peak in heat capacity
* Entropic reading of Schottky: not today
}

\subsection{Finite Time Costs More Than $\Delta F$}

\notes{STUB. Quasi-static processes achieve $W = \Delta F$. Finite-time processes dissipate more. Do not define thermodynamic length today. Name the fact. Weeks 5–6 will identify the extra cost with Fisher–Rao length (Crooks). Week 8 will ask what that bound means for intelligence.}

\slidesincremental{
* Quasi-static: $W = \Delta F$
* Finite time: extra dissipation
* Length comes in week 5
}

\subsection{Define This Week}

\slidesincremental{
* How was entropy discovered?
* Energy and entropy?
* What is a thermodynamic bath?
* What is Schottky's anomaly?
}

\notes{Interpret later: how entropy is understood today; equilibrium versus non-equilibrium; the purely entropic Schottky reading.}

\subsection{This Week's Pair}

\notes{No-go: the second law; human communication at $\sim 100$ bits per second. Prescription: the Boltzmann occupation. Free energy is the accounting of that pair.}

\include{_information/includes/entropy-nogo-pair.md}

\subsection{After This Lecture}

\notes{Worksheet 1: three-state Boltzmann sampling, free-energy decomposition, Shannon entropy of simple sources; 300-word LLM reflection. Ask the model whether entropy is a constraint or a recipe, then write down which half it missed. Due 20 October, start of lecture 2.}

\slidesincremental{
* Worksheet 1 released; due 20 October
* LLM: is entropy a constraint or a recipe?
}

\reading

\thanks

\references
