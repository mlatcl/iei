---
title: "Parking Lot"
subtitle: "Unsorted overflow — not a lecture"
layout: lecture
type: parking
duration_hours: 0
date: 2026-10-28
abstract: >
  Material that fell off a live lecture clock. Not in the weekly sequence,
  not in the 16h contact-hour total, and not presented until sorted into a
  week. Compile with `maketalk parking.md` only to review the overflow.
outcomes: []
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
parked:
  - id: shannon-axioms
    from_week: 3
    likely_home: "after the game, or drop — the counting argument is already live"
  - id: partition-Z
    from_week: 3
    likely_home: "Week 5, or a named callback"
  - id: hmc
    from_week: 3
    likely_home: "named callback from Week 1 scores, or drop"
  - id: dasher
    from_week: 3
    likely_home: "optional colour; bandwidth already in Week 2"
  - id: kl-differential
    from_week: 3
    likely_home: "Week 6 contrast, or the recap"
  - id: capacity-dpi
    from_week: 3
    likely_home: "scaffolding for LO2; proof is Week 8"
  - id: three-framings
    from_week: 3
    likely_home: "LO7 is Week 5"
  - id: schottky
    from_week: 3
    likely_home: "named in a live lecture, or Week 8 for the entropic reading"
  - id: finite-time
    from_week: 3
    likely_home: "Week 6 Crooks / thermodynamic length"
  - id: local-equilibrium-grouping
    from_week: 4
    likely_home: "demon compartments already name kinetic layers; drop or a named callback"
  - id: coarse-graining-intelligence
    from_week: 4
    likely_home: "grouping-as-macrostate already pays the moral"
  - id: grouping-static-vs-ensemble
    from_week: 4
    likely_home: "named on the fork / Worksheet 3"
  - id: landauer-szilard-ellis
    from_week: 4
    likely_home: "Worksheet 3 coarse-grains Maxwell; live lecture stops at the fork"
---

\notes{This file is the module parking lot. It is not a week, not a contact
hour, and not the demon lecture. Sort an item into a live `_lamd/*.md`
week file before presenting it. Questions, MacKay, die grouping, the missing
measure and the demon compartments are the live Week 4 clock. Szilard,
Landauer, Ellis, and local-equilibrium grouping sit here until Worksheet 3
needs them.}

\speakernotes{Stop. This is the parking lot. Sort before presenting.}

\newslides{Parking lot}

\slides{Overflow. Not a weekly lecture.}

\slidesincremental{
* Shannon axioms, HMC, $Z$, Dasher, KL, capacity
* Three framings, Schottky, finite time
* Local equilibrium; Szilard / Landauer / Ellis
}

\subsection{Shannon axioms}

\newslides{Parked: Shannon axioms}

\slides{Overflow from Week 3. Not the live Week 4 lecture.}

\slidesincremental{
* Derive $H$ and connect $S = kH$
* The Week 2 bandwidth bottleneck remains; we gain the measure behind the bit
}

\speakernotes{Parking lot. Do not present until sorted.}

\notes{Week 1--2 introduced Shannon's portrait and embodiment factors in bits per second. This block derives $H=-\sum_i p_i\log p_i$ and shows that Boltzmann entropy uses the same functional form. Parked from Week 3.}

\include{_ml/includes/from-loss-to-hamiltonian.md}

\notes{Week 1 left the ML energies as *scores* and the Boltzmann seed as a static occupation. Those scores become potentials $V$: descent is motion on $V$; practice is stochastic; kinetic energy completes the Hamiltonian; HMC (Neal) is the sampler that uses both. Overflow: name, do not derive.}

\include{_books/includes/welling-lu-holdijk.md}
\include{_information/includes/welling-boltzmann-free-energy.md}
\include{_physics/includes/gaussian-quadratic-free-energy.md}

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

\notes{The Helmholtz split is already on the board: $F=-k_BT\log Z$ and $U=\expSamp{E}$. What follows is the other reading of the same identity --- $\log Z$ as a generating function, derivatives rather than an expectation of $E(x)$. The Gaussian quadratic was the closed form; the two-state system is the discrete check.}

\include{_physics/includes/partition-function-generating.md}

\include{_information/includes/welling-entropy-partition.md}

\notes{GAIST §1.2.3 uses $-\int p\log p$ for Gaussians — that is *differential* entropy. It can be negative and is not bounded like discrete Shannon $H\in[0,\log n]$. Below we introduce $\KL{p}{q}$, which is always $\ge 0$ discrete and continuous. That is why MaxEnt projections minimise $\KL{\cdot}{r}$, not raw $H$.}

\addreading{@Callen-thermostatistics85}{Chapter 16}

\include{_information/includes/kl-divergence-discrete-continuous.md}

\notes{Maxwell--Boltzmann already sat in the heat thread: components Gaussian, speed not. The Jacobian is the worked example for why differential entropy depends on coordinates and why $\KL{\cdot}{\cdot}$ does not. Each Cartesian component is the quadratic $E=v_i^2/2$ decomposed under Helmholtz: three copies give $\tfrac32 k_BT$.}

\include{_information/includes/differential-entropy-change-of-variables.md}
\include{_information/includes/differential-entropy-binning.md}
\include{_information/includes/relative-entropy-reparametrisation.md}

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
* Week 4 live lecture: one bit $\leftrightarrow$ $k_B T \ln 2$ joules (Szilard, Landauer)
* Full LO7 synthesis is week 5
}

\speakernotes{Name only. LO7 synthesis is week 5; the bit-to-joule bridge is the live Week 4 lecture.}

\notes{Information, thermodynamic, and Bayesian readings of the same $H$ differ in what the probability is over and who is inferring. The intended comparison is LO7 in week 5.}

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

\speakernotes{Do not define thermodynamic length here. Name quasi-static $W=\Delta F$ versus finite-time excess. Tie to the die: grouping held $w$ fixed; finite time moves $w(t)$ while hoping groups stay near $\pi_i$. Crooks in weeks 6–7; intelligence in week 8.}

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

\subsection{Local equilibrium as grouping}

\newslides{Parked: local equilibrium}

\slides{Overflow from Week 4. The live lecture already names kinetic layers; this is the grouping callback.}

\include{_physics/includes/local-equilibrium-grouping.md}

\subsection{Coarse graining and intelligence}

\include{_information/includes/coarse-graining-intelligence.md}

\subsection{Static grouping versus ensemble}

\include{_information/includes/grouping-static-vs-ensemble.md}

\subsection{Szilard, Landauer, Ellis}

\newslides{Parked: Szilard / Landauer}

\slides{Overflow from Week 4. The live lecture stops at the fork; Worksheet 3 is the resolution families.}

\include{includes/landauer-resolution-overflow.md}

\reading

\thanks

\references
