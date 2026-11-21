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
  prescription; common distributions; continuous / relative entropy introduced), and
  embodiment as bandwidth (*The Atomic Human*). As delivered we stop there.
  Week 3 is the heat thread through Helmholtz, then MacKay / grouping.
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

\notes{Worksheet 1 is due at the start of this session. The slot is 10:05--11:55 (110 minutes, not 120). Quiz 1 occupies the first ten minutes from 10:05. After the quiz: Laplace's molecule, Bernoulli / *Hydrodynamica*, ensemble as coarse-graining. Entropy bridge (distributions; continuous entropy and relative entropy / KL introduced) sat after the break; embodiment (*Atomic Human*) was the last ten minutes. As delivered we stop at embodiment --- overrun to 12:00. Week 3 is the heat thread (Black through Helmholtz), then the unfinished info game / MacKay / die coarse-graining. The MaxEnt derivation is Week 5.}

\machinereviewlink

\subsection{This Session}

\slidesincremental{
* Quiz 1 (ten minutes)
* Laplace's molecule → Bernoulli assumptions → ensemble as coarse-graining
* Hydrodynamica / entropy bridge (distributions; continuous / relative entropy introduced)
* Embodiment / bits as bandwidth (Atomic Human) --- stop
* Next week: Black → Helmholtz, then MacKay / grouping
}

\notes{
**Time plan (as delivered 20 October 2026).** Clocks from the Panopto recording (00:00 ≈ 10:00) plus the transcript. The slot is 10:05--11:55 (110 minutes, not 120). Quiz silence is 10:08--10:18; the break ran 11:09--11:17 (spoken as five minutes, started late). Entropy review sat *after* the break; embodiment was the last ten minutes, not the whole second hour. Close overran five-to.

| Clock | Block |
|------:|-------|
| 10:05–10:18 | Quiz 1 (paper; briefing then ~10 minutes sitting) |
| 10:18–11:09 | Laplace molecule; Bernoulli / Hydrodynamica; ensemble / coarse-graining |
| 11:09–11:17 | Break |
| 11:17–11:50 | Entropy bridge; common distributions; continuous / KL introduced |
| 11:50–12:00 | Embodiment / bits as bandwidth (*Atomic Human*); flag Week 3 carry-over |
}

\subsection{Quiz 1}

\notes{Invigilated paper test, no notes, no network, no LLMs. Ten questions on last week's probability review and the energy / Boltzmann seeds pressed in Worksheet 1. Hydrodynamica and the entropy bridge follow the quiz.}

\slidesincremental{
* Paper; no notes, no network, no LLMs
* Ten minutes
}

\classtimertitled{10:05}{Quiz 1}

\subsection{From Daniel Bernoulli: Week 1 Carry-Over}

\notes{Week 1 stopped at Daniel Bernoulli's book, having already quoted Laplace on the curve of a molecule of air. We open by pressing how anachronistic that sounds once atoms are in dispute in Boltzmann's century, then Bernoulli's assumptions, then the ensemble as the coarse-grained answer to Laplace's gremlin. *Hydrodynamica*, billiards, and the entropy bridge follow inside the same include; Gibbs--Boltzmann accounting waits for Week 3.}

\include{_physics/includes/entropy-intro.md}

\include{_information/includes/entropy-review.md}

\speakernotes{Axiomatic derivation of $H$ and $S=kH$ are week 3 / LO2. Chain-rule / die grouping also waits for week 3; Worksheet 1 probes can already use joint / conditional vocabulary from today's review.}

\include{_information/includes/entropy-nogo-probability-prescription.md}

\speakernotes{Lace Atomic Human / embodiment with the pedagogy: we are trying to get information into students through a narrow channel. Free energy and HMC wait for week 3.}

\include{_books/includes/the-atomic-human.md}

\newslide{Emulate, Do Not Replicate}

\slides{Anything we can measure, a machine can probably emulate. That is not the same as replicating us.}

\slidesincremental{
* Our intelligence is shaped by its context
* Measure a capability, fit parameters, recreate the score
* You cannot simply replicate us, because the context is specific
}

\speakernotes{The cover is not the argument. One accidental equation in the book ($E=mc^2$) because everyone knows it. Do not define intelligence. Ask whether AGI-as-better-on-all-scores is even the right question.}

\notes{There is one equation in the book, and it is accidental: $E=mc^2$, because everyone knows it. The book is a way of looking at human intelligence. The main thing that is going on with our intelligence is its context. You cannot simply replicate our intelligence. You can emulate it, but you cannot replicate it, because it has a specific context.

The notion of the atomic human is this. Any capability I have, anything I do that we can measure, I believe we can probably get machines to emulate. We could get a machine to look at the measurement, optimise some parameters, and recreate it --- if the thing I am doing, we can measure.

Then the question becomes: is the notion of artificial general intelligence valid? That is how the claim is usually framed, or superintelligence: a machine that is better in all these ways of measuring. This is a different way of looking at our intelligence.}

\newslide{The Cut}

\slides{If every machine capability slices something away from us, does the slicing go forever?}

\slidesincremental{
* Greek atomists: you stop --- the world is made of what you cannot cut
* Computer scientists often say no: humans disappear
* Other answers: empathy, suffering, God
}

\speakernotes{Democritus, not a physics lecture. Accelerators splitting the atom just means we misnamed the atom: quarks sit below. In a public-understanding talk, pause here.}

\notes{I do not know how to define intelligence, but there is a process we can go through. It is equivalent to Democritus's atoms --- which, I presume, later inspired the corpuscles. If I cut this table in half, describe one half, cut the next piece in half, and keep going: can I do that forever, or do I reach a point where I cannot cut?

The Greek atomists, around 400 BC, said you reach a point where you cannot cut, and the world is made of those things. CERN chose to split the atom --- but that just means we misnamed the atom. Below an atom you go to a quark. I do not think anyone can split that. There is some notion of something indivisible in the physical world.

The notion in *The Atomic Human* is the same idea in our cognitive landscape. Every time a machine does something that used to be unique to humans, it is slicing into us. Cut something away. Does that process go on forever, or is there a point at which it stops?

In a public-understanding talk I pause, and you have to find your own answers. Ask computer scientists, and some will say there is no point at which it stops, and humans disappear. I think that is a bleak answer. Ask other people, and they say there is a point at which it stops. They offer "true empathy", or --- one of the answers I return to --- suffering. Another answer I return to, even though I am not religious, was "my relationship with God". I think both these answers are informative. But I'm not saying there's a single right answer. I'm saying it is a question anyone can ask, and you can ask yourself.}

\newslide{What the Machine Cannot Have}

\slides{The machine cannot have our weaknesses and our vulnerabilities. They are intrinsic to us.}

\slidesincremental{
* Anything I can score, I can emulate
* Vulnerabilities and limitations are fundamental
* Key among them: communicate versus compute
}

\notes{My specific answer is that the thing the machine cannot have is our weaknesses and our vulnerabilities, because they are intrinsic to us. I can emulate an entity. I can recreate my capabilities --- anything I can score. The vulnerabilities and limitations I have are fundamental to us.}

\newslide{Culture Is Compression}

\slides{We built a cultural landscape so that a few bits can point at an idea you already know.}

\slidesincremental{
* Analogies remain a puzzle --- why they work is not a derived principle
* AGI without that limitation is not general. It is specific to us
* You can emulate it, but it is not the same
}

\speakernotes{The argument is Shannon's bits: set aside conversation about intelligence and ask how much information is coming in over what time. The machine is already six orders of magnitude better off by the physics.}

\notes{That limitation is one of the dominant reasons our intelligence is the way it is. Instead of dumping the contents of a computation, we have to turn these things into things other people might be able to relate to, in order to communicate very complex subjects.

The cultural landscape we sit in is something we constructed, so that I can, with very few bits of information, point to an idea that you already know and say: this is like this. Why that works remains something of a mystery. Why do analogies work? As you go deeper into it, I am not sure there is a derived principle. But they do work, and that is how we communicate. So much of our intelligence is about building up this world around us.

The notion of AGI, on this argument, does not survive. Unless you have that limitation embedded, it is not a general intelligence; it is specific to us and our context. You can emulate it, but it is not the same. I think the claim is empty.

My arguments on that are all based on Shannon's bits. I set aside conversation about intelligence, and I asked: how much information is coming in over what time? That is why I think information is powerful in this space. We can see that the machine is already six orders of magnitude better off than us, just by the physics of it. The things we are seeing today are a consequence of that.}

\include{_iei/includes/the-atomic-human-iei.md}

\include{_ai/includes/embodiment-factors-celsius.md}

\notes{Shannon measured information in bits: one bit is the result of a fair coin toss. The $\sim 12$ bits per English word figure is $11.82$ bits/word from word frequencies in [@Shannon-prediction51], not the 1948 paper; it is a crude Zipf estimate, and with context the entropy per letter falls to around one bit. With typical speaking rates that crude figure gives $\sim 10$--$60$ bits per second for human communication [@Reed-information98,@Lawrence-embodiment17,@Lawrence-atomic24]. Machines communicate orders of magnitude faster — the embodiment factor is the ratio between compute and that narrow channel.}

\newslide{As Delivered --- Stop}

\slides{We stop at embodiment. Week 3 is the heat thread, then MacKay.}

\slidesincremental{
* Next: Black, Carnot, Rumford, Kelvin, Joule, Clausius, Kelvin
* Then: Maxwell--Boltzmann, Gibbs, Helmholtz $F=U-TS$
* After that story: entropy game / MacKay / grouping
}

\speakernotes{Honest close after overrun. Do not start the die board today.}

\notes{As promised on 20 October, Week 3 was to take MacKay after the heat thread. As taught on 27 October the heat thread filled the slot. The information game, MacKay and grouping now open Week 4 after Quiz 2.}

\subsection{Define This Week}

\slidesincremental{
* How was entropy discovered? (Hydrodynamica → Maxwell / Boltzmann / Gibbs)
* $H=-\sum_i p_i\log p_i$; no-go versus prescription (first cut)
* What are the information constraints on a human? (bandwidth, first cut)
* Continuous entropy vs relative entropy / KL (introduced; formalised in Weeks 4--5)
}

\notes{Interpret later: how entropy is understood today; equilibrium versus non-equilibrium; die grouping, Gibbs / $F$, HMC, bath and Schottky (Week 3); the purely entropic Schottky reading (Week 8). Define-stage answer to "How was entropy discovered?": Carnot on engines (1824); Clausius states the second law in the 1850s and coins the name entropy in 1865; Boltzmann and Gibbs give the statistical count; Shannon and Jaynes reuse $H$ with different operational readings.}


\subsection{After This Lecture}

\notes{Next week is the heat thread through Helmholtz, then MacKay / grouping. Shannon $H$, $Z$, KL, bath / Schottky are parked in Week 4 for sorting. Optional LLM probe: is free energy a constraint or a recipe? (after $F$ is taught).}

\slidesincremental{
* Next: heat thread through Helmholtz, then MacKay
* LLM probe (after $F$): is free energy a bound or a recipe?
}

\machinereview

\ifdef{NOTES}
\include{includes/ensemble-entropy-embodiment-machine-review.md}
\endif

\reading

\thanks

\references
