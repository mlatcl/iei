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
  - title: "Information Theoretical Analysis of Multivariate Correlation"
    author: "Watanabe"
    chapter: "whole paper"
    estimated_hours: 1
    required: false
  - title: "Information Theory and Statistical Mechanics"
    author: "Jaynes"
    chapter: "Brandeis lectures (1963)"
    estimated_hours: 1
    required: false
---

\notes{Quiz 3 occupies the first ten minutes. Then multi-information and the passage to quantum probability. Worksheet 4 is released; due at the start of lecture 8 (1 December). That is a one-week turnaround.}

\subsection{This Session}

\slidesincremental{
* Quiz 3 (ten minutes)
* Same marginals, different joints; then \(I+H=C\)
* Why \(I=C\) forces von Neumann entropy
}

\notes{
**Time plan (120 minutes)**

| Minutes | Block |
|--------:|-------|
| 0–10 | Quiz 3 (Moodle; LO8–LO9) |
| 10–55 | Same marginals, different joints; multi-information; \(I+H=C\) |
| 55–65 | Break |
| 65–100 | Classical limit \(I=C\Rightarrow H=0\); von Neumann entropy; matrix exponential family |
| 100–120 | First attempt at the two “purely entropic” questions; release Worksheet 4 |
}

\subsection{Quiz 3}

\notes{Ten MCQs on the Fisher metric, natural gradient, and dual flatness. New parameterised family. Feedback before lecture 8 if possible; Quiz 4 does not depend on this score.}

\subsection{Multi-Information}

\include{_ml/includes/velocity-independent-sample.md}
\include{_ml/includes/velocity-correlated-sample.md}
\include{_ml/includes/velocity-gaussian-contours.md}
\include{_physics/includes/classical-observer-velocities.md}

\speakernotes{Define multi-information from the velocity pictures before stating $I+H=C$. Same marginals, different joints.}

\notes{Independent, correlated, and anti-correlated velocities can share the same one-dimensional Gaussians. The marginal entropies $h_x$ and $h_y$ do not see the tilt. The joint does. Multi-information is that leftover: $I=\sum h_i-H$.}

\include{_physics/includes/i-plus-h-equals-c.md}

\include{_information-game/includes/submodularity-multi-information.md}

<!-- SNIPPET: _physics/includes/multi-information-worked.md -->

\newslides{Multi-Information and $I+H=C$}

\slides{Mutual information is the pairwise case. Multi-information (Watanabe) generalises to $n$ variables.}

\slidesincremental{
* $I = \sum_i h_i - H \ge 0$
* With fixed marginal entropies $C = \sum_i h_i$, conservation $I + H = C$
* $I$ = stored correlation; $H$ = free uncertainty
}

\speakernotes{LO10. Point back to velocity demos: same marginals, different joints. Worksheet 4 Part A.}

\notes{Multi-information $I=\sum_i h_i-H\ge 0$ generalises mutual information. With fixed marginal entropies $C=\sum_i h_i$, conservation $I+H=C$ is a no-go: you cannot have both high stored correlation and high free uncertainty without bound.}

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
import mlai}

\plotcode{def shannon(p):
    p = np.asarray(p, dtype=float)
    p = p[p > 0]
    return -np.sum(p * np.log2(p))

def correlated_pair(rho):
    return np.array([[0.25*(1+rho), 0.25*(1-rho)],
                     [0.25*(1-rho), 0.25*(1+rho)]])

rhos = np.linspace(-1, 1, 200)
I_vals, H_vals = [], []
for rho in rhos:
    joint = correlated_pair(rho)
    hx = shannon(joint.sum(axis=1))
    hy = shannon(joint.sum(axis=0))
    H = shannon(joint.ravel())
    I_vals.append(hx + hy - H)
    H_vals.append(H)
fig, ax = plt.subplots(figsize=(7, 4))
ax.plot(rhos, I_vals, label='$I(\\rho)$')
ax.plot(rhos, H_vals, label='$H(\\rho)$')
ax.set_xlabel('$\\rho$')
ax.set_ylabel('bits')
ax.legend()
ax.set_title('Worksheet 4 Part A2 family: $I+H=2$')
mlai.write_figure('multi-information-rho.svg', directory='./ml')}

