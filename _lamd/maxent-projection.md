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

\notes{STUB. MaxEnt is the m-projection of the uniform distribution onto the constraint surface. The constraint is written in moment coordinates \(\eta\); the exponential family is a straight line in \(\theta\). That is why week 4's Legendre pair is not decoration: you project in one chart and travel in the other. This is LO9 (first half).}

\slidesincremental{
* Uniform, then constrain
* m-projection onto the constraint surface
}

\subsection{Natural Gradient}

\notes{STUB. Steepest descent in the Fisher metric is \(\theta\leftarrow\theta-\eta F^{-1}\nabla L\). It removes arbitrary parameterisation dependence. Same metric whose length is thermodynamic length. This is LO9 (second half).}

\slidesincremental{
* Vanilla gradient depends on coordinates
* Natural gradient does not
* Same \(F\) as Crooks' \(\mathcal{I}\)
}

\subsection{Geodesics as Optimal Protocols}

\notes{STUB. Last week's no-go was \(\langle W_{\mathrm{ex}}\rangle\ge\mathcal{L}^2/\tau\). This week's prescription is the geodesic: the path you should take if you want to meet that bound. Natural gradient is the local form of the same instruction — step in the direction the metric says is steepest. Compute or sketch one geodesic on a two-parameter exponential family (Gaussian in \((\mu,\sigma^2)\), or the two-state system in \(\beta\)). Do not yet contrast this geometry with Wasserstein or Schrödinger bridges — that is lecture 8.}

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
