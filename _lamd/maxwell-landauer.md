---
title: "Maxwell's Demon and Landauer's Principle"
week: 4
layout: lecture
date: 2026-11-03
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  Maxwell's demon and Landauer's principle. Erasing one bit costs
  $k_B T\ln 2$. Feedback work is bounded by mutual information; at
  molecular scale ATP synthase approximates an information engine.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO4]
duration_hours: 2
type: lecture
in_class_test: null
worksheet_released: W2
reading:
  - title: "Irreversibility and Heat Generation in the Computing Process"
    author: "Landauer"
    chapter: "whole paper"
    estimated_hours: 1
  - title: "The Thermodynamics of Computation — A Review"
    author: "Bennett"
    chapter: "Szilard engine; demon resolution; logical irreversibility of erasure"
    estimated_hours: 1
    required: false
  - title: "Thermodynamics of information"
    author: "Parrondo, Horowitz and Sagawa"
    chapter: "whole review"
    estimated_hours: 1
    required: false
  - title: "Feynman Lectures on Computation"
    author: "Feynman and Hey"
    chapter: "Chapter 5"
    estimated_hours: 0.5
    required: false
  - title: "The Atomic Human"
    author: "Lawrence"
    chapter: "Chapter 1"
    estimated_hours: 1
    required: false
  - title: "Generative AI and Stochastic Thermodynamics"
    author: "Welling, Lu and Holdijk"
    chapter: "§3.3, pp. 49–52"
    estimated_hours: 0.5
    required: false
---

\notes{No class test today. Worksheet 2 is released; due 10 November (start of lecture 5).}

\subsection{This Session}

\slidesincremental{
* Maxwell's demon and Landauer
* Information engines; car vs ATP synthase
* Information and intelligence: first cut
}

\notes{
**Time plan (120 minutes)**

| Minutes | Block |
|--------:|-------|
| 0–10 | Recap Shannon / partition; release Worksheet 2 |
| 10–55 | Maxwell's demon; where the apparent violation sits |
| 55–65 | Break |
| 65–98 | Szilard; Feynman; Parrondo; information engines; car engine vs ATP synthase |
| 98–115 | Landauer; erasure as the thermodynamic cost |
| 115–120 | Intelligence, first cut; human bandwidth; release Worksheet 2 |
}

