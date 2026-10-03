---
title: "Introduction, Probability Review, and Motivation"
week: 1
layout: lecture
date: 2026-10-13
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  Course motivation, mechanics and the 'Socratic' worksheet method; a review of
  probability; the course theme of probability driving possibilities and entropy
  driving impossibilities. Entropy reminder; energy as used in machine learning
  (quadratic loss, cross-entropy, Boltzmann-machine pairwise energy); perpetual
  motion and human bandwidth. Boltzmann seed; culmination from loss landscapes as
  potential energy through stochastic descent to the Hamiltonian and HMC (Neal).
  Worksheet 1 released for interrogation before lecture 2.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO1]
duration_hours: 2
type: lecture
in_class_test: null
worksheet_released: W1
reading:
  - title: "The Atomic Human"
    author: "Lawrence"
    chapter: "Chapter 1"
    estimated_hours: 2
    required: false
  - title: "Information Theory, Inference, and Learning Algorithms"
    author: "MacKay"
    chapter: "Chapters 1–2 (probability and entropy refreshers)"
    estimated_hours: 2
    required: false
  - title: "Pattern Recognition and Machine Learning"
    author: "Bishop"
    chapter: "Section 1.2 (probability distributions)"
    estimated_hours: 1
    required: false
---

\notes{First meeting. FW26. Two hours from 10:00; no class test. Worksheet 1 (Socratic dialogue) is released and due by 10:00 at the start of lecture 2 (20 October). Quiz 1 is also at the start of lecture 2: probability, elementary entropy, and the Week 1 seeds.}

\subsection{This Session}

\slidesincremental{
* Room FW26; eight Tuesdays from today
* How worksheets and LLMs work (you are Socrates)
* Probability and entropy review; energy in ML; then potential → Hamiltonian / HMC
}

\newslide{Time Plan}
\notes{**Time plan (120 minutes)**}

| Minutes | Block |
|--------:|-------|
| 0–15 | Course mechanics; questions list; the motivation and theme |
| 15–35 | 'Socratic' approach: curiosity, skepticism, submission rules |
| 35–65 | Probability review: product/sum/Bayes; basic distributions |
| 65–75 | Break |
| 75–95 | Entropy review (elementary $H$); bits and nats |
| 95–110 | Energy in ML; motivation and bandwidth; Boltzmann seed |
| 110–118 | Culmination: potential → stochastic → kinetic? → Hamiltonian / HMC |
| 118–120 | Worksheet 1 brief; Quiz 1 preview |


\subsection{Course Mechanics}

\notes{Eight lectures, Tuesdays, this room. Four in-class Moodle quizzes, ten minutes, at the start of lectures 2, 5, 7 and 8. Students need a device. No notes, no network, no LLMs during the quiz. Four take-home worksheets. Worksheet 1 is a Socratic LLM dialogue plus reflection; later worksheets mix code and shorter LLM probes using the same curiosity–skepticism habit. Worksheets are released in lectures 1, 4, 6 and 7 and due at the start of lectures 2, 5, 7 and 8 respectively.}

\slidesincremental{
* Four Moodle quizzes (start of lectures 2, 5, 7, 8)
* Four worksheets (W1: Socratic dialogue; later: notebook + reflection)
* Marking is anonymous: candidate number, never name or CRSid on the file
}

\subsection{Questions We Will Return To}

