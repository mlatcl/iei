---
title: "Shannon Entropy and the Partition Function"
week: 3
layout: lecture
date: 2026-10-27
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  In this lecture we cover Shannon entropy as a measure of uncertainty, and 
  its mathematical relationship
  to thermodynamic entropy. We show that the partition function as a generating function. We introduce mutual
  information, $I$, channel capacity, and the data-processing inequality (DPI) are
  introduced as results. $I$ and DPI are proved
  in week 8.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO2, LO3]
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
    chapter: "Chapter 16"
    estimated_hours: 1
    required: false
  - title: "Generative AI and Stochastic Thermodynamics"
    author: "Welling, Lu and Holdijk"
    chapter: "§1.2.3–1.2.4; §3.2.4"
    estimated_hours: 0.5
    required: false
---

\notes{No class test today. Boltzmann and free energy were last week. Today: Shannon $H$ and the partition function as a generating function.}

\subsection{This Session}

\slidesincremental{
* Shannon $H$; Boltzmann $S = kH$
* Arithmetic coding → Dasher: $H$ as bits, $p$ as the next letter
* Partition function as a generating function
* Scaffolding: $I(X;Y)$, capacity, DPI (statement)
}

\notes{
**Time plan (120 minutes)**

| Minutes | Block |
|--------:|-------|
| 0–10 | Recap Boltzmann / free energy; preview Maxwell (next week) |
| 10–40 | Shannon axioms; Wiener from Gibbs; equivalence to Boltzmann |
| 40–55 | Arithmetic coding (MacKay Ch.~6) then Dasher |
| 55–65 | Break |
| 65–100 | Canonical ensemble; $Z$ as generating function; bath revisited |
| 100–120 | KL; Maxwell component vs speed; $h$ under change of variables; binning; $D$ invariant; then $I$, capacity, DPI (statements) |

}

\newslides{From Lecture 1}

\slides{Lecture 1–2 counted human communication in Shannon's bits — a bottleneck on how fast thought can leave the body.}

\slidesincremental{
* Today: derive $H$ and connect $S = kH$
* The bottleneck remains; we gain the measure behind the bit
}

\speakernotes{Callback before axioms. Bandwidth is not a thermodynamic no-go — it constrains intelligence. $H$ is the formal account of uncertainty in $p$.}

\notes{Week 1 introduced Shannon's portrait and embodiment factors in bits per second. This lecture derives $H=-\sum_i p_i\log p_i$ and shows that Boltzmann entropy uses the same functional form. The human–machine bandwidth gap is a communication bottleneck; channel capacity is the analogous no-go on *codes*, not on embodiment.}

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
* Week 3: one bit $\leftrightarrow$ $k_B T \ln 2$ joules (Szilard, Landauer)
* Synthesis is week 4
}

\speakernotes{Name the three framings today. Week 3 makes the bit operational in a piston stroke. Full LO7 synthesis is week 4.}

\notes{Information, thermodynamic, and Bayesian readings of the same $H$ differ in what the probability is over and who is inferring. The intended comparison is LO7 in week 4.}

\subsection{Define This Week}

\slidesincremental{
* Why is entropy a sensible measure of information?
* Equilibrium versus non-equilibrium? (first cut)
* Channel capacity? (statement)
* Mutual information? (definition)
}

\notes{Interpret later: how entropy is understood today (week 5, then week 8); chain rule as the source of multi-information (week 8). DPI is named today; define-stage proof is week 8. Equilibrium versus non-equilibrium (first cut) is the local-equilibrium grouping slide: within-group settled, $w$ free to move.}

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



\subsection{After This Lecture}

\notes{Worksheet 2 (due start of lecture 4) presses whether Shannon $H$ and Boltzmann $S$ are the same object or a metaphor. Next week: Maxwell's demon and Landauer.}

\slidesincremental{
* Next: Maxwell and Landauer (3 November)
* Worksheet 2: $H$ vs $S$ — identity or metaphor?
}

\reading

\thanks

\references
