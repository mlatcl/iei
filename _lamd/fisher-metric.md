---
title: "Fisher Metric and Thermodynamic Length"
week: 6
layout: lecture
date: 2026-11-17
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  Fisher's notion of information (sensitivity of the score, not Shannon
  uncertainty), the Fréchet–Rao–Cramér reading as identifiability, and
  the Fisher matrix as a Riemannian metric. A short bridge from Crooks'
  fluctuation theorem (1999) and Jarzynski to the near-equilibrium bound
  ⟨W_ex⟩ ≥ ℒ²/τ; thermodynamic length (Crooks 2007) is then the
  Fisher–Rao length of a path of equilibrium states. Students should be
  able to *define* thermodynamic length today; the Schottky peak as a
  Fisher peak is named, not interpreted.
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
  - title: "Entropy Production Fluctuation Theorem..."
    author: "Crooks"
    chapter: "1999; statement of the theorem"
    estimated_hours: 0.5
  - title: "Measuring Thermodynamic Length"
    author: "Crooks"
    chapter: "whole paper (2007)"
    estimated_hours: 1
---

\notes{No class test today. Clarify what Fisher meant by information, then geometry. Bridge from Crooks (1999)/Jarzynski to the near-equilibrium bound, then define thermodynamic length (Crooks 2007). Worksheet 3 is released; due 24 November (start of lecture 7). Quiz 3 is then.}

\subsection{This Session}

\slidesincremental{
* Fisher's information $\neq$ Shannon's $H$
* Fréchet–Rao–Cramér: identifiability
* Fisher metric; dual flatness
* Fluctuation theorem $\to$ $\langle W\rangle\ge\Delta F$ $\to$ length bound
* Thermodynamic length: define, do not interpret
}

\notes{
**Time plan (120 minutes)**

| Minutes | Block |
|--------:|-------|
| 0–15 | Recap MaxEnt / $G=\nabla^2 A$; Fisher's notion of information |
| 15–30 | Fréchet–Rao–Cramér: identifiability; name Schottky as Fisher peak |
| 30–55 | Riemannian geometry; KL; statistical manifold as metric |
| 55–65 | Break |
| 65–85 | Dual flatness; Pythagorean theorem for KL |
| 85–100 | Bridge: Crooks (1999) / Jarzynski $\to$ second law $\to$ near-eq expansion |
| 100–120 | Thermodynamic length (Crooks 2007); $\langle W_{\mathrm{ex}}\rangle \ge \mathcal{L}^2/\tau$; release Worksheet 3 |
}

\include{_iei/includes/iei-notebook-setup.md}

\subsection{What Did Fisher Mean by Information?}

\notes{Week 5 left us with a Hessian: for an exponential family,
$$
G(\boldsymbol{\theta})=\nabla^2\mathcal{A}(\boldsymbol{\theta})=\mathrm{Cov}_{\boldsymbol{\theta}}[T(\mathbf{x})].
$$
Today we ask what that object *is*. Fisher (1925) called the expected squared score *information* about a parameter. For a scalar parameter $\theta$,
$$
I(\theta)=\mathbb{E}_\theta\!\left[\left(\frac{\partial}{\partial\theta}\log p(x\mid\theta)\right)^2\right].
$$
That is not Shannon entropy. Shannon's $H$ measures uncertainty in a random variable; Fisher's $I$ measures how much a sample tells you about $\theta$ --- the sensitivity of the log-likelihood to the parameter. Conflating the two words is the first mistake to block today.}

\slides{
**Fisher's information $\neq$ Shannon's entropy**
* Shannon $H$: uncertainty in an outcome
* Fisher $I(\theta)$: sensitivity of $\log p$ to $\theta$
* Same word; different operational reading
}

\newslide{Score and Sensitivity}

\slides{
$$
I(\theta)=\mathbb{E}\!\left[(\partial_\theta\log p)^2\right]
$$
* Large $I$: data distinguish nearby $\theta$ well
* Small $I$: parameter almost invisible in samples
}

\speakernotes{Hold Shannon vs Fisher for the whole module: $H$ is a state function of $p$; $I$ is a property of a *family* $p(\cdot\mid\theta)$.}

\subsection{Identifiability: Fréchet, Rao, Cramér}

