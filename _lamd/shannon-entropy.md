---
title: "Shannon Entropy and the Partition Function"
week: 3
layout: lecture
date: 2026-10-27
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  Week 2 stopped at embodiment as delivered: we open with that unfinished queue
  (information game / MacKay / die coarse-graining; Gibbs--Boltzmann; free energy
  $F=U-TS$; HMC), then Shannon entropy, arithmetic coding and Dasher, the
  partition function as a generating function, KL / differential entropy, and
  finally bath / Schottky / finite-time dissipation.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO1, LO2, LO3]
duration_hours: 2
type: lecture
in_class_test: null
reading:
  - title: "A Mathematical Theory of Communication"
    author: "Shannon"
    chapter: "Sections 1–6"
    estimated_hours: 2
  - title: "Information Theory, Inference, and Learning Algorithms"
    author: "MacKay"
    chapter: "Chapters 1–4; 6 (arithmetic coding / Dasher); 8–10"
    estimated_hours: 3.5
  - title: "Elements of Information Theory"
    author: "Cover and Thomas"
    chapter: "Chapters 2 and 7; Theorem 2.8.1 stated, not proved"
    estimated_hours: 2
  - title: "Thermodynamics and an Introduction to Thermostatistics"
    author: "Callen"
    chapter: "Chapters 1–4, 5–6 (free energy); Chapter 16 (Schottky)"
    estimated_hours: 2
    required: false
  - title: "Generative AI and Stochastic Thermodynamics"
    author: "Welling, Lu and Holdijk"
    chapter: "§1.2.3–1.2.4; §3.2.4"
    estimated_hours: 0.5
    required: false
---

\notes{No class test today. Week 2 stopped at embodiment: open with die / MacKay / Gibbs / $F$ / HMC, then Shannon $H$, $Z$, KL / differential entropy, then bath / Schottky / finite time. Honest note: this is a packed session --- prioritise carry-over and Shannon axioms if time runs short.}

\subsection{This Session}

\slidesincremental{
* Finish Week 2: die / MacKay → Gibbs / $F$ → HMC
* Shannon $H$; Boltzmann $S = kH$
* Arithmetic coding → Dasher; $Z$; $\KL{\cdot}{\cdot}$
* Bath; Schottky; finite-time dissipation named
}

\notes{
**Time plan (120 minutes; crowded)**

| Minutes | Block |
|--------:|-------|
| 0–25 | Week 2 carry-over: info game / MacKay / die grouping |
| 25–45 | Gibbs--Boltzmann; $F=U-TS$; HMC (compressed if needed) |
| 45–55 | Break |
| 55–80 | Shannon axioms; $S=kH$; arithmetic coding / Dasher |
| 80–100 | $Z$; KL; differential entropy / Maxwell Jacobian; local equilibrium |
| 100–120 | Bath; Schottky; finite-time naming (statements; $I$/capacity if time) |

}

\subsection{Week 2 Carry-Over}

\notes{As delivered, Week 2 stopped at embodiment. Open with the unfinished queue: information game / MacKay / die coarse-graining and grouping, then Gibbs--Boltzmann, free energy $F=U-TS$, and HMC. Shannon axioms follow.}

\newslide{Finish Week 2 First}

\slides{Week 2 stopped at *Atomic Human* / embodiment. Today we clear that queue before Shannon.}

\slidesincremental{
* Info game / MacKay / die coarse-graining
* Gibbs--Boltzmann; $F=U-TS$; HMC
* Then: Shannon $H$, $Z$, Schottky
}

\include{_information/includes/information-game-guessing.md}

\include{_information/includes/mackay-weighing-problem.md}

\include{_information/includes/die-coarse-graining.md}

\include{_information/includes/entropy-grouping-composition.md}

\include{_information/includes/coarse-graining-intelligence.md}

\include{_information/includes/grouping-static-vs-ensemble.md}


\speakernotes{Grouping prepares the chain rule. Axiomatic $H$ follows after Gibbs / $F$ / HMC.}

\subsection{ML to Thermodynamics}

