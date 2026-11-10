---
title: "Maximum Entropy and the Exponential Family"
week: 5
layout: lecture
date: 2026-11-10
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  KL divergence via overlapping coarse-graining and Jaynes' reference measure,
  then Jaynes' maximum entropy principle and the exponential family as the
  MaxEnt family. Soft partitions name mutual information; continuous MaxEnt
  minimises KL to a measure and recovers Maxwell--Boltzmann. $\log Z$ as
  cumulant generating function ($A=\log Z$, $\eta=\nabla A$) closes the
  exponential-family hour; the Legendre transform waits for week 6.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO5, LO6, LO7]
duration_hours: 2
type: lecture
in_class_test: null
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

\notes{No class test today. Quiz 2 was last week (start of lecture 4). Worksheet 2 was due last week. Open with the Quiz 2 debrief; Worksheet 2 feedback is still to be added to the same include. Then KL (overlap, Radon--Nikodym / Jaynes $m$, mutual information, properties), then MaxEnt.}

\subsection{This Session}

\slidesincremental{
* Quiz 2 feedback (cohort figures; $\log Z$ as free energy; heat thread)
* Overlap: derive $H(I\mid X)$; name mutual information
* Jaynes $m$ and Radon--Nikodym: relative entropy is KL
* Mutual information is a KL; KL discrete or continuous
* MaxEnt under energy constraint; Jaynes die; minimise KL to $m$
* Exponential family: $\theta=-\lambda$; $\log Z$ as CGF
}

\notes{
**Time plan.** The slot is 10:05--11:55 (110 minutes, not 120).
Legendre ($H=A-\theta\cdot\eta$, dual charts) is week 6. $\log Z$ as CGF is today.

| Clock | Block |
|------:|-------|
| 10:05--10:20 | Quiz 2 debrief (mean $6.3/10$ vs Quiz 1 $8.2$; $\log Z$ as $F$; heat thread) |
| 10:20--10:45 | KL arc: overlap $\to$ MI; RN / Jaynes $m$; MI as KL; KL properties |
| 10:45--11:00 | MaxEnt setup; Lagrange |
| 11:00--11:10 | Break |
| 11:10--11:30 | Discrete MaxEnt: Jaynes die |
| 11:30--11:45 | Minimise $\KL{f}{m}$ under kinetic constraint; Maxwell--Boltzmann |
| 11:45--11:55 | Exponential family; $\theta=-\lambda$; $\log Z$ as CGF; LO7 in brief |
}

\include{includes/week5-homework-debrief.md}

\include{_iei/includes/iei-notebook-setup.md}

\subsection{KL: Overlap, Measure, Mutual Information}

