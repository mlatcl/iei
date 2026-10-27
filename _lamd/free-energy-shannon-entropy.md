---
title: "Free Energy and Shannon Entropy"
week: 3
layout: lecture
date: 2026-10-27
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  The lecture is the heat thread from quantity to free energy: Black, Carnot,
  Rumford, the air thermometer, Thomson's 1848 mill-scale, Joule, Clausius, Thomson's 1851 return,
  Maxwell--Boltzmann, Gibbs, Helmholtz $F=U-TS$. After that story: the entropy
  game, MacKay's weighing problem, and die grouping. Shannon axioms, HMC, $Z$,
  KL and Schottky are parked in Week 4 for sorting.
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

\notes{No class test today. The slot is 10:05--11:55 (110 minutes, not 120). Eight minutes on Worksheet 1 and Quiz 1, then the heat thread is the lecture: Black, Carnot, Rumford, the air thermometer, Thomson 1848, Joule, Clausius, Thomson 1851, Maxwell--Boltzmann, Gibbs, Helmholtz. The entropy game and MacKay's weighing problem come *after* that story, not before. Shannon axioms, HMC, $Z$, KL, Schottky and finite-time are parked at the end of Week 4 --- not in today's notes, not in the live Week 4 clock --- and will need sorting before 3 November. The LO1 payload is still the free-energy algebra at the end of the physics spine.}

\subsection{This Session}

\slidesincremental{
* Homework from Weeks 1--2 (Quiz 1 / Worksheet 1)
* Heat: Black, Carnot, Rumford, air thermometer, Kelvin, Joule, Clausius, Kelvin
* Then: Maxwell--Boltzmann, Gibbs, Helmholtz $F=U-TS$
* After the story: entropy game / MacKay / grouping
}

\notes{
**Time plan (10:05--11:55; 110 minutes)**

| Clock | Block |
|------:|-------|
| 10:05–10:13 | Homework debrief: Quiz 1 / Worksheet 1 |
| 10:13–10:25 | Joseph Black: heat as a quantity; calorimeter; latent heat |
| 10:25–10:38 | Carnot: engines, caloric, the mill |
| 10:38–10:50 | Rumford: heat from friction (flashback) |
| 10:50–11:00 | Break |
| 11:00–11:05 | Fahrenheit, Celsius, air thermometer |
| 11:05–11:12 | Thomson 1848: mill-scale, no bottom |
| 11:12–11:18 | Joule: paddle; the contradiction |
| 11:18–11:26 | Clausius: two laws; $\mathrm{d}Q/T$; a reversible cycle produces no entropy |
| 11:26–11:30 | Thomson 1851: $Q_h/T_h=Q_c/T_c$; now there is a bottom |
| 11:30–11:35 | Maxwell--Boltzmann: Gaussian components; speed is not |
| 11:35–11:40 | Gibbs occupation; coldness |
| 11:40–11:52 | Helmholtz: $F=U-TS$ from $U=\expSamp{E}$; Gaussian quadratic |
| 11:52–11:55 | Entropy game / MacKay / grouping (open; continue if overrun) |

The physics snippets can fill the slot. Protect Helmholtz; if colour overruns, MacKay is the thing that shortens, not $F=U-TS$. Shannon / HMC / Schottky are parked in `_lamd/maxwell-landauer.md`, not in this file.

}

\include{includes/week3-homework-debrief.md}

\subsection{From Heat to Helmholtz}

