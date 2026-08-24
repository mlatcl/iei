---
title: "Maximum Entropy and the Exponential Family"
week: 4
layout: lecture
date: 2026-11-03
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  Jaynes' maximum entropy principle, the exponential family as the MaxEnt
  family, and the first synthesis of the three operational readings of
  entropy. This is the intended answer to “how is entropy understood today?”,
  to be revised again after von Neumann entropy in week 7.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO5, LO6, LO7]
duration_hours: 2
type: lecture
in_class_test: null
worksheet_due: W2
reading:
  - title: "Information Theory and Statistical Mechanics"
    author: "Jaynes"
    chapter: "whole paper"
    estimated_hours: 1
  - title: "Probability Theory: The Logic of Science"
    author: "Jaynes"
    chapter: "Chapters 11–12"
    estimated_hours: 2
  - title: "Information Theory, Inference, and Learning Algorithms"
    author: "MacKay"
    chapter: "Chapter 22"
    estimated_hours: 1
  - title: "Elements of Information Theory"
    author: "Cover and Thomas"
    chapter: "Chapter 12"
    estimated_hours: 1
  - title: "Generative AI and Stochastic Thermodynamics"
    author: "Welling, Lu and Holdijk"
    chapter: "§1.5.5; Chapter 5"
    estimated_hours: 1
    required: false
---

\notes{Worksheet 2 is due at the start of this session. No class test. Quiz 2 is 10 November (MaxEnt, exponential family, Landauer).}

\subsection{This Session}

\slidesincremental{
* MaxEnt with Lagrange multipliers
* Exponential family as the MaxEnt family
* Legendre: entropy as conjugate of $A(\theta)$
* Three perspectives: the intended comparison
}

\notes{
**Time plan (120 minutes)**

| Minutes | Block |
|--------:|-------|
| 0–10 | Collect Worksheet 2; preview Quiz 2 |
| 10–55 | Jaynes; Lagrange multipliers; die and Gaussian |
| 55–65 | Break |
| 65–95 | Exponential family; two-level $=$ Bernoulli; softmax; two-spin Hamiltonian |
| 95–110 | Legendre transform: $F=U-TS$ again; $H=A-\theta\cdot\eta$ |
| 110–120 | LO7 synthesis; “how is entropy understood today?” |
}

\subsection{Maximum Entropy}

\include{_physics/includes/lagrange-multipliers.md}

\include{_physics/includes/jaynes-maximum-entropy.md}

\include{_physics/includes/dieroll.md}

<!-- SNIPPET: _physics/includes/maxent-canonical-gaussian.md -->

\newslides{MaxEnt Recovers Boltzmann and Gaussian}

