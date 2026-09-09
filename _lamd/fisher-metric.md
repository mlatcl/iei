---
title: "Fisher Metric and Thermodynamic Length"
week: 6
layout: lecture
date: 2026-11-17
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  The manifold of probability distributions with the Fisher information
  matrix as its metric. Crooks' thermodynamic length is the Fisher–Rao
  length of a path of equilibrium states. Students should be able to
  *define* thermodynamic length today.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO8]
duration_hours: 2
type: lecture
in_class_test: null
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

\notes{No class test today. Fisher geometry and the definition of thermodynamic length. Worksheet 3 is released; due 24 November (start of lecture 7). Quiz 3 is then.}

\subsection{This Session}

\slidesincremental{
* Fisher metric; thermodynamic length
* KL divergence; Shannon vs differential entropy
* Fisher metric; dually flat geometry
* Thermodynamic length: define, do not interpret
}

\notes{
**Time plan (120 minutes)**

| Minutes | Block |
|--------:|-------|
| 0–10 | Recap MaxEnt / exponential family; release Worksheet 3 |
| 10–30 | KL divergence; Shannon vs differential entropy |
| 30–55 | Statistical manifold; Fisher metric |
| 55–65 | Break |
| 65–85 | Dual flatness; Pythagorean theorem for KL |
| 85–120 | Crooks: length as Fisher–Rao length; $\langle W_{\mathrm{ex}}\rangle \ge \mathcal{L}^2/\tau$; release Worksheet 3 |
}

<!-- SNIPPET: _mathe/includes/what-is-a-riemannian-geometry.md -->

\subsection{What is a Riemannian geometry?}

\comment{Start with distances in a Euclidean geometry, and then extend to a Riemannian distance.}

<!-- /SNIPPET: _mathe/includes/what-is-a-riemannian-geometry.md -->

\subsection{KL Divergence and Two Entropies}



<!-- SNIPPET: _information-game/includes/fisher-information-geometry.md -->



\subsection{Fisher Information as Geometry}

\notes{In the previous section, we saw that for exponential families, the Fisher information matrix appears as the second derivative of the log partition function
$$
G(\boldsymbol{\theta}) = \nabla^2 \mathcal{A}(\boldsymbol{\theta}) = \mathrm{Cov}_{\boldsymbol{\theta}}[T(\mathbf{x})].
$$
We now develop the geometric interpretation: the Fisher information matrix defines a *metric* on the space of probability distributions.}

\slides{
**From last section:**
$$
G(\boldsymbol{\theta}) = \nabla^2 \mathcal{A}(\boldsymbol{\theta}) = \mathrm{Cov}_{\boldsymbol{\theta}}[T(\mathbf{x})]
$$
* Now: What does this *mean* geometrically?
}

\subsubsection{The Statistical Manifold}

\notes{Consider the space of all probability distributions in an exponential family, parametrized by $\boldsymbol{\theta}$. This space forms a *manifold* --- a smooth, curved space where each point represents a different distribution.

The Fisher information matrix $G(\boldsymbol{\theta})$ acts as a *Riemannian metric* on this manifold. Think of measuring distances on a curved surface like a sphere: you need a metric to tell you how far apart two nearby points are. The Fisher information provides exactly this for the space of probability distributions, telling us how to measure "statistical distance" between distributions.}

\slides{
**Statistical Manifold:**
* Each point $\boldsymbol{\theta}$ = a probability distribution
* Space of all distributions = curved manifold
* Fisher information = metric (ruler) on this space
* Measures "closeness" between distributions
}

\newslide{Information Distance}

\notes{The Fisher information defines the *information distance* between nearby distributions. If we move from parameters $\boldsymbol{\theta}$ to $\boldsymbol{\theta} + \text{d}\boldsymbol{\theta}$, the infinitesimal distance in information space is
$$
\text{d}s^2 = \text{d}\boldsymbol{\theta}^\top G(\boldsymbol{\theta}) \text{d}\boldsymbol{\theta}
$$
where the Fisher information playing the role of the metric. Larger Fisher information means a given parameter change corresponds to a larger "information distance", the distributions are more distinguishable.}

\slides{
$$
\text{d}s^2 = \text{d}\boldsymbol{\theta}^\top G(\boldsymbol{\theta}) \text{d}\boldsymbol{\theta}
$$
* Measures information distance between distributions
* Larger $G$ = distributions more distinguishable
* Smaller $G$ = distributions harder to tell apart
}

\subsubsection{Connection to Statistical Estimation}

