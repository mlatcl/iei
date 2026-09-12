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
| 65–95 | Exponential family; two-level $=$ Bernoulli; softmax; two-spin Hamiltonian |
| 95–110 | Legendre transform: $F=U-TS$ again; $H=A-\theta\cdot\eta$ |
| 110–120 | LO7 synthesis; “how is entropy understood today?” |
}

\subsection{Maximum Entropy}

\include{_maths/includes/lagrange-multipliers.md}

<!-- SNIPPET: _physics/includes/laplace-insufficient-reason.md-->

\subsection{Laplace and the Principle of Insufficient Reason}

\include{_physics/includes/laplace-portrait.md}

\newslides{Principle of Insufficient Reason}

\slides{Week 1: Laplace suggested that we treat ignorance with probability. He applied this idea in his estimates of probabilities. He asked himself the question how should we assign $p$ when we know almost nothing?}

\slidesincremental{
* $n$ mutually exclusive, exhaustive outcomes
* Nothing distinguishes one from another
* Assign equal probability: $p_i = 1/n$
}

\speakernotes{Bridge from week 1 (gremlin / ignorance as probability) to MaxEnt. Keep this short: insufficient reason is the zero-constraint special case.}

\notes{In the *Philosophical Essay on Probabilities* [@Laplace-essai14], Laplace argues that probability is relative in part to our ignorance and in part to our knowledge. When we know only that one of $n$ mutually exclusive and exhaustive outcomes must occur, and nothing induces us to prefer one over another, we should assign
\begin{align}
p_i = \frac{1}{n}, \qquad i = 1,\ldots,n.
\end{align}
This is his *principle of insufficient reason* (also called the principle of indifference). It is the least-committal assignment consistent with the information we have: namely, none beyond the list of possibilities and normalisation.}

