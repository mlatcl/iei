---
title: "Boltzmann, Free Energy, and Entropy"
week: 2
layout: lecture
date: 2026-10-20
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  Derive the Boltzmann distribution and the free-energy decomposition
  $F = U - TS$. Name the thermodynamic bath, Schottky's anomaly, and
  finite-time dissipation. Worksheet 1 is due; Quiz 1 opens the session.
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
  covers: [probability foundations, entropy review, Week 1 seeds, LO1]
worksheet_due: W1
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

\notes{Worksheet 1 is due at the start of this session. Quiz 1 occupies the first ten minutes: probability, elementary entropy, and Week 1 seeds. Then 110 minutes on Boltzmann, free energy, bath, Schottky, and finite time.}

\subsection{This Session}

\slidesincremental{
* Quiz 1 (ten minutes)
* Boltzmann derivation; free energy $F=U-TS$
* Bath, Schottky, finite-time dissipation named
}

\notes{
**Time plan (120 minutes)**

| Minutes | Block |
|--------:|-------|
| 0–10 | Quiz 1 (Moodle; probability / entropy foundations / Week 1 seeds) |
| 10–20 | Collect Worksheet 1; recap seed $p_i \propto e^{-\beta E_i}$ |
| 20–55 | Boltzmann derivation; coldness; occupations |
| 55–65 | Break |
| 65–95 | Free-energy decomposition $F=U-TS$ |
| 95–120 | Bath; Schottky; finite-time naming |
}

\subsection{Quiz 1}

