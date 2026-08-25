---
title: "Maxwell's Demon and Landauer's Principle"
week: 3
layout: lecture
date: 2026-10-27
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  In-class Quiz 1, then Maxwell's demon and Landauer's principle. Erasing
  one bit costs \(k_B T\ln 2\) — a no-go. The demon's policy is a
  prescription. Human bandwidth from *The Atomic Human* sits next to
  Landauer as a second no-go on intelligence.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO4]
duration_hours: 2
type: lecture
in_class_test:
  id: Q1
  duration_minutes: 10
  slot: start
  covers: [LO1, LO2, LO3]
worksheet_released: W2
reading:
  - title: "Irreversibility and Heat Generation in the Computing Process"
    author: "Landauer"
    chapter: "whole paper"
    estimated_hours: 1
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

\notes{Quiz 1 occupies the first ten minutes. Invigilated Moodle, own device, no notes, no network, no LLMs. Then 110 minutes of teaching. Worksheet 2 is released; due 3 November.}

\subsection{This Session}

\slidesincremental{
* Quiz 1 (ten minutes)
* Maxwell's demon and Landauer
* Information and intelligence: first cut
}

\notes{
**Time plan (120 minutes)**

| Minutes | Block |
|--------:|-------|
| 0–10 | Quiz 1 (Moodle; LO1–LO3) |
| 10–55 | Maxwell's demon; where the apparent violation sits |
| 55–65 | Break |
| 65–100 | Szilard; Feynman piston chain; Parrondo framework; Landauer |
| 100–120 | Intelligence, first cut; human bandwidth; release Worksheet 2 |
}

\subsection{Quiz 1}

\notes{Ten MCQs. Two-state system and a binary source, not the Worksheet 1 examples. Auto-graded. Feedback within seven days, before Worksheet 2 is due.}

\subsection{Maxwell's Demon}

<!-- SNIPPET: _physics/includes/clausius-second-law-thread.md -->

\newslides{Clausius's Second Law}

\slides{Maxwell's demon acts against the second law Clausius had made explicit thirty years earlier.}

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

\include{_physics/includes/szilards-engine.md}

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

\speakernotes{LO4. Policy does not repeal the no-go. Live: `landauer_cost(300)`. Worksheet 2 Part B: compute and explain.}

\notes{Landauer (1961): erasing one bit in a bath at temperature $T$ dissipates at least $k_B T\ln 2$. Erasure of stored outcomes restores the second law. The demon's measurement policy is the prescription; it does not repeal the bound.}

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

\slides{
\includediagram{\diagramsDir/ml/landauer-cost}{70%}
}

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

\notes{Two human no-gos now sit next to each other. Landauer: you cannot erase a bit for less than \(k_B T\ln 2\). Embodiment: you cannot communicate at machine bandwidth. *The Atomic Human* [@Lawrence-atomic24] takes the second as the defining constraint on human intelligence — we are locked in relative to the machine, and we overcome it by modelling other minds, not by opening a wider channel. Bauby is the extreme of that fence: Shannon lets us count how locked in he is. Probability's job, on the human side, is to say how that narrow budget is spent. The full intelligence question is week 8.}

\addreading{@Lawrence-atomic24}{Chapter 1}

\slidesincremental{
* No-go: \(k_B T\ln 2\) per bit erased
* No-go: \(\sim 100\) bits per second for a human
* Prescription: the demon's policy; how we spend the human budget
}

\subsection{Define This Week}

\slidesincremental{
* What is Maxwell's demon?
* Information and intelligence? (first cut)
* Information constraints on a human? (bandwidth)
}

\subsection{This Week's Pair}

\notes{No-go: Landauer; human bandwidth. Prescription: the demon's measurement policy; how a locked-in intelligence spends its channel.}

\include{_information/includes/entropy-nogo-pair.md}

\subsection{After This Lecture}

\notes{Worksheet 2: Maxwell / Landauer, MaxEnt, exponential family. Due 3 November. Quiz 2 is 10 November and will use a *new* example.}

\slidesincremental{
* Worksheet 2 released; due 3 November
* LLM: does the demon evade a no-go, or follow a prescription?
}

\reading

\thanks

\references
