---
title: "Multi-Information and von Neumann Entropy"
week: 8
layout: lecture
date: 2026-12-01
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  Watanabe's multi-information and the conservation law $I+H=C$; the
  data-processing inequality and the information bottleneck as the
  no-go/prescription pair on $I$; then the classical limit $I=C$ and
  von Neumann entropy. Material may run long; limits on intelligence
  absorb the overflow.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO10, LO11]
duration_hours: 1
type: lecture
worksheet_due: W4
in_class_test:
  id: Q4
  duration_minutes: 10
  timing: start
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
  - title: "The Information Bottleneck Method"
    author: "Tishby, Pereira and Bialek"
    chapter: "the method (Allerton 1999 / arXiv physics/0004057)"
    estimated_hours: 1
    required: false
  - title: "Elements of Information Theory"
    author: "Cover and Thomas"
    chapter: "Theorem 2.8.1 (data-processing inequality)"
    estimated_hours: 0.5
    required: false
  - title: "Information Theory and Statistical Mechanics"
    author: "Jaynes"
    chapter: "Brandeis lectures (1963)"
    estimated_hours: 1
    required: false
---

\notes{Quiz 4 occupies the first ten minutes. Then multi-information, $I+H=C$, the data-processing inequality, the information bottleneck, and von Neumann entropy. Worksheet 4 is due at the start of this lecture. Limits on intelligence follow and can absorb overflow.}

\subsection{This Session}

\slidesincremental{
* Quiz 4 (ten minutes)
* Same marginals, different joints; then $I+H=C$
* DPI and the information bottleneck
* Why $I=C$ forces von Neumann entropy
}

\notes{
**Time plan (do not cut DPI / IB / von Neumann to fit the hour)**

| Minutes | Block |
|--------:|-------|
| 0–10 | Quiz 4 (Moodle) |
| 10–35 | Same marginals, different joints; multi-information; $I+H=C$ |
| 35–55 | Data-processing inequality (proof) |
| 55–80 | Information bottleneck |
| 80–100 | Classical limit $I=C\Rightarrow H=0$; von Neumann entropy |

If the slot is still listed as one hour, run long: the second half (limits) can start late or pick up unfinished interpret questions. Schottky / Good Regulator remain notes-only until the limits lecture: preview the Shannon split $H(E)\ge H(D)-I(D;R)$ versus $R=h(S)$ here, but leave the slides and the IB reinterpretation for the second half. DPI and IB are taught here (LO10).
}

\subsection{Quiz 4}

\notes{Ten MCQs from the multi-information / limits bank. Auto-graded.}

\subsection{Multi-Information}

\include{_ml/includes/velocity-independent-sample.md}
\include{_ml/includes/velocity-correlated-sample.md}
\include{_ml/includes/velocity-gaussian-contours.md}
\include{_physics/includes/classical-observer-velocities.md}

\speakernotes{Define multi-information from the velocity pictures before stating $I+H=C$. Same marginals, different joints.}

\notes{Independent, correlated, and anti-correlated velocities can share the same one-dimensional Gaussians. The marginal entropies $h_x$ and $h_y$ do not see the tilt. The joint does. Multi-information is that leftover: $I=\sum h_i-H$.}

<!-- SNIPPET: _physics/includes/multi-information-worked.md -->

\newslides{Multi-Information and $I+H=C$}

\slides{Mutual information is the pairwise case. Multi-information (Watanabe) generalises to $n$ variables.}

\slidesincremental{
* $I = \sum_i h_i - H \ge 0$
* With fixed marginal entropies $C = \sum_i h_i$, conservation $I + H = C$
* $I$ = stored correlation; $H$ = free uncertainty
}

\speakernotes{LO10. Point back to velocity demos: same marginals, different joints. Worksheet 4 Part A. Inaccessible-game introduction is light colour only — not a full axiomatic framework.}

\notes{Multi-information $I=\sum_i h_i-H\ge 0$ generalises mutual information. With fixed marginal entropies $C=\sum_i h_i$, conservation $I+H=C$ is a no-go: you cannot have both high stored correlation and high free uncertainty without bound. The mechanics analogy is enough: $I$ like potential (stored correlation), $H$ like kinetic (free uncertainty). A brief inaccessible-game introduction may follow as colour; do not expand it into a separate outcome.}

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
mlai.write_figure('multi-information-rho.svg', directory='\writeDiagramsDir/ml')}

