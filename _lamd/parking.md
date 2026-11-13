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
  After the Week 6–8 Good-Regulator replan (Nov 2026), capacity/DPI moved
  live; Fisher / Crooks / CGF / Legendre paths are notes-only or dropped.
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
    likely_home: "notes-only in Week 5 file (unread); not live Week 6 after GRT replan"
  - id: hmc
    from_week: 3
    likely_home: "dropped — named callback from Week 1 scores only if needed"
  - id: dasher
    from_week: 3
    likely_home: "dropped — optional colour; bandwidth already in Week 2"
  - id: kl-differential
    from_week: 3
    likely_home: "notes-only in Week 5 file (unread); not live Week 6 after GRT replan"
  - id: capacity-dpi
    from_week: 3
    likely_home: "Sorted into Week 6 (channels-dpi-good-regulator.md) — Shannon C and DPI statement; DPI proof Week 7"
  - id: three-framings
    from_week: 3
    likely_home: "one-slide name in Week 7 or 8 close if clock allows; else notes"
  - id: schottky
    from_week: 3
    likely_home: "dropped from live spine — notes / optional named callback"
  - id: finite-time
    from_week: 3
    likely_home: "dropped — Crooks / thermodynamic-length path retired from live Weeks 6–8"
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
week file before presenting it. Capacity and DPI live in Week 6
(`channels-dpi-good-regulator.md`); the DPI proof and $I+H=C$ deepen in
Week 7. Fisher / Crooks / Legendre / CGF are notes-only after the
Good-Regulator-first replan.}

\speakernotes{Stop. This is the parking lot. Sort before presenting.}

\newslides{Parking lot}

\slides{Overflow. Not a weekly lecture.}

\slidesincremental{
* Capacity / DPI → Week 6 live (Good Regulator path)
* $Z$ as CGF, KL continuous, Legendre → notes / deferred Fisher file
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

\notes{Capacity / DPI scaffolding moved into Week 6 live lecture. The include remains here only for overflow review; do not present from parking.}

\include{_information/includes/channel-capacity-chain-rule.md}

\newslide{}

\addreading{@Cover:elements91}{Chapter 7}
\addreading{@MacKay-information03}{Chapters 8--10}

\slidesincremental{
* No-go: $R \le C$; processing cannot create information
* Prescription: the $p(x)$ that achieves $C$
* Live path: Week 6 states DPI; Week 7 proves; GRT uses both
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

\speakernotes{Do not present. Finite-time dissipation and thermodynamic length left the live spine with the Fisher pivot.}

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

\reading

\thanks

\references
