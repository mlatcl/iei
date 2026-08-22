---
title: "Worksheet 2: Maxwell's Demon, MaxEnt, and the Exponential Family"
practical: 2
week: 3
layout: practical
assignment: True
ipynb: True
reveal: False
transition: None
date: 2026-11-03
released: 2026-10-27
venue: FW26, William Gates Building
abstract: >
  Recover Jaynes' die, the canonical ensemble, and the Gaussian from
  maximum entropy. Then explain Maxwell's demon and Landauer in your own
  words, and contrast a Bayesian LLM account of MaxEnt with the
  thermodynamic one.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO4, LO5, LO6, LO7]
duration_hours: 3
type: practical
assessment_id: W2
weight: 15
due_week: 4
word_count: 400
---

\define{\incrementQuestionMarkCounter{marks}}{}

\section{Worksheet 2}

\notes{Released after lecture 3 (27 October). Due at the start of lecture 4 (3 November). Estimated three hours. This worksheet is 15% of the module mark.}

\notes{Submit `crsid_worksheet2.ipynb` and `crsid_worksheet2.md` on Moodle. LLMs are permitted. Authenticity is checked by Quiz 2 at the start of lecture 5 (10 November), on a *new* example.}

\setupcode{import numpy as np
import matplotlib.pyplot as plt
from scipy import optimize
from scipy.stats import norm}

\section{Part A -- Code}

\codeassignment{Consider a die, outcomes \(\{1,2,3,4,5,6\}\). Write `maxent_distribution(values, target_mean)` that uses `scipy.optimize` to find the probabilities maximising \(H=-\sum p_i\ln p_i\) subject to \(\sum p_i=1\) and \(\sum p_i x_i=\mu\). Apply it to Jaynes' die with mean 4.5. Plot the result against the uniform distribution and label both entropies. Then show that the result belongs to the exponential family: fit \(\lambda\) such that \(p_i\propto e^{\lambda x_i}\) and check that it matches the optimiser.}{
faces = np.arange(1, 7)

def maxent_distribution(values, target_mean):
    # return the MaxEnt probability vector
    pass

# Jaynes die, mean 4.5. Plot against uniform. Fit lambda.
}{20}{}

\codeassignment{A two-level system has energies \(\{0,\varepsilon\}\). In a markdown cell, show analytically that MaxEnt subject to a mean-energy constraint recovers \(p_i\propto e^{-\beta E_i}\) with \(\beta\) as the Lagrange multiplier. Then vary the target mean energy from \(0.1\varepsilon\) to \(0.9\varepsilon\), recover \(\beta\) from each MaxEnt distribution, and plot \(\beta\) against mean energy. What shape do you get, and why?}{
epsilon = 1.0
energies = np.array([0.0, epsilon])

# Analytic derivation in a markdown cell above this code.
# Numerical sweep of target mean energy; plot recovered beta.
}{20}{}

\codeassignment{Show, with a markdown derivation and supporting code, that MaxEnt subject to fixed mean \(\mu\) and variance \(\sigma^2\) recovers a Gaussian. Discretise the real line into 100 bins, run the optimiser with two moment constraints, and plot the result against `scipy.stats.norm.pdf`.}{
# Discretise the line, impose mean and variance, compare to the Gaussian pdf.
}{15}{}

\section{Part B -- Reflection}

\writeassignment{Maxwell's demon (200 words). Explain in your own words why the demon appears to violate the second law, and how Landauer's principle restores consistency. What is the *minimum* thermodynamic cost, in joules, of erasing one bit at room temperature (300 K)?}{20}{}

\writeassignment{Bayesian perspective (200 words). Ask an LLM: "Explain the maximum entropy principle from a Bayesian perspective." Summarise the response. Identify one point of agreement and one point of tension between the Bayesian and thermodynamic readings of MaxEnt. Include the key LLM response as an appendix, not counted in the word limit.}{25}{}

\section{Marking}

\notes{
- 60--74: optimiser runs; distribution matches Jaynes; Landauer covered at a surface level.
- 75--79: markdown cells show why the Lagrange multiplier is \(\beta\); reflection finds a non-trivial tension between Bayesian and thermodynamic readings.
- 80--89: extension beyond the brief (multivariate MaxEnt, or the entropy landscape on the simplex).
- 90--100: original insight -- for example, a new constraint type with a predicted family, checked after the prediction.
}

\section{Submission}

\notes{Upload both files to Moodle before the start of lecture 4 on 3 November.}