\notes{The questions page is published today. Students should meet the whole list. They should not expect to answer most of it. Two stages: *define* (textbook answer, usually this week or the week the object is introduced) and *interpret* (the course's own reading, often week 5 or week 8).}

\slidesincremental{
* Meet the questions today
* Define later; interpret later still
* Two of them only make sense after week 8
}


\include{_iei/includes/iei-notebook-setup.md}
\subsection{Motivation}
\include{_information/includes/perpetual-motion-superintelligence-analogy.md}
\include{_physics/includes/laplace-portrait.md}
\include{_physics/includes/laplaces-determinism.md}
\include{_physics/includes/laplaces-gremlin.md}

\include{_ml/includes/probability-review-compact.md}

\notes{Quiz 1 will ask a small discrete Bayes inversion (barrels, coins, two hypotheses) and recognition of the named distributions below.}

\include{_ml/includes/common-distributions-review.md}

\subsection{Doubt}



\subsection{Worksheets and LLMs: Can you be Socrates?}

\newslides{Curiosity, Then Skepticism}

\notes{The general approach we'd like to take to this course is that of a "community of inquiry" (see Chapter 4, @Lipman-thinking12). The unusual modern twist on this notion is that the LLMs themselves become part of that community.}

\notes{Each of us will have different perspectives on what an LLM does and does not provide. You are welcome to bring those perspectives into your work. In particular, for each worksheet, you will be asked to reflect on the LLM responses and the process. Part of that reflection should be specific to the exercise and what you learnt about the subject. But I would like part of that reflection to be general about your understanding of the LLM and what it does and doesn't provide. For worksheets 2, 3, and 4 a portion of that reflection will be on how you feel your understanding of LLMs as a tool of inquiry has evolved (if it evolved!).} 

\notes{The premise on which the assessment model is based is twofold (1) a form of questioning enquiry generally called "the Socratic method" is an informative way of exploring a topic. (2) Current generation of LLMs is weak at sustained Socratic dialogue. They tend to answer expansively. (3) The "Socratic method" can be deployed by reversing the role of Socrates and the student, so you will need to take on the role of Socrates.}

\notes{The general background is an idea that in order to develop your understanding of a subject through interaction with an LLM you need two components to your enquiry: *curiousity* and *skepticism*. The curiousity allows you to generate the prompt and the LLM to regurgitate some of its knowled (or perform searches that it summarises). But the skepticism engages with that summary through challenging the conclusions that the LLM has. In the Socratic *elenchus* that challenge is through pointing out a logical inconsistency that arises  (@Vlastos-socratic93), perhaps through a side implication. For our purpose that challenge may not take exactly that form. But it should push back on the narrative the LLM provides. Generating such push back also requires you to engage with the material the LLM has provided.}

\notes{For Socrates these are curated dialogues (written by Plato, e.g. @Fowler-euthyphro14). So its normally the case that his challenges hit home. In your case, that won't normally be the case. And we don't expect you to curate your dialogue. What we'd like instead is a period of inquiry that is then summarised by a single dialogue that is played out with one LLM in a short session of 10 prompts and responses.}


\subsection{Dialectical Vertigo}


> What you are describing, Skepticus, is a chronic but minor ailment of philosophers. It is called dialectical vertigo, and its cure is the immediate application of straightforward argumentation.
>
> The Grasshopper to Skepticus in @Suits-grasshopper70


\slidesincremental{
* Curiosity: open a question; let the model give a long answer
* Skepticism: take a claim and press it — "if that were true, then ..."
* Active thought is the point; the transcript is evidence of the probe
}

\notes{Classical Socratic practice (*elenchus*) tests consistency by questioning, not by lecturing. Contemporary seminar pedagogy keeps the same habit: the questioner holds the inquiry. Current LLMs default to exposition and agreement; they rarely sustain adversarial follow-ups without being steered. Assigning the student the Socrates role forces engagement with the subject matter rather than passive acceptance of a fluent summary.}

\newslides{Worksheet Habit}

\slidesincremental{
* Explore with as many models as you like
* Submit **one** conversation of about ten prompt/answer turns
* Early turns: open and curious; later turns: skeptical probes
* Then a short reflection on what you learned
}

\notes{Worksheets are marked with 5 points for curiosity, 5 for skepticism, and 5 points for the reflection (15% of the module). You will be provided with a markdown template for your answers. The YAML frontmatter records candidate number, model, and interface. Do not put your name or CRSid anywhere on the submission (Cambridge coursework is marked anonymously wherever possible) use your candidate number (Moodle blind grading number or the assignment number issued by the course office).}

\slidesincremental{
* Template: assessments/handouts/ (dialogue + reflection)
* Filename: `candidatenumber_worksheet1_dialogue.md` (and reflection)
* Quiz 1 (next week) checks foundations you should have met here and in W1
}


\include{_information/includes/entropy-review.md}

\speakernotes{Axiomatic derivation of $H$ and $S=kH$ are week 3 / LO2. Worksheet 1 probes can already use joint / conditional / chain-rule vocabulary.}

\include{_information/includes/entropy-nogo-probability-prescription.md}





\speakernotes{Now shift to explaining the relationship between what we're teaching and how we're teaching. Our objective is to get information in you. Why do we have to do it in such a complex way. Need to lace this description of the atomic human with the pedagogy we're using. Carnot--Clausius history waits for lecture 2 with free energy.}

\include{_books/includes/the-atomic-human.md}

\include{_ai/includes/embodiment-factors-celsius.md}

\notes{Shannon measured information in bits: one bit is the result of a fair coin toss. He estimated $\sim 12$ bits per English word on average [@Shannon-info48], which with typical speaking rates gives $\sim 10$--$60$ bits per second for human communication [@Reed-information98,@Lawrence-embodiment17,@Lawrence-atomic24]. Machines communicate orders of magnitude faster — the embodiment factor is the ratio between compute and that narrow channel.}

\notes{Shannon measured information in bits. Human communication is slow relative to machines — the embodiment factor. Lecture 3 derives $H$; today we only need the bit as a unit of uncertainty and of bandwidth.}

\speakernotes{This may need to move to Lecture 2 depending on how much work we have introducing the pedagogy.}

\comment{I think this means worksheet 1 could also be about the general ideas presented here? Allowing them to bring skepticism. The core idea of bandwidth limitations and how it effects the architecture of an intelligence?}

\newslides{Shannon Next Lecture}

\slides{We are already counting in Shannon's bits — embodiment is a communication bottleneck, not yet a theorem.}

\slidesincremental{
* Lecture 3: why *bits*, and $H=-\sum_i p_i\log p_i$ from axioms
* Same functional form as Boltzmann $S$; different operational reading
* The intelligence question sharpens in lecture 4 (Landauer, Bauby)
}

\speakernotes{Portrait and table are enough today. Forward pointer only — do not derive $H$.}

\notes{Shannon gave the unit used for bandwidth and embodiment factors. The derivation of $H$ and the statement $S=kH$ are LO2 in lecture 3. The bandwidth gap is a bottleneck on sharing thought, not a second no-go paired with Boltzmann. Lecture 4 applies the same bit accounting to locked-in communication.}



\subsection{Entropy and the Boltzmann Distribution}

\include{_physics/includes/entropy-intro.md}

\include{_ml/includes/energy-in-machine-learning.md}
\subsection{Boltzmann Seed}

\newslides{A Prescription to Interrogate}

\slides{For fixed mean energy $U$, the maximum-entropy occupation is the Boltzmann distribution --- same $E$ grammar as the ML energies above.}

\slidesincremental{
* $p_i \propto e^{-\beta E_i}$ with coldness $\beta = 1/kT$
* Normaliser $Z=\sum_i e^{-\beta E_i}$, so $p_i = e^{-\beta E_i}/Z$
* Week 2: name Gibbs, account with free energy $F=U-TS$; Carnot--Clausius history
}

\speakernotes{Do not derive Lagrange multipliers today. State the formula so Worksheet 1 has a concrete claim to open and then press. Students should leave curious about why *this* exponential, what $\beta$ means, and whether entropy here is a constraint or a recipe. Point back to cross-entropy / BM pairwise energy if they ask what $E$ is.}


\setupcode{import numpy as np}

\code{def boltzmann(energies, beta):
    """Boltzmann probabilities $p_i \\propto e^{-\\beta E_i}$."""
    log_w = -beta * np.asarray(energies, dtype=float)
    log_w -= log_w.max()
    w = np.exp(log_w)
    return w / w.sum()

# Live check: boltzmann([0, 1], 1.0) -> about (0.731, 0.269)}

\speakernotes{Optional live check. Deep dive and free-energy plots are lecture 2.}

\include{_ml/includes/from-loss-to-hamiltonian.md}

\notes{Week 1 culmination: the energies named earlier are *potentials*. Descent is motion on $V$; practice is stochastic; kinetic energy completes the Hamiltonian; HMC (Neal) is the sampler that uses both. The live demos use ``mlai.HamiltonianMonteCarlo``: leapfrog paths on a quadratic potential, then logistic regression with an SGD point estimate versus an HMC posterior cloud.}

\subsection{Define This Week}

\slidesincremental{
* Product rule, sum rule, Bayes
* Bernoulli, binomial, Poisson, multinomial, Gaussian
* $H=-\sum_i p_i\log p_i$ (bits or nats)
* Energy scores: quadratic, cross-entropy, BM pairwise
* Loss landscape as potential $V$; ask for kinetic $K$; Hamiltonian $H=K+V$
* Seed: $p_i = e^{-\beta E_i}/Z$; HMC via ``mlai`` (Neal)
}

\subsection{After This Lecture}

\notes{Worksheet 1: Socratic dialogue on Boltzmann / entropy / free energy *before* lecture 2. About ten turns; curiosity then skepticism; reflection. Use the template. Due 20 October, start of lecture 2. Quiz 1 in the first ten minutes of lecture 2 covers today's probability and entropy review plus the seeds you should have pressed in the worksheet.}

\slidesincremental{
* Worksheet 1 released; due 20 October (Socratic dialogue)
* Quiz 1 next week: probability, entropy, Week 1 seeds
}

\reading

\thanks

\references