\notes{Independently of Fisher's estimation programme, Fréchet, Rao, and Cramér arrived at the same matrix as a bound on how well parameters can be identified. The Cramér--Rao inequality
$$
\mathrm{cov}(\hat{\boldsymbol{\theta}})\succeq G^{-1}(\boldsymbol{\theta})
$$
says: where Fisher information is large, unbiased estimators can be precise; where it vanishes, the parameter is not identifiable from data. The geometric reading follows: $G$ is a metric of *distinguishability* on the manifold of distributions.}

\slidesincremental{
* Same $G$: Fisher (estimation) and Fréchet–Rao–Cramér (identifiability)
* $\mathrm{cov}(\hat\theta)\succeq G^{-1}$: high $G$ $\Rightarrow$ tight bound
* Metric reading: $G$ measures how distinguishable nearby distributions are
}

\newslide{Named Link: Schottky Peak}

\notes{For the canonical two-state system of week 2, the natural parameter is inverse temperature $\beta$. Then $G(\beta)$ is proportional to the heat capacity $C$. Schottky's anomaly --- the peak of $C$ when both states are populated --- is therefore a peak of Fisher information: maximal thermal response is maximal distinguishability of nearby $\beta$. Name that identity today. The purely entropic reading (what that peak means for information and intelligence) waits for week 8. Do not call $G$ ``the rate of entropy production''; that role belongs to path costs such as Crooks' $\langle W_{\mathrm{ex}}\rangle$, defined later this lecture.}

\slides{
**Week 2, revisited (name only):**
* Two-state: $G(\beta)\propto C$
* Schottky peak $=$ Fisher peak
* Entropic reading: week 8
}

\speakernotes{Fence: name the identity; do not interpret Schottky or length for intelligence today.}

<!-- SNIPPET: _mathe/includes/what-is-a-riemannian-geometry.md -->

\subsection{What is a Riemannian geometry?}

\newslide{Euclidean vs Riemannian Distance}

\slides{In flat space the ruler is the same everywhere. On a curved surface it is not.}

\slidesincremental{
* Euclidean: $\mathrm{d}s^2 = \mathrm{d}\mathbf{x}^\top \mathbf{I}\, \mathrm{d}\mathbf{x}$ (constant metric)
* Riemannian: $\mathrm{d}s^2 = \mathrm{d}\mathbf{x}^\top g(\mathbf{x})\, \mathrm{d}\mathbf{x}$ (position-dependent)
* Geodesic: shortest path; curves in non-flat space
}

\speakernotes{Keep this concrete. Near the poles of a sphere, longitude lines are close together; near the equator they are far apart. The metric captures that varying "ruler".}

\notes{In Euclidean space $\mathbb{R}^n$, the distance between two nearby points $\mathbf{x}$ and $\mathbf{x}+\mathrm{d}\mathbf{x}$ is given by the familiar Pythagorean rule,
$$
\mathrm{d}s^2 = \mathrm{d}x_1^2 + \cdots + \mathrm{d}x_n^2 = \mathrm{d}\mathbf{x}^\top \mathbf{I}\, \mathrm{d}\mathbf{x}.
$$
The identity matrix plays the role of the *metric*: it is the same everywhere, so the ruler does not change as you move through the space.

A *Riemannian manifold* replaces the constant identity with a smooth, position-dependent, symmetric positive-definite matrix $g(\mathbf{x})$, called the *metric tensor*:
$$
\mathrm{d}s^2 = \mathrm{d}\mathbf{x}^\top g(\mathbf{x})\, \mathrm{d}\mathbf{x} = \sum_{i,j} g_{ij}(\mathbf{x})\, \mathrm{d}x_i\, \mathrm{d}x_j.
$$
Now the ruler changes from place to place. A step of size $\epsilon$ in the direction $\mathbf{v}$ at point $\mathbf{x}$ has length $\epsilon\sqrt{\mathbf{v}^\top g(\mathbf{x})\mathbf{v}}$, which depends on where you are. The *geodesic* between two points is the path of minimal accumulated length $\int \mathrm{d}s$; in flat Euclidean space this is a straight line, on a sphere it is a great circle.}

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
import mlai}

