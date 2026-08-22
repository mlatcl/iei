---
title: "Fisher Metric and Thermodynamic Length"
week: 5
layout: lecture
date: 2026-11-10
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  In-class Quiz 2, then the manifold of probability distributions with the
  Fisher information matrix as its metric. Crooks' thermodynamic length is
  the Fisher–Rao length of a path of equilibrium states. Students should
  be able to *define* thermodynamic length today; the intelligence
  question waits for week 8.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO8]
duration_hours: 2
type: lecture
in_class_test:
  id: Q2
  duration_minutes: 10
  slot: start
  covers: [LO4, LO5, LO6]
worksheet_released: W3
reading:
  - title: "Information Geometry and Its Applications"
    author: "Amari"
    chapter: "Chapters 1–2"
    estimated_hours: 2
  - title: "Measuring Thermodynamic Length"
    author: "Crooks"
    chapter: "whole paper"
    estimated_hours: 1
---

\notes{Quiz 2 occupies the first ten minutes. Then Fisher geometry and the definition of thermodynamic length. Worksheet 3 is released; due 17 November.}

\subsection{This Session}

\slidesincremental{
* Quiz 2 (ten minutes)
* Fisher metric; dually flat geometry
* Thermodynamic length: define, do not interpret
}

\notes{
**Time plan (120 minutes)**

| Minutes | Block |
|--------:|-------|
| 0–10 | Quiz 2 (Moodle; LO4–LO6) |
| 10–55 | Statistical manifold; Fisher metric |
| 55–65 | Break |
| 65–100 | Dual flatness; Pythagorean theorem for KL |
| 100–120 | Crooks: length as Fisher–Rao length; \(\langle W_{\mathrm{ex}}\rangle \ge \mathcal{L}^2/\tau\); release Worksheet 3 |
}

\subsection{Quiz 2}

\notes{Ten MCQs on MaxEnt, the exponential family, and Landauer. New examples. Feedback within seven days.}

\subsection{The Fisher Metric}

\include{_information-game/includes/fisher-information-geometry.md}

\notes{STUB. Manifold of distributions; \(g_{ij} = \mathbb{E}[\partial_i\log p\cdot\partial_j\log p]\). e-flat and m-flat coordinates on exponential families. Pythagorean theorem for KL. This is LO8.}

\subsection{Thermodynamic Length (Crooks)}

\notes{STUB. Crooks (2007): for a slow protocol \(\lambda(t)\) on the equilibrium manifold,
$$
\mathcal{L} = \int_0^\tau \sqrt{\dot\lambda^\top \mathcal{I}(\lambda)\,\dot\lambda}\,dt,
$$
where \(\mathcal{I}\) is the Fisher matrix already on the board. In the linear-response regime \(\langle W_{\mathrm{ex}}\rangle \ge \mathcal{L}^2/\tau\). That inequality is the no-go. The metric that defines the length is the prescription for how to measure a change of state. Define today. Do not ask what this has to do with intelligence — that is lecture 8.}

\slidesincremental{
* No-go: \(\langle W_{\mathrm{ex}}\rangle \ge \mathcal{L}^2/\tau\)
* Prescription: length is measured with the Fisher metric
* Intelligence question: week 8
}

\subsection{Define This Week}

\slidesincremental{
* What is thermodynamic length?
* Fisher metric as a Riemannian metric
}

\notes{Interpret later: optimal trajectories and intelligence (week 8); natural gradient as descent in the same metric (week 6).}

\subsection{This Week's Pair}

\notes{No-go: dissipation at least \(\mathcal{L}^2/\tau\). Prescription: the Fisher metric as the ruler.}

\include{_information/includes/entropy-nogo-pair.md}

\subsection{After This Lecture}

\notes{Worksheet 3: Fisher matrix for a Gaussian; vanilla versus natural gradient; Crooks length of the straight-line path from \((0,1)\) to \((2,4)\). Due 17 November. Quiz 3 is 24 November.}

\slidesincremental{
* Worksheet 3 released; due 17 November
* LLM exercise: thermodynamic length, two sides
}

\reading

\thanks

\references