\notes{Week 4 stopped at exclusive partitions. Soft mixtures leave leftover uncertainty about the label. That leftover is mutual information, and mutual information is a KL. Before MaxEnt we need that language, and we need to recognise that Week 4's undeclared reference $m$ was already a KL.}

\include{_information/includes/grouping-partition-overlap-mi.md}

\subsection{Relative Entropy Is KL}

\slides{Week 4's undeclared $m$ was already a KL. Name it.}

\slidesincremental{
* Densities $f$ and $m$: ${\mathrm{d}}F/{\mathrm{d}}m=f/m$
* Relative entropy $\int f\log(f/m)\,dx$ is $\KL{f}{m}$
* Jaynes' limiting density of states is that reference $m$
}

\speakernotes{Week 4 wrote the ratio and the Jacobian. Relative entropy to $m$ is KL; undeclared $m$ was the missing measure. Mutual information was already written as a KL on the previous slides.}

\include{_information/includes/radon-nikodym-density-ratio.md}

\include{_physics/includes/jaynes-limiting-density.md}

\include{_information/includes/kl-divergence-discrete-continuous.md}

\addreading{@Cover:elements91}{Chapter 12}

\subsection{Maximum Entropy}

\newslides{The Constrained Problem}

\slides{Entropy tends to increase. Energy is constrained. Which $p$?}

\slidesincremental{
* Second law: unconstrained, $H$ grows
* Fixed mean energy (or other moments): not every $p$ is allowed
* MaxEnt: among distributions that meet the constraints, take the largest $H$
}

\speakernotes{State the problem before Lagrange. Not ``entropy is maximised in nature'' as metaphysics: given what we know (the constraints), which distribution assumes least else?}

\notes{If there were no constraints beyond normalisation, Shannon entropy on a finite alphabet is maximised by the uniform distribution. Thermodynamics adds constraints: mean energy fixed, or mean and variance, or a list of moments. The maximum entropy principle asks for the distribution of largest $H$ among those that meet the constraints. That is today's discrete calculation (Jaynes' die). Equivalently, one may minimise $\KL{p}{m}$ to a declared reference measure $m$ under the same constraints; that is the continuous ideal-gas reading after the break.}

\include{_maths/includes/lagrange-multipliers.md}

\include{_physics/includes/laplace-insufficient-reason.md}

\newslide{Edwin Jaynes}

\figure{\includejpg{\diagramsDir/physics/e-t-jaynes}{40%}}{Ed Jaynes who developed the maximum entropy principle}{e-t-jaynes}

\include{_physics/includes/maximum-entropy-motivation.md}
\include{_physics/includes/dieroll.md}

\addreading{@Jaynes-information57}{the whole paper}

\newslide{MaxEnt Recovers Boltzmann and Gaussian}

\slides{Jaynes' die (mean 4.5, not 3.5) is the running example. The same Lagrange move recovers physics and statistics.}

\slidesincremental{
* One constraint: mean energy $\Rightarrow$ $p_i \propto e^{-\beta E_i}$
* Two constraints: mean and variance $\Rightarrow$ Gaussian
* Lagrange multiplier on energy is coldness $\beta$ from week 1
}

\speakernotes{LO5. After the die demo, the canonical ensemble and the Gaussian are the same MaxEnt pattern. Worksheet 2 implements the die.}

\notes{Maximum entropy forbids assuming more structure than the constraints; probability is the recipe. One mean-energy constraint gives Boltzmann weights; mean and variance give the Gaussian. The Lagrange multiplier on energy is coldness $\beta$.}

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

\newslide{}

\figure{\includediagram{\diagramsDir/ml/jaynes-die-maxent}{75%}}{Jaynes' die: MaxEnt subject to mean 4.5 versus the uniform distribution.}{jaynes-die-maxent}

\include{_physics/includes/boltzmann-derivation.md}

\subsection{MaxEnt Under Constraints: the Proof}

\slides{Constrained MaxEnt on a discrete support gives an exponential family.}

\slidesincremental{
* Discrete $x_i$; maximise $H(p)=-\sum_i p_i\log p_i$
* Constraints: $\sum_i p_i=1$ and $\sum_i p_i f_k(x_i)=\langle f_k\rangle$ for $k=1,\ldots,m$
* Lagrangian: $\mathscr{L}=\sum_i p_i\log p_i + \lambda_0\bigl(\sum_i p_i-1\bigr)+\sum_k \lambda_k\bigl(\sum_i p_i f_k(x_i)-\langle f_k\rangle\bigr)$
* Stationarity: $\partial\mathscr{L}/\partial p_i=0$ $\Rightarrow$ $p_i\propto e^{-\sum_k \lambda_k f_k(x_i)}$
}

\speakernotes{The stationarity condition is $\partial L/\partial p_i=0$. Sign: we maximise $H$ so the Lagrangian uses $+\log p_i$ terms; Jaynes' die and Boltzmann are special cases with one constraint $f_1(x)=x$ or $f_1(x)=E_i$.}

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

\include{_physics/includes/maxent-reference-measure-density-of-states.md}

\speakernotes{Same principle, continuous reading: minimise $\KL{f}{m}$ at fixed mean kinetic energy. Lebesgue on $v_x$ gives a Gaussian component; Lebesgue on $\mathbb{R}^3$ (shell $v^2$ in speed) gives Maxwell--Boltzmann. The $v^2$ is the density of states.}

\addreading{@MacKay-information03}{Chapter 22}

\include{_physics/includes/maximum-entropy-formalism.md}

\section{The Exponential Family}

\newslides{Exponential Family: $\theta=-\lambda$}

\slidesincremental{
* Write $T_k(x_i)=f_k(x_i)$: sufficient statistics fixed by the constraints
* MaxEnt solution: $p_i=\dfrac{e^{-\sum_k \lambda_k T_k(x_i)}}{Z}$ on the discrete support
* Exponential family: $p(x\mid\boldsymbol{\theta})\propto \exp\bigl(\boldsymbol{\theta}\!\cdot\! T(x)-A(\boldsymbol{\theta})\bigr)$
* Identification: $\boldsymbol{\theta} = -\boldsymbol{\lambda}$ (natural parameters $=$ minus Lagrange multipliers)
* Same object: $A(\boldsymbol{\theta})=\log Z(-\boldsymbol{\theta})$
}

\speakernotes{LO6 punchline. Physics sign: Boltzmann uses $p_i\propto e^{-\beta E_i}$ so $\theta_1=-\beta$ when $T=E$. Bernoulli two-level: $\theta=-\beta\varepsilon$. Next: $\log Z$ (equivalently $A$) as cumulant generating function.}

\notes{The constrained MaxEnt distribution is not merely *like* an exponential family --- on a finite (or countable) state space it *is* one. Take sufficient statistics $T_k(x)=f_k(x)$. Then the MaxEnt assignment is
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
We use the minus sign so that high-energy states are down-weighted when $\theta_1=-\beta<0$ in the canonical ensemble. The Quiz 2 debrief read $\log Z$ as available energy / $F=-k_BT\log Z$. The same $Z$ is also a cumulant generating function.}

\subsection{$\log Z$ as Cumulant Generating Function}

\newslides{$A(\theta)=\log Z$ Generates Cumulants}

\slidesincremental{
* Debrief: $F=-k_BT\log Z$ (available energy)
* MaxEnt / exponential family: $A(\boldsymbol{\theta})=\log Z(-\boldsymbol{\theta})$
* Mean parameters: $\boldsymbol{\eta}=\nabla A=\langle T\rangle$
* Hessian: $G=\nabla^2 A=\mathrm{Cov}[T]$ (Fisher metric in week 6)
}

\speakernotes{Solid CGF review today. Legendre dual $H=A-\theta\cdot\eta$ waits for week 6; do not derive the transform now.}

\include{_physics/includes/partition-function-generating.md}

\notes{The two-state plots recover $U=-\partial_\beta\log Z$ and $F=-\beta^{-1}\log Z$. In exponential-family coordinates the same object is $A(\boldsymbol{\theta})$: $\eta=\nabla A$ are the mean parameters conjugate to $\theta$, and $\nabla^2 A$ is the covariance of the sufficient statistics. Week 6 takes that Hessian as the Fisher metric and Legendre-dualises $(\theta,\eta)$.}

\include{_physics/includes/exponential-families.md}

\speakernotes{LO6. Two-level system = Bernoulli with $\theta=-\beta\varepsilon$. Softmax and two-spin are the same theorem with richer $T(x)$; name them if the clock is tight. Flag matrix exponential family for week 8.}

\notes{The definition $p(x\mid\boldsymbol{\theta})=\exp(\boldsymbol{\theta}\cdot T(x)-A(\boldsymbol{\theta}))$ is the notation for what we have just derived. Canonical, Gaussian, and Bernoulli belong because each is MaxEnt for its moments. Softmax is the same calculation with a feature map. The two-spin example is the first sufficient statistic that is a product --- named for later if needed.}

\subsection{Three Perspectives (Brief)}

\slides{Same $H$; different operational assumptions about what probability is over.}

\slidesincremental{
* Carnot/Clausius: engines and the second law
* Shannon: a code
* Szilard/Landauer: a bit in memory
* Boltzmann: a macrostate; Jaynes: a state of knowledge
* All layers: $H$ forbids, $p$ prescribes
}

\speakernotes{LO7 in brief. Full colour waits if the KL arc ran long. Intended answer to ``how is entropy understood today?'' until week 8.}

\notes{Clausius gives the macroscopic second law and names entropy. Shannon treats $H$ as a code bound; Szilard and Landauer tie one bit to $k_BT\ln 2$ of work and erasure; Boltzmann counts macrostates at equilibrium; Jaynes treats $p$ as least-committal inference under constraint. All agree: $H$ forbids, $p$ prescribes.}

\subsection{Define This Week}

\slidesincremental{
* What is KL divergence (discrete and continuous)?
* What is mutual information, and why is it a KL?
* What is the maximum entropy principle?
* What is the exponential family, and why $\theta=-\lambda$?
* Why is $\log Z$ (equivalently $A$) a cumulant generating function?
}

\subsection{After This Lecture}

\notes{No class test today. Quiz 3 is 17 November at the start of lecture 6, on Weeks 4--5 as delivered (grouping, soft partitions / MI, KL, MaxEnt, exponential family, $\log Z$ as CGF).}

\slidesincremental{
* Quiz 3: 17 November, first ten minutes
}

\reading

\thanks

\references