\plotcode{theta = np.linspace(0, 2*np.pi, 60)
xs = np.linspace(-2.5, 2.5, 7)
ys = np.linspace(-2.5, 2.5, 7)

fig, axes = plt.subplots(1, 2, figsize=(10, 4))

# Left: Euclidean — equal circles everywhere
for xi in xs:
    for yi in ys:
        axes[0].plot(xi + 0.28*np.cos(theta), yi + 0.28*np.sin(theta),
                     'C0', lw=0.8, alpha=0.6)
axes[0].set_xlim(-3.3, 3.3); axes[0].set_ylim(-3.3, 3.3)
axes[0].set_aspect('equal')
axes[0].set_title('Euclidean: $g = I$ (equal circles)')
axes[0].set_xlabel('$x_1$'); axes[0].set_ylabel('$x_2$')

# Right: Riemannian — metric g = diag(1, 1 + 0.5 y^2)
for xi in xs:
    for yi in ys:
        rx = 0.28
        ry = 0.28 / np.sqrt(1.0 + 0.5*yi**2)
        axes[1].plot(xi + rx*np.cos(theta), yi + ry*np.sin(theta),
                     'C1', lw=0.8, alpha=0.6)
axes[1].set_xlim(-3.3, 3.3); axes[1].set_ylim(-3.3, 3.3)
axes[1].set_aspect('equal')
axes[1].set_title('Riemannian: $g_{22}=1+0.5y^2$ (ellipses)')
axes[1].set_xlabel('$x_1$'); axes[1].set_ylabel('$x_2$')

plt.tight_layout()
mlai.write_figure('euclidean-vs-riemannian.svg', directory='\writeDiagramsDir/ml')}

\figure{\includediagram{\diagramsDir/ml/euclidean-vs-riemannian}{80%}}{Left: Euclidean metric — equal-radius circles mark unit steps at every point. Right: Riemannian metric — ellipses shrink vertically near large $|y|$ because vertical distances are stretched there by $g_{22}=1+0.5y^2$.}{euclidean-vs-riemannian}

\newslide{Geodesics and Length}

\notes{The *length* of any path $\gamma:[0,1]\to\mathcal{M}$ on a Riemannian manifold is
$$
\ell(\gamma) = \int_0^1 \sqrt{\dot{\gamma}(t)^\top g(\gamma(t))\, \dot{\gamma}(t)}\, \mathrm{d}t.
$$
The geodesic minimises this integral. When we later write thermodynamic length as an integral of $\sqrt{\dot{\lambda}^\top \mathcal{I}(\lambda)\dot{\lambda}}$, we are computing exactly this — but the manifold is the space of probability distributions and the metric is the Fisher information.}

\slides{
$$
\ell(\gamma) = \int_0^1 \sqrt{\dot\gamma^\top g(\gamma)\,\dot\gamma}\;\mathrm{d}t
$$
* Geodesic minimises $\ell$
* Flat space: straight lines; sphere: great circles
* Statistical manifold: $g = G$ (Fisher) — connects distributions
}

<!-- /SNIPPET: _mathe/includes/what-is-a-riemannian-geometry.md -->

\subsection{KL Divergence and Two Entropies}

\newslide{KL Divergence: Forward and Reverse}

\slides{$D_{\mathrm{KL}}$ measures how different two distributions are — but it is asymmetric.}

\slidesincremental{
* $D_{\mathrm{KL}}(p\|q) = \sum_x p(x)\log\frac{p(x)}{q(x)} \ge 0$, zero iff $p=q$
* Forward ($p\|q$): mass-covering — $q$ must not miss mass of $p$
* Reverse ($q\|p$): mode-seeking — $q$ concentrates on a mode of $p$
* Second-order Taylor: $D_{\mathrm{KL}}(p_{\boldsymbol{\theta}+\mathrm{d}\boldsymbol{\theta}}\|p_{\boldsymbol{\theta}}) = \tfrac{1}{2}\,\mathrm{d}\boldsymbol{\theta}^\top G(\boldsymbol{\theta})\,\mathrm{d}\boldsymbol{\theta} + O(\|\mathrm{d}\boldsymbol{\theta}\|^3)$
}

\speakernotes{Forward KL covers all modes; reverse KL picks one. Both have the same second-order term: Fisher $G$. That is why $G$ is the natural metric: it is the curvature of the divergence surface at coincidence.}

