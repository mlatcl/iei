---
title: "Projection, Natural Gradient, and Optimal Protocols"
week: 6
layout: lecture
date: 2026-11-17
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  Maximum entropy as an m-projection onto a constraint manifold, and
  natural gradient descent as steepest descent in the Fisher metric.
  Geodesics of that metric are Crooks' minimum-dissipation protocols.
  One computed geodesic on a two-parameter exponential family is enough.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO9]
duration_hours: 2
type: lecture
in_class_test: null
worksheet_due: W3
reading:
  - title: "Information Geometry and Its Applications"
    author: "Amari"
    chapter: "Chapters 3–4"
    estimated_hours: 2
---

\notes{Worksheet 3 is due at the start of this session. No class test. Quiz 3 is 24 November (Fisher metric, natural gradient, dual flatness).}

\subsection{This Session}

\slidesincremental{
* MaxEnt as m-projection
* Natural gradient: \(F^{-1}\nabla L\)
* Geodesics = minimum-dissipation protocols
}

\notes{
**Time plan (120 minutes)**

| Minutes | Block |
|--------:|-------|
| 0–10 | Collect Worksheet 3; preview Quiz 3 |
| 10–55 | MaxEnt as projection; dual coordinates |
| 55–65 | Break |
| 65–100 | Natural gradient; one worked comparison |
| 100–120 | A geodesic on a two-parameter exponential family |
}

\subsection{MaxEnt as Projection}

<!-- SNIPPET: _information/includes/maxent-m-projection.md -->

\newslides{MaxEnt as $m$-Projection}

\slides{Start from a reference $r$ — often uniform. Impose moment constraints $\mathbb{E}[T(X)]=\eta$.}

\slidesincremental{
* MaxEnt distribution $q$ minimises $\mathrm{KL}(q\|r)$ subject to constraints
* On an exponential family this is the $m$-projection onto the constraint surface
* Constraint in $\eta$; exponential family is a straight line in $\theta$
}

\speakernotes{LO9 (first half). Optional: Worksheet 3 Pythagorean check on Jaynes die.}

\notes{MaxEnt is the $m$-projection of a reference distribution (often uniform) onto the constraint surface written in moment coordinates $\eta$. Week 5: $\mathrm{KL}$ is non-negative even when differential entropy is not — the same $\min\mathrm{KL}(q\|r)$ recipe applies to Jaynes' die (discrete) and the Gaussian (continuous). On an exponential family the constraint surface is a straight line in natural parameters $\theta$.}

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
import mlai}

\plotcode{faces = np.arange(1, 7)
p_unif = np.ones(6) / 6
# Jaynes die probabilities (mean 4.5)
from scipy.optimize import minimize
def maxent_die(target_mean):
    def objective(p):
        p = np.clip(p, 1e-12, 1); p = p / p.sum()
        return np.sum(p * np.log(p / (np.ones(6)/6)))
    cons = ({'type': 'eq', 'fun': lambda p: np.sum(p)-1},
            {'type': 'eq', 'fun': lambda p: np.dot(p, faces)-target_mean})
    res = minimize(objective, p_unif, constraints=cons)
    return res.x
p_q = maxent_die(4.5)
fig, ax = plt.subplots(figsize=(7, 4))
ax.bar(faces - 0.15, p_unif, width=0.3, label='reference $r$')
ax.bar(faces + 0.15, p_q, width=0.3, label='MaxEnt $q$')
ax.set_xlabel('face')
ax.set_ylabel('probability')
ax.legend()
ax.set_title('$m$-projection of uniform onto mean=4.5')
mlai.write_figure('m-projection-die.svg', directory='\writeDiagramsDir/ml')}

\figure{\includediagram{\diagramsDir/ml/m-projection-die}{75%}}{MaxEnt die as $m$-projection of the uniform reference.}{m-projection-die}

\slides{
\includediagram{\diagramsDir/ml/m-projection-die}{75%}
}

<!-- /SNIPPET: _information/includes/maxent-m-projection.md -->

\slidesincremental{
* Uniform, then constrain
* m-projection onto the constraint surface
}

\subsection{Natural Gradient}

<!-- SNIPPET: _information/includes/natural-gradient-worked.md -->

\newslides{Natural Gradient}

\slides{Vanilla gradient ascent depends on how you parameterise $\theta$. Natural gradient does not.}

\slidesincremental{
* Steepest ascent in Fisher metric: $\theta \leftarrow \theta + \eta\, F^{-1}\nabla L$
* Same $F$ as Crooks' $\mathcal{I}$
* Worksheet 3 compares trajectories on the Gaussian plane
}

\speakernotes{LO9 (second half). Demo vanilla vs natural paths — Worksheet 3 core task.}

\notes{Natural gradient ascent $\theta\leftarrow\theta+\eta F^{-1}\nabla L$ is steepest ascent in the Fisher metric. It removes arbitrary parameterisation dependence. The same $F$ appears in Crooks' thermodynamic length.}

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
import mlai}