\notes{This geometric picture connects directly to Fisher's original motivation. The *Cramér-Rao bound* states that for any unbiased estimator $\hat{\boldsymbol{\theta}}$ of parameters $\boldsymbol{\theta}$,
$$
\text{cov}(\hat{\boldsymbol{\theta}}) \succeq G^{-1}(\boldsymbol{\theta}),
$$
where $\succeq$ denotes that the left side minus the right side is positive semidefinite.

Geometrically, this means: higher Fisher information (stronger metric) implies tighter bounds on estimation. The inverse $G^{-1}$ gives the *minimum possible* covariance of any unbiased estimator, it's the fundamental limit on how well we can estimate parameters from data.}

\slides{
*Cramér-Rao Bound:*
$$
\text{cov}(\hat{\boldsymbol{\theta}}) \succeq G^{-1}(\boldsymbol{\theta})
$$
* $G^{-1}$ = best possible estimator covariance
* High $G$ → small $G^{-1}$ → tight estimation
* Low $G$ → large $G^{-1}$ → loose estimation
* Geometric picture: $G^{-1}$ is "error ellipsoid"
}

\newslide{Why This Matters for Dynamics}

\notes{The Fisher information plays two distinct but related roles:

1. **As a metric**: It defines information distance, telling us how "far apart" distributions are.

2. **In gradient flow**: Recall from the exponential family definitions that that $\nabla H = -G(\boldsymbol{\theta})\boldsymbol{\theta}$. This means entropy gradient ascent in exponential families involves the Fisher information,
$$
\dot{\boldsymbol{\theta}} = \nabla H = -G(\boldsymbol{\theta})\boldsymbol{\theta}.
$$

The appearance in the gradient comes from the specific structure of exponential families (where $G = \nabla^2 \mathcal{A}$). Together, they determine how the system flows through information space, with the geometry guiding the dynamics.}

\slides{
**Two Roles of Fisher Information:**
1. Metric → defines distances between distributions
2. In gradient → $\nabla H = -G(\boldsymbol{\theta})\boldsymbol{\theta}$

$$
\dot{\boldsymbol{\theta}} = \nabla H = -G(\boldsymbol{\theta})\boldsymbol{\theta}
$$
}

\subsection{Examples Revisited}

\newslide{Gaussian: Geometry of Covariance}

\notes{For the Gaussian distribution, we saw that $G(\boldsymbol{\theta}) = \Sigma$. This means:
- The information metric *is* the covariance matrix
- The inverse $G^{-1} = \Sigma^{-1}$ is the precision matrix

Geometrically, the information ellipsoid has the same shape as the probability ellipsoid. This direct connection between the Fisher information and covariance is special to Gaussians (and arises because we're working in natural parameters $\boldsymbol{\theta} = \Sigma^{-1}\boldsymbol{\mu}$).}

\slides{
**Gaussian:** $G(\boldsymbol{\theta}) = \Sigma$
* Information metric = covariance
* $G^{-1} = \Sigma^{-1}$ = precision  
* Information ellipsoid = probability ellipsoid
* Special to Gaussians in natural parameters
}

\newslide{Categorical: Simplex Geometry}

\notes{For a categorical distribution with $K$ outcomes, the Fisher information has a special structure. Using the natural parameters $\theta_k = \log \pi_k$, the Fisher information is
$$
G_{ij}(\boldsymbol{\theta}) = \delta_{ij}\pi_i - \pi_i\pi_j = \begin{cases}
\pi_i(1 - \pi_i) & i = j \\
-\pi_i\pi_j & i \neq j
\end{cases}
$$

This metric defines the **probability simplex geometry**. Distributions near the center of the simplex (all $\pi_k \approx 1/K$) have different local geometry than those near the corners (one $\pi_k \approx 1$). The Fisher metric captures this intrinsic curvature.}

\slides{
**Categorical:** 
$$
G_{ij} = \delta_{ij}\pi_i - \pi_i\pi_j
$$
* Defines probability simplex geometry
* Center of simplex: balanced information
* Corners: concentrated information
* Metric captures curvature
}

\subsection{Information Geometry: The Big Picture}

\notes{The Fisher information matrix is a foundational element of *information geometry*, a field that studies probability distributions using differential geometric tools. Key insights:

1. **mari's Dually Flat Structure*: Exponential families have a special property. They are "dually flat" under two different coordinate systems (natural parameters $\boldsymbol{\theta}$ and expectation parameters $\boldsymbol{\mu}$). The Fisher metric connects these.

2. *Geodesics*: The shortest path between two distributions (in the information geometry sense) is a geodesic. For exponential families, geodesics have elegant forms that will connect to our least action principles.

3. *Curvature*: The curvature of the statistical manifold (measured by the Riemann curvature tensor derived from $G$) tells us about the intrinsic structure of the family. Exponential families have *zero curvature* in a certain sense—they are "flat" manifolds.

These geometric properties will be essential when we study constrained information dynamics and emergence.}

\slides{
**Information Geometry:**
* Fisher metric → Riemannian geometry
* Exponential families → dually flat structure
* Geodesics → shortest paths between distributions
* Zero curvature → special "flat" structure
* *Key for constrained dynamics later*
}


\addreading{@Amari-information16}{Chapters 1--2}

<!-- /SNIPPET: _information-game/includes/fisher-information-geometry.md -->


<!-- SNIPPET: _information-game/includes/fisher-metric-worked.md -->

\newslides{The Fisher Metric}

\slides{A statistical manifold: each point is a distribution $p(x\mid\theta)$.}

\slidesincremental{
* Fisher matrix: $g_{ij} = \mathbb{E}[\partial_i\log p\,\partial_j\log p]$
* Exponential families: e-flat ($\theta$) and m-flat ($\eta$) charts
* Pythagorean theorem for KL on dual flats
}

\speakernotes{LO8. Connect to week 5 Legendre pair. Worksheet 3: Gaussian Fisher matrix and gradient comparison.}

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

<!-- /SNIPPET: _information-game/includes/fisher-metric-worked.md -->


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


<!-- /SNIPPET: _information/includes/crooks-thermodynamic-length.md -->

\addreading{@Crooks-length07}{the whole paper}

\slidesincremental{
* No-go: $\langle W_{\mathrm{ex}}\rangle \ge \mathcal{L}^2/\tau$
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

\subsection{After This Lecture}

\notes{Worksheet 3: Fisher matrix for a Gaussian; vanilla versus natural gradient; Crooks length of the straight-line path from $(0,1)$ to $(2,4)$. Due 24 November. Quiz 3 is 24 November at the start of lecture 7.}

\slidesincremental{
* Worksheet 3 released; due 24 November
* LLM exercise: thermodynamic length, two sides
}

\reading

\thanks

\references