\notes{Kullback--Leibler divergence measures how much distribution $p$ differs from reference $q$:
$$
D_{\mathrm{KL}}(p\|q) = \sum_x p(x)\log\frac{p(x)}{q(x)} = \mathbb{E}_p\!\left[\log\frac{p(X)}{q(X)}\right] \ge 0,
$$
with equality iff $p=q$ (Gibbs' inequality). It is not symmetric: $D_{\mathrm{KL}}(p\|q)\ne D_{\mathrm{KL}}(q\|p)$ in general.

*Forward KL* ($p\|q$) penalises regions where $p$ has mass but $q$ does not. Fitting a model $q$ by minimising $D_{\mathrm{KL}}(p\|q)$ with respect to $q$ forces $q$ to spread and cover all modes of $p$ — the mass-covering or "zero-forcing" behaviour familiar from variational inference.

*Reverse KL* ($q\|p$) penalises regions where $q$ has mass but $p$ does not. Minimising with respect to $q$ makes $q$ concentrate on one mode of $p$ — the mode-seeking or "zero-avoiding" behaviour.

The Fisher metric emerges as the Hessian of KL at zero separation. Expanding $\log p_{\boldsymbol{\theta}+\mathrm{d}\boldsymbol{\theta}}$ to second order and using the fact that the score has zero mean, the first-order term vanishes:
$$
D_{\mathrm{KL}}(p_{\boldsymbol{\theta}+\mathrm{d}\boldsymbol{\theta}}\|p_{\boldsymbol{\theta}}) = \tfrac{1}{2}\,\mathrm{d}\boldsymbol{\theta}^\top G(\boldsymbol{\theta})\,\mathrm{d}\boldsymbol{\theta} + O(\|\mathrm{d}\boldsymbol{\theta}\|^3).
$$
Fisher information is the *curvature* of KL divergence at coincidence. The same Hessian arises from both the forward and reverse divergence; they only differ at higher orders.}

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
import mlai
from scipy.stats import norm as sp_norm}

\plotcode{x = np.linspace(-5, 5, 1000)
# True bimodal p
p = 0.5*sp_norm.pdf(x, -1.8, 0.65) + 0.5*sp_norm.pdf(x, 1.8, 0.65)
p = p / np.trapz(p, x)

# Forward KL minimiser: Gaussian matched to mean and variance of p
mu_p = np.trapz(x*p, x)
var_p = np.trapz((x - mu_p)**2 * p, x)
q_fwd = sp_norm.pdf(x, mu_p, np.sqrt(var_p))

# Reverse KL minimiser: concentrate on one mode
q_rev = sp_norm.pdf(x, -1.8, 0.65)

fig, axes = plt.subplots(1, 2, figsize=(10, 4))

axes[0].fill_between(x, p, alpha=0.25, color='C0', label='$p(x)$')
axes[0].plot(x, q_fwd, 'C1', lw=2, label=r'$q$ min $D_\mathrm{KL}(p\|q)$')
axes[0].set_title('Forward KL: mass-covering')
axes[0].legend(fontsize=9); axes[0].set_xlabel('$x$')

axes[1].fill_between(x, p, alpha=0.25, color='C0', label='$p(x)$')
axes[1].plot(x, q_rev, 'C2', lw=2, label=r'$q$ min $D_\mathrm{KL}(q\|p)$')
axes[1].set_title('Reverse KL: mode-seeking')
axes[1].legend(fontsize=9); axes[1].set_xlabel('$x$')

plt.tight_layout()
mlai.write_figure('forward-reverse-kl.svg', directory='\writeDiagramsDir/ml')}

\figure{\includediagram{\diagramsDir/ml/forward-reverse-kl}{80%}}{Forward KL (left) produces a broad Gaussian covering both modes; reverse KL (right) concentrates on one mode. Both have the same local curvature at $p=q$: the Fisher metric.}{forward-reverse-kl}

\newslide{KL Curvature = Fisher Metric}

\slides{
$$
D_{\mathrm{KL}}(p_{\boldsymbol{\theta}+\mathrm{d}\boldsymbol{\theta}}\|p_{\boldsymbol{\theta}}) = \tfrac{1}{2}\,\mathrm{d}\boldsymbol{\theta}^\top G(\boldsymbol{\theta})\,\mathrm{d}\boldsymbol{\theta} + O(\|\mathrm{d}\boldsymbol{\theta}\|^3)
$$
* $G$ = curvature of KL at coincidence
* Two KLs, one local metric
* Pythagorean theorem holds on dually flat submanifolds
}
<!-- SNIPPET: _information-game/includes/fisher-information-geometry.md -->



