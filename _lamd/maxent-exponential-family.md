---
title: "Maximum Entropy and the Exponential Family"
week: 5
layout: lecture
date: 2026-11-10
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  Jaynes' maximum entropy principle, the exponential family as the MaxEnt
  family, and the first synthesis of the three operational readings of
  entropy. This is the intended answer to “how is entropy understood today?”,
  to be revised again after von Neumann entropy in week 8.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO5, LO6, LO7]
duration_hours: 2
type: lecture
in_class_test:
  id: Q2
  duration_minutes: 10
  timing: start
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

\notes{Worksheet 2 is due at the start of this session. Quiz 2 occupies the first ten minutes (MaxEnt, exponential family, Landauer).}

\subsection{This Session}

\slidesincremental{
* Laplace: insufficient reason $\to$ rule of succession
* MaxEnt with Lagrange multipliers
* Exponential family as the MaxEnt family
* Legendre: entropy as conjugate of $A(\theta)$
* Three perspectives: the intended comparison
}

\notes{
**Time plan (120 minutes)**

| Minutes | Block |
|--------:|-------|
| 0–10 | Quiz 2 (Moodle); collect Worksheet 2 |
| 10–55 | Laplace $\to$ Jaynes; Lagrange; die and Gaussian |
| 55–65 | Break |
| 65–85 | MaxEnt proof $\to$ exponential family; $\theta=-\lambda$ |
| 85–100 | Examples: Bernoulli, softmax, two-spin |
| 100–110 | Legendre transform: $F=U-TS$ again; $H=A-\theta\cdot\eta$ |
| 110–120 | LO7 synthesis; “how is entropy understood today?” |
}

\include{_iei/includes/iei-notebook-setup.md}

\subsection{Maximum Entropy}

\include{_maths/includes/lagrange-multipliers.md}
\include{_physics/includes/laplace-insufficient-reason.md}

\subsection{Jaynes and Maximum Entropy}

\figure{\includejpg{\diagramsDir/physics/e-t-jaynes}{40%}}{Ed Jaynes who developed the maximum entropy principle}{e-t-jaynes}

\include{_physics/includes/maximum-entropy-motivation.md}
\include{_physics/includes/dieroll.md}

\addreading{@Jaynes-information57}{the whole paper}

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


<!-- /SNIPPET: _physics/includes/maxent-canonical-gaussian.md -->

\include{_physics/includes/boltzmann-derivation.md}

<!-- SNIPPET: _physics/includes/maxent-to-exponential-family.md -->

\subsection{MaxEnt Under Constraints: the Proof}

