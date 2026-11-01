---
title: "Introduction, Probability Review, and Motivation"
week: 1
layout: lecture
date: 2026-10-13
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  In this lecture we motivate the course and describe the mechanics of delivery.
  That will involve a review of Laplace's demon and Laplace's gremlin. The aim is
  to centre the notion of uncertainty in the material. Maxwell's demon and
  Landauer's principle appear as a preview of Week 4; entropy as no-go versus
  mechanism is a preview of Week 2. We'll also show how we would like
  to see you deploy that in your course worksheets, where marks will be given for
  answers that demonstrate the type of skepticism we see in the Socratic method.
  We will give a brief review of probability, then relate energy to probability
  through the way the term energy is used in machine learning (typically a
  "thermodynamic" or "Gibbs" energy), and introduce the Boltzmann seed. We stop
  at Daniel Bernoulli as the bridge into kinetic theory; Hydrodynamica, entropy
  as information, and embodiment continue at the start of Week 2. We will release
  Worksheet 1 that will need to be submitted before lecture starts in Week 2. 
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

\notes{First meeting. FW26. The slot is 10:05--11:55 (110 minutes, not 120); no class test. Worksheet 1 (Socratic dialogue) is released and due by 10:00 at the start of lecture 2 (20 October). Quiz 1 is also at the start of lecture 2: probability foundations and the Week 1 energy / Boltzmann seeds. Hydrodynamica, entropy review, and embodiment open lecture 2 after the quiz. Maxwell / Landauer and the no-go contrast are previews, not the later treatments.}

\machinereviewlink

\subsection{This Session}

\notes{The course is called Information, Energy and Intelligence because information is the well-defined quantity, intelligence is not, and energy is how the two meet a physical ledger. After the break comes a handwritten reflection on the worksheet habit: we mark the quality of the probe, not the prose. Socrates is previewed in the opening from *Apology* 21d: he does not think he knows what he does not know --- a more modest claim than the popular paraphrase "I know that I do not know". *The Atomic Human* comes out as a trade book, not a textbook.}

\slidesincremental{
* Room FW26; eight Tuesdays from today
* Motivation, including Maxwell / Landauer as a Week 4 preview
* Probability → doubt / Socrates → energy seed → Daniel Bernoulli
* Worksheet 1 released today; entropy continues next week
}

\newslide{Time Plan}
\notes{**Time plan (as delivered 13 October 2026).** Clocks from the Panopto SRT (recording 00:00 ≈ 10:00). The slot is 10:05--11:55 (110 minutes, not 120). Speech from 10:04; this session ran to 12:00. Maxwell / Landauer / no-go are previews of later weeks, spoken in the first hour. Probability, Socrates, and the energy seed follow the break. Daniel Bernoulli is a pointer, not Hydrodynamica.}

| Clock | Block |
|------:|-------|
| 10:05–10:23 | Course mechanics; questions list; course site |
| 10:23–10:32 | Perpetual motion and superintelligence |
| 10:32–10:52 | Preview: Maxwell's demon, Landauer, no-go versus mechanism |
| 10:52–11:00 | Laplace's demon and gremlin; Jaynes as a pointer |
| 11:00–11:07 | Break |
| 11:07–11:30 | Probability review: product/sum/Bayes; named distributions |
| 11:30–11:47 | Textbooks aside; Socratic worksheets and LLM habit |
| 11:47–11:58 | Energy seed; Boltzmann $p_i \propto e^{-\beta E_i}$ |
| 11:58–12:00 | Daniel Bernoulli pointer; Worksheet 1 / Quiz 1 (past five-to) |


\subsection{Course Mechanics}