\figure{\includediagram{\diagramsDir/ml/multi-information-rho}{75%}}{Multi-information and joint entropy for uniform-marginal binary pairs; $I+H=C$ with $C=2$.}{multi-information-rho}

\slides{
\includediagram{\diagramsDir/ml/multi-information-rho}{75%}
}

<!-- /SNIPPET: _physics/includes/multi-information-worked.md -->

\include{_information/includes/data-processing-inequality.md}

\include{_information/includes/information-bottleneck.md}

<!-- SNIPPET: _information/includes/information-bottleneck-curve.md -->

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
import mlai}

\plotcode{Ixy = 1.0
ix_t = np.linspace(0.0, 2.0, 300)
it_y_bound = np.minimum(ix_t, Ixy)
fig, ax = plt.subplots(figsize=(7, 4))
ax.fill_between(ix_t, 0.0, it_y_bound, alpha=0.25)
ax.plot(ix_t, it_y_bound, linewidth=2, label=r'DPI: $I(T;Y)\le\min(I(X;T),I(X;Y))$')
ax.axhline(Ixy, linestyle='--', linewidth=1)
ax.set_xlabel(r'$I(X;T)$ (bits)')
ax.set_ylabel(r'$I(T;Y)$ (bits)')
ax.set_title('Feasible region for a representation $T$')
ax.legend(loc='upper left')
mlai.write_figure('information-bottleneck-region.svg', directory='\\writeDiagramsDir/ml')}

\figure{\includediagram{\diagramsDir/ml/information-bottleneck-region}{75%}}{DPI supplies the feasible region. The information bottleneck traces the upper boundary: keep $I(T;Y)$, spend as little $I(X;T)$ as possible.}{information-bottleneck-region}

\slides{
\includediagram{\diagramsDir/ml/information-bottleneck-region}{75%}
}

<!-- /SNIPPET: _information/includes/information-bottleneck-curve.md -->

\subsection{The Inaccessible Game}

\include{_information-game/includes/inaccessible-game-introduction.md}

\notes{Optional depth, not lectured today: the two-bin Jaynes-world tour in the information-engines seminar notes. Students who followed natural gradient in week 6 already have the local geometry that game uses.}

\addreading{Information Engines seminar notes}{https://inverseprobability.com/talks/notes/information-engines.html — Jaynes' world and unified intelligence perspective}

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

\notes{Schottky and the Good Regulator get a first answer today in notes, not on slides. The second half of this session completes both.}

\notes{Schottky connects back to lecture 1's heat-capacity peak and to week 6's Fisher reading: the peak of thermal response is a peak of distinguishability. The purely entropic interpretation waits for the limits block.}

\notes{Do not conflate Ashby's law of requisite variety with the Good Regulator Theorem. Requisite variety asks how much regulatory information is required. In Shannon form, with disturbance $D$, response $R$, and essential variable $E$,
$$
H(E)\ge H(D)-I(D;R).
$$
Useless controller states appear as small $I(D;R)$. The Good Regulator Theorem [@Conant-Ashby70] asks how that information must be structured: among optimal regulators there is a simplest deterministic map $R=h(S)$, a task-specific model of the distinctions in $S$ that matter for the outcome --- not a replica of the world. With DPI and the information bottleneck in hand, the course-compatible reading is already visible: minimise model information $I(S;R)$ subject to sufficiently low outcome entropy. The second half names that reading explicitly and ties it to Landauer.}

\subsection{Define This Week}

\slidesincremental{
* Multi-information versus mutual information?
* What is the data processing inequality?
* What is the information bottleneck?
* What is von Neumann entropy?
* What is the matrix exponential family?
}


\subsection{After This Lecture}

\notes{Worksheet 4 was due at the start of this lecture, before Quiz 4. Limits on intelligence follow in the second hour.}

\slidesincremental{
* Limits on intelligence follow
}

\reading

\thanks

\references