\plotcode{rng = np.random.default_rng(0)
data = rng.normal(2.0, 2.0, 500)

def nll(theta, data):
    mu, sigma2 = theta
    sigma2 = max(sigma2, 1e-6)
    return 0.5 * np.mean((data - mu)**2 / sigma2 + np.log(sigma2))

def fisher_gaussian(mu, sigma2):
    return np.array([[1.0 / sigma2, 0.0], [0.0, 0.5 / sigma2 ** 2]])

def vanilla(theta0, steps=80, eta=0.05):
    th = theta0.copy(); path = [th.copy()]
    for _ in range(steps):
        eps = 1e-4
        g = np.array([(nll(th + eps*np.eye(2)[i], data) - nll(th - eps*np.eye(2)[i], data)) / (2*eps)
                      for i in range(2)])
        th = th - eta * g
        path.append(th.copy())
    return np.array(path)

def natural(theta0, steps=80, eta=0.05):
    th = theta0.copy(); path = [th.copy()]
    for _ in range(steps):
        eps = 1e-4
        g = np.array([(nll(th + eps*np.eye(2)[i], data) - nll(th - eps*np.eye(2)[i], data)) / (2*eps)
                      for i in range(2)])
        F = fisher_gaussian(*th)
        th = th - eta * np.linalg.solve(F, g)
        path.append(th.copy())
    return np.array(path)

path_v = vanilla(np.array([0.0, 1.0]))
path_n = natural(np.array([0.0, 1.0]))
fig, ax = plt.subplots(figsize=(6, 5))
ax.plot(path_v[:, 0], path_v[:, 1], 'C0-', label='vanilla')
ax.plot(path_n[:, 0], path_n[:, 1], 'C1-', label='natural')
ax.scatter([2], [4], s=80, c='red', label='target')
ax.set_xlabel('$\\mu$'); ax.set_ylabel('$\\sigma^2$'); ax.legend()
mlai.write_figure('natural-gradient-paths.svg', directory='\writeDiagramsDir/ml')}

\figure{\includediagram{\diagramsDir/ml/natural-gradient-paths}{65%}}{Vanilla versus natural gradient paths for Gaussian MLE — Worksheet 3 core task.}{natural-gradient-paths}

<!-- /SNIPPET: _information/includes/natural-gradient-worked.md -->

\slidesincremental{
* Vanilla gradient depends on coordinates
* Natural gradient does not
* Same \(F\) as Crooks' \(\mathcal{I}\)
}

\subsection{Geodesics as Optimal Protocols}

<!-- SNIPPET: _information/includes/geodesic-optimal-protocol.md -->

\newslides{Geodesics as Optimal Protocols}

\slides{Last week's no-go: $\langle W_{\mathrm{ex}}\rangle\ge\mathcal{L}^2/\tau$. This week's prescription: travel by the geodesic.}

\slidesincremental{
* Geodesic = shortest Fisher–Rao path between equilibria
* Natural gradient = local steepest descent in the same metric
* Wasserstein and Schrödinger bridges: week 8
}

\speakernotes{Sketch geodesic vs straight line. Worksheet 3 integrates the straight line; higher marks compare paths. Sinkhorn: week 8 only.}

\notes{The geodesic is the prescription for minimum-dissipation protocols under Crooks' bound. Natural gradient is the local form of the same instruction. A straight line in $(\mu,\sigma^2)$ is not generally a geodesic, but it gives a first length estimate.}

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
import mlai}

\plotcode{# Compare straight line vs a curved detour in (mu, sigma2)
t = np.linspace(0, 1, 100)
straight = np.column_stack([2*t, 1 + 3*t])
detour = np.column_stack([2*t, 1 + 3*t**2])
fig, ax = plt.subplots(figsize=(6, 5))
ax.plot(straight[:,0], straight[:,1], 'k-', linewidth=2, label='straight (Worksheet 3)')
ax.plot(detour[:,0], detour[:,1], 'C1--', linewidth=2, label='detour')
ax.scatter([0,2],[1,4], s=60, c=['green','red'])
ax.set_xlabel('$\\mu$'); ax.set_ylabel('$\\sigma^2$'); ax.legend()
ax.set_title('Two paths — which is shorter in Fisher length?')
mlai.write_figure('geodesic-vs-straight.svg', directory='\writeDiagramsDir/ml')}

\figure{\includediagram{\diagramsDir/ml/geodesic-vs-straight}{65%}}{Worksheet 3 uses the straight line; higher marks compare a second path.}{geodesic-vs-straight}


<!-- /SNIPPET: _information/includes/geodesic-optimal-protocol.md -->

\slidesincremental{
* No-go: \(\mathcal{L}^2/\tau\) (last week)
* Prescription: the geodesic; \(F^{-1}\nabla L\)
* Other geometries: week 8
}

\include{_information/includes/welling-geodesics-and-work.md}

\addreading{@Amari-information16}{Chapters 3--4}

\subsection{Define This Week}

\slidesincremental{
* MaxEnt as a projection
* Why natural gradient is the correct gradient
* The exponential family, now geometrically
}

\subsection{Named, Not Yet Answered}

\notes{An alternating \(m\)-projection onto two constraint sets is how Sinkhorn enforces two prescribed marginals. Name it; do not compute it. Week 8.}

\slidesincremental{
* Alternating \(m\)-projection onto two constraint sets? (week 8)
}

\subsection{This Week's Pair}

\notes{No-go: you cannot beat \(\mathcal{L}^2/\tau\). Prescription: descend by the natural gradient; travel by the geodesic.}

\include{_information/includes/entropy-nogo-pair.md}

\subsection{After This Lecture}

\notes{Quiz 3 at the start of lecture 7 (24 November): Fisher metric, natural gradient, dual flatness, on a new parameterised family.}

\slidesincremental{
* Quiz 3: 24 November, first ten minutes
* LLM: is the natural gradient a bound or a recipe?
}

\reading

\thanks

\references
