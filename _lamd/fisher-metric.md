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
* KL divergence; Shannon vs differential entropy
* Fisher metric; dually flat geometry
* Thermodynamic length: define, do not interpret
}

\notes{
**Time plan (120 minutes)**

| Minutes | Block |
|--------:|-------|
| 0–10 | Quiz 2 (Moodle; LO4–LO6) |
| 10–30 | KL divergence; Shannon vs differential entropy |
| 30–55 | Statistical manifold; Fisher metric |
| 55–65 | Break |
| 65–85 | Dual flatness; Pythagorean theorem for KL |
| 85–120 | Crooks: length as Fisher–Rao length; \(\langle W_{\mathrm{ex}}\rangle \ge \mathcal{L}^2/\tau\); release Worksheet 3 |
}

\subsection{Quiz 2}

\notes{Ten MCQs on MaxEnt, the exponential family, and Landauer. New examples. Feedback within seven days.}

\subsection{KL Divergence and Two Entropies}

<!-- SNIPPET: _information/includes/kl-divergence-discrete-continuous.md -->

\newslides{Discrete Shannon Entropy Is Bounded}

\slides{Week 2 derived Shannon entropy for discrete $p=(p_1,\ldots,p_n)$.}

\slidesincremental{
* $0 \le H(p) \le \log n$ on $n$ outcomes
* Maximum at uniform; zero on a delta
* Code interpretation: average length cannot beat $H$
}

\newslides{KL Divergence}

\slides{Comparing two distributions needs a functional that is always sensible.}

\slidesincremental{
* $\mathrm{KL}(p\|q) = \sum_i p_i \log(p_i/q_i)$ discrete; $\int p\log(p/q)\,dx$ continuous
* Always $\mathrm{KL}(p\|q) \ge 0$; zero iff $p = q$ (same support)
* Extra surprise when $q$ stands in for $p$ — not a metric, but a directed cost
}

\speakernotes{LO8 setup. Board: $\mathrm{KL}(p\|q)\neq\mathrm{KL}(q\|p)$. Jaynes die week 4 minimised $\mathrm{KL}(p\|r)$ without naming it. Week 6: $m$-projection.}

\notes{KL divergence measures information lost when $q$ is used instead of $p$. It is non-negative in both discrete and continuous settings (with common support). Unlike Shannon entropy, it is defined relative to a reference. MaxEnt and $m$-projections minimise $\mathrm{KL}(\cdot\|r)$; that is why week 4's die optimisation used $\sum_i p_i\log(p_i/r_i)$.}

\newslides{Differential Entropy Is a Different Object}

\slides{Week 4's Gaussian uses $-\int p\log p$ — differential entropy.}

\slidesincremental{
* Same integral symbol; different operational meaning
* Can be **negative**; not bounded below
* Not a code-length bound — compare distributions with **KL**
}

\notes{For $\mathcal{N}(0,\sigma^2)$, differential entropy is $\frac12\log(2\pi e\sigma^2)$ in nats. As $\sigma\to 0$ it diverges negatively. Discrete Shannon entropy stays in $[0,\log n]$. Thermodynamic $S=kH$ in week 1 used the discrete sum form on Boltzmann probabilities. Continuous MaxEnt still works because constraints fix scale; comparing to a reference uses KL, which remains non-negative.}

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
import mlai}

\plotcode{p = np.linspace(0.01, 0.99, 200)
H_bin = -p*np.log2(p) - (1-p)*np.log2(1-p)
sigma = np.linspace(0.15, 3.0, 200)
h_diff = 0.5 * np.log(2 * np.pi * np.e * sigma**2)
fig, axes = plt.subplots(1, 2, figsize=(9, 3.5))
axes[0].plot(p, H_bin, 'k-', linewidth=2)
axes[0].axhline(1.0, color='gray', linestyle='--', alpha=0.6, label='max ($n=2$)')
axes[0].set_xlabel('$p$'); axes[0].set_ylabel('$H$ (bits)')
axes[0].set_title('Discrete: $0 \\le H \\le \\log n$')
axes[0].legend(fontsize=8)
axes[1].plot(sigma, h_diff, 'C1', linewidth=2)
axes[1].axhline(0, color='gray', linestyle='--', alpha=0.6)
axes[1].set_xlabel('$\\sigma$'); axes[1].set_ylabel('$h$ (nats)')
axes[1].set_title('Gaussian differential entropy')
fig.tight_layout()
mlai.write_figure('entropy-bounded-vs-differential.svg', directory='\writeDiagramsDir/ml')}

\figure{\includediagram{\diagramsDir/ml/entropy-bounded-vs-differential}{90%}}{Left: binary Shannon entropy is bounded. Right: Gaussian differential entropy can be negative.}{entropy-bounded-vs-differential}

\slides{
\includediagram{\diagramsDir/ml/entropy-bounded-vs-differential}{90%}
}

<!-- /SNIPPET: _information/includes/kl-divergence-discrete-continuous.md -->

\subsection{The Fisher Metric}

\include{_information-game/includes/fisher-information-geometry.md}

<!-- SNIPPET: _information-game/includes/fisher-metric-worked.md -->

\newslides{The Fisher Metric}

\slides{A statistical manifold: each point is a distribution $p(x\mid\theta)$.}

\slidesincremental{
* Fisher matrix: $g_{ij} = \mathbb{E}[\partial_i\log p\,\partial_j\log p]$
* Exponential families: e-flat ($\theta$) and m-flat ($\eta$) charts
* Pythagorean theorem for KL on dual flats
}

\speakernotes{LO8. Connect to week 4 Legendre pair. Worksheet 3: Gaussian Fisher matrix and gradient comparison.}

\notes{The Fisher matrix $g_{ij}=\mathbb{E}[\partial_i\log p\,\partial_j\log p]$ defines a Riemannian metric on the statistical manifold. On exponential families, e-flat ($\theta$) and m-flat ($\eta$) charts are dual; Hessians of $A$ and $A^*$ are inverse metrics. The Pythagorean theorem for KL holds on dual flats.}

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
import mlai}