\notes{Week 1 seeded the occupation $p_i \propto e^{-\beta E_i}$; Week 2 stopped at embodiment. We pick up Gibbs and free energy here before Shannon. From a stationary distribution with given energy we write the *Gibbs distribution*,
$$
p_i = \frac{e^{-\beta E_i}}{Z} \quad Z = \sum_i e^{-\beta E_i}.
$$
Boltzmann came at energy and entropy from the perspective of thermodynamics, Clausius and Carnot, but today we will show the relationship between this stationary (and equilibrium) distribution and the macroscopic formulae of Mayer, Kelvin, Joule, Helmholtz, Clausius and Carnot. We go deeper into Boltzmann's (and Maxwell, Gibbs and Einstein) microscopic or *ensemble* interpretation of this equation, and a derivation that that underpins the famous equation
$$
U = W + TS
$$
where $U=\expSamp{E}$ is total energy (or inner energy), $F$ is the free engergy, $T$ is temperature and $S$ is physical entropy. Here what we mean by physical entropy, is the translation of dimensionless energy, $H$, into physical units of Joules per degree through Boltzmann's constant, $k_B$, i.e. $k_B H = -k_B \sum_i p_i \log p_i$.}


\include{_iei/includes/iei-notebook-setup.md}

\include{_physics/includes/clausius-carnot-second-law.md}
\include{_physics/includes/gibbs-distribution.md}
\include{_physics/includes/coldness-and-temperature.md}

\subsection{Free Energy Decomposition}

<!-- SNIPPET: _physics/includes/free-energy-decomposition.md -->

\newslides{Free Energy Accounting}

\slides{Once $p_i = e^{-\beta E_i}/Z$ is fixed, thermodynamics is bookkeeping.}

\slidesincremental{
* Mean energy: $U = \langle E\rangle = \sum_i p_i E_i$
* Entropy: $S = -k_B\sum_i p_i \log p_i$
* Helmholtz free energy: $F = U - TS = -kT\log Z$
}

\speakernotes{LO1. Read $F=U-TS$ as available energy. Name the subtraction; Legendre transform waits for week 5.}

\notes{Helmholtz free energy $F=U-TS=-kT\log Z$ accounts for what remains after the entropy takes its cut: $U$ is total energy, $TS$ is unavailable, $F$ is what the bath still allows you to do.}

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
import mlai}

\plotcode{energies = np.array([0.0, 1.0, 3.0])
beta = np.linspace(0.05, 2.5, 200)
Z = np.sum(np.exp(-beta[:, None] * energies), axis=1)
p = np.exp(-beta[:, None] * energies) / Z[:, None]
U = (p * energies).sum(axis=1)
S = -np.sum(p * np.log(p + 1e-300), axis=1)
F = U - S / beta
F_check = -np.log(Z) / beta
fig, ax = plt.subplots(figsize=(7, 4))
ax.plot(beta, U, label='$U(\\beta)$')
ax.plot(beta, S, label='$S(\\beta)$ (nats)')
ax.plot(beta, F, label='$F(\\beta)$')
ax.plot(beta, F_check, 'k--', alpha=0.5, label='$-\\ln Z/\\beta$')
ax.set_xlabel(r'$\beta$')
ax.legend()
ax.set_title('Three-state system: energies $E\in\{0,1,3\}$')
mlai.write_figure('three-state-thermo.svg', directory='\writeDiagramsDir/ml')}

\figure{\includediagram{\diagramsDir/ml/three-state-thermo}{75%}}{$U$, $S$, and $F$ for the Worksheet 1 three-state system. Verify $F=-\log Z/\beta$ numerically.}{three-state-thermo}


<!-- /SNIPPET: _physics/includes/free-energy-decomposition.md -->

\slidesincremental{
* Prescription: $p_i = e^{-\beta E_i}/Z$
* Accounting: $F = U - TS$
}

\include{_ml/includes/from-loss-to-hamiltonian.md}

\notes{Week 1 left the ML energies as *scores* and the Boltzmann seed as a static occupation. Those scores become potentials $V$: descent is motion on $V$; practice is stochastic; kinetic energy completes the Hamiltonian; HMC (Neal) is the sampler that uses both. The live demos use ``mlai.HamiltonianMonteCarlo``: leapfrog paths on a quadratic potential, then logistic regression with an SGD point estimate versus an HMC posterior cloud.}

\include{_books/includes/welling-lu-holdijk.md}
\include{_information/includes/welling-boltzmann-free-energy.md}

\addreading{@Callen-thermostatistics85}{Chapters 1--4}
\addreading{@Callen-thermostatistics85}{Chapters 5--6}

\newslides{From Embodiment to Shannon}