\figure{\includediagram{\diagramsDir/ml/multi-information-rho}{75%}}{Multi-information and joint entropy for uniform-marginal binary pairs; $I+H=C$ with $C=2$.}{multi-information-rho}

\slides{
\includediagram{\diagramsDir/ml/multi-information-rho}{75%}
}

<!-- /SNIPPET: _physics/includes/multi-information-worked.md -->

\subsection{The Inaccessible Game}

\include{_information-game/includes/inaccessible-game-introduction.md}

\subsection{Von Neumann Entropy}

\include{_physics/includes/origin-paradox-shannon-von-neumann.md}

\include{_information/includes/the-matrix-exponential-family.md}

\include{_physics/includes/jaynes-density-matrices.md}

<!-- SNIPPET: _physics/includes/von-neumann-bell-state.md -->

\newslides{Von Neumann Entropy}

\slides{Classically, $I=C$ forces $H=0$ — a delta joint. Quantum mechanics breaks that pattern.}

\slidesincremental{
* $S(\rho) = -\mathrm{Tr}(\rho\log\rho)$
* Bell state: $S(\rho)=0$ but marginals have $S>0$
* Matrix exponential family = quantum MaxEnt
}

\speakernotes{LO11. Run Bell-state cell. Worksheet 4: $S(\rho)=0$ with $S(\rho_A)>0$.}

\notes{Classically, $I=C$ forces $H=0$ — a delta joint. A pure entangled state has von Neumann entropy $S(\rho)=0$ while marginals remain uncertain. The matrix exponential family is the quantum MaxEnt family; Jaynes applied the same Lagrange move to $\rho$ in 1963.}

\setupcode{import numpy as np

def bell_state():
    v = np.array([1.0, 0.0, 0.0, 1.0]) / np.sqrt(2.0)
    return np.outer(v, v.conj())

def von_neumann(rho):
    w = np.linalg.eigvalsh(rho)
    w = w[w > 1e-12]
    return -np.sum(w * np.log2(w))

def partial_trace_A(rho):
    rho = rho.reshape(2, 2, 2, 2)
    return np.trace(rho, axis1=1, axis2=3)}

\code{rho = bell_state()
print('S(rho)=', von_neumann(rho))
print('S(rho_A)=', von_neumann(partial_trace_A(rho)))}

<!-- /SNIPPET: _physics/includes/von-neumann-bell-state.md -->

\subsection{Purely Entropic Readings: First Attempt}

<!-- SNIPPET: _physics/includes/schottky-good-regulator-preview.md -->

\newslides{Purely Entropic Readings (Preview)}

\slides{Two course questions get a first answer today; lecture 8 completes them.}

\slidesincremental{
* Schottky peak: two-state reservoir filling and emptying
* Good Regulator: regulator must hold enough $I$ to model the system
* Worksheet 4 and lecture 8 finish the argument
}

\speakernotes{Schottky preview — link to lecture 1 peak. Good Regulator as $I$/$H$ constraint. Lecture 8 completes both.}

\notes{Schottky connects back to lecture 1's heat-capacity peak. Good Regulator restates Ashby: variety in the regulator must match variety in the system — here as a constraint on $I$ and $H$. Students will not finish these today.}

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
import mlai}

\plotcode{beta = np.linspace(0.05, 5.0, 400)
p1 = 1.0 / (1.0 + np.exp(beta))
H = -(1-p1)*np.log2(1-p1+1e-300) - p1*np.log2(p1+1e-300)
I = np.log2(2) - H  # two-state with C=1 bit marginal each... sketch total C=2 for pair later
fig, ax = plt.subplots(figsize=(7, 4))
ax.plot(1/beta, H, linewidth=2)
ax.set_xlabel('$T$')
ax.set_ylabel('$H$ (bits, single spin)')
ax.set_title('Schottky: entropy capacity of one two-level system')
mlai.write_figure('schottky-entropy-preview.svg', directory='./ml')}

\figure{\includediagram{\diagramsDir/ml/schottky-entropy-preview}{70%}}{Single two-state entropy versus temperature — preview of the entropic Schottky reading.}{schottky-entropy-preview}

\slides{
\includediagram{\diagramsDir/ml/schottky-entropy-preview}{70%}
}

<!-- /SNIPPET: _physics/includes/schottky-good-regulator-preview.md -->

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