\subsection{Fisher Information as Geometry}

\notes{We already have three readings of the same matrix: Fisher's expected squared score, Fréchet–Rao–Cramér identifiability, and --- for exponential families --- the Hessian
$$
G(\boldsymbol{\theta}) = \nabla^2 \mathcal{A}(\boldsymbol{\theta}) = \mathrm{Cov}_{\boldsymbol{\theta}}[T(\mathbf{x})].
$$
We now develop the geometric interpretation: that matrix defines a *metric* on the space of probability distributions.}

\slides{
**Same $G$, three origins:**
$$
G(\boldsymbol{\theta}) = \nabla^2 \mathcal{A}(\boldsymbol{\theta}) = \mathrm{Cov}_{\boldsymbol{\theta}}[T(\mathbf{x})]
$$
* Fisher / CR / Hessian --- now as Riemannian metric
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

\notes{The geometric picture restates the Fréchet–Rao–Cramér bound from the open of the lecture. For any unbiased estimator $\hat{\boldsymbol{\theta}}$,
$$
\text{cov}(\hat{\boldsymbol{\theta}}) \succeq G^{-1}(\boldsymbol{\theta}),
$$
where $\succeq$ denotes that the left side minus the right side is positive semidefinite. Higher Fisher information (stronger metric) means tighter estimation; $G^{-1}$ is the error ellipsoid.}

\slides{
*Cramér–Rao (restated geometrically):*
$$
\text{cov}(\hat{\boldsymbol{\theta}}) \succeq G^{-1}(\boldsymbol{\theta})
$$
* $G^{-1}$ = error ellipsoid
* High $G$ → tight estimation; low $G$ → loose
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

\newslide{The Fisher Metric}

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

\include{_information/includes/welling-crooks-fluctuation.md}

<!-- SNIPPET: _information/includes/crooks-thermodynamic-length.md -->

\newslide{Thermodynamic Length (Crooks 2007)}

\slides{For a slow protocol $\lambda(t)$ on the equilibrium manifold, define length with the Fisher metric.}

$$
\mathcal{L} = \int_0^\tau \sqrt{\dot\lambda^\top \mathcal{I}(\lambda)\,\dot\lambda}\,dt
$$

\slidesincremental{
* No-go: $\langle W_{\mathrm{ex}}\rangle \ge \mathcal{L}^2/\tau$ in linear response
* Prescription: measure change of state with the Fisher metric
* Intelligence question: week 8
}

\speakernotes{Define length today; do not interpret for intelligence until lecture 8. Worksheet 3: straight-line path $(0,1)\to(2,4)$. The bound is the near-equilibrium expansion of the fluctuation theorem, not a separate axiom.}

\notes{Crooks (2007) packages the near-equilibrium expansion as Fisher--Rao length on the equilibrium manifold [@Crooks-length07]. In linear response, $\langle W_{\mathrm{ex}}\rangle\ge\mathcal{L}^2/\tau$. The metric is the prescription for measuring a change of state; geodesics minimise the leading dissipative cost. The exact distributional statement underneath is Crooks (1999) / Jarzynski, above.}

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

\subsection{Define This Week}

\slidesincremental{
* Fisher's $I(\theta)$ versus Shannon's $H$
* Identifiability: Fréchet–Rao–Cramér / Cramér–Rao
* Schottky peak as Fisher peak (named only)
* Fisher metric as a Riemannian metric; dual charts
* Crooks (1999) $\to$ Jarzynski $\to$ $\langle W\rangle\ge\Delta F$
* What is thermodynamic length?
}

\notes{Interpret later: Schottky's entropic reading; optimal trajectories and intelligence (week 8). Natural gradient as descent in the same metric is week 7.}

\subsection{After This Lecture}

\notes{Worksheet 3: Fisher matrix for a Gaussian; vanilla versus natural gradient; Crooks length of the straight-line path from $(0,1)$ to $(2,4)$. Due 24 November. Quiz 3 is 24 November at the start of lecture 7.}

\slidesincremental{
* Worksheet 3 released; due 24 November
* LLM exercise: thermodynamic length, two sides
}

\reading

\thanks

\references
