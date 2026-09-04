---
title: "Worksheet 3: Information Geometry and Thermodynamic Length"
practical: 3
week: 5
layout: practical
assignment: True
ipynb: True
reveal: False
transition: None
date: 2026-11-17
released: 2026-11-10
venue: FW26, William Gates Building
abstract: >
  Compute the Fisher information matrix of the Gaussian family, compare
  vanilla and natural gradient, and estimate the thermodynamic length of
  a path between two Gaussians. Then explain dual flatness and catch
  what an LLM gets wrong about the natural gradient.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO8, LO9]
duration_hours: 3
type: practical
assessment_id: W3
weight: 15
due_week: 6
word_count: 400
---

\define{\incrementQuestionMarkCounter{marks}}{}

\section{Worksheet 3}

\notes{Released after lecture 6 (17 November). Due by 10:00 at the start of lecture 7 (24 November). Estimated three hours. This worksheet is 15% of the module mark.

**Builds on the lecture.** The Fisher matrix and natural-gradient trajectories repeat the lecture 5–6 demos (`gaussian-fisher-eigen`, `natural-gradient-paths`, `crooks-path-sketch`). Part A3 integrates Fisher–Rao length along the same straight-line path $(0,1)\to(2,4)$ sketched in lecture 5.}

\notes{Submit `candidatenumber_worksheet3.ipynb` and `candidatenumber_worksheet3.md` on Moodle. LLMs are permitted. Use the Lecture 1 habit: curiosity first, then skeptical probes. Authenticity is checked by Quiz 3 at the start of lecture 7 (24 November), on a *new* parameterised family.}

\notes{Lecture 5 defined Crooks' thermodynamic length as the Fisher--Rao length of a path of equilibrium states. You will compute that length for a straight-line path in \((\mu,\sigma^2)\). You do not yet need to say what this has to do with intelligence -- that is lecture 8.}

\setupcode{import numpy as np
import matplotlib.pyplot as plt}

\section{Part A -- Code}

\notes{The Gaussian family \(\mathcal{N}(\mu,\sigma^2)\) has two useful coordinate systems. Mean parameters \((\mu,\sigma^2)\) are the familiar ones. Natural parameters \(\eta=(\mu/\sigma^2,\;-1/(2\sigma^2))\) are those in which \(p(x\mid\eta)=\exp(\eta\cdot T(x)-A(\eta))\) is linear.}

\codeassignment{In a markdown cell, derive the natural parameters \(\eta\) from the standard Gaussian log-density and identify the sufficient statistics \(T(x)=(x,x^2)\) and the log-partition function \(A(\eta)\). Then derive the Fisher matrix \(g_{ij}=\mathbb{E}[\partial_i\log p\cdot\partial_j\log p]\) in the mean parameterisation \((\mu,\sigma^2)\). Implement `fisher_gaussian(mu, sigma2)` (analytic is preferred; automatic differentiation or finite differences are acceptable). Plot the eigenvalues of \(g\) against \(\sigma^2\) at \(\mu=0\). In what regime is the geometry most curved, and why is \(\sigma^2\to 0\) a singularity?}{
def fisher_gaussian(mu, sigma2):
    # return the 2x2 Fisher matrix in mean parameters
    pass

# Plot eigenvalues of g against sigma2 at mu=0.
}{20}{}

\codeassignment{Draw 500 samples from \(\mathcal{N}(2,4)\). Fit a Gaussian by maximising the log-likelihood with (i) vanilla gradient ascent \(\theta\leftarrow\theta+\eta\nabla_\theta\ell\) and (ii) natural gradient ascent \(\theta\leftarrow\theta+\eta\,g^{-1}(\theta)\nabla_\theta\ell\). Start both from \((\mu_0,\sigma^2_0)=(0,1)\), 200 steps, \(\eta=0.05\). Plot the trajectories on the \((\mu,\sigma^2)\) plane and the loss curves. Which converges faster, and why does the natural gradient path look more direct?}{
rng = np.random.default_rng(0)
data = rng.normal(loc=2.0, scale=2.0, size=500)

def loglik(theta, data):
    pass

def vanilla_ascent(theta0, data, eta=0.05, steps=200):
    pass

def natural_ascent(theta0, data, eta=0.05, steps=200):
    pass

# Plot trajectories and loss.
}{20}{}

\codeassignment{Thermodynamic length (Crooks). Using the Fisher matrix from the first question, estimate the length of the *straight-line* path in mean parameters from \(\theta_0=(0,1)\) to \(\theta_1=(2,4)\),
$$
\mathcal{L}=\int_0^1\sqrt{\dot\theta(t)^\top g(\theta(t))\,\dot\theta(t)}\,dt.
$$
A simple Riemann sum is enough. Report \(\mathcal{L}\) and the implied dissipation bound \(\mathcal{L}^2/\tau\) for \(\tau=1\). Optional: try a qualitatively different path (for example, change \(\sigma^2\) first, then \(\mu\)) and say which is shorter. Do not interpret this as a claim about intelligence; that is lecture 8.}{
def thermodynamic_length(path, n=200):
    # path(t) for t in [0,1] returns theta; integrate Fisher-Rao length
    pass

def straight_line(t):
    return np.array([0.0, 1.0]) + t * np.array([2.0, 3.0])

# Compute L and L**2 for tau=1.
}{15}{}

\section{Part B -- Reflection}

\writeassignment{Dually flat geometry (200 words). In your own words, explain what it means for the exponential family to be dually flat. Why does this make computations that would otherwise require a full Riemannian treatment tractable? Use the Pythagorean theorem for KL as your central example.}{20}{}

\writeassignment{LLM perspective (200 words). Ask an LLM: "Why is natural gradient descent better than ordinary gradient descent for statistical models?" Identify one thing it explained well and one thing it got wrong or glossed over, and correct it. Include the key response as an appendix, not counted in the word limit.}{25}{}

\section{Marking}

\notes{
- 60--74: Fisher matrix implemented; both gradient methods run; reflection notes that natural gradient removes parameterisation dependence.
- 75--79: dual flatness is precise, not just "easier"; trajectories annotated; thermodynamic length computed.
- 80--89: a second path is compared, or the optional Pythagorean check on the Jaynes die from Worksheet 2 is done; reflection makes a connection not in the lectures.
- 90--100: original experiment -- for example, a non-exponential family where the Pythagorean identity fails, or a geodesic that is measurably shorter than the straight line.
}

\section{Optional extension}

\notes{On the categorical family over \(\{1,\ldots,6\}\), show that the MaxEnt die from Worksheet 2 is the m-projection of the uniform distribution onto the mean-constraint hyperplane by checking \(\mathrm{KL}(p\|r)=\mathrm{KL}(p\|q)+\mathrm{KL}(q\|r)\) numerically, where \(q\) is MaxEnt and \(r\) is uniform.}

\section{Submission}

\notes{Upload both files to Moodle by 10:00 on Tuesday 17 November (start of lecture 6).}
