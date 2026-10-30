---
title: "Free Energy and Shannon Entropy"
week: 3
layout: lecture
date: 2026-10-27
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  Homework from Weeks 1--2, then the heat thread from quantity toward free
  energy: Black, Carnot, Rumford, the air thermometer, Thomson's 1848 mill-scale,
  Joule. After the break, Helmholtz $F=U-TS$ on the board; Clausius after that.
  Shannon, Jaynes and Wiener appear as a close preview. The entropy game and
  MacKay's weighing problem were named and not reached; they now open Week 4
  after Quiz 2. Shannon axioms, HMC, $Z$, KL and Schottky live in `_lamd/parking.md`.
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

\notes{No class test *today*. Next week there is a class test, even if the webpage said otherwise on 27 October. Laptops away; notes by hand. The slot is 10:05--11:55 (110 minutes, not 120). As taught, the homework debrief ran about twenty-four minutes, then the heat thread as far as Joule before the break. Helmholtz was the LO1 payload after the break, on the visualiser, before the Clausius slides. Maxwell--Boltzmann and Gibbs were pointers, not the planned decks. Shannon / Jaynes / Wiener were a close preview. The entropy game and MacKay's weighing problem were not given; they now open Week 4 after Quiz 2. Shannon axioms, HMC, $Z$, KL, Schottky and finite-time live in `_lamd/parking.md`.}

\subsection{This Session}

\slidesincremental{
* No laptops; homework from Weeks 1--2 (Quiz 1 / Worksheet 1)
* Heat as far as Joule before the break
* Helmholtz $F=U-TS$ on the board after the break (LO1)
* Clausius after Helmholtz; Shannon / Jaynes / Wiener as a preview
}

\notes{
**Time plan (as delivered 27 October 2026).** Clocks from the Panopto SRT (recording 00:00 ≈ 10:00). The slot is 10:05--11:55 (110 minutes, not 120). Speech from 10:04; this session ran to about 11:58. Helmholtz on the board is the LO1 payload. Shannon / Jaynes / Wiener and Maxwell's demon as coarse-graining are previews of later weeks. MacKay / entropy game stay in the file; they were not given.

| Clock | Block |
|------:|-------|
| 10:04–10:06 | Laptops away |
| 10:06–10:09 | This session: heat story, Helmholtz, MacKay if time |
| 10:09–10:23 | Quiz 1 debrief (mean $8.2/10$; gremlin; energy as score; coldness) |
| 10:23–10:32 | Worksheet 1 (mean $12.2$; rat-hole; see-saw) |
| 10:32–10:33 | Worksheet 2 already out; quiz 2 next week |
| 10:33–10:37 | The story of the lecture |
| 10:37–10:45 | Joseph Black: latent heat; Watt; calorimeter |
| 10:45–10:53 | Carnot: mill, caloric, Clapeyron, cholera |
| 10:53–10:56 | Rumford: inexhaustible heat |
| 10:56–11:01 | Air thermometer; Thomson 1848 |
| 11:01–11:05 | Joule; the contradiction; Clausius after the break |
| 11:05–11:13 | Break |
| 11:13–11:17 | Pens; Cavendish / royal-commission aside |
| 11:17–11:48 | Helmholtz on the visualiser; questions ($T$--$S$ square; four-stroke) |
| 11:48–11:54 | Clausius; Maxwell--Boltzmann pointer |
| 11:54–11:58 | Preview: Shannon / Jaynes / Wiener; class test next week |

The include order below is still Black $\to$ \ldots $\to$ Helmholtz. As taught, Helmholtz was boarded after Joule and before the Clausius slides. Protect Helmholtz. The information game, MacKay and grouping now open Week 4 after Quiz 2. Shannon / HMC / Schottky live in `_lamd/parking.md`.

}

\include{includes/week3-homework-debrief.md}

\subsection{From Heat to Helmholtz}

\notes{Week 1 seeded the occupation $p_i \propto e^{-\beta E_i}$. Worksheet 1 told us Clausius did not make entropy a measure of uncertainty. The lecture is the heat thread that gets us to Helmholtz: Black, Carnot, Rumford, the air thermometer, Thomson's 1848 mill-scale, Joule --- then, as taught, the board work on $F=U-TS$ with $U=\expSamp{E}$, and Clausius after that. Maxwell--Boltzmann and Gibbs remain in the file after Clausius. The entropy game and MacKay's weighing problem come after that story; they were not reached on 27 October and now open Week 4 after Quiz 2. Shannon axioms live in `_lamd/parking.md`.

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
* Black $\to$ Carnot $\to$ Rumford $\to$ air thermometer $\to$ Kelvin $\to$ Joule
* Helmholtz on the board after the break; Clausius after Helmholtz
* Shannon / Jaynes / Wiener as a preview; entropy game / MacKay next week
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
\include{includes/week3-helmholtz-as-taught.md}
\include{_physics/includes/carnot-ts-cycle.md}

\include{_physics/includes/gaussian-quadratic-free-energy.md}
\include{_physics/includes/free-energy-entropy-two-sides.md}

\include{includes/week3-shannon-wiener-preview.md}

\subsection{After Helmholtz: Not Reached}

\notes{The physics story arrived at $F=U-TS$. The information reading that Week 2 did not reach --- guessing, MacKay's weighing problem, and die coarse-graining --- was named at 10:05 on 27 October and deferred at 10:33 and again at 11:56. Those slides now open Week 4 after Quiz 2, and they are the setup for Maxwell's demon: the box as a group, the being who looks inside. Do not keep a second copy here.}

\speakernotes{As taught 27 October: we did not get onto the entropy game. It is next week, after the class test.}

\addreading{@Callen-thermostatistics85}{Chapters 1--4}
\addreading{@Callen-thermostatistics85}{Chapters 5--6}

\subsection{Define This Week}

\slidesincremental{
* Heat thread: Black $\to$ Carnot $\to$ Rumford $\to$ air thermometer $\to$ Kelvin $\to$ Joule
* Helmholtz $F=U-TS$ on the board; Clausius after; Welling reads $F$, we read $S$
* Shannon / Jaynes / Wiener preview; entropy game / MacKay next week
}

\notes{The information game, MacKay and grouping open Week 4 after Quiz 2. Shannon axioms, $Z$ as generating function, KL, Schottky and finite time live in `_lamd/parking.md`. Interpret later: how entropy is understood today (week 5, then week 8); chain rule as the source of multi-information (week 8). DPI proof is week 8. Legendre transform on $F$ waits for week 5.}

\subsection{After This Lecture}

\notes{Worksheet 2 (due start of lecture 4) presses whether Shannon $H$ and Boltzmann $S$ are the same object or a metaphor. Next week there *is* a class test --- Quiz 2 --- even though the webpage on 27 October said there was not. After the quiz: information game, MacKay, grouping, then heat and the box, then Maxwell's demon as the punchline. Shannon / Jaynes / Wiener were previewed today.}

\slidesincremental{
* Next: class test (Quiz 2), then the information game, then the demon
* Worksheet 2: $H$ vs $S$ — identity or metaphor?
}

\reading

\thanks

\references