\slides{Jaynes' die (mean 4.5, not 3.5) is the running example. The same Lagrange move recovers physics and statistics.}

\slidesincremental{
* One constraint: mean energy $\Rightarrow$ $p_i \propto e^{-\beta E_i}$
* Two constraints: mean and variance $\Rightarrow$ Gaussian
* Lagrange multiplier on energy is coldness $\beta$ from week 1
}

\speakernotes{LO5. After die demo, recover canonical ensemble and Gaussian on the board. Worksheet 2 implements the die.}

\notes{Maximum entropy is the week's pair in one move: entropy forbids assuming more structure than the constraints; probability is the recipe. One mean-energy constraint gives Boltzmann weights; mean and variance give the Gaussian. The Lagrange multiplier on energy is coldness $\beta$.}

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
from scipy.optimize import minimize
import mlai}

\plotcode{faces = np.arange(1, 7)

def maxent_die(target_mean):
    def objective(p):
        p = np.clip(p, 1e-12, 1)
        p = p / p.sum()
        return np.sum(p * np.log(p))
    cons = (
        {'type': 'eq', 'fun': lambda p: np.sum(p) - 1},
        {'type': 'eq', 'fun': lambda p: np.dot(p, faces) - target_mean},
    )
    p0 = np.ones(6) / 6
    res = minimize(objective, p0, constraints=cons)
    return res.x

p_jaynes = maxent_die(4.5)
p_unif = np.ones(6) / 6
fig, ax = plt.subplots(figsize=(7, 4))
ax.bar(faces - 0.2, p_unif, width=0.35, label='uniform')
ax.bar(faces + 0.2, p_jaynes, width=0.35, label='MaxEnt mean=4.5')
ax.set_xlabel('face')
ax.set_ylabel('probability')
ax.legend()
mlai.write_figure('jaynes-die-maxent.svg', directory='\writeDiagramsDir/ml')}

\figure{\includediagram{\diagramsDir/ml/jaynes-die-maxent}{75%}}{Jaynes' die: MaxEnt subject to mean 4.5 versus the uniform distribution.}{jaynes-die-maxent}

\slides{
\includediagram{\diagramsDir/ml/jaynes-die-maxent}{75%}
}

<!-- /SNIPPET: _physics/includes/maxent-canonical-gaussian.md -->

\addreading{@MacKay-information03}{Chapter 22}
\addreading{@Cover:elements91}{Chapter 12}

\subsection{The Exponential Family}

\include{_physics/includes/exponential-families.md}

\include{_physics/includes/maximum-entropy-formalism.md}

\speakernotes{LO6. Two-level system = Bernoulli with $\theta=-\beta\varepsilon$. Flag matrix exponential family for week 7.}

\notes{$p(x\mid\theta)=\exp(\theta\cdot T(x)-A(\theta))$. Canonical, Gaussian, and Bernoulli belong because each is MaxEnt for its moments. Softmax is the same calculation with a feature map. The two-spin example is the first sufficient statistic that is a product.}

\include{_ml/includes/softmax-as-maxent.md}

\include{_physics/includes/two-spin-maxent.md}

\subsection{The Legendre Transform}

\include{_information/includes/legendre-transform.md}

\speakernotes{Name the Legendre transform. Check Bernoulli: $A=\log(1+e^\theta)$ recovers binary entropy. Dual charts week 5; $m$-projection week 6.}

\notes{$H=A-\theta\cdot\eta$ is the same subtraction as Helmholtz $F=U-TS$. The conjugate pair $(\theta,\eta)$ is why week 5 has two flat charts on the exponential family.}

\subsection{Three Perspectives}

<!-- SNIPPET: _information/includes/three-perspectives-entropy.md -->

\newslides{Three Perspectives on Entropy}

\slides{Same $H$; three operational assumptions about what probability is over.}

\slidesincremental{
* Shannon: a code — capacity and compression
* Boltzmann/Gibbs: a macrostate at equilibrium
* Jaynes/Bayes: a state of knowledge under constraint
* All three: $H$ forbids, $p$ prescribes
}

\speakernotes{LO7 — intended answer to “how is entropy understood today?” until week 7. Worksheet 2 Part B: Bayesian vs thermodynamic MaxEnt.}

\notes{Shannon treats $H$ as a code bound; Boltzmann counts macrostates at equilibrium; Jaynes treats $p$ as least-committal inference under constraint. All three agree: $H$ forbids, $p$ prescribes.}

\setupcode{import numpy as np

def perspective_table(H_value, p_maxent, p_uniform):
    return {
        'Shannon': {'no_go': f'rate cannot exceed {H_value:.2f} bits', 'prescription': 'use capacity-achieving p'},
        'Boltzmann': {'no_go': 'cannot beat equilibrium occupancy', 'prescription': 'Boltzmann weights'},
        'Jaynes': {'no_go': 'cannot assume more than constraints', 'prescription': 'MaxEnt p'},
    }}

<!-- /SNIPPET: _information/includes/three-perspectives-entropy.md -->

\slidesincremental{
* Shannon: a code
* Boltzmann: a macrostate
* Jaynes: a state of knowledge
* All three: $H$ forbids, $p$ prescribes
}

\include{_information/includes/welling-maxent-elbo.md}

\subsection{Define This Week}

\slidesincremental{
* What is the maximum entropy principle?
* What is the exponential family?
* What is the Legendre transform?
* How is entropy understood today?
}

\subsection{Named, Not Yet Answered}

\notes{The two-spin example constrained three moments of a joint. The same exponential family with *two prescribed marginals* is a MaxEnt coupling. The algorithm is Sinkhorn. Week 8.}

\slidesincremental{
* MaxEnt over a coupling, not a list of moments? (week 8)
}

\subsection{This Week's Pair}

\notes{No-go: do not assume more than the constraints. Prescription: the exponential family.}

\include{_information/includes/entropy-nogo-pair.md}

\subsection{After This Lecture}

\notes{Quiz 2 at the start of lecture 5 (10 November): MaxEnt, exponential family, Landauer, on a four-sided spinner and a Bernoulli — not the Worksheet 2 examples.}

\slidesincremental{
* Quiz 2: 10 November, first ten minutes
* LLM: is MaxEnt a prohibition or a recipe?
}

\reading

\thanks

\references