\plotcode{mu, sigma2 = 0.0, 1.0
sigma2_grid = np.linspace(0.3, 4.0, 200)
g11 = 1.0 / sigma2_grid
g22 = 0.5 / sigma2_grid ** 2
fig, ax = plt.subplots(figsize=(7, 4))
ax.plot(sigma2_grid, g11, label='$g_{11}=1/\\sigma^2$')
ax.plot(sigma2_grid, g22, label='$g_{22}=1/(2\\sigma^4)$')
ax.set_xlabel('$\\sigma^2$')
ax.set_ylabel('Fisher component')
ax.legend()
ax.set_title('Gaussian Fisher matrix at $\\mu=0$')
mlai.write_figure('gaussian-fisher-eigen.svg', directory='\writeDiagramsDir/ml')}

\figure{\includediagram{\diagramsDir/ml/gaussian-fisher-eigen}{70%}}{Fisher components for $\mathcal{N}(0,\sigma^2)$ blow up as $\sigma^2\to 0$.}{gaussian-fisher-eigen}

\slides{
\includediagram{\diagramsDir/ml/gaussian-fisher-eigen}{70%}
}

<!-- /SNIPPET: _information-game/includes/fisher-metric-worked.md -->

\subsection{Thermodynamic Length (Crooks)}

<!-- SNIPPET: _information/includes/crooks-thermodynamic-length.md -->

\newslides{Thermodynamic Length (Crooks)}

\slides{For a slow protocol $\lambda(t)$ on the equilibrium manifold, define length with the Fisher metric.}

$$
\mathcal{L} = \int_0^\tau \sqrt{\dot\lambda^\top \mathcal{I}(\lambda)\,\dot\lambda}\,dt
$$

\slidesincremental{
* No-go: $\langle W_{\mathrm{ex}}\rangle \ge \mathcal{L}^2/\tau$ in linear response
* Prescription: measure change of state with the Fisher metric
* Intelligence question: week 8
}

\speakernotes{Define length today; do not interpret for intelligence until lecture 8. Worksheet 3: straight-line path $(0,1)\to(2,4)$.}

\notes{Crooks (2007): for a slow protocol on the equilibrium manifold, thermodynamic length is Fisher–Rao length. In linear response, $\langle W_{\mathrm{ex}}\rangle\ge\mathcal{L}^2/\tau$. The metric is the prescription for measuring a change of state.}

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
import mlai}

\plotcode{def fisher_gaussian(mu, sigma2):
    return np.array([[1.0 / sigma2, 0.0], [0.0, 0.5 / sigma2 ** 2]])

def straight_line(t):
    return np.array([0.0, 1.0]) + t * np.array([2.0, 3.0])

ts = np.linspace(0, 1, 200)
path = np.array([straight_line(t) for t in ts])
speed = np.gradient(path, ts, axis=0)
length_sq = 0.0
for i in range(len(ts)):
    g = fisher_gaussian(*path[i])
    v = speed[i]
    length_sq += np.sqrt(v @ g @ v) * (ts[1] - ts[0])
fig, ax = plt.subplots(figsize=(6, 5))
ax.plot(path[:, 0], path[:, 1], 'k-', linewidth=2)
ax.scatter([0, 2], [1, 4], s=80, c=['green', 'red'])
ax.set_xlabel('$\\mu$')
ax.set_ylabel('$\\sigma^2$')
ax.set_title('Worksheet 3 path in mean parameters')
mlai.write_figure('crooks-path-sketch.svg', directory='\writeDiagramsDir/ml')}

\figure{\includediagram{\diagramsDir/ml/crooks-path-sketch}{65%}}{Straight-line path in $(\mu,\sigma^2)$ whose Fisher–Rao length Worksheet 3 computes.}{crooks-path-sketch}

\slides{
\includediagram{\diagramsDir/ml/crooks-path-sketch}{65%}
}

<!-- /SNIPPET: _information/includes/crooks-thermodynamic-length.md -->

\addreading{@Crooks-length07}{the whole paper}

\slidesincremental{
* No-go: \(\langle W_{\mathrm{ex}}\rangle \ge \mathcal{L}^2/\tau\)
* Prescription: length is measured with the Fisher metric
* Intelligence question: week 8
}

\include{_information/includes/welling-crooks-fluctuation.md}

\subsection{Define This Week}

\slidesincremental{
* What is thermodynamic length?
* What is KL divergence?
* Shannon entropy versus differential entropy
* Fisher metric as a Riemannian metric
* Dual charts: last week's Legendre pair
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
