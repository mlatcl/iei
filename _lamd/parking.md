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
  Capacity and DPI are live in Week 6, with the exponential family.
  Thermodynamic length is dropped. Legendre stays off the live spine.
outcomes: []
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
parked:
  - id: shannon-axioms
    from_week: 3
    likely_home: "dropped — counting argument already live in Weeks 2–3"
  - id: partition-Z
    from_week: 3
    likely_home: "exponential-family CGF is live in Week 6; this overflow copy stays notes"
  - id: hmc
    from_week: 3
    likely_home: "dropped — named callback from Week 1 scores only if needed"
  - id: dasher
    from_week: 3
    likely_home: "dropped — optional colour; bandwidth already in Week 2"
  - id: kl-differential
    from_week: 3
    likely_home: "notes-only in the Week 5 file (unread continuous KL)"
  - id: capacity-dpi
    from_week: 3
    likely_home: "Stated Week 7 (good-regulator-goals-channels.md) — Shannon R≤C and DPI statement/moral; board proof stays notes overflow / enrichment"
  - id: three-framings
    from_week: 3
    likely_home: "one-slide name in Week 7 or 8 close if clock allows; else notes"
  - id: schottky
    from_week: 3
    likely_home: "dropped from live spine — notes / optional named callback"
  - id: finite-time
    from_week: 3
    likely_home: "dropped — thermodynamic length is not in the module"
  - id: local-equilibrium-grouping
    from_week: 4
    likely_home: "dropped — demon compartments already name kinetic layers"
  - id: coarse-graining-intelligence
    from_week: 4
    likely_home: "dropped — grouping-as-macrostate already pays the moral"
  - id: grouping-static-vs-ensemble
    from_week: 4
    likely_home: "dropped — named on the fork / Worksheet 3"
  - id: landauer-szilard-ellis
    from_week: 4
    likely_home: "dropped from live — Worksheet 3 coarse-grains Maxwell"
  - id: legendre-transform
    from_week: 5
    likely_home: "dropped from live — Fisher / dual-flatness path retired; keep in fisher-metric.md.deferred"
---

\notes{This file is the module parking lot. It is not a week, not a contact
hour, and not the demon lecture. Sort an item into a live `_lamd/*.md`
week file before presenting it. Shannon capacity and DPI were planned for
Week 6 but as taught unread; they are *stated* in Week 7
(`good-regulator-goals-channels.md`) for Quiz 4. The DPI board proof and
multi-information / $I+H=C$ stay notes overflow / enrichment, not the
assessed live spine. The exponential family and $\psi$ as a cumulant
generating function are live in Week 6. Thermodynamic length is dropped.
Legendre duality stays off the live spine.}

\speakernotes{Stop. This is the parking lot. Sort before presenting.}

\newslides{Parking lot}

\slides{Overflow. Not a weekly lecture.}

\slidesincremental{
* Capacity / DPI → Week 6 live (Good Regulator path)
* Exponential family / $A$ as CGF → Week 6 live
* Legendre → off the live spine; thermodynamic length dropped
* Shannon axioms, HMC, Dasher, Schottky, finite time → dropped
* Local equilibrium; Szilard / Landauer / Ellis → Worksheet 3 / dropped
}

\subsection{Shannon axioms}

\newslides{Parked: Shannon axioms}

\slides{Overflow from Week 3. Dropped from the live spine.}

\slidesincremental{
* Derive $H$ and connect $S = kH$
* The Week 2 bandwidth bottleneck remains; we gain the measure behind the bit
}

\speakernotes{Parking lot. Do not present until sorted.}

