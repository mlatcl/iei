---
title: "Grouping and Maxwell's Demon"
week: 4
layout: lecture
date: 2026-11-03
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  Worksheet 2 is due and the session starts with Quiz 2. Then the Week 3
  overflow: questions, MacKay's balance, die grouping. Gaussian versus
  Maxwell--Boltzmann makes the missing measure visible. Maxwell's demon
  as compartments and two ledgers; the resolution families are Worksheet 3.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO2, LO4]
duration_hours: 2
type: lecture
in_class_test:
  id: Q2
  duration_minutes: 10
  timing: start
  covers: [ensemble, heat thread, Helmholtz F=U-TS, Shannon H versus Boltzmann S]
worksheet_due: W2
worksheet_released: W3
reading:
  - title: "Information Theory, Inference, and Learning Algorithms"
    author: "MacKay"
    chapter: "Exercise 4.1 (weighing); Chapters 1–4 as already assigned"
    estimated_hours: 1
  - title: "Theory of Heat"
    author: "Maxwell"
    chapter: "Ch. 22 (the being who can see molecules)"
    estimated_hours: 0.5
    required: false
---

\notes{Worksheet 2 is due at the start of this session. Quiz 2 occupies the opening block from 10:05 --- Weeks 2--3 as delivered (ensemble, the heat thread through Joule, Helmholtz on the board, Shannon $H$ versus Boltzmann $S$). After the quiz: questions--MacKay--die, Gaussian--Maxwell missing measure, then the demon as compartments and two ledgers. The fork is named, not resolved; Worksheet 3 is released. Shannon axioms, HMC, $Z$, KL, Schottky and finite time stay parked; Szilard, Landauer and Ellis wait for Worksheet 3.}

\machinereviewlink

\subsection{Define This Week}

\slidesincremental{
* Questions; MacKay's balance; die grouping $H=H(w)+\sum_i w_i H(p_i)$
* Gaussian vs Maxwell: variable, grouping, and measure $m$
* The demon: compartments and two ledgers
* Worksheet 3: where can the entropy sit?
}

\notes{
* Questions; MacKay's balance; die grouping $H=H(w)+\sum_i w_i H(p_i)$
* Gaussian vs Maxwell: variable, grouping, and measure $m$
* The demon: compartments and two ledgers
* Worksheet 3: where can the entropy sit?
}

\subsection{This Session}

\notes{
**Time plan (as delivered 3 November 2026).** Clocks from the Panopto SRT (recording 00:00 $\approx$ 10:00). The published slot is 10:05--11:55 (110 minutes). Quiz 2 is paper, as Quiz 1 was. As taught: MacKay and the die filled the first half (board-first); the missing measure --- including the velocity-space shell answer to Harry's question --- took most of the second half; the demon compartments and two ledgers were a short close for Worksheet 3.

| Clock | Block |
|------:|-------|
| 10:05--10:22 | Quiz 2 (paper; quiet ran long); Worksheet 2 collected |
| 10:22--10:53 | Questions, MacKay (board), die grouping on the board |
| 10:53--11:03 | Break |
| 11:03--11:47 | Anthropomorphic bridge; histogram; shell geometry; Radon--Nikodym / Jaynes $m$ |
| 11:47--11:55 | Compartment model; two ledgers; release Worksheet 3 |
}

\speakernotes{Do not open Szilard or Landauer in this slot.}

\subsection{After This Lecture}

\notes{Worksheet 2 was due at the start of this lecture, before Quiz 2. Worksheet 3 is released today; due 17 November (start of lecture 6), the same morning as Quiz 3.}

\slidesincremental{
* Worksheet 2 due today, before the quiz
* Worksheet 3 released (due 17 November, with Quiz 3)
}

\subsection{Quiz 2}

\notes{Invigilated paper test, no notes, no network, no LLMs. Ten questions on Weeks 2--3 as delivered: Bernoulli / ensemble, the heat thread (Black through Joule and Clausius), Helmholtz $F=U-TS$ and $\log Z$, Shannon $H$ versus Boltzmann $S$. Not the information game, not MacKay's balance, not Maxwell's demon --- those start after the quiz.}

\slidesincremental{
* Paper; no notes, no network, no LLMs
* Opening block (about fifteen minutes as delivered)
* Worksheet 2 in as you sit
}

\classtimertitled{10:05}{Quiz 2}

\include{_iei/includes/iei-notebook-setup.md}

\include{includes/week4-as-taught.md}

\include{_information/includes/questions-mackay-die-abstraction.md}

\include{_physics/includes/gaussian-maxwell-missing-measure.md}

\include{_physics/includes/maxwell-demon-compartments.md}

\include{_physics/includes/demon-groups-hot-cold.md}

\notes{Worksheet 3 is the coarse-graining of Maxwell: which description is legal for each compartment, and where the missing entropy is allowed to sit. Szilard, Landauer, Ellis, and the information-engine scale argument wait until that worksheet needs them.}

\machinereview

\ifdef{NOTES}
\include{includes/grouping-maxwell-demon-machine-review.md}
\endif

\reading

\thanks

\references