\notes{The same idea appears in the passage we called Laplace's gremlin in week 1: if several cases are equally possible and nothing favours one, we cannot announce any particular outcome with certainty, and the natural probability weights them equally.}

\newslides{Example: Will the sun rise tomorrow?}

\slides{This is Laplace's example from: *Philosophical Essay on Probabilities* [@Laplace-essai14].}

\includegooglebook{1YQPAAAAQAAJ}{PA16}

\notes{Laplace wondered, what is the probability that the sun will rise tomorrow? We've seen it rise every day so is it 100%?}

\slidesincremental{
* Unknown daily rate $\theta\in[0,1]$; insufficient reason $\Rightarrow$ uniform prior on $\theta$
* Every day is a success: after $n$ rises, belief $\propto\theta^{n}$
* Predictive: $P(\text{rises tomorrow})=\dfrac{n+1}{n+2}$
* Sunrise for $n=1{,}826{,}213$ days: odds $1{,}826{,}214$ to one
* Laplace's caveat: astronomy makes the true odds *incomparably greater*
}

\speakernotes{Board the short derivation. Emphasise: (i) the example is genuine; (ii) Laplace applies insufficient reason to $\theta$, not to tomorrow's binary outcome alone; (iii) every observation is a success — the sun always rises in the data; (iv) he immediately rejects treating the numerical answer as the scientific probability of sunrise.}

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
import mlai}

\plotcode{# Successive sunrises only: after n rises, belief ∝ θ^n (modern Beta(n+1,1)).
# Frames alternate prior/belief → likelihood of one more rise → updated posterior.
theta = np.linspace(0.001, 0.999, 1000)
steps = [1, 2, 3, 5, 10, 20]  # number of observed sunrises after each update
ymax = (steps[-1] + 1) * 1.05
diagrams = '\writeDiagramsDir/ml'
frame = 0

def _axes():
    fig, ax = plt.subplots(figsize=(10, 5))
    ax.set_xlim(0, 1)
    ax.set_ylim(0, ymax)
    ax.set_xlabel(r'$\theta$')
    ax.set_ylabel(r'$p(\theta\mid\mathrm{data})$')
    return fig, ax

def _belief(n):
    # n observed sunrises → density (n+1) θ^n on [0,1]
    return (n + 1) * theta**n

fig, ax = _axes()
ax.plot(theta, _belief(0), color=[1, 0, 0], linewidth=3)
ax.text(0.05, ymax * 0.9, r'prior (insufficient reason)', fontsize=16, color=[1, 0, 0])
ax.text(0.05, ymax * 0.8, r'$P(\mathrm{next\ rise})=\frac{1}{2}$', fontsize=16)
frame += 1
mlai.write_figure(f'laplace-succession{frame:03d}.svg', directory=diagrams)

for n in steps:
    # Likelihood of one more sunrise: ∝ θ (always a success)
    fig, ax = _axes()
    if n == 1:
        ax.plot(theta, _belief(0), color=[1, 0, 0], linewidth=2, alpha=0.35)
    else:
        ax.plot(theta, _belief(n - 1), color=[1, 0, 1], linewidth=2, alpha=0.35)
    ax.plot(theta, theta * (ymax * 0.35), color=[0, 0, 1], linewidth=3)  # shape ∝ θ
    ax.text(0.05, ymax * 0.9, r'likelihood: one more sunrise $\propto\theta$', fontsize=16, color=[0, 0, 1])
    ax.text(0.05, ymax * 0.8, r'(observation $%d$)' % n, fontsize=14)
    frame += 1
    mlai.write_figure(f'laplace-succession{frame:03d}.svg', directory=diagrams)

    # Posterior after n sunrises
    fig, ax = _axes()
    ax.plot(theta, _belief(n), color=[1, 0, 1], linewidth=3)
    ax.text(0.05, ymax * 0.9, r'after $%d$ sunrise(s)' % n, fontsize=16, color=[1, 0, 1])
    ax.text(0.05, ymax * 0.8,
            r'$P(\mathrm{next})=\frac{%d}{%d}$' % (n + 1, n + 2),
            fontsize=16)
    frame += 1
    mlai.write_figure(f'laplace-succession{frame:03d}.svg', directory=diagrams)

n_frames = frame}

\slides{\define{width}{70%}
\startanimation{laplace-succession}{1}{13}
\newframe{\includediagram{\diagramsDir/ml/laplace-succession001}{\width}}{laplace-succession}
\newframe{\includediagram{\diagramsDir/ml/laplace-succession002}{\width}}{laplace-succession}
\newframe{\includediagram{\diagramsDir/ml/laplace-succession003}{\width}}{laplace-succession}
\newframe{\includediagram{\diagramsDir/ml/laplace-succession004}{\width}}{laplace-succession}
\newframe{\includediagram{\diagramsDir/ml/laplace-succession005}{\width}}{laplace-succession}
\newframe{\includediagram{\diagramsDir/ml/laplace-succession006}{\width}}{laplace-succession}
\newframe{\includediagram{\diagramsDir/ml/laplace-succession007}{\width}}{laplace-succession}
\newframe{\includediagram{\diagramsDir/ml/laplace-succession008}{\width}}{laplace-succession}
\newframe{\includediagram{\diagramsDir/ml/laplace-succession009}{\width}}{laplace-succession}
\newframe{\includediagram{\diagramsDir/ml/laplace-succession010}{\width}}{laplace-succession}
\newframe{\includediagram{\diagramsDir/ml/laplace-succession011}{\width}}{laplace-succession}
\newframe{\includediagram{\diagramsDir/ml/laplace-succession012}{\width}}{laplace-succession}
\newframe{\includediagram{\diagramsDir/ml/laplace-succession013}{\width}}{laplace-succession}
\endanimation}

\notes{\figure{\includediagram{\diagramsDir/ml/laplace-succession013}{70%}}{Successive sunrises only. Each observation multiplies the current belief by a likelihood $\propto\theta$; after $n$ rises the density is $(n+1)\theta^n$ and the predictive probability is $(n+1)/(n+2)$. The mass piles up toward $\theta=1$ as $n$ grows.}{laplace-succession-figure}}

\notes{Laplace applies insufficient reason not only to discrete outcomes, but to an unknown daily rate $\theta\in[0,1]$. Knowing nothing about $\theta$, he places a uniform prior $p(\theta)=1$ on the unit interval. Every recorded day is a *success*: the sun rose. After $n$ independent rises the likelihood is $\theta^n$, so
\begin{align}
p(\theta\mid n\text{ rises}) \propto \theta^{n},
\end{align}
and the probability of one further rise is the posterior mean
\begin{align}
P(\text{rises tomorrow}\mid n\text{ rises})
  = \int_0^1 \theta\, p(\theta\mid n\text{ rises})\,\mathrm{d}\theta
  = \frac{n+1}{n+2}.
\end{align}
This is *Laplace's rule of succession* (the same “$+1$, $+2$” that later appears as Laplace smoothing). In modern notation the posterior is $\mathrm{Beta}(n+1,1)$; after each new sunrise it becomes $\mathrm{Beta}(n+2,1)$, more sharply peaked at $\theta=1$, while the predictive odds move from $1{:}1$ toward certainty without ever quite reaching it.}

\speakernotes{Aside, if asked: Laplace did *not* use the Laplace approximation here — exact integral, modern Beta packaging.}

\notes{Laplace did not have the Beta distribution by name, and he did not need the Laplace approximation for this result. In the 1774 memoir on inverse probability he evaluates the normalising integrals exactly — what we now write as $\int_0^1 \theta^{n}\,\mathrm{d}\theta = 1/(n+1)$ — via what he called Euler's series. The Beta language is modern packaging of that calculation. The *Laplace approximation* (a local Gaussian expansion of an integrand about its mode) is a different tool, also named after him; it is not how the rule of succession was obtained.}

\notes{In the Essay he takes the oldest historical epoch as five thousand years, or $n=1{,}826{,}213$ days of recorded sunrise, and concludes that — *on this information alone* — the odds on tomorrow's sunrise are $1{,}826{,}214$ to one. He then adds, in the next sentence, that for anyone who recognises the astronomical regularity of days and seasons the probability is *incomparably greater*. The sunrise calculation is a demonstration of the rule under deliberate ignorance of mechanism, not Laplace's estimate of whether the sun will rise.}

\notes{So the preliminary example already shows the pattern we need: insufficient reason supplies the prior of ignorance; each success updates it and peels a little more mass away from small $\theta$; the predictive probability is not the raw frequency $n/n=1$.}

\newslides{From Insufficient Reason to MaxEnt}

\slidesincremental{
* Insufficient reason: uniform when we know only the outcomes (or only $\theta\in[0,1]$)
* Rule of succession: same idea, after observing counts
* Jaynes: maximise $H(p)$ subject to whatever we *do* know
* No extra constraints $\Rightarrow$ MaxEnt recovers $p_i = 1/n$
* Mean energy (or other moments) $\Rightarrow$ exponential family
}

\speakernotes{The punchline: MaxEnt is Laplace's principle with constraints. Uniform / rule of succession are the empty-moment cases; Boltzmann and the Gaussian arrive when we add moment constraints.}

\notes{The principle of insufficient reason, and the rule of succession built from it, answer the case where our information is a list of possibilities and (optionally) raw counts. As soon as we know more — a mean face value on a die, a mean energy, a variance — equal weights, or a uniform prior on a single rate, may fail to encode that information. Jaynes' maximum entropy principle extends Laplace's idea: among all distributions that match the stated constraints, choose the one that maximises Shannon entropy $H(p)=-\sum_i p_i\log p_i$. That choice is maximally noncommittal with respect to everything else.

With only the normalisation constraint $\sum_i p_i=1$, MaxEnt recovers Laplace's uniform assignment $p_i=1/n$. With an additional mean-energy constraint, the same calculation yields Boltzmann weights. With mean and variance, it yields a Gaussian. The exponential family is therefore the family of distributions that generalise insufficient reason from “we know nothing” (or “we know only these counts”) to “we know these moments and nothing more.”}

\notes{Critiques of bare indifference (Bertrand's paradox and related reparameterisation puzzles) motivate the need for an explicit state space and explicit constraints — which is exactly what the MaxEnt formalism supplies. We will not pursue those paradoxes here; the operational fix is to state what is held fixed before maximising $H$. Laplace's own sunrise caveat makes the same point in plain language: once you know the mechanism, you no longer pretend to know only the counts.}

<!-- /SNIPPET: _physics/includes/laplace-insufficient-reason.md-->

\subsection{Jaynes and Maximum Entropy}

\figure{\includejpg{\diagramsDir/physics/e-t-jaynes}{40%}}{Ed Jaynes who developed the maximum entropy principle}{e-t-jaynes}

\include{_physics/includes/maximum-entropy-motivation.md}
\include{_physics/includes/dieroll.md}
\include{_physics/includes/maximum-entropy-formalism.md}

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

\slides{
\includediagram{\diagramsDir/ml/jaynes-die-maxent}{75%}
}

<!-- /SNIPPET: _physics/includes/maxent-canonical-gaussian.md -->

\addreading{@MacKay-information03}{Chapter 22}
\addreading{@Cover:elements91}{Chapter 12}

\subsection{The Exponential Family}

\include{_physics/includes/exponential-families.md}

\include{_physics/includes/maximum-entropy-formalism.md}

\speakernotes{LO6. Two-level system = Bernoulli with $\theta=-\beta\varepsilon$. Flag matrix exponential family for week 8.}

\notes{$p(x\mid\theta)=\exp(\theta\cdot T(x)-A(\theta))$. Canonical, Gaussian, and Bernoulli belong because each is MaxEnt for its moments. Softmax is the same calculation with a feature map. The two-spin example is the first sufficient statistic that is a product.}

\include{_ml/includes/softmax-as-maxent.md}

\include{_physics/includes/two-spin-maxent.md}

\subsection{The Legendre Transform}

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