\notes{Week 1--2 introduced Shannon's portrait and embodiment factors in bits per second. This block derives $H=-\sum_i p_i\log p_i$ and shows that Boltzmann entropy uses the same functional form. Parked from Week 3; dropped from live Weeks 6--8.}

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

\notes{Dasher is the pair in one interface. Letter height is $p(\text{char}\mid\text{context})$; the information cost of a hit is $-\log p$. $H(\text{next})$ is the no-go on the remaining rate. The language model is the prescription: this is the next letter you should make easy to hit. The bits-per-second counter is the same unit as lecture 1's bandwidth bottleneck --- here spent on a pointer, not on speech. Dropped from live spine.}

\notes{Notes-only after the GRT replan. The include below remains for overflow review only.}

\include{_physics/includes/partition-function-generating.md}

\include{_information/includes/welling-entropy-partition.md}

\notes{Notes-only after the GRT replan. GAIST §1.2.3 uses $-\int p\log p$ for Gaussians --- that is *differential* entropy. It can be negative and is not bounded like discrete Shannon $H\in[0,\log n]$. $\KL{p}{q}$ is always $\ge 0$ discrete and continuous. That is why MaxEnt projections minimise $\KL{\cdot}{r}$, not raw $H$.}

\addreading{@Callen-thermostatistics85}{Chapter 16}

\include{_information/includes/kl-divergence-discrete-continuous.md}

\notes{Maxwell--Boltzmann already sat in the heat thread: components Gaussian, speed not. The Jacobian is the worked example for why differential entropy depends on coordinates and why $\KL{\cdot}{\cdot}$ does not. Each Cartesian component is the quadratic $E=v_i^2/2$ decomposed under Helmholtz: three copies give $\tfrac32 k_BT$.}

\include{_information/includes/differential-entropy-change-of-variables.md}
\include{_information/includes/differential-entropy-binning.md}
\include{_information/includes/relative-entropy-reparametrisation.md}

\notes{Capacity / DPI scaffolding was planned for Week 6; as taught unread. Week 7 states both for Quiz 4. The include remains here only for overflow review; do not present from parking.}

\include{_information/includes/channel-capacity-chain-rule.md}

\newslide{}

\addreading{@Cover:elements91}{Chapter 7}
\addreading{@MacKay-information03}{Chapters 8--10}

\slidesincremental{
* No-go: $R \le C$; processing cannot create information
* Prescription: the $p(x)$ that achieves $C$
* Live path: Week 7 states Shannon / DPI; proof stays enrichment
}

\subsection{Three Framings, First Pass}

\slidesincremental{
* Same $H$; three operational assumptions
* One-slide name in Week 7 or 8 if clock allows
}

\speakernotes{Name only. Not a Week 6 block after the GRT replan.}

\notes{Information, thermodynamic, and Bayesian readings of the same $H$ differ in what the probability is over and who is inferring. Optional one-slide later; otherwise notes.}

\subsection{Thermodynamic Bath and Schottky's Anomaly}

<!-- SNIPPET: _physics/includes/thermodynamic-bath-schottky.md -->

\newslides{The Bath and Schottky's Anomaly}

\slides{Dropped from the live Weeks 6--8 spine.}

\slidesincremental{
* Two-state system: $E\in\{0,\varepsilon\}$
* Heat capacity: $C = \partial U/\partial T$ peaks at intermediate $T$
* Schottky's anomaly: both states populated; maximal thermal response
}

\speakernotes{Parked / dropped. Do not present unless a named callback is needed.}

\notes{A thermodynamic bath fixes $T$ and exchanges energy with a small system, justifying the canonical ensemble. Heat capacity $C=\partial U/\partial T$ peaks when both states are equally populated --- Schottky's anomaly. Dropped from live after GRT replan.}

\subsection{Finite Time Costs More Than $\Delta F$}

\newslide{Quasi-Static versus Finite Time}

\slides{Dropped --- Crooks / thermodynamic-length path retired.}

\speakernotes{Do not present. Thermodynamic length is dropped from the module.}

\notes{Quasi-static processes achieve reversible work $W=\Delta F$. Finite-time driving dissipates additional energy beyond the equilibrium bound. Overflow only.}

\subsection{Local equilibrium as grouping}

\newslides{Parked: local equilibrium}

\slides{Overflow from Week 4. Dropped from live.}

\include{_physics/includes/local-equilibrium-grouping.md}

\subsection{Coarse graining and intelligence}

\include{_information/includes/coarse-graining-intelligence.md}

\subsection{Static grouping versus ensemble}

\include{_information/includes/grouping-static-vs-ensemble.md}

\subsection{Szilard, Landauer, Ellis}

\newslides{Parked: Szilard / Landauer}

\slides{Overflow from Week 4. Worksheet 3 is the resolution families.}

\include{includes/landauer-resolution-overflow.md}

\subsection{Legendre transform}

\newslides{Parked: Legendre — dropped from live}

\slides{Was Week 6 before the GRT replan. Now notes in `fisher-metric.md.deferred`.}

\notes{Originally overflow from Week 5. Kept only as a trail; dual flatness is not on the live Weeks 6--8 path.}


<!-- overflow retained for notes / Week 8 enrichment -->

\subsection{Optional overflow: Multi-Information}

\include{_ml/includes/velocity-independent-sample.md}
\include{_ml/includes/velocity-correlated-sample.md}
\include{_ml/includes/velocity-gaussian-contours.md}
\include{_physics/includes/classical-observer-velocities.md}

\notes{Independent, correlated, and anti-correlated velocities can share the same one-dimensional Gaussians. Multi-information is the leftover $I=\sum h_i-H$. With fixed marginal entropies $C=\sum_i h_i$, conservation $I+H=C$.}

<!-- SNIPPET: _physics/includes/multi-information-worked.md -->

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
import mlai
}

\plotcode{def shannon(p):
    p = np.asarray(p, dtype=float)
    p = p[p > 0]
    return -np.sum(p * np.log2(p))

def correlated_pair(rho):
    return np.array([[0.25*(1+rho), 0.25*(1-rho)],
                     [0.25*(1-rho), 0.25*(1+rho)]])

rhos = np.linspace(-1, 1, 200)
I_vals, H_vals = [], []
for rho in rhos:
    joint = correlated_pair(rho)
    hx = shannon(joint.sum(axis=1))
    hy = shannon(joint.sum(axis=0))
    H = shannon(joint.ravel())
    I_vals.append(hx + hy - H)
    H_vals.append(H)
fig, ax = plt.subplots(figsize=(7, 4))
ax.plot(rhos, I_vals, label='$I(\\rho)$')
ax.plot(rhos, H_vals, label='$H(\\rho)$')
ax.set_xlabel('$\\rho$')
ax.set_ylabel('bits')
ax.legend()
ax.set_title('Correlated-pair family: $I+H=2$')
mlai.write_figure('multi-information-rho.svg', directory='\writeDiagramsDir/ml')}

\figure{\includediagram{\diagramsDir/ml/multi-information-rho}{75%}}{Multi-information and joint entropy for uniform-marginal binary pairs; $I+H=C$ with $C=2$.}{multi-information-rho}

<!-- /SNIPPET: _physics/includes/multi-information-worked.md -->

\subsection{Optional overflow: DPI Proof, KL Decay, and Information Bottleneck}

\include{_information/includes/data-processing-inequality.md}

\include{_information/includes/relative-entropy-decay-grouping.md}

\include{_information/includes/information-bottleneck.md}

\notes{IB as a gloss after GRT: $\min I(S;A)$ subject to $H(Z)\le\epsilon$ is a course interpretation, not Conant and Ashby's equation. Optional LO9 name if ahead: MaxEnt as $m$-projection (geometric reading of Week 5; stated, not computed). Inaccessible-game / no-barber material lives in Week 8, not here.}

\reading

\thanks

\references