\slides{This is the week's main theorem: constrained MaxEnt $\Rightarrow$ exponential family.}

\slidesincremental{
* Discrete $x_i$; maximise $H(p)=-\sum_i p_i\log p_i$
* Constraints: $\sum_i p_i=1$ and $\sum_i p_i f_k(x_i)=\langle f_k\rangle$ for $k=1,\ldots,m$
* Lagrangian: $\mathscr{L}=\sum_i p_i\log p_i + \lambda_0\bigl(\sum_i p_i-1\bigr)+\sum_k \lambda_k\bigl(\sum_i p_i f_k(x_i)-\langle f_k\rangle\bigr)$
* Stationarity: $\partial\mathscr{L}/\partial p_i=0$ $\Rightarrow$ $p_i\propto e^{-\sum_k \lambda_k f_k(x_i)}$
}

\speakernotes{Board the derivative. Sign: we maximise $H$ so the Lagrangian uses $+\log p_i$ terms; Jaynes' die and Boltzmann are special cases with one constraint $f_1(x)=x$ or $f_1(x)=E_i$.}

\notes{Fix a finite outcome set $\{x_1,\ldots,x_n\}$ and unknown probabilities $p_i>0$. The maximum entropy principle asks for the $p_i$ that maximise Shannon entropy
\begin{align}
H(p) = -\sum_{i=1}^n p_i \log p_i
\end{align}
subject to normalisation and $m$ moment constraints
\begin{align}
\sum_{i=1}^n p_i = 1, \qquad
\sum_{i=1}^n p_i f_k(x_i) = \langle f_k\rangle \quad (k=1,\ldots,m).
\end{align}
Introduce Lagrange multipliers $\lambda_0,\lambda_1,\ldots,\lambda_m$ and form
\begin{align}
\mathscr{L}(p,\lambda)
  = \sum_i p_i \log p_i
  + \lambda_0\Bigl(\sum_i p_i - 1\Bigr)
  + \sum_{k=1}^m \lambda_k\Bigl(\sum_i p_i f_k(x_i) - \langle f_k\rangle\Bigr).
\end{align}
At an interior maximum, $\partial \mathscr{L}/\partial p_i = 0$ gives
\begin{align}
\log p_i + 1 + \lambda_0 + \sum_{k=1}^m \lambda_k f_k(x_i) = 0,
\end{align}
so
\begin{align}
p_i = \exp\Bigl(-1-\lambda_0\Bigr)\,
      \exp\Bigl(-\sum_{k=1}^m \lambda_k f_k(x_i)\Bigr).
\end{align}
Absorbing $\exp(-1-\lambda_0)$ into the normalisation constant,
\begin{align}
p_i = \frac{\exp\bigl(-\sum_{k=1}^m \lambda_k f_k(x_i)\bigr)}
            {Z(\lambda_1,\ldots,\lambda_m)},
\qquad
Z = \sum_{i=1}^n \exp\Bigl(-\sum_{k=1}^m \lambda_k f_k(x_i)\Bigr).
\end{align}
The multipliers are fixed by substituting this $p$ back into the constraints. The maximum entropy is
\begin{align}
H_{\max} = \log Z + \sum_{k=1}^m \lambda_k \langle f_k\rangle.
\end{align}
This is the same calculation as Jaynes' die (one linear constraint on the face value) and, with $f_1(x_i)=E_i$, the canonical ensemble.}

\newslides{Exponential Family: Lagrange Multipliers Are Natural Parameters}

\slidesincremental{
* Write $T_k(x_i)=f_k(x_i)$: sufficient statistics fixed by the constraints
* MaxEnt solution: $p_i=\dfrac{e^{-\sum_k \lambda_k T_k(x_i)}}{Z}$ on the discrete support
* Exponential family: $p(x\mid\boldsymbol{\theta})\propto \exp\bigl(\boldsymbol{\theta}\!\cdot\! T(x)-A(\boldsymbol{\theta})\bigr)$
* Identification: $\boldsymbol{\theta} = -\boldsymbol{\lambda}$ (natural parameters $=$ minus Lagrange multipliers)
* $A(\boldsymbol{\theta})=\log Z(-\boldsymbol{\theta})$; $\langle T_k\rangle = \partial A/\partial\theta_k$
}

\speakernotes{LO6 punchline. Physics sign: Boltzmann uses $p_i\propto e^{-\beta E_i}$ so $\theta_1=-\beta$ when $T=E$. Bernoulli two-level: $\theta=-\beta\varepsilon$.}

\notes{The constrained MaxEnt distribution is not merely *like* an exponential family — on a finite (or countable) state space it *is* one. Take sufficient statistics $T_k(x)=f_k(x)$. Then the MaxEnt assignment is
\begin{align}
p(x\mid\boldsymbol{\theta}) = \exp\bigl(\boldsymbol{\theta}\cdot T(x) - A(\boldsymbol{\theta})\bigr)\, h(x),
\end{align}
with $h(x)$ the counting measure on the allowed outcomes and
\begin{align}
A(\boldsymbol{\theta}) = \log \sum_x \exp\bigl(\boldsymbol{\theta}\cdot T(x)\bigr).
\end{align}
The Lagrange multipliers from the proof are the *negative* natural parameters:
\begin{align}
\theta_k = -\lambda_k.
\end{align}
We use the minus sign so that high-energy states are down-weighted when $\theta_1=-\beta<0$ in the canonical ensemble. The constraint values enter through the Legendre dual: $\eta_k = \langle T_k\rangle = \partial A/\partial \theta_k$, and the $\lambda_k$ (equivalently $\theta_k$) are chosen so these expectations match the data. Weeks 6–7 reuse this pair $(\boldsymbol{\theta},\boldsymbol{\eta})$ as dual coordinates on the same manifold.}

\notes{Continuous $x$ is the same pattern with sums replaced by integrals; Gaussian MaxEnt (mean and variance fixed) is the flagship continuous example. Softmax and the two-spin Hamiltonian later in this lecture are the same theorem with richer $T(x)$.}

<!-- /SNIPPET: _physics/includes/maxent-to-exponential-family.md -->

\addreading{@MacKay-information03}{Chapter 22}
\addreading{@Cover:elements91}{Chapter 12}

\include{_physics/includes/maximum-entropy-formalism.md}

\section{The Exponential Family}

\include{_physics/includes/exponential-families.md}

\speakernotes{LO6. Two-level system = Bernoulli with $\theta=-\beta\varepsilon$. Flag matrix exponential family for week 8.}

\notes{The definition $p(x\mid\boldsymbol{\theta})=\exp(\boldsymbol{\theta}\cdot T(x)-A(\boldsymbol{\theta}))$ is the notation for what we have just derived. Canonical, Gaussian, and Bernoulli belong because each is MaxEnt for its moments. Softmax is the same calculation with a feature map. The two-spin example is the first sufficient statistic that is a product.}

\include{_ml/includes/softmax-as-maxent.md}

\include{_physics/includes/two-spin-maxent.md}

\include{_information/includes/legendre-transform.md}

\speakernotes{Name the Legendre transform. Check Bernoulli: $A=\log(1+e^\theta)$ recovers binary entropy. One slide on $F$ versus $G$: we stay with Helmholtz. Dual charts week 6; $m$-projection week 7.}

\notes{$H=A-\theta\cdot\eta$ is the same subtraction as Helmholtz $F=U-TS$. The conjugate pair $(\theta,\eta)$ is why week 6 has two flat charts on the exponential family. Gibbs $G=F+PV$ is named only: chemistry at fixed $T,P$; this module's baths are fixed-$T$ on a fixed state space.}

\subsection{Three Perspectives}

<!-- SNIPPET: _information/includes/three-perspectives-entropy.md -->

\newslides{Three Perspectives on Entropy}

\slides{Same $H$; three operational assumptions about what probability is over.}

\slidesincremental{
* Carnot/Clausius: a heat engine — efficiency and the second law
* Shannon: a code — capacity and compression
* Szilard/Landauer: a bit in memory — $k_B T \ln 2$ work and erasure
* Boltzmann/Gibbs: a macrostate at equilibrium
* Jaynes/Bayes: a state of knowledge under constraint
* All four layers: $H$ forbids, $p$ prescribes
}

\speakernotes{LO7 — intended answer to “how is entropy understood today?” until week 8. Carnot/Clausius is macroscopic; Szilard/Landauer links bits to joules; Shannon and Jaynes are information layers.}

\notes{Clausius gives the macroscopic second law and names entropy. Shannon treats $H$ as a code bound; Szilard and Landauer tie one bit to $k_BT\ln 2$ of work and erasure; Boltzmann counts macrostates at equilibrium; Jaynes treats $p$ as least-committal inference under constraint. All agree: $H$ forbids, $p$ prescribes.}

\setupcode{import numpy as np

def perspective_table(H_value, p_maxent, p_uniform):
    return {
        'Shannon': {'no_go': f'rate cannot exceed {H_value:.2f} bits', 'prescription': 'use capacity-achieving p'},
        'Boltzmann': {'no_go': 'cannot beat equilibrium occupancy', 'prescription': 'Boltzmann weights'},
        'Jaynes': {'no_go': 'cannot assume more than constraints', 'prescription': 'MaxEnt p'},
    }}

<!-- /SNIPPET: _information/includes/three-perspectives-entropy.md -->

\slidesincremental{
* Carnot/Clausius: engines and the second law
* Shannon: a code
* Szilard/Landauer: a bit in memory
* Boltzmann: a macrostate
* Jaynes: a state of knowledge
* All layers: $H$ forbids, $p$ prescribes
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


\subsection{After This Lecture}

\notes{Quiz 2 opens this session (10 November): MaxEnt, exponential family, Landauer, on a four-sided spinner and a Bernoulli — not the Worksheet 2 examples.}

\slidesincremental{
* Quiz 2: 10 November, first ten minutes
}

\reading

\thanks

\references