\subsection{Maxwell's Demon}

<!-- SNIPPET: _physics/includes/clausius-second-law-thread.md -->

\newslides{Clausius's Second Law}

\slides{Maxwell's demon seems to act against the second law Clausius had made explicit thirty years earlier.}

\slidesincremental{
* Carnot (1824): engine efficiency has a ceiling
* Clausius (1850s–1865): second law; entropy named and conserved in the books
* Maxwell (1867): a demon seems to violate that law
* Landauer (1961): erasure cost restores Clausius's bookkeeping
}

\speakernotes{Historical thread, not a new formula. The demon episode is where intelligence meets Clausius's macroscopic law; Landauer is where information enters the ledger.}

\notes{Maxwell wrote that his demon would act "in contradiction to the second law of thermodynamics" — the law Clausius had formulated for heat engines and irreversible processes. Szilard and Landauer do not replace Clausius; they extend the same no-go to stored outcomes and erased bits. The demon's sorting policy remains a prescription; it cannot repeal the law Clausius stated.}

<!-- /SNIPPET: _physics/includes/clausius-second-law-thread.md -->

\include{_physics/includes/maxwells-demon.md}



\subsection{A Different Perspective}

\slides{John Ellis (Maxwell Day 2024): the demon fails because measurement and a located trap door already dissipate.}

\slidesincremental{
* **Dissipation ledger:** defined results (scatter, switch, barrier) already pay thermodynamically
* **Information ledger:** Szilard $\to$ stored outcome $\to$ Landauer erasure $\to$ Parrondo bound
* Bennett (1982): erasure cost from phase-space compression — not circular [@Bennett-thermodynamics82]
* Both restore Clausius; they disagree on the *bookkeeping* variable
* Worksheet 2 asks: which account matches the generality of the second law?
}


\newslide{}

\figure{\includeyoutube{U4ENbYa60Uw}{800}{600}}{John Ellis presenting on Maxwell's demon at the Cambridge philosophical society's Maxwell day.}{ellis-maxwells-demon}

\speakernotes{Ellis rejects information-as-fuel and circular Landauer pedagogy. Bennett derives erasure from phase-space compression — substrate-independent. Curated excerpt on Moodle/repo; full talk optional.}

\notes{John Ellis, Maxwell Day 2024 (Cambridge). Dissipation-first: measurement scatters; the trap door is a switch in a metastable well — its position is already a physical memory degree of freedom, not a separate notebook. Information-first: the Feynman/Szilard/Landauer/Parrondo chain in this lecture. The generality question — mechanism-independent law versus mechanism-specific rebuttals — is Worksheet 2 Part B (i)(ii). Bad textbook Landauer says erasure must cost entropy because otherwise the second law fails; @Bennett-thermodynamics82 derives the demon resolution from logical irreversibility of erasure (phase-space compression) — the non-circular version students should cite against Ellis.}

\addreading{@Bennett-thermodynamics82}{Szilard engine and demon resolution (logical irreversibility of erasure)}

<!-- SNIPPET: _physics/includes/szilards-engine.md -->

\subsection{Szilard's Engine}

\figure{<div><canvas id="szilard-canvas" width="900" height="500" style="border:1px solid black;display:inline;text-align:center"></canvas>
<div><button id="szilard-newball" style="text-align:right">New Ball</button><button id="szilard-pause" style="text-align:right">Pause</button></div>

\include{_scripts/includes/szilard-js.md}
</div>}{Szilard's Engine}{szilards-engine}


\notes{John Norton refers to Szilard's engine as the "worst thought experiment" @Norton-worst18 in science.}

<!-- /SNIPPET: _physics/includes/szilards-engine.md -->


<!-- SNIPPET: _physics/includes/feynman-szilard-piston-chain.md -->

\newslides{One Bit, One Piston Stroke}

\slides{Szilard: knowing which half holds the molecule lets an isothermal expansion extract $W_{\mathrm{ext}} = k_B T \ln 2$.}

\slidesincremental{
* Shannon count: $H(M)=\ln 2$ nats for unbiased left/right ($1$ bit)
* Thermodynamic count: $W_{\mathrm{ext}} = k_B T H(M)$ in natural units
* Same uncertainty; one names bits, the other names extractable work
}

\speakernotes{Operational bridge before Landauer. Write $H(M)=\ln 2$ next to $k_BT\ln 2$. Students should see one number in two readings.}

\notes{Szilard (1929): partition, measure which side, expand from $V_0/2$ to $V_0$ against a thermal bath. For one molecule the work is $k_BT\ln 2$. If the outcome is equiprobable, $H(M)=\ln 2$ nats and $W_{\mathrm{ext}} = k_B T H(M)$. This is the first link in the chain from Shannon bits (week 2) to Landauer's joules (next section).}

\newslides{Feynman's Piston Chain}

\slides{Feynman treats a known microstate as fuel — a low-entropy tape you can spend.}

\slidesincremental{
* *Lectures on Computation* (Ch. 5): Szilard step repeated; each stroke needs a fresh bit
* Vol. I, Ch. 46: a ratchet alone cannot mine a single bath — fluctuations break the pawl
* Chain: Maxwell $\to$ Szilard $\to$ measurement $\to$ work $\to$ erasure
}

\speakernotes{Feynman is the pedagogy; Parrondo is the modern ledger. Ratchet is the autonomous-demon cautionary tale.}

\notes{In *Feynman Lectures on Computation* (Hey ed., Ch. 5) Feynman uses the Szilard box with a piston on the occupied side: information about position is operational fuel. A chain of such strokes is only sustainable if you keep supplying low-entropy records or pay to erase them. In *The Feynman Lectures on Physics* [@Feynman-volumeI63], Ch. 46, he shows that a one-bath ratchet fails because thermal kicks on the pawl destroy rectification — the same fluctuation physics Smoluchowski and Parrondo et al. cite for autonomous demons. The historical chain is Maxwell (sort by velocity), Szilard (sort by position, one bit), Landauer (pay on erase).}

<!-- /SNIPPET: _physics/includes/feynman-szilard-piston-chain.md -->

<!-- SNIPPET: _physics/includes/thermodynamics-of-information-parrondo.md -->

\newslides{Thermodynamics of Information}

\slides{Clausius's second law says nothing about information; reconciling the pictures is a modern subject.}

\slidesincremental{
* Task 1: refine the second law — feedback work $W \ge -k_B T\, I(X;M)$
* Task 2: information is physical — outcomes live in metastable memory states
* Cycle: measure $\to$ feedback $\to$ reset (Landauer on the memory)
}

\speakernotes{Parrondo et al. survey. Szilard saturates $W = k_BT H(M)$ when $I(X;M)=H(M)$. Lab demos on colloids and single electrons.}

\notes{Parrondo, Horowitz and Sagawa [@Parrondo-thermodynamics15] frame the thermodynamics of information as non-equilibrium thermodynamics for states updated by measurement. Shannon entropy of the microstate, multiplied by $k_B$, is the operative entropy for isothermal processes far from equilibrium. A measurement that correlates system $X$ with outcome $M$ raises non-equilibrium free energy by $k_B T I(X;M)$, so feedback can extract work bounded by that mutual information. In a cyclic Szilard engine with error-free measurement, $I(X;M)=H(M)=\ln 2$ and $W_{\mathrm{ext}}=k_BT\ln 2$ saturates the bound. The memory where $M$ is stored must be physical (Landauer: metastable wells, broken ergodicity). Over measure–feedback–reset, the mutual-information work is paid either during measurement or during erasure — the cost cannot disappear from the ledger. Stochastic thermodynamics and fluctuation theorems now reproduce Szilard and Landauer in the lab; we cite the review rather than reproducing the full formalism here.}

\addreading{@Parrondo-thermodynamics15}{introduction and Szilárd engine section}

<!-- /SNIPPET: _physics/includes/thermodynamics-of-information-parrondo.md -->

<!-- SNIPPET: _information-game/includes/information-engines-intelligence-cut.md -->

\subsection{Information Engines}

\newslides{Information Engines}

\slides{An *information engine* converts stored or acquired information into extractable work — Szilard is the textbook case.}

\slidesincremental{
* First model of intelligence (information-engines talk): policy under a thermodynamic ledger
* Feedback bound (Parrondo / Sagawa–Ueda): $W \ge -k_B T\, I(X;M)$ on average in a cycle
* Memory is physical: metastable states, channel capacity $\le n$ bits for $n$ stored outcomes
* Prescription: measurement policy; no-go: pay on reset (Landauer, next)
}

\speakernotes{Name information engines before the scale argument. Students should not think Maxwell's demon scales to a car ECU without a bandwidth reckoning.}

\notes{This block condenses `_information-game/includes/intelligence-thermodynamics-connection.md` from the information-engines talk. The full talk also develops Markov blankets, generalised Jarzynski with feedback, and Ashby requisite variety; we name those in week 8. Here the point is operational: intelligence as feedback control is an information engine only if the memory and measurement bandwidth can support the mutual information the second law demands.}

<!-- /SNIPPET: _information-game/includes/information-engines-intelligence-cut.md -->

<!-- SNIPPET: _physics/includes/car-engine-vs-atp-synthase-scale.md -->

\newslides{Why Not Demon-Upgrade Your Car?}

\slides{Equipartition: each thermal degree of freedom carries $\sim k_B T/2$ of energy — information per bit is tiny beside macroscopic power flow.}

\slidesincremental{
* Example: $70\,\mathrm{kW}$ engine at $T \approx 370\,\mathrm{K}$
* Thermal throughput $\sim 2P/(k_B T) \approx 3\times 10^{25}$ DOF per second
* One bit per DOF $\Rightarrow$ $\sim 10^{25}$ bits/s — orders of magnitude above all human storage and communication
* Carnot already caps efficiency; demon-style feedback cannot close the gap at this scale
}

\speakernotes{Live the numbers. World data stock is $\sim 10^2$ zettabytes total, not per second. The demon is not a practical prescription for macroscopic engines.}

\notes{At human scale the energy in random thermal motion swamps any ledger we could maintain in bits. A feedback controller that tried to match $I(X;M)$ to the work flow of a car engine would need memory and measurement bandwidth beyond physical possibility. Clausius and Carnot already state the macroscopic no-go; information thermodynamics explains why importing Szilard into a gearbox does not help.}

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
import mlai}

\plotcode{kB = 1.380649e-23
P = 70e3  # W
T = 370.0  # K
dof_per_s = 2 * P / (kB * T)
bits_per_s = dof_per_s
world_zb = 149
world_bits = world_zb * 8e21
fig, ax = plt.subplots(figsize=(7, 3.5))
ax.bar(['Engine (bits/s)\n1 bit per DOF', 'World data stock\n(bits)'],
       [bits_per_s, world_bits], color=['#c44', '#48c'])
ax.set_yscale('log')
ax.set_ylabel('bits (log scale)')
ax.set_title('Macroscopic engine vs global information stock')
mlai.write_figure('car-engine-info-scale.svg', directory='\writeDiagramsDir/ml')}

\figure{\includediagram{\diagramsDir/ml/car-engine-info-scale}{75%}}{Order-of-magnitude contrast: thermal degrees of freedom in a 70 kW engine versus total world data stock (very rough).}{car-engine-info-scale}

\newslides{ATP Synthase: Where Information \emph{Does} Matter}

\slides{Molecular machines operate where $k_B T$ is the energy scale and thermal fluctuations are the environment — not a nuisance to fight.}

\slidesincremental{
* ATP synthase: rotary motor driven by proton flow down the mitochondrial gradient
* $\sim 3$–$4$ protons per ATP; proton arrival is a discrete yes/no — a bit-scale measurement
* Ratcheted Brownian motion: information about which side/proton phase drives rotation
* Biology composes $\sim 10^3$–$10^4$ such engines per cell; the brain's ATP budget is built from them
}

\figure{\includeyoutube{kXpzp4RDGJI}{800}{600}{130}}{ATP Synthase in action.}{atp-synthase-in-action}

\speakernotes{Parrondo Fig. 1c–d: colloidal and single-electron Szilard engines in the lab. ATP synthase is evolution's rotary implementation at the same scale. Play the animation from the information-engines talk: rotary $\gamma$ subunit driven by proton transits through the membrane.}

\notes{ATP synthase synthesises ATP from ADP and phosphate using the proton-motive force. The gradient is both energy reservoir and signal about cellular state. Each proton transit is a discrete event at room temperature; the $\gamma$ subunit rotates in steps as protons bind and release — a molecular ratchet of the kind Feynman analysed, but coupled to a chemical fuel (gradient) not a single bath. Rough accounting: $\sim 10^4$ ATP per synaptic event, $\sim 4\times 10^4$ protons; $\sim 10^{14}$ synapses with sparse firing gives $\sim 10^{18}$ protons/s brain-wide, each with several thermal degrees of freedom — petabit-per-second *physical* throughput distributed across vast numbers of mitochondria and synthase copies, not a single memory register. That is how life improves free-energy conversion where a car engine cannot: nanoscale composition of many information engines, not one demon on a macroscopic shaft. See the information-engines talk and @Parrondo-thermodynamics15 for laboratory Szilárd engines; Roh et al. for cryo-EM structure of rotary proton pumps.}

<!-- /SNIPPET: _physics/includes/car-engine-vs-atp-synthase-scale.md -->

\subsection{Landauer's Principle}

\include{_information-game/includes/landauer-shannon-connection.md}

\include{_information-game/includes/landauer-from-inaccessible-game.md}

<!-- SNIPPET: _information/includes/landauer-principle-worked.md -->

\newslides{Landauer's Principle}

\slides{The demon measures; Szilard's engine stores one bit. Neither violates the second law until the record is erased.}

\slidesincremental{
* Landauer (1961): erasing one bit at $T$ costs at least $k_B T \ln 2$
* No-go: you cannot erase for free
* Prescription: the demon's policy — which molecules to let through
}

\speakernotes{LO4. Policy does not repeal the no-go. Live: `landauer_cost(300)`. Worksheet 2 Part B: compute and explain; Ellis excerpt for the two-ledgers comparison. Trap-door position is already a physical memory degree of freedom — Landauer prices reset, not a separate notebook.}

\notes{Landauer (1961): erasing one bit in a bath at temperature $T$ dissipates at least $k_B T\ln 2$. Erasure of stored outcomes restores the second law. The demon's measurement policy is the prescription; it does not repeal the bound. Ellis agrees the demon fails but locates the cost at measurement and gating; @Bennett-thermodynamics82 completes the information ledger: erasure is logically irreversible, so phase-space compression costs at least $k_B T\ln 2$ per bit — derived, not assumed to save Clausius.}

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
import mlai}

\plotcode{kB = 1.380649e-23
T = np.linspace(100, 400, 200)
E_bit = kB * T * np.log(2)
fig, ax = plt.subplots(figsize=(7, 4))
ax.plot(T, E_bit * 1e21, linewidth=2)
ax.axvline(300, color='gray', linestyle='--', alpha=0.7)
ax.scatter([300], [kB * 300 * np.log(2) * 1e21], s=80, color='red', zorder=3)
ax.set_xlabel('$T$ (K)')
ax.set_ylabel('minimum erasure cost ($10^{-21}$ J per bit)')
mlai.write_figure('landauer-cost.svg', directory='\writeDiagramsDir/ml')}

\figure{\includediagram{\diagramsDir/ml/landauer-cost}{70%}}{Landauer's minimum heat dissipation per erased bit as a function of bath temperature.}{landauer-cost}


\setupcode{kB = 1.380649e-23

def landauer_cost(T_kelvin, n_bits=1):
    return n_bits * kB * T_kelvin * np.log(2)}

\code{# landauer_cost(300) -> ~2.87e-21 joules per bit}

<!-- /SNIPPET: _information/includes/landauer-principle-worked.md -->

\include{_information/includes/welling-maxwell-landauer.md}

\subsection{Information and Intelligence: First Cut}

\include{_ai/includes/embodiment-factors-walking-vs-light.md}

\include{_books/includes/the-diving-bell-and-the-butterfly.md}
\include{_ai/includes/shannon-bauby.md}

\notes{Landauer: you cannot erase a bit for less than \(k_B T\ln 2\). Embodiment: you cannot communicate at machine bandwidth. *The Atomic Human* [@Lawrence-atomic24] takes the second as the defining constraint on human intelligence — we are locked in relative to the machine, and we overcome it by modelling other minds, not by opening a wider channel. Bauby is the extreme of that fence: Shannon lets us count how locked in he is. Probability's job, on the human side, is to say how that narrow budget is spent. The full intelligence question is week 8.}

\addreading{@Lawrence-atomic24}{Chapter 1}

\slidesincremental{
* No-go: $k_B T\ln 2$ per bit erased
* No-go: $\sim 100$ bits per second for a human
* Prescription: the demon's policy; how we spend the human budget
}

\subsection{Define This Week}

\slidesincremental{
* What is Maxwell's demon?
* Why cannot feedback upgrade a car engine like ATP synthase?
* Information and intelligence? (first cut)
* Information constraints on a human? (bandwidth)
}

\subsection{After This Lecture}

\notes{Worksheet 2: Maxwell / Landauer, MaxEnt, exponential family. Due 3 November. Quiz 2 is 10 November and will use a *new* example.}

\slidesincremental{
* Worksheet 2 released; due 3 November
}

\reading

\thanks

\references
