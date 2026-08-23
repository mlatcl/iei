---
title: "Maximum Entropy and the Exponential Family"
week: 4
layout: lecture
date: 2026-11-03
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  Jaynes' maximum entropy principle, the exponential family as the MaxEnt
  family, and the first synthesis of the three operational readings of
  entropy. This is the intended answer to “how is entropy understood today?”,
  to be revised again after von Neumann entropy in week 7.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO5, LO6, LO7]
duration_hours: 2
type: lecture
in_class_test: null
worksheet_due: W2
reading:
  - title: "Information Theory and Statistical Mechanics"
    author: "Jaynes"
    chapter: "whole paper"
    estimated_hours: 1
  - title: "Probability Theory: The Logic of Science"
    author: "Jaynes"
    chapter: "Chapters 11–12"
    estimated_hours: 2
  - title: "Information Theory, Inference, and Learning Algorithms"
    author: "MacKay"
    chapter: "Chapter 22"
    estimated_hours: 1
  - title: "Elements of Information Theory"
    author: "Cover and Thomas"
    chapter: "Chapter 12"
    estimated_hours: 1
  - title: "Generative AI and Stochastic Thermodynamics"
    author: "Welling, Lu and Holdijk"
    chapter: "§1.5.5; Chapter 5"
    estimated_hours: 1
    required: false
---

\notes{Worksheet 2 is due at the start of this session. No class test. Quiz 2 is 10 November (MaxEnt, exponential family, Landauer).}

\subsection{This Session}

\slidesincremental{
* MaxEnt with Lagrange multipliers
* Exponential family as the MaxEnt family
* Three perspectives: the intended comparison
}

\notes{
**Time plan (120 minutes)**

| Minutes | Block |
|--------:|-------|
| 0–10 | Collect Worksheet 2; preview Quiz 2 |
| 10–55 | Jaynes; Lagrange multipliers; die and Gaussian |
| 55–65 | Break |
| 65–100 | Exponential family; canonical, Gaussian, Bernoulli |
| 100–120 | LO7 synthesis; “how is entropy understood today?” |
}

\subsection{Maximum Entropy}

\include{_physics/includes/lagrange-multipliers-review.md}

\include{_physics/includes/jaynes-maximum-entropy.md}

\include{_physics/includes/dieroll.md}

\notes{STUB. Recover the canonical ensemble from a mean-energy constraint. Recover the Gaussian from mean and variance. The die is the running example: mean 4.5, not 3.5. The Lagrange multiplier on mean energy is the coldness $\beta$ from week 1: entropy first, energy the constraint. MaxEnt is the week's pair in one move: entropy as a prohibition on extra structure (do not assume more than you know), probability as the recipe (this is the $p$ you should adopt). This is LO5.}

\addreading{@MacKay-information03}{Chapter 22}
\addreading{@Cover:elements91}{Chapter 12}

\subsection{The Exponential Family}

\include{_physics/includes/exponential-families.md}

\include{_physics/includes/maximum-entropy-formalism.md}

\notes{STUB. $p(x\mid\theta) = \exp(\theta\cdot T(x) - A(\theta))$. Why canonical, Gaussian, and Bernoulli all belong. Flag the matrix exponential family for week 7. This is LO6.}

\subsection{Three Perspectives}

\notes{STUB. Shannon: channel capacity and compression. Boltzmann/Gibbs: macrostate counting at equilibrium. Jaynes/Bayes: least-committal inference under constraint. Same $H$; the difference is what the probability is over and who is inferring. All three agree that $H$ forbids and $p$ prescribes. This is LO7, and the intended answer to “how is entropy understood today?” until week 7 revises it.}

\slidesincremental{
* Shannon: a code
* Boltzmann: a macrostate
* Jaynes: a state of knowledge
* All three: $H$ forbids, $p$ prescribes
}

\include{_information/includes/welling-maxent-elbo.md}

\subsection{Define This Week}

\slidesincremental{
* What is the maximum entropy principle?
* What is the exponential family?
* How is entropy understood today?
* Information and entropy? (three framings)
}

\subsection{This Week's Pair}

\notes{No-go: do not assume more than the constraints. Prescription: the exponential family.}

\include{_information/includes/entropy-nogo-pair.md}

\subsection{After This Lecture}

\notes{Quiz 2 at the start of lecture 5 (10 November): MaxEnt, exponential family, Landauer, on a four-sided spinner and a Bernoulli — not the Worksheet 2 examples.}

\slidesincremental{
* Quiz 2: 10 November, first ten minutes
* LLM: is MaxEnt a prohibition or a recipe?
}

\reading

\thanks

\references
