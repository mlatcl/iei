---
title: "Boltzmann, Free Energy, and Entropy"
week: 2
layout: lecture
date: 2026-10-20
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  Worksheet 1 is due and the session starts with Quiz 1 (probability and Week 1
  energy seeds). We reopen Laplace's ``molecule of air'' as an anachronism,
  state Bernoulli's kinetic assumptions, and introduce the statistical ensemble
  as coarse-graining. Then *Hydrodynamica* and the entropy bridge, embodiment
  as bandwidth, and the information game / MacKay / die coarse-graining (with
  the grouping identity). We return to the Gibbs--Boltzmann distribution and
  free energy $F = U - TS$, and complete the Week 1 energy story: loss as
  potential, kinetic energy, and Hamiltonian Monte Carlo. Bath, Schottky, and
  finite-time dissipation wait for Week 3.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO1]
duration_hours: 2
type: lecture
in_class_test:
  id: Q1
  duration_minutes: 10
  timing: start
  covers: [probability foundations, Week 1 energy seeds, LO1]
worksheet_due: W1
worksheet_released: W2
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

\notes{Worksheet 1 is due at the start of this session. Quiz 1 occupies the first ten minutes: probability foundations and Week 1 energy / Boltzmann seeds. After the quiz we reopen Laplace's ``molecule of air'' as an anachronism, move through Bernoulli's kinetic assumptions and the ensemble as coarse-graining, then *Hydrodynamica* and the entropy bridge, embodiment as bandwidth, and only then the information game / MacKay / die coarse-graining. Gibbs--Boltzmann, free energy, and HMC close the session. Bath, Schottky, and finite time are Week 3. Do not derive the occupation from MaxEnt today --- that is week 5.}

\subsection{This Session}

\slidesincremental{
* Quiz 1 (ten minutes)
* Laplace's molecule → Bernoulli assumptions → ensemble as coarse-graining
* Hydrodynamica / entropy bridge → embodiment (Atomic Human)
* Info game / MacKay / die coarse-graining and grouping
* Gibbs--Boltzmann form; free energy $F=U-TS$
}

\notes{
**Time plan (120 minutes)**

| Minutes | Block |
|--------:|-------|
| 0–10 | Quiz 1 (Moodle; probability / Week 1 energy seeds) |
| 10–15 | Collect Worksheet 1; release Worksheet 2; recap seed $p_i \propto e^{-\beta E_i}$ |
| 15–30 | Laplace molecule anachronism; Bernoulli assumptions; ensemble / coarse-graining |
| 30–50 | Hydrodynamica / billiards / M--B--G; entropy bridge (no-go vs prescription) |
| 50–60 | Embodiment / bits as bandwidth (Atomic Human) |
| 60–70 | Break |
| 70–85 | Info game; MacKay weighing; die coarse-graining; grouping composition |
| 85–100 | Gibbs--Boltzmann form; free-energy decomposition $F=U-TS$ |
| 100–120 | Loss as potential $V$; kinetic $K$; Hamiltonian / HMC (Neal demos) |

}

\subsection{Quiz 1}