\notes{Week 1 seeded the occupation $p_i \propto e^{-\beta E_i}$. Worksheet 1 told us Clausius did not make entropy a measure of uncertainty. The lecture is the heat thread that gets us to Helmholtz: Black, Carnot, Rumford, the air thermometer, Thomson's 1848 mill-scale, Joule, Clausius, Thomson's 1851 return, Maxwell--Boltzmann, Gibbs, then $F=U-TS$ with $U=\expSamp{E}$. The entropy game and MacKay's weighing problem come after that story. Shannon axioms are parked in Week 4.

From a stationary distribution with given energy we will write the *Gibbs distribution*,
$$
p_i = \frac{e^{-\beta E_i}}{Z} \quad Z = \sum_i e^{-\beta E_i}.
$$
The destination of the thread is
$$
U = F + TS
$$
where $U=\expSamp{E}$ is inner energy, $F$ is Helmholtz free energy, $T$ is temperature and $S$ is physical entropy. Physical entropy is the dimensionless functional $H=-\sum_i p_i\log p_i$ converted into joules per degree by Boltzmann's constant, $S=k_B H$. Helmholtz wrote $A=U-TS$ ($A$ for *Arbeit*); we use $F$ for the same quantity because week 5 needs $A(\boldsymbol{\theta})$ for the log-partition.}

\newslide{The Story of the Lecture}

\slides{Heat first. Information after Helmholtz.}

\slidesincremental{
* Black $\to$ Carnot $\to$ Rumford $\to$ air thermometer $\to$ Kelvin $\to$ Joule $\to$ Clausius $\to$ Kelvin
* Maxwell--Boltzmann $\to$ Gibbs $\to$ Helmholtz
* Then: entropy game / MacKay
}

\include{_iei/includes/iei-notebook-setup.md}

\include{_physics/includes/joseph-black-calorimeter.md}
\include{_physics/includes/sadi-carnot-caloric.md}
\include{_physics/includes/count-rumford-cannon.md}
\include{_physics/includes/fahrenheit-celsius-air-thermometer.md}
\include{_physics/includes/kelvin-absolute-scale.md}
\include{_physics/includes/joule-mechanical-equivalent.md}
\include{_physics/includes/clausius-carnot-second-law.md}
\include{_physics/includes/kelvin-dynamical-theory.md}

\newslide{Molecules}

\figure{\threeColumns{\includepng{\diagramsDir/physics/james-clerk-maxwell}{100%}{}{left}}{\includejpg{\diagramsDir/physics/boltzmann2}{100%}{}{center}}{\includejpg{\diagramsDir/physics/j-w-gibbs}{100%}{}{right}}{30%}{30%}{30%}}{James Clerk Maxwell (1831--1879), Ludwig Boltzmann (1844--1906), Josiah Willard Gibbs (1839--1903). After Clausius the account becomes statistical: components of velocity, then occupation of energy, then free energy.}{maxwell-boltzmann-gibbs-week3}

\notes{Clausius gave a macroscopic balance. Maxwell, Boltzmann and Gibbs give a microscopic count of the same $S$. Maxwell's first move is the velocity distribution: each Cartesian component is Gaussian, because the kinetic energy is quadratic. That quadratic is the energy whose expectation we will split as $U=F+TS$.}

\include{_physics/includes/maxwell-boltzmann-components-vs-speed.md}
\include{_physics/includes/gibbs-distribution.md}
\include{_physics/includes/coldness-and-temperature.md}

\include{_physics/includes/free-energy-decomposition.md}

\include{_physics/includes/gaussian-quadratic-free-energy.md}

\subsection{After Helmholtz: The Entropy Game}

\notes{The physics story has arrived at $F=U-TS$. What follows is the information reading that Week 2 did not reach: guessing, MacKay's weighing problem, and die coarse-graining. Grouping is the live close; the chain-rule / Shannon axiom block is parked in Week 4.}

\include{_information/includes/information-game-guessing.md}

\include{_information/includes/mackay-weighing-problem.md}

\include{_information/includes/die-coarse-graining.md}

\include{_information/includes/entropy-grouping-composition.md}

\include{_information/includes/coarse-graining-intelligence.md}

\include{_information/includes/grouping-static-vs-ensemble.md}

\speakernotes{If the heat thread ran long, this is the close: one weighing example, then stop. Shannon axioms are parked in Week 4, not in these slides.}

\addreading{@Callen-thermostatistics85}{Chapters 1--4}
\addreading{@Callen-thermostatistics85}{Chapters 5--6}

\subsection{Define This Week}

\slidesincremental{
* Heat thread: Black $\to$ Carnot $\to$ Rumford $\to$ Kelvin $\to$ Joule $\to$ Clausius $\to$ Kelvin
* Maxwell--Boltzmann; Gibbs; derive $F=U-TS$ from $U=\expSamp{E}$; Gaussian $E=x^2/2$
* Entropy game / MacKay / die grouping: $H=H(w)+\sum_i w_i H(p_i)$
}

\notes{Shannon axioms, $Z$ as generating function, KL, Schottky and finite time are parked at the end of Week 4 and need sorting. Interpret later: how entropy is understood today (week 5, then week 8); chain rule as the source of multi-information (week 8). DPI proof is week 8. Legendre transform on $F$ waits for week 5.}

\subsection{After This Lecture}

\notes{Worksheet 2 (due start of lecture 4) presses whether Shannon $H$ and Boltzmann $S$ are the same object or a metaphor. Next week: Maxwell's demon and Landauer. Sort the Week 3 overflow parked at the end of that file before 3 November.}

\slidesincremental{
* Next: Maxwell and Landauer (3 November)
* Worksheet 2: $H$ vs $S$ — identity or metaphor?
}

\reading

\thanks

\references