\notes{Eight lectures, Tuesdays, this room. Four in-class Moodle quizzes, ten minutes, at the start of lectures 2, 4, 6 and 8. Students need a device. No notes, no network, no LLMs during the quiz. The first quiz is foundations plus this lecture, not two weeks of new material; later quizzes cover the preceding pair of lectures. Four take-home worksheets, each an LLM-centred exercise under the curiosity–skepticism habit from this lecture. Worksheets are released in lectures 1, 2, 4 and 6 and due at the start of lectures 2, 4, 6 and 8 respectively. Identify work by CRSid in filenames and on the handwritten proforma, not by full name. For module questions — clarifications, logistics, conceptual confusion — use [GitHub Discussions](https://github.com/mlatcl/iei/discussions); start from the pinned [Course Q&A — start here](https://github.com/mlatcl/iei/discussions/1) post and open a new Q&A thread per question. Personal or confidential matters stay on email or the course office.}

\slidesincremental{
* Four quizzes (start of lectures 2, 4, 6, 8)
* Four worksheets (LLM dialogue / probe + reflection; due weeks 2, 4, 6, 8)
* Identify with CRSid (filename and form fields; not full name)
* Questions: GitHub Discussions (new Q&A thread each time)
}

\subsection{Questions We Will Return To}

\notes{The [questions page](https://mlatcl.github.io/iei/questions/) is published today. Students should meet the whole list. They should not expect to answer most of it. Two stages: *define* (textbook answer, usually this week or the week the object is introduced) and *interpret* (the course's own reading, often week 5 or week 8). The course site is [mlatcl.github.io/iei](https://mlatcl.github.io/iei/); Reveal.js is the slide engine, not a command to uncover hidden text. Notes for weeks 1--4 have been walked; after that the headlines are mine and the prose may still move. Week 4, Maxwell's demon, is a motivating idea for the whole course and is previewed today. Thermodynamics is a contested subject even among people who have spent their working lives in it; Daniel Bernoulli is named here as eighteenth-century colour, not as this week's derivation.}

\slides{List: [mlatcl.github.io/iei/questions/](https://mlatcl.github.io/iei/questions/)}

\slidesincremental{
* Meet the questions today
* Define later; interpret later still
* Two of them only make sense after week 8
}


\include{_iei/includes/iei-notebook-setup.md}
\include{includes/week1-atomic-human-shown.md}
\include{_information/includes/perpetual-motion-superintelligence-analogy.md}
\include{includes/week1-maxwell-landauer-preview.md}
\include{includes/week1-nogo-preview.md}
\include{_physics/includes/laplace-portrait.md}
\include{_physics/includes/laplaces-determinism.md}
\include{_physics/includes/laplaces-gremlin.md}
\include{includes/week1-jaynes-preview.md}

\include{_ml/includes/probability-review-compact.md}

\notes{Quiz 1 will ask a small discrete Bayes inversion (barrels, coins, two hypotheses) and recognition of the named distributions below.}

\include{_ml/includes/common-distributions-review.md}

\notes{Colour, not examinable beyond recognising the families. Football scores are a rough Poisson; top-flight averages are nearer $1.3$--$1.6$ goals per team per match, not one. De Moivre used the Gaussian as a binomial approximation; Laplace used the same quadratic in what we would now call a Laplace approximation, expanding a log posterior about its mode. Gauss fitted Ceres in 1801; the normal-law derivation, which acknowledges Laplace's evaluation of the Gaussian integral, is in *Theoria Motus* (1809). Heights are a standard story and an invalid support, because a Gaussian puts mass on negative height. The velocities of air, to the extent the gas is ideal, are Gaussian --- that is the Maxwell--Boltzmann distribution on the Cartesian components, with temperature setting the variance. The cosmic microwave background is another Gaussian that people have spent a great deal of money testing for non-Gaussianity (Planck).}

\include{includes/week1-textbooks-aside.md}

\subsection{Doubt}

\slidesincremental{
* Certainty is impossible (Laplace's gremlin) --- doubt is inevitable
* Probability quantifies uncertainty; this course centres on *entropy*
* Bring doubt into your own reasoning: challenge statements (Socratic habit)
}

\notes{What Laplace's gremlin implies in practice is that we can never be certain about outcome, so doubt is an inevitable consequence of
our lack of knowledge. It is what drives us to develop quantitative notions for uncertainty. We have already introduced probability. Next we
meet *energy* as used in machine learning, then *entropy* --- the concept that unifies information and uncertainty, and therefore we argue
(perhaps) intelligence.}

\notes{We will look to apply these ideas to how we approach our learning as well as what we learn. Bringing doubt into your own reasoning is a
way in which you can develop your understanding. Learning to express that doubt through challenging a statement. The model we will use finds its origins in Socrates.}

\subsection{Worksheets and LLMs: Can you be Socrates?}

\newslide{Curiosity, Then Skepticism}

\notes{The general approach we'd like to take to this course is that of a "community of inquiry" (see Chapter 4 of *Thinking in Education*, 2nd ed.\ 2003, @Lipman-thinking12). The unusual modern twist on this notion is that the LLMs themselves become part of that community.}

\notes{Each of us will have different perspectives on what an LLM does and does not provide. You are welcome to bring those perspectives into your work. In particular, for each worksheet, you will be asked to reflect on the LLM responses and the process. Part of that reflection should be specific to the exercise and what you learnt about the subject. But I would like part of that reflection to be general about your understanding of the LLM and what it does and doesn't provide. For worksheets 2, 3, and 4 a portion of that reflection will be on how you feel your understanding of LLMs as a tool of inquiry has evolved (if it evolved!).} 

\notes{The assessment model is based on
1. a form of questioning enquiry generally called "the Socratic method" is an informative way of exploring a topic
2. an impression that the current generation of LLMs is weak when asked to sustain Socratic dialogue. Answers tend to be expansive and when read carefully can lead to 'dialectical vertigo'
3. The new idea we're testing "Socratic method" can be deployed by reversing the role of Socrates and the student.

So in other words we are asking you to take on the role of Socrates in these conversations.
}

\notes{The general background is an idea that in order to develop your understanding of a subject through interaction with an LLM you need two components to your enquiry: *curiosity* and *skepticism*. The curiosity allows you to generate the prompt and the LLM to regurgitate some of its knowledge (or perform searches that it summarises). But the skepticism engages with that summary through challenging the conclusions that the LLM has. In the Socratic *elenchus* that challenge is through pointing out a logical inconsistency that arises (@Vlastos-socratic93), perhaps through a side implication. For our purpose that challenge may not take exactly that form. But it should push back on the narrative the LLM provides. Generating such push back also requires you to engage with the material the LLM has provided.}

\notes{For Socrates these are curated dialogues (written by Plato; the modest "I do not think I know what I do not know" is *Apology* 21d, alongside the *Euthyphro* @Fowler-euthyphro14). So it is normally the case that his challenges hit home. In your case, that will not normally be the case. And we don't expect you to curate your dialogue. What we'd like instead is a period of inquiry that is then summarised by a single dialogue that is played out with one LLM in a short session of 10 prompts and responses.}

\notes{Classical Socratic practice (*elenchus*) tests consistency by questioning, not by lecturing. Contemporary seminar pedagogy keeps the same habit: the questioner holds the inquiry. Current LLMs default to exposition and agreement; they rarely sustain adversarial follow-ups without being steered. Assigning the student the Socrates role forces engagement with the subject matter rather than passive acceptance of a fluent summary.}

\subsection{Dialectical Vertigo}

\notes{In the book, The Grasshopper [@Suits-grasshopper78], the eponymous protagonist, Grasshopper, asks his student, Skepticus, to take on this role.}

> What you are describing, Skepticus, is a chronic but minor ailment of philosophers. It is called dialectical vertigo, and its cure is the immediate application of straightforward argumentation.
>
> The Grasshopper to Skepticus in *The Grasshopper: Games, Life and Utopia* [@Suits-grasshopper78 pg 37]

\newslide{Interacting with LLMs}

\slidesincremental{
* Curiosity: open a question; let the model give a long answer (like Grasshopper)
* Skepticism: take a claim and press it — "if that were true, then ..." (like Skepticus)
* Active thought is the point; the submitted transcript will be evidence of the probe
}


\newslide{Worksheet Habit}

\slidesincremental{
* Explore with as many models as you like
* Submit **one** conversation of exactly ten prompt/answer turns
* Early turns: open and curious; later turns: skeptical probes
* Then a short **handwritten** reflection (print the proforma; scan to PDF)
}

\notes{Each worksheet is marked with 5 points for curiosity, 5 for skepticism, and 5 points for the reflection; the four worksheets together are 15\% of the module. See the [Assessment](https://mlatcl.github.io/iei/assessment.html) page. Worksheet 1 uses a markdown dialogue template (YAML records CRSid, model, and interface) and a separate handwritten reflection proforma. Moodle upload names follow the departmental pattern `L172_<CRSid>_worksheet1_dialogue.md` and `L172_<CRSid>_worksheet1_reflection.pdf`. Use your CRSid in the YAML and on the proforma; do not write your full name.}

\slidesincremental{
* Templates: assessments/handouts/ (dialogue.md + reflection proforma)
* `L172_<CRSid>_worksheet1_dialogue.md` and `…_reflection.pdf` (scan)
* Quiz 1 (next week) checks foundations you should have met here and in W1
}


\include{_ml/includes/energy-in-machine-learning.md}

\subsection{Boltzmann Seed}

\newslide{A Prescription to Interrogate}

\slides{For fixed mean energy $U$, the maximum-entropy occupation is the Boltzmann distribution --- same $E$ grammar as the ML energies above.}

\slidesincremental{
* $p_i \propto e^{-\beta E_i}$ with coldness $\beta = 1/kT$
* Normaliser $Z=\sum_i e^{-\beta E_i}$, so $p_i = e^{-\beta E_i}/Z$
* Week 2: Hydrodynamica / entropy bridge / embodiment; Week 3 clears Gibbs / $F$ / HMC then Shannon
}

\notes{In machine learning an energy is often just a negative log probability, measured in nats, which is a peculiar unit for something that in physics is measured in joules. Energy-based models are, among other things, a way of not writing the partition function $Z$. In physics $Z$ is the whole story. We return to it with free energy; do not compute it today.}

\speakernotes{Do not derive Lagrange multipliers today. State the formula so Worksheet 1 has a concrete claim to open and then press. Students should leave curious about why *this* exponential, what $\beta$ means, and whether entropy here is a constraint or a recipe. Point back to cross-entropy / BM pairwise energy if they ask what $E$ is. Hamiltonian / HMC demos wait for lecture 3. If asked what you gain by calling a loss an energy: the honest answer is that some people hope to avoid $Z$; LeCun's energy-based models are that habit.}

\setupcode{import numpy as np}

\code{def boltzmann(energies, beta):
    """Boltzmann probabilities $p_i \\propto e^{-\\beta E_i}$."""
    log_w = -beta * np.asarray(energies, dtype=float)
    log_w -= log_w.max()
    w = np.exp(log_w)
    return w / w.sum()

# Live check: boltzmann([0, 1], 1.0) -> about (0.731, 0.269)}

\speakernotes{Optional live check. Deep dive, free-energy plots, and HMC are lecture 3.}

\include{_physics/includes/daniel-bernoulli-portrait.md}

\newslide{Next Week: Hydrodynamica}

\slides{We stop at Daniel Bernoulli. Week 2 reopens Laplace's molecule, then *Hydrodynamica*.}

\slidesincremental{
* Why Laplace talks of molecules before atoms are settled
* Bernoulli's assumptions; ensemble as coarse-graining
* Entropy bridge; embodiment (Gibbs / $F$ / HMC spill to Week 3)
}

\speakernotes{As delivered this was one sentence: if there had been time, more on Daniel Bernoulli. Keep it as a pointer. Do not open the Hydrodynamica plates or the billiards demo today.}

\subsection{Define This Week}

\slidesincremental{
* Product rule, sum rule, Bayes
* Bernoulli, binomial, Poisson, multinomial, Gaussian
* Energy scores: quadratic, cross-entropy, BM pairwise
* Seed: $p_i = e^{-\beta E_i}/Z$
}

\notes{
* Product rule, sum rule, Bayes (including the barrels inversion)
* Named families: Bernoulli, binomial, Poisson, multinomial, Gaussian
* Given a distribution, write its energy; given an energy, normalise it
* Identify least squares and cross-entropy as negative log-likelihoods
* Seed: $p_i = e^{-\beta E_i}/Z$
}

\subsection{After This Lecture}

\notes{Worksheet 1: Socratic dialogue on the *history of the name* entropy --- why Shannon used the word; von Neumann anecdote versus Shannon's Tolman footnote and the Wiener--Gibbs trail. Exactly ten turns (mandated opening pair, then free probes); handwritten reflection on the scanned proforma (separate upload). Use the handouts. Due 20 October, start of lecture 2. Quiz 1 in the first ten minutes of lecture 2 covers today's probability review and energy / Boltzmann seeds; lecture 2 then presses Laplace's molecule as anachronism, Bernoulli's assumptions, and the ensemble as coarse-graining before Hydrodynamica and the entropy bridge. As delivered, a copy of *The Atomic Human* went to the student who asked the most questions; that is not part of the mark.}

\slidesincremental{
* Worksheet 1 released; due 20 October (Shannon naming dialogue + handwritten reflection)
* Quiz 1 next week: probability and Week 1 energy seeds
* Then: Hydrodynamica → entropy bridge → embodiment
}

\machinereview

\ifdef{NOTES}
\include{includes/intro-review-motivation-machine-review.md}
\endif

\reading

\thanks

\references