\notes{Invigilated Moodle, own device, no notes, no network, no LLMs. Ten questions on last week's probability and entropy review and the Boltzmann / entropy seeds pressed in Worksheet 1.}

\slidesincremental{
* Device required; Moodle open
* No notes, no network, no LLMs
* Ten minutes
}



\subsection{From the Seed to the Derivation}

\notes{Last week stated $p_i = e^{-\beta E_i}/Z$. Today derive it and account for free energy. Motivations (perpetual motion, bandwidth) remain the frame.}

\include{_information/includes/perpetual-motion-superintelligence-analogy.md}

<!-- SNIPPET: _physics/includes/clausius-carnot-second-law.md -->

\subsection{Carnot and Clausius}

\notes{The course follows a historical thread as well as a mathematical one. Sadi Carnot (1796–1832) asked, in 1824, what limits the efficiency of a heat engine. Rudolf Clausius (1822–1888) built on Carnot and Kelvin to state the second law of thermodynamics in several equivalent forms, and in 1865 he coined the name *entropy* for the state function that tracks irreversibility. Boltzmann and Gibbs, later in the same century, gave the microscopic count behind Clausius's macroscopic $S$. Shannon and Jaynes, in the twentieth century, reuse the same functional form with different operational readings. Keep that chain in view: engines first, then entropy as a named quantity, then statistics, then information.}

\newslides{Before Boltzmann: Heat Engines}

\slidesincremental{
* Carnot (1824): no real engine beats a reversible cycle between two baths
* Clausius (1850s): heat cannot flow from cold to hot without work
* Clausius (1865): names *entropy* — the state's transformation content
}

\speakernotes{Carnot is the efficiency question; Clausius is the second law and the word entropy. Perpetual motion fails because it tries to evade that toll.}

\newslides{Clausius and the No-Go}

\slides{Clausius: the entropy of the universe tends to a maximum.}

\slidesincremental{
* No-go: you cannot run a cyclic engine that converts heat entirely into work
* Same no-go as perpetual motion — Clausius makes the prohibition explicit
* Prescription comes later: Boltzmann weights, then Shannon/Jaynes (this term)
}

\notes{Clausius did not give the Boltzmann distribution. He gave the macroscopic balance that any prescription must respect. When we derive $p_i \propto e^{-\beta E_i}/Z$ shortly, read it as the statistical answer to a constraint Clausius already framed: fixed mean energy, maximum entropy, no perpetual motion.}

\slidesincremental{
* Macroscopic: Carnot $\to$ Clausius (second law, entropy named)
* Microscopic: Maxwell, Boltzmann, Gibbs (same $S$, counted states)
* Information: Shannon, Jaynes (same $H$, different job)
}

<!-- /SNIPPET: _physics/includes/clausius-carnot-second-law.md -->

<!-- SNIPPET: _physics/includes/boltzmann-derivation.md -->

\newslides{The Boltzmann Prescription}

\slides{For a prescribed mean energy $U$. Among all distributions with the right $U$, pick the one with largest entropy.}

\slidesincremental{
* Constraints: $\sum_i p_i = 1$ and $\sum_i p_i E_i = U$
* MaxEnt: $p_i \propto e^{-\beta E_i}$ with coldness $\beta = 1/kT$
* Normalise: $Z(\beta)=\sum_i e^{-\beta E_i}$, so $p_i = e^{-\beta E_i}/Z$
}

\speakernotes{Derive on the board. Lagrange multipliers → Boltzmann. Coldness $\beta$ next; $T$ is the bath reading. Derive on the board. Two-state occupations for intuition; three-state free-energy plot below.}

\notes{Maximum entropy subject to normalisation and fixed mean energy gives $p_i = e^{-\beta E_i}/Z$.}

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
import mlai}

\plotcode{energies = np.array([0.0, 1.0])
beta = np.linspace(0.1, 3.0, 200)
Z = np.sum(np.exp(-beta[:, None] * energies), axis=1)
p0 = np.exp(-beta * energies[0]) / Z
p1 = np.exp(-beta * energies[1]) / Z
fig, ax = plt.subplots(figsize=(7, 4))
ax.plot(beta, p0, linewidth=2, label='$p_0$ (ground)')
ax.plot(beta, p1, linewidth=2, label='$p_1$ (excited)')
ax.set_xlabel(r'coldness $\beta$')
ax.set_ylabel('occupation')
ax.legend()
ax.set_title('Two-state Boltzmann occupations')
mlai.write_figure('two-state-boltzmann.svg', directory='\writeDiagramsDir/ml')}

\figure{\includediagram{\diagramsDir/ml/two-state-boltzmann}{75%}}{Occupation of a two-state system as coldness increases. At low $\beta$ both states are populated; at high $\beta$ the ground state dominates.}{two-state-boltzmann}


\setupcode{import numpy as np}

\code{def boltzmann(energies, beta):
    """Boltzmann probabilities $p_i \\propto e^{-\\beta E_i}$."""
    log_w = -beta * np.asarray(energies, dtype=float)
    log_w -= log_w.max()
    w = np.exp(log_w)
    return w / w.sum()

# Live check: boltzmann([0, 1], 1.0) -> (0.731, 0.269)}

\speakernotes{Run the notebook cell live.}

<!-- /SNIPPET: _physics/includes/boltzmann-derivation.md -->

\include{_physics/includes/coldness-and-temperature.md}

\subsection{Free Energy Decomposition}

<!-- SNIPPET: _physics/includes/free-energy-decomposition.md -->

\newslides{Free Energy Accounting}

\slides{Once $p_i = e^{-\beta E_i}/Z$ is fixed, thermodynamics is bookkeeping.}

\slidesincremental{
* Mean energy: $U = \langle E\rangle = \sum_i p_i E_i$
* Entropy: $S = -k\sum_i p_i \log p_i$
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

\figure{\includediagram{\diagramsDir/ml/three-state-thermo}{75%}}{$U$, $S$, and $F$ for the Worksheet 1 three-state system. Verify $F=-\ln Z/\beta$ numerically.}{three-state-thermo}

\slides{
\includediagram{\diagramsDir/ml/three-state-thermo}{75%}
}

<!-- /SNIPPET: _physics/includes/free-energy-decomposition.md -->

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

<!-- SNIPPET: _physics/includes/thermodynamic-bath-schottky.md -->

\newslides{The Bath and Schottky's Anomaly}

\slides{A thermodynamic bath is the large system that justifies the canonical ensemble: it fixes $T$ and exchanges energy with a small system.}

\slidesincremental{
* Two-state system: $E\in\{0,\varepsilon\}$
* Heat capacity: $C = \partial U/\partial T$ peaks at intermediate $T$
* Schottky's anomaly: both states populated; maximal thermal response
}

\speakernotes{Name the Schottky peak. Entropic reading waits for week 8.}

\notes{A thermodynamic bath fixes $T$ and exchanges energy with a small system, justifying the canonical ensemble. Heat capacity $C=\partial U/\partial T$ peaks when both states are equally populated — Schottky's anomaly.}

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
import mlai}

\plotcode{epsilon = 1.0
beta = np.linspace(0.05, 5.0, 400)
p1 = 1.0 / (1.0 + np.exp(beta * epsilon))
U = p1 * epsilon
C = (epsilon ** 2) * p1 * (1 - p1) * beta ** 2
T = 1.0 / beta
fig, axes = plt.subplots(1, 2, figsize=(10, 4))
axes[0].plot(T, U, 'C0', linewidth=2)
axes[0].set_xlabel('$T$ ($k=1$)')
axes[0].set_ylabel('$U$')
axes[0].set_title('Mean energy')
axes[1].plot(T, C, 'C1', linewidth=2)
axes[1].set_xlabel('$T$')
axes[1].set_ylabel('$C$')
axes[1].set_title('Schottky heat-capacity peak')
plt.tight_layout()
mlai.write_figure('schottky-two-state.svg', directory='\writeDiagramsDir/ml')}

\figure{\includediagram{\diagramsDir/ml/schottky-two-state}{85%}}{Mean energy and heat capacity of a two-state system. The Schottky peak appears when $p_0\approx p_1\approx\frac12$.}{schottky-two-state}

\slides{
\includediagram{\diagramsDir/ml/schottky-two-state}{85%}
}

<!-- /SNIPPET: _physics/includes/thermodynamic-bath-schottky.md -->

\slidesincremental{
* Bath: why the canonical ensemble exists
* Two-state system: Schottky peak in heat capacity
* Entropic reading of Schottky: not today
}

\subsection{Finite Time Costs More Than $\Delta F$}

<!-- SNIPPET: _physics/includes/finite-time-dissipation-intro.md -->

\newslides{Quasi-Static versus Finite Time}

\slides{Equilibrium thermodynamics gives a prescription for *reversible* work. Real protocols take time.}

\speakernotes{Do not define thermodynamic length today. Name quasi-static $W=\Delta F$ versus finite-time excess. Crooks in weeks 6–7; intelligence in week 8.}

\notes{Quasi-static processes achieve reversible work $W=\Delta F$. Finite-time driving dissipates additional energy beyond the equilibrium bound.}

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
import mlai}

\plotcode{def two_state_F(beta, eps=1.0):
    Z = 1.0 + np.exp(-beta * eps)
    return -np.log(Z) / beta

beta0, beta1 = 0.5, 2.0
path = np.linspace(beta0, beta1, 80)
F_path = two_state_F(path)
fig, ax = plt.subplots(figsize=(7, 4))
ax.plot(path, F_path, 'k-', linewidth=2, label='$F(\\beta)$')
ax.annotate('', xy=(beta1, two_state_F(beta1)), xytext=(beta0, two_state_F(beta0)),
            arrowprops=dict(arrowstyle='->', color='green', lw=2))
ax.text(1.0, -0.55, 'quasi-static: $W=\\Delta F$', color='green')
ax.annotate('', xy=(beta1, two_state_F(beta1) + 0.15), xytext=(beta0, two_state_F(beta0) + 0.15),
            arrowprops=dict(arrowstyle='->', color='red', lw=2))
ax.text(1.0, -0.35, 'finite time: $W > \\Delta F$', color='red')
ax.set_xlabel(r'$\beta$')
ax.set_ylabel('$F$')
ax.legend()
mlai.write_figure('finite-time-sketch.svg', directory='\writeDiagramsDir/ml')}

\figure{\includediagram{\diagramsDir/ml/finite-time-sketch}{70%}}{Cartoon of quasi-static versus finite-time driving between two equilibrium states.}{finite-time-sketch}


<!-- /SNIPPET: _physics/includes/finite-time-dissipation-intro.md -->

\slidesincremental{
* Quasi-static: $W = \Delta F$
* Finite time: extra dissipation
* Length comes in week 6
}

\subsection{Define This Week}

\slidesincremental{
* How was entropy discovered?
* Energy and entropy?
* What is a thermodynamic bath?
* What is Schottky's anomaly?
}

\notes{Interpret later: how entropy is understood today; equilibrium versus non-equilibrium; the purely entropic Schottky reading. Define-stage answer to "How was entropy discovered?": Carnot on engines; Clausius names entropy and states the second law (1865); Boltzmann and Gibbs give the statistical count; Shannon and Jaynes reuse $H$ with different operational readings.}


\subsection{After This Lecture}

\notes{Next week: Shannon entropy and the partition function as a generating function. Optional LLM probe: is free energy a constraint or a recipe?}

\slidesincremental{
* Next: Shannon $H$ and $Z$ as generating function
* LLM probe: is free energy a bound or a recipe?
}

\reading

\thanks

\references