\slides{Week 2 counted human communication in Shannon's bits — a bottleneck on how fast thought can leave the body.}

\slidesincremental{
* Now: derive $H$ and connect $S = kH$
* The bottleneck remains; we gain the measure behind the bit
}

\speakernotes{Callback before axioms. Bandwidth is not a thermodynamic no-go — it constrains intelligence. $H$ is the formal account of uncertainty in $p$.}

\notes{Week 1--2 introduced Shannon's portrait and embodiment factors in bits per second. This half of the lecture derives $H=-\sum_i p_i\log p_i$ and shows that Boltzmann entropy uses the same functional form. The human–machine bandwidth gap is a communication bottleneck; channel capacity is the analogous no-go on *codes*, not on embodiment.}

\include{_iei/includes/iei-notebook-setup.md}

\subsection{Shannon Entropy}


\include{_policy/includes/shannon-information.md}

\include{_physics/includes/brownian-wiener.md}
\include{_information/includes/shannon-entropy-derivation.md}


\addreading{@Shannon-mathematical48}{Sections 1--6}
\addreading{@MacKay-information03}{Chapters 1--4; Chapter 6}
\addreading{@Cover:elements91}{Chapter 2}

\subsection{Arithmetic Coding and Dasher}

\include{_information/includes/arithmetic-coding.md}

\include{_information/includes/dasher.md}

\notes{Dasher is the pair in one interface. Letter height is $p(\text{char}\mid\text{context})$; the information cost of a hit is $-\log p$. $H(\text{next})$ is the no-go on the remaining rate. The language model is the prescription: this is the next letter you should make easy to hit. The bits-per-second counter is the same unit as lecture 1's bandwidth bottleneck — here spent on a pointer, not on speech.}

\include{_physics/includes/partition-function-generating.md}

\include{_information/includes/welling-entropy-partition.md}

\notes{GAIST §1.2.3 uses $-\int p\log p$ for Gaussians — that is *differential* entropy. It can be negative and is not bounded like discrete Shannon $H\in[0,\log n]$. Below we introduce $\KL{p}{q}$, which is always $\ge 0$ discrete and continuous. That is why MaxEnt projections minimise $\KL{\cdot}{r}$, not raw $H$.}

\addreading{@Callen-thermostatistics85}{Chapter 16}

\include{_information/includes/kl-divergence-discrete-continuous.md}

\notes{Week 2 left a forward pointer: Maxwell--Boltzmann components are Gaussian; speed is not. That Jacobian is the worked example for why differential entropy depends on coordinates and why $\KL{\cdot}{\cdot}$ does not.}

\include{_physics/includes/maxwell-boltzmann-components-vs-speed.md}
\include{_information/includes/differential-entropy-change-of-variables.md}
\include{_information/includes/differential-entropy-binning.md}
\include{_information/includes/relative-entropy-reparametrisation.md}

\include{_physics/includes/local-equilibrium-grouping.md}

\speakernotes{Define-list item ``equilibrium versus non-equilibrium'': local equilibrium is $p_i\approx\pi_i$ with $w(t)$ free; non-eq is residual within-group divergence or driven $w$.}

\include{_information/includes/channel-capacity-chain-rule.md}

\newslide{}

\addreading{@Cover:elements91}{Chapter 7}
\addreading{@MacKay-information03}{Chapters 8--10}

\slidesincremental{
* No-go: $R \le C$; processing cannot create information
* Prescription: the $p(x)$ that achieves $C$
* Week 8: prove DPI; information bottleneck as the prescription on $I$
}

\subsection{Three Framings, First Pass}

\slidesincremental{
* Same $H$; three operational assumptions
* Week 4: one bit $\leftrightarrow$ $k_B T \ln 2$ joules (Szilard, Landauer)
* Full LO7 synthesis is also week 4
}

\speakernotes{Name the three framings today. Next week makes the bit operational in a piston stroke. Full LO7 synthesis is week 4.}

\notes{Information, thermodynamic, and Bayesian readings of the same $H$ differ in what the probability is over and who is inferring. The intended comparison is LO7 in week 4.}

\subsection{Thermodynamic Bath and Schottky's Anomaly}

<!-- SNIPPET: _physics/includes/thermodynamic-bath-schottky.md -->

\newslides{The Bath and Schottky's Anomaly}

\slides{A thermodynamic bath is the large system that justifies the canonical ensemble: it fixes $T$ and exchanges energy with a small system.}

\slidesincremental{
* Two-state system: $E\in\{0,\varepsilon\}$
* Heat capacity: $C = \partial U/\partial T$ peaks at intermediate $T$
* Schottky's anomaly: both states populated; maximal thermal response
}

\speakernotes{Name the Schottky peak. Entropic reading waits for week 8.}

\notes{A thermodynamic bath fixes $T$ and exchanges energy with a small system, justifying the canonical ensemble. Heat capacity $C=\partial U/\partial T$ peaks when both states are equally populated — Schottky's anomaly.}

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
import mlai}

\plotcode{epsilon = 1.0
beta = np.linspace(0.05, 5.0, 400)
p1 = 1.0 / (1.0 + np.exp(beta * epsilon))
U = p1 * epsilon
C = (epsilon ** 2) * p1 * (1 - p1) * beta ** 2
T = 1.0 / beta
fig, axes = plt.subplots(1, 2, figsize=(10, 4))
axes[0].plot(T, U, 'C0', linewidth=2)
axes[0].set_xlabel('$T$ ($k=1$)')
axes[0].set_ylabel('$U$')
axes[0].set_title('Mean energy')
axes[1].plot(T, C, 'C1', linewidth=2)
axes[1].set_xlabel('$T$')
axes[1].set_ylabel('$C$')
axes[1].set_title('Schottky heat-capacity peak')
plt.tight_layout()
mlai.write_figure('schottky-two-state.svg', directory='\writeDiagramsDir/ml')}

\newslide{}

\figure{\includediagram{\diagramsDir/ml/schottky-two-state}{85%}}{Mean energy and heat capacity of a two-state system. The Schottky peak appears when $p_0\approx p_1\approx\frac12$.}{schottky-two-state}

\slides{
\includediagram{\diagramsDir/ml/schottky-two-state}{85%}
}

<!-- /SNIPPET: _physics/includes/thermodynamic-bath-schottky.md -->

\slidesincremental{
* Bath: why the canonical ensemble exists
* Two-state system: Schottky peak in heat capacity
* Entropic reading of Schottky: not today
}

\subsection{Finite Time Costs More Than $\Delta F$}

<!-- SNIPPET: _physics/includes/finite-time-dissipation-intro.md -->

\newslide{Quasi-Static versus Finite Time}

\slides{Equilibrium thermodynamics gives a prescription for *reversible* work. Real protocols take time.}

\speakernotes{Do not define thermodynamic length today. Name quasi-static $W=\Delta F$ versus finite-time excess. Tie to the die: today $w$ was fixed; finite time moves $w(t)$ while hoping groups stay near $\pi_i$. Crooks in weeks 6–7; intelligence in week 8.}

\notes{Quasi-static processes achieve reversible work $W=\Delta F$. Finite-time driving dissipates additional energy beyond the equilibrium bound. In the grouping language of the die: equilibrium paths keep within-group distributions at their conditional stationary laws and only the coarse weights (or bath parameter $\beta$) change; rushing that change is what costs extra.}

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
import mlai}

\plotcode{def two_state_F(beta, eps=1.0):
    Z = 1.0 + np.exp(-beta * eps)
    return -np.log(Z) / beta

beta0, beta1 = 0.5, 2.0
path = np.linspace(beta0, beta1, 80)
F_path = two_state_F(path)
fig, ax = plt.subplots(figsize=(7, 4))
ax.plot(path, F_path, 'k-', linewidth=2, label='$F(\\beta)$')
ax.annotate('', xy=(beta1, two_state_F(beta1)), xytext=(beta0, two_state_F(beta0)),
            arrowprops=dict(arrowstyle='->', color='green', lw=2))
ax.text(1.0, -0.55, 'quasi-static: $W=\\Delta F$', color='green')
ax.annotate('', xy=(beta1, two_state_F(beta1) + 0.15), xytext=(beta0, two_state_F(beta0) + 0.15),
            arrowprops=dict(arrowstyle='->', color='red', lw=2))
ax.text(1.0, -0.35, 'finite time: $W > \\Delta F$', color='red')
ax.set_xlabel(r'$\beta$')
ax.set_ylabel('$F$')
ax.legend()
mlai.write_figure('finite-time-sketch.svg', directory='\writeDiagramsDir/ml')}

\newslide{}

\figure{\includediagram{\diagramsDir/ml/finite-time-sketch}{70%}}{Cartoon of quasi-static versus finite-time driving between two equilibrium states.}{finite-time-sketch}

\subsection{Define This Week}

\slidesincremental{
* Die coarse-graining / grouping: $H=H(w)+\sum_i w_i H(p_i)$
* What is the Gibbs--Boltzmann distribution? Free energy $F=U-TS$
* Loss as potential $V$; Hamiltonian $H=K+V$; HMC (named)
* Why is entropy a sensible measure of information?
* Equilibrium versus non-equilibrium? (first cut)
* What is a thermodynamic bath? Schottky's anomaly?
* Quasi-static $W=\Delta F$ versus finite-time excess (named)
}

\notes{Interpret later: how entropy is understood today (week 5, then week 8); chain rule as the source of multi-information (week 8). DPI / capacity / mutual information: name if time; define-stage proof of DPI is week 8. Equilibrium versus non-equilibrium (first cut) is the local-equilibrium grouping slide. Purely entropic Schottky reading waits for week 8; thermodynamic length for week 6. Legendre transform on $F$ waits for week 5.}

\subsection{After This Lecture}

\notes{Worksheet 2 (due start of lecture 4) presses whether Shannon $H$ and Boltzmann $S$ are the same object or a metaphor. Next week: Maxwell's demon and Landauer.}

\slidesincremental{
* Next: Maxwell and Landauer (3 November)
* Worksheet 2: $H$ vs $S$ — identity or metaphor?
}

\reading

\thanks

\references