\notes{Invigilated Moodle, own device, no notes, no network, no LLMs. Ten questions on last week's probability review and the energy / Boltzmann seeds pressed in Worksheet 1. Hydrodynamica and the entropy bridge follow the quiz.}

\slidesincremental{
* Device required; Moodle open
* No notes, no network, no LLMs
* Ten minutes
}

\classtimer{10:00}

\subsection{From Daniel Bernoulli: Week 1 Carry-Over}

\notes{Week 1 stopped at Daniel Bernoulli's portrait, having already quoted Laplace on the curve of a molecule of air. We open by pressing how anachronistic that sounds once atoms are in dispute in Boltzmann's century, then Bernoulli's assumptions, then the ensemble as the coarse-grained answer to Laplace's gremlin. *Hydrodynamica*, billiards, and the entropy bridge follow inside the same include, before we return to Gibbs--Boltzmann accounting.}

\include{_physics/includes/entropy-intro.md}

\include{_information/includes/entropy-review.md}

\speakernotes{Axiomatic derivation of $H$ and $S=kH$ are week 3 / LO2. The die makes the chain rule concrete today; Worksheet 1 probes can already use joint / conditional / chain-rule vocabulary.}

\include{_information/includes/entropy-nogo-probability-prescription.md}

\speakernotes{Lace Atomic Human / embodiment with the pedagogy: we are trying to get information into students through a narrow channel. Carnot--Clausius history continues below with free energy.}

\include{_books/includes/the-atomic-human.md}

\include{_ai/includes/embodiment-factors-celsius.md}

\notes{Shannon measured information in bits: one bit is the result of a fair coin toss. He estimated $\sim 12$ bits per English word on average [@Shannon-info48], which with typical speaking rates gives $\sim 10$--$60$ bits per second for human communication [@Reed-information98,@Lawrence-embodiment17,@Lawrence-atomic24]. Machines communicate orders of magnitude faster — the embodiment factor is the ratio between compute and that narrow channel.}

\notes{Shannon measured information in bits. Human communication is slow relative to machines — the embodiment factor. Lecture 3 derives $H$; today we need the bit as a unit of uncertainty and of bandwidth before we return to free energy.}

\newslide{Shannon Still Ahead}

\slides{We are already counting in Shannon's bits — embodiment is a communication bottleneck, not yet a theorem.}

\slidesincremental{
* Lecture 3: why *bits*, and $H=-\sum_i p_i\log p_i$ from axioms
* Same functional form as Boltzmann $S$; different operational reading
* The intelligence question sharpens in lecture 4 (Landauer, Bauby)
}

\include{_information/includes/information-game-guessing.md}

\include{_information/includes/mackay-weighing-problem.md}

\include{_information/includes/die-coarse-graining.md}

\include{_information/includes/entropy-grouping-composition.md}

\include{_information/includes/coarse-graining-intelligence.md}

\include{_information/includes/grouping-static-vs-ensemble.md}


\speakernotes{Forward pointer only — do not derive $H$ today.}

\subsection{ML to Thermodynamics}

\notes{Last week we how energy has been used in machine learning and how entropy is applied to probability distributions. By looking at a stationary distribution with a given energy we could write down the *Gibbs distribution*,
$$
p_i = \frac{e^{-\beta E_i}}{Z} \quad Z = \sum_i e^{-\beta E_i}.
$$
Boltzmann came at energy and entropy from the perspective of thermodynamics, Clausius and Carnot, but today we will show the relationship between this stationary (and equilibrium) distribution and the macroscopic formulae of Mayer, Kelvin, Joule, Helmholtz, Clausius and Carnot. Today we're going deeper into Boltzman's (and Maxwell, Gibbs and Einstein) microscopic or *ensemble* interpretation of this equation, and a derivation that that underpins the famous equation
$$
U = W + TS
$$
where $U=\expSamp{E}$ is total energy (or inner energy), $F$ is the free engergy, $T$ is temperature and $S$ is physical entropy. Here what we mean by physical entropy, is the translation of dimensionless energy, $H$, into physical units of Joules per degree through Boltzmann's constant, $k_B$, i.e. $k_B H = -k_B \sum_i p_i \log p_i$.}


\include{_iei/includes/iei-notebook-setup.md}

\include{_physics/includes/clausius-carnot-second-law.md}
\include{_physics/includes/gibbs-distribution.md}
\include{_physics/includes/coldness-and-temperature.md}

\subsection{Free Energy Decomposition}

<!-- SNIPPET: _physics/includes/free-energy-decomposition.md -->

\newslides{Free Energy Accounting}

\slides{Once $p_i = e^{-\beta E_i}/Z$ is fixed, thermodynamics is bookkeeping.}

\slidesincremental{
* Mean energy: $U = \langle E\rangle = \sum_i p_i E_i$
* Entropy: $S = -k_B\sum_i p_i \log p_i$
* Helmholtz free energy: $F = U - TS = -kT\log Z$
}

\speakernotes{LO1. Read $F=U-TS$ as available energy. Name the subtraction; Legendre transform waits for week 5.}

\notes{Helmholtz free energy $F=U-TS=-kT\log Z$ accounts for what remains after the entropy takes its cut: $U$ is total energy, $TS$ is unavailable, $F$ is what the bath still allows you to do.}

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
import mlai}

\plotcode{energies = np.array([0.0, 1.0, 3.0])
beta = np.linspace(0.05, 2.5, 200)
Z = np.sum(np.exp(-beta[:, None] * energies), axis=1)
p = np.exp(-beta[:, None] * energies) / Z[:, None]
U = (p * energies).sum(axis=1)
S = -np.sum(p * np.log(p + 1e-300), axis=1)
F = U - S / beta
F_check = -np.log(Z) / beta
fig, ax = plt.subplots(figsize=(7, 4))
ax.plot(beta, U, label='$U(\\beta)$')
ax.plot(beta, S, label='$S(\\beta)$ (nats)')
ax.plot(beta, F, label='$F(\\beta)$')
ax.plot(beta, F_check, 'k--', alpha=0.5, label='$-\\ln Z/\\beta$')
ax.set_xlabel(r'$\beta$')
ax.legend()
ax.set_title('Three-state system: energies $E\in\{0,1,3\}$')
mlai.write_figure('three-state-thermo.svg', directory='\writeDiagramsDir/ml')}

\figure{\includediagram{\diagramsDir/ml/three-state-thermo}{75%}}{$U$, $S$, and $F$ for the Worksheet 1 three-state system. Verify $F=-\log Z/\beta$ numerically.}{three-state-thermo}


<!-- /SNIPPET: _physics/includes/free-energy-decomposition.md -->

\slidesincremental{
* Prescription: $p_i = e^{-\beta E_i}/Z$
* Accounting: $F = U - TS$
}

\include{_ml/includes/from-loss-to-hamiltonian.md}

\notes{Week 1 left the ML energies as *scores* and the Boltzmann seed as a static occupation. Today those scores are potentials $V$: descent is motion on $V$; practice is stochastic; kinetic energy completes the Hamiltonian; HMC (Neal) is the sampler that uses both. The live demos use ``mlai.HamiltonianMonteCarlo``: leapfrog paths on a quadratic potential, then logistic regression with an SGD point estimate versus an HMC posterior cloud.}

\include{_books/includes/welling-lu-holdijk.md}
\include{_information/includes/welling-boltzmann-free-energy.md}

\addreading{@Callen-thermostatistics85}{Chapters 1--4}
\addreading{@Callen-thermostatistics85}{Chapters 5--6}

\subsection{Define This Week}

\slidesincremental{
* How was entropy discovered? (Hydrodynamica → Maxwell / Boltzmann / Gibbs)
* $H=-\sum_i p_i\log p_i$; no-go versus prescription
* What are the information constraints on a human? (bandwidth, first cut)
* Die coarse-graining / grouping: $H=H(w)+\sum_i w_i H(p_i)$
* What is the Gibbs--Boltzmann distribution?
* Energy and entropy? Free energy $F=U-TS$
* Loss as potential $V$; Hamiltonian $H=K+V$; HMC via ``mlai`` (Neal)
}

\notes{Interpret later: how entropy is understood today; equilibrium versus non-equilibrium; bath and Schottky (Week 3); the purely entropic Schottky reading (Week 8). Define-stage answer to "How was entropy discovered?": Carnot on engines; Clausius names entropy and states the second law (1865); Boltzmann and Gibbs give the statistical count; Shannon and Jaynes reuse $H$ with different operational readings.}


\subsection{After This Lecture}

\notes{Next week: Shannon entropy, $Z$ as a generating function, then bath / Schottky / finite-time naming. Optional LLM probe: is free energy a constraint or a recipe?}

\slidesincremental{
* Next: Shannon $H$; $Z$; bath and Schottky
* LLM probe: is free energy a bound or a recipe?
}

\reading

\thanks

\references
