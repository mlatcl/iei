---
title: "Ensemble, Entropy, and Embodiment"
week: 2
layout: lecture
date: 2026-10-20
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  Worksheet 1 is due and the session starts with Quiz 1 (probability and Week 1
  energy seeds). We reopen Laplace's ``molecule of air'' as an anachronism,
  state Bernoulli's kinetic assumptions, and introduce the statistical ensemble
  as coarse-graining. Then *Hydrodynamica*, the entropy bridge (no-go versus
  prescription; common distributions; continuous / relative entropy named), and
  embodiment as bandwidth (*The Atomic Human*). As delivered we stop there:
  information game / MacKay / die coarse-graining, Gibbs--Boltzmann, free energy,
  and HMC open Week 3.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO1]
duration_hours: 2
type: lecture
in_class_test:
  id: Q1
  duration_minutes: 10
  timing: start
  covers: [probability foundations, Week 1 energy seeds, LO1]
worksheet_due: W1
worksheet_released: W2
reading:
  - title: "The Atomic Human"
    author: "Lawrence"
    chapter: "Chapter 1"
    estimated_hours: 2
    required: false
  - title: "Thermodynamics and an Introduction to Thermostatistics"
    author: "Callen"
    chapter: "Chapters 1–4 (postulates; Helmholtz waits for Week 3)"
    estimated_hours: 2
    required: false
  - title: "Generative AI and Stochastic Thermodynamics"
    author: "Welling, Lu and Holdijk"
    chapter: "Chapter 3"
    estimated_hours: 1
    required: false
---

\notes{Worksheet 1 is due at the start of this session. Quiz 1 occupies the first ten minutes. After the quiz: Laplace's molecule, Bernoulli / *Hydrodynamica*, ensemble as coarse-graining, entropy bridge (distributions; continuous entropy and relative entropy / KL named), then embodiment (*Atomic Human*). As delivered we stop at embodiment --- overrun. Week 3 opens with the unfinished Week 2 queue: info game / MacKay / die coarse-graining, then Gibbs--Boltzmann, $F=U-TS$, and HMC, before Shannon axioms. Do not derive the occupation from MaxEnt today --- that is week 5.}

\subsection{This Session}

\slidesincremental{
* Quiz 1 (ten minutes)
* Laplace's molecule → Bernoulli assumptions → ensemble as coarse-graining
* Hydrodynamica / entropy bridge (distributions; continuous / relative entropy named)
* Embodiment / bits as bandwidth (Atomic Human) --- stop
* Next week: die / MacKay → Gibbs / $F$ → HMC → Shannon
}

\notes{
**Time plan (as delivered, 120 minutes)**

| Minutes | Block |
|--------:|-------|
| 0–10 | Quiz 1 (Moodle; probability / Week 1 energy seeds) |
| 10–15 | Collect Worksheet 1; release Worksheet 2; recap seed $p_i \propto e^{-\beta E_i}$ |
| 15–35 | Laplace molecule anachronism; Bernoulli assumptions; ensemble / coarse-graining |
| 35–55 | Hydrodynamica / billiards; entropy bridge; common distributions; continuous / KL named |
| 55–65 | Break |
| 65–110 | Embodiment / bits as bandwidth (*Atomic Human*) |
| 110–120 | Close; flag Week 3 carry-over (die / Gibbs / $F$ / HMC) |

}

\subsection{Quiz 1}

\notes{Invigilated Moodle, own device, no notes, no network, no LLMs. Ten questions on last week's probability review and the energy / Boltzmann seeds pressed in Worksheet 1. Hydrodynamica and the entropy bridge follow the quiz.}

\slidesincremental{
* Device required; Moodle open
* No notes, no network, no LLMs
* Ten minutes
}

\classtimer{10:00}

\subsection{From Daniel Bernoulli: Week 1 Carry-Over}

\notes{Week 1 stopped at Daniel Bernoulli's portrait, having already quoted Laplace on the curve of a molecule of air. We open by pressing how anachronistic that sounds once atoms are in dispute in Boltzmann's century, then Bernoulli's assumptions, then the ensemble as the coarse-grained answer to Laplace's gremlin. *Hydrodynamica*, billiards, and the entropy bridge follow inside the same include; Gibbs--Boltzmann accounting waits for Week 3.}

\include{_physics/includes/entropy-intro.md}

\include{_information/includes/entropy-review.md}

\speakernotes{Axiomatic derivation of $H$ and $S=kH$ are week 3 / LO2. Chain-rule / die grouping also waits for week 3; Worksheet 1 probes can already use joint / conditional vocabulary from today's review.}

\include{_information/includes/entropy-nogo-probability-prescription.md}

\speakernotes{Lace Atomic Human / embodiment with the pedagogy: we are trying to get information into students through a narrow channel. Free energy and HMC wait for week 3.}

\include{_books/includes/the-atomic-human.md}

\include{_ai/includes/embodiment-factors-celsius.md}

\notes{Shannon measured information in bits: one bit is the result of a fair coin toss. He estimated $\sim 12$ bits per English word on average [@Shannon-info48], which with typical speaking rates gives $\sim 10$--$60$ bits per second for human communication [@Reed-information98,@Lawrence-embodiment17,@Lawrence-atomic24]. Machines communicate orders of magnitude faster — the embodiment factor is the ratio between compute and that narrow channel.}

\newslide{As Delivered --- Stop}

\slides{We stop at embodiment. Week 3 opens with the unfinished queue.}

\slidesincremental{
* Next: info game / MacKay / die coarse-graining
* Then: Gibbs--Boltzmann, $F=U-TS$, HMC
* Then: Shannon axioms, $Z$, Schottky
}

\speakernotes{Honest close after overrun. Do not start the die board today.}

\subsection{Define This Week}

\slidesincremental{
* How was entropy discovered? (Hydrodynamica → Maxwell / Boltzmann / Gibbs)
* $H=-\sum_i p_i\log p_i$; no-go versus prescription (first cut)
* What are the information constraints on a human? (bandwidth, first cut)
* Continuous entropy vs relative entropy / KL (named; formalised week 3)
}

\notes{Interpret later: how entropy is understood today; equilibrium versus non-equilibrium; die grouping, Gibbs / $F$, HMC, bath and Schottky (Week 3); the purely entropic Schottky reading (Week 8). Define-stage answer to "How was entropy discovered?": Carnot on engines; Clausius names entropy and states the second law (1865); Boltzmann and Gibbs give the statistical count; Shannon and Jaynes reuse $H$ with different operational readings.}


\subsection{After This Lecture}

\notes{Next week is crowded: Week 2 carry-over (die / MacKay / Gibbs / $F$ / HMC), then Shannon $H$, $Z$, KL formally, bath / Schottky / finite time. Optional LLM probe: is free energy a constraint or a recipe? (after $F$ is taught).}

\slidesincremental{
* Next: finish Week 2 queue, then Shannon / Schottky
* LLM probe (after $F$): is free energy a bound or a recipe?
}

\reading

\thanks

\references
