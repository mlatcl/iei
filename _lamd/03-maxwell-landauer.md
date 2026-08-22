---
title: "Maxwell's Demon and Landauer's Principle"
week: 3
session: 1
layout: lecture
date: 2026-10-27
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  In-class Quiz 1, then Maxwell's demon and Landauer's principle. Erasing
  one bit costs \(k_B T\ln 2\) — a no-go. The demon's policy is a
  prescription. Human bandwidth from *The Atomic Human* sits next to
  Landauer as a second no-go on intelligence.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO4]
duration_hours: 2
type: lecture
in_class_test:
  id: Q1
  duration_minutes: 10
  slot: start
  covers: [LO1, LO2, LO3]
worksheet_released: W2
reading:
  - title: "Irreversibility and Heat Generation in the Computing Process"
    author: "Landauer"
    chapter: "whole paper"
    estimated_hours: 1
---

\notes{Quiz 1 occupies the first ten minutes. Invigilated Moodle, own device, no notes, no network, no LLMs. Then 110 minutes of teaching. Worksheet 2 is released; due 3 November.}

\subsection{This Session}

\slidesincremental{
* Quiz 1 (ten minutes)
* Maxwell's demon and Landauer
* Information and intelligence: first cut
}

\notes{
**Time plan (120 minutes)**

| Minutes | Block |
|--------:|-------|
| 0–10 | Quiz 1 (Moodle; LO1–LO3) |
| 10–55 | Maxwell's demon; where the apparent violation sits |
| 55–65 | Break |
| 65–100 | Szilard; Landauer; erasure as the thermodynamic cost |
| 100–120 | Intelligence, first cut; human bandwidth; release Worksheet 2 |
}

\subsection{Quiz 1}

\notes{Ten MCQs. Two-state system and a binary source, not the Worksheet 1 examples. Auto-graded. Feedback within seven days, before Worksheet 2 is due.}

\subsection{Maxwell's Demon}

\include{_physics/includes/maxwells-demon.md}

\include{_physics/includes/szilards-engine.md}

\subsection{Landauer's Principle}

\include{_information-game/includes/landauer-shannon-connection.md}

\include{_information-game/includes/landauer-from-inaccessible-game.md}

\notes{STUB. Landauer (1961): erasing one bit in a bath at temperature \(T\) dissipates at least \(k_B T\ln 2\). That is a no-go. The demon's *policy* — which molecules to let through — is the prescription: probability telling the demon what to do. The policy does not repeal the no-go. Erasure of the stored outcomes restores the second law. This is LO4.}

\subsection{Information and Intelligence: First Cut}

\include{_ai/includes/embodiment-factors-walking-vs-light.md}

\notes{Two human no-gos now sit next to each other. Landauer: you cannot erase a bit for less than \(k_B T\ln 2\). Embodiment: you cannot communicate at machine bandwidth. *The Atomic Human* [@Lawrence-atomic24] takes the second as the defining constraint on human intelligence — we are locked in relative to the machine, and we overcome it by modelling other minds, not by opening a wider channel. Probability's job, on the human side, is to say how that narrow budget is spent. The full intelligence question is week 8.}

\slidesincremental{
* No-go: \(k_B T\ln 2\) per bit erased
* No-go: \(\sim 100\) bits per second for a human
* Prescription: the demon's policy; how we spend the human budget
}

\subsection{Define This Week}

\slidesincremental{
* What is Maxwell's demon?
* Information and intelligence? (first cut)
* Information constraints on a human? (bandwidth)
}

\subsection{This Week's Pair}

\notes{No-go: Landauer; human bandwidth. Prescription: the demon's measurement policy; how a locked-in intelligence spends its channel.}

\include{_information/includes/entropy-nogo-pair.md}

\subsection{After This Lecture}

\notes{Worksheet 2: Maxwell / Landauer, MaxEnt, exponential family. Due 3 November. Quiz 2 is 10 November and will use a *new* example.}

\slidesincremental{
* Worksheet 2 released; due 3 November
* LLM: does the demon evade a no-go, or follow a prescription?
}

\reading

\thanks

\references
