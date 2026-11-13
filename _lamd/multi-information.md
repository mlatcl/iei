---
title: "Multi-Information, DPI, and the Information Bottleneck"
week: 7
layout: lecture
date: 2026-11-24
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  Deepen the Week 6 information-theoretic spine: Watanabe's
  multi-information and the conservation law I+H=C; prove the
  data-processing inequality (Cover–Thomas 2.8.1) stated last week;
  develop the information bottleneck as the prescription paired with
  DPI and as a gloss after the Good Regulator Theorem (not the theorem
  itself). Optional vocabulary: Fisher information ≠ Shannon H. Von
  Neumann / classical limit I=C waits for Week 8 if the clock is tight.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO8, LO9, LO10]
duration_hours: 2
type: lecture
in_class_test: null
reading:
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
---

\notes{No class test today. Quiz 3 was last week (start of lecture 6). Worksheet 3 was due last week; Worksheet 4 is already out (due 1 December, before Quiz 4). Last week earned Shannon capacity, stated DPI, and gave a full Good Regulator overview. Today: multi-information / $I+H=C$, prove DPI, information bottleneck as prescription and as GRT gloss.}

\subsection{This Session}

\slidesincremental{
* Same marginals, different joints; then $I+H=C$
* Prove the data-processing inequality
* Information bottleneck: prescription paired with DPI; gloss on GRT
* Optional: Fisher $I(\theta)$ $\neq$ Shannon $H$ (name only)
}

\notes{
**Time plan.** The slot is 10:05--11:55 (110 minutes, not 120). Protect the DPI proof and the IB block. Do not rebuild Fisher geometry, natural gradient, or geodesics.

| Clock | Block |
|------:|-------|
| 10:05--10:50 | Same marginals, different joints; multi-information; $I+H=C$ |
| 10:50--11:00 | Break |
| 11:00--11:25 | Data-processing inequality (proof) |
| 11:25--11:45 | Information bottleneck; GRT gloss callback |
| 11:45--11:55 | Optional Fisher-vs-Shannon name; preview Week 8 |
}

\include{_iei/includes/iei-notebook-setup.md}

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

\speakernotes{LO10. Point back to velocity demos: same marginals, different joints. Worksheet 4 Part A. Inaccessible-game introduction is light colour only --- not a full axiomatic framework.}

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

\classtimertitled{10:50}{Break}

\subsection{Data-Processing Inequality}

\classtimertitled{11:00}{DPI proof}

\notes{Week 6 stated the data-processing inequality as a moral after Shannon capacity. Today $I$ is first-class via multi-information, so we prove Cover and Thomas Theorem 2.8.1.}

\include{_information/includes/data-processing-inequality.md}

\include{_information/includes/relative-entropy-decay-grouping.md}

\subsection{Information Bottleneck}

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
ax.plot(ix_t, it_y_bound, linewidth=2, label=r'DPI: $I(T;Y)\leq\min(I(X;T),I(X;Y))$')
ax.axhline(Ixy, linestyle='--', linewidth=1)
ax.set_xlabel(r'$I(X;T)$ (bits)')
ax.set_ylabel(r'$I(T;Y)$ (bits)')
ax.set_title('Feasible region for a representation $T$')
ax.legend(loc='upper left')
mlai.write_figure('information-bottleneck-region.svg', directory='\writeDiagramsDir/ml')}

\figure{\includediagram{\diagramsDir/ml/information-bottleneck-region}{75%}}{DPI supplies the feasible region. The information bottleneck traces the upper boundary: keep $I(T;Y)$, spend as little $I(X;T)$ as possible.}{information-bottleneck-region}

\slides{
\includediagram{\diagramsDir/ml/information-bottleneck-region}{75%}
}

<!-- /SNIPPET: _information/includes/information-bottleneck-curve.md -->

\newslides{IB as Gloss on the Good Regulator}

\slides{Last week earned $H(A\mid S)=0$. IB is a reading after that theorem.}

\slidesincremental{
* $\min I(S;A)$ subject to $H(Z)\le\epsilon$ --- course gloss
* Not Conant and Ashby's equation
* DPI still forbids manufacturing missing $I$ on $D\to X\to T\to A$
}

\speakernotes{Callback to Week 6 GRT. Do not re-prove. IB spends $I$ on action-relevant distinctions; GRT supplies existence of a deterministic organiser.}

\notes{Week 6 already earned the Good Regulator existence claim and named the IB-shaped gloss. Today IB is a first-class LO10 theorem (relevant compression under an $I$ budget). Keep the fence: the gloss is not the theorem.}

\subsection{Optional: Fisher versus Shannon; MaxEnt as Projection (named)}

\newslides{Vocabulary Only: Two ``Informations''}

\slides{Same English word; different operational readings.}

\slidesincremental{
* Shannon $H$: uncertainty in an outcome
* Fisher $I(\theta)$: sensitivity of $\log p$ to a parameter
* MaxEnt as $m$-projection: geometric reading of Week 5 (named, not computed)
* No Riemannian deep dive; no natural-gradient paths; no thermodynamic length
}

\speakernotes{Ten minutes maximum if ahead. LO8 / LO9 stay thin by design after the GRT replan. Do not open dual flatness, Crooks, or geodesic worksheets.}

\notes{Optional vocabulary so students are not blindsided by the word ``information'' in estimation contexts. MaxEnt-as-$m$-projection is the geometric name for the Week 5 constrained problem; natural gradient and Crooks geodesics remain in `maxent-projection.md.deferred` / `fisher-metric.md.deferred`.}

\subsection{The Inaccessible Game}

\include{_information-game/includes/inaccessible-game-introduction.md}

\notes{Optional depth, not required today: the two-bin Jaynes-world tour in the information-engines seminar notes.}

\addreading{Information Engines seminar notes}{https://inverseprobability.com/talks/notes/information-engines.html — Jaynes' world and unified intelligence perspective}

\subsection{Define This Week}

\slidesincremental{
* Multi-information versus mutual information?
* Prove the data-processing inequality
* What is the information bottleneck?
* How does IB gloss the Good Regulator without replacing it?
}

\subsection{After This Lecture}

\notes{No class test today. Quiz 4 is 1 December at the start of lecture 8. Week 8 applies Landauer, DPI, GRT, and human bandwidth to capability claims; von Neumann / $I=C$ if clock allows.}

\slidesincremental{
* Quiz 4: 1 December, first ten minutes
* Week 8: limits on intelligence; GRT as application
}

\reading

\thanks

\references
