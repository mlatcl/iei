---
title: "Introduction, Probability Review, and Motivation"
week: 1
layout: lecture
date: 2026-10-13
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  Course mechanics and the Socratic worksheet method; a review of
  probability and elementary entropy; then the course theme — entropy
  forbids, probability prescribes — via perpetual motion, human
  bandwidth, and a seeded Boltzmann distribution for Worksheet 1 to
  interrogate before lecture 2.
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
* Probability and entropy review; then motivation and a Boltzmann seed
}

\notes{
**Time plan (120 minutes)**

| Minutes | Block |
|--------:|-------|
| 0–15 | Course mechanics; questions list; the theme |
| 15–35 | Socratic worksheets: curiosity, skepticism, submission rules |
| 35–65 | Probability review: product/sum/Bayes; basic distributions |
| 65–75 | Break |
| 75–95 | Entropy review (elementary $H$); bits and nats |
| 95–115 | Motivation: perpetual motion, bandwidth; Boltzmann seed |
| 115–120 | Worksheet 1 brief; Quiz 1 preview |
}

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

\include{_information/includes/entropy-nogo-probability-prescription.md}

\subsection{Worksheets and LLMs: Can you be Socrates?}

\newslides{Curiosity, Then Skepticism}

\notes{The general approach we'd like to take to this course is that of a "community of inquiry" (see Chapter 4, @Lipman-thinking12). The unusual modern twist on this notion is that the LLMs themselves become part of that community.}

\notes{Each of us will have different perspectives on what an LLM does and does not provide. You are welcome to bring those perspectives into your work. In particular, for each worksheet, you will be asked to reflect on the LLM responses and the process. Part of that reflection should be specific to the exercise and what you learnt about the subject. But I would like part of that reflection to be general about your understanding of the LLM and what it does and doesn't provide. For worksheets 2, 3, and 4 a portion of that reflection will be on how you feel your understanding of LLMs as a tool of inquiry has evolved (if it evolved!).} 

\notes{The premise on which the assessment model is based is twofold (1) a form of questioning enquiry generally called "the Socratic method" is an informative way of exploring a topic. (2) Current generation of LLMs is weak at sustained Socratic dialogue. They tend to answer expansively. (3) The "Socratic method" can be deployed by reversing the role of Socrates and the student, so you will need to take on the role of Socrates.}

\notes{The general background is an idea that in order to develop your understanding of a subject through interaction with an LLM you need two components to your enquiry: *curiousity* and *skepticism*. The curiousity allows you to generate the prompt and the LLM to regurgitate some of its knowled (or perform searches that it summarises). But the skepticism engages with that summary through challenging the conclusions that the LLM has. In the Socratic *elenchus* that challenge is through pointing out a logical inconsistency that arises  (@Vlastos-socratic93), perhaps through a side implication. For our purpose that challenge may not take exactly that form. But it should push back on the narrative the LLM provides. Generating such push back also requires you to engage with the material the LLM has provided.}

\notes{For Socrates these are curated dialogues (written by Plato, e.g. @Fowler-euthyphro14). So its normally the case that his challenges hit home. In your case, that won't normally be the case. And we don't expect you to curate your dialogue. What we'd like instead is a period of inquiry that is then summarised by a single dialogue that is played out with one LLM in a short session of 10 prompts and responses.}


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

<!-- SNIPPET: _information/includes/probability-review-compact.md -->

\subsection{Probability Review}

\newslides{Joint, Marginal, Conditional}

\slidesincremental{
* Joint (x,y)$: both
* Marginal (x)$: $ regardless of $
* Conditional (x\mid y)$: $ given $
}

\notes{Notation: we often write (x,y)$ for (X=x,Y=y)$. Unlike a generic bivariate function, (x,y)=P(y,x)$.}

\newslides{Product Rule and Sum Rule}

\slidesincremental{
* Product: (x,y)=P(x\mid y)P(y)$
* Sum: (y)=\sum_x P(x,y)$
* Both are normalising bookkeeping, not modelling assumptions
}

\notes{The product rule relates joint and conditional. The sum rule recovers a marginal by summing out the variable you do not care about. Continuous analogues replace sums by integrals.}

\newslides{Bayes' Rule}

\slides{
$$
P(y\mid x)=\frac{P(x\mid y)P(y)}{P(x)}
$$
}

\slidesincremental{
* Follows from the product rule and symmetry of the joint
* Inverts the conditioning — updates a prior given a likelihood
* (x)=\sum_y P(x\mid y)P(y)$ when $ is discrete
}

\notes{Bayes is not a third axiom; it is the product rule rearranged. Quiz 1 will ask you to apply it on a small discrete example (barrels, coins, two hypotheses).}

\addreading{@Bishop:book06}{Probability distributions: Section 1.2}

<!-- /SNIPPET: _information/includes/probability-review-compact.md -->

<!-- SNIPPET: _information/includes/common-distributions-review.md -->

###{Common Distributions}

\newslides{Named Distributions You Need}

\slides{Five families appear throughout the course. Know the support, the parameter, and one generative story for each.}

\notes{These are prerequisites restated, not new theory. Quiz 1 will ask recognition and simple calculations. Later weeks recover several of them as maximum-entropy distributions.}

\newslides{Bernoulli and Binomial}

\slidesincremental{
* Bernoulli($p$): single binary trial; $P(X=1)=p$
* Binomial($n,p$): $n$ i.i.d. Bernoulli trials; count of successes
* Mean $np$, variance $np(1-p)$
}

\notes{A fair coin is Bernoulli($1/2$). The two-state thermal system you meet next week is Bernoulli in disguise once energies are fixed.}

\newslides{Poisson and Multinomial}

\slidesincremental{
* Poisson($\lambda$): counts in a fixed interval; mean $=$ variance $=\lambda$
* Multinomial($n,\mathbf{p}$): $n$ trials into $K$ categories; generalises the binomial
* Categories are exclusive; $\sum_k p_k = 1$
}

\newslides{Gaussian}

\slidesincremental{
* $\mathcal{N}(\mu,\sigma^2)$: continuous density on $\mathbb{R}$
* Fixed by mean and variance; MaxEnt under those constraints (week 5)
* Multivariate form: mean vector and covariance matrix
}

\notes{Differential entropy of a Gaussian grows with $\sigma$ and can be negative — that subtlety waits until week 6. Today: recognise the density and the two parameters.}

<!-- /SNIPPET: _information/includes/common-distributions-review.md -->

<!-- SNIPPET: _information/includes/entropy-review.md -->

\subsection{Entropy Review}

\newslides{Uncertainty as a Number}

\slides{Shannon entropy turns a distribution into a scalar measure of uncertainty.}

\slidesincremental{
* Discrete: $H(p) = -\sum_i p_i \log p_i$
* Base 2: bits; natural log: nats
* Fair coin: $H=1$ bit; certain outcome: $H=0$
}

\notes{This is a *review* of the definition, not the axiomatic derivation (that is week 3 / LO2). You need enough fluency to ask an LLM about entropy without confusing the symbol $H$ with heat, and to probe whether a claim is about uncertainty, coding length, or thermodynamic irreversibility.}

\newslides{What $H$ Is Not (Yet)}

\slidesincremental{
* Not yet Clausius's thermodynamic entropy — same formula, different job
* Not yet a channel-capacity theorem
* Operational split for this course: entropy often *forbids*; probability *prescribes*
}

\notes{Thermodynamic entropy $S$ and Shannon $H$ will be connected formally in week 3 ($S = kH$ in equilibrium statistical mechanics). Today, treat $H$ as uncertainty of a discrete distribution. When an LLM says "entropy," ask: entropy of *what*, under *which* operational reading?}

\newslides{Joint, Conditional, Chain Rule (Names Only)}

\slidesincremental{
* $H(X,Y)$ joint uncertainty
* $H(X\mid Y)$ residual uncertainty after observing $Y$
* Chain rule: $H(X,Y)=H(X)+H(Y\mid X)$
}

\speakernotes{Do not prove the chain rule today. Name it so Worksheet 1 probes can use the vocabulary.}

<!-- /SNIPPET: _information/includes/entropy-review.md -->

\subsection{Motivation}

\include{_information/includes/perpetual-motion-superintelligence-analogy.md}

<!-- SNIPPET: _physics/includes/clausius-carnot-second-law.md -->

\subsection{Carnot and Clausius}

\notes{The course follows a historical thread as well as a mathematical one. Sadi Carnot (1796–1832) asked, in 1824, what limits the efficiency of a heat engine. Rudolf Clausius (1822–1888) built on Carnot and Kelvin to state the second law of thermodynamics in several equivalent forms, and in 1865 he coined the name *entropy* for the state function that tracks irreversibility. Boltzmann and Gibbs, later in the same century, gave the microscopic count behind Clausius's macroscopic $S$. Shannon and Jaynes, in the twentieth century, reuse the same functional form with different operational readings.}

\newslides{Before Boltzmann: Heat Engines}

\slidesincremental{
* Carnot (1824): no real engine beats a reversible cycle between two baths
* Clausius (1850s): heat cannot flow from cold to hot without work
* Clausius (1865): names *entropy* — the state's transformation content
}

\speakernotes{Seed only. Full free-energy accounting is lecture 2. Worksheet 1 asks students to explore Boltzmann before that lecture.}

\slidesincremental{
* Macroscopic: Carnot $\to$ Clausius (second law, entropy named)
* Microscopic: Maxwell, Boltzmann, Gibbs (same $S$, counted states)
* Information: Shannon, Jaynes (same $H$, different job)
}

<!-- /SNIPPET: _physics/includes/clausius-carnot-second-law.md -->

\speakernotes{NOw shift to explaining the relationship between what we're teaching and how we're teaching. Our objective is to get information in you. Why do we have to do it in such a complex way. Need to lace this description of the atomic human with the pedagogy we're using.}

\include{_books/includes/the-atomic-human.md}

\include{_ai/includes/embodiment-factors-celsius.md}

\notes{Shannon measured information in bits. Human communication is slow relative to machines — the embodiment factor. Lecture 3 derives $H$; today we only need the bit as a unit of uncertainty and of bandwidth.}

\speakernotes{This may need to move to Lecture 2 depending on how much work we have introducing the pedagogy.}

\comment{I think this means worksheet 1 might be about the general ideas presented here. Allowing them to bring skepticism. THe core idea of bandwidht limitations and how it effects the architecture of an intelligence???}

\include{_physics/includes/laplace-portrait.md}
\include{_physics/includes/laplaces-determinism.md}

\notes{Laplace's demon is a no-go; the gremlin three pages later is the prescription: probability relative to ignorance and knowledge. That pair foreshadows the course theme.}

\subsection{Boltzmann Seed}

\newslides{A Prescription to Interrogate}

\slides{For fixed mean energy $U$, the maximum-entropy occupation is the Boltzmann distribution.}

\slidesincremental{
* $p_i \propto e^{-\beta E_i}$ with coldness $\beta = 1/kT$
* Normaliser $Z=\sum_i e^{-\beta E_i}$, so $p_i = e^{-\beta E_i}/Z$
* Week 2: derive, account with free energy $F=U-TS$, name the bath
}

\notes{Do not derive Lagrange multipliers today. State the formula so Worksheet 1 has a concrete claim to open and then press. Students should leave curious about why *this* exponential, what $\beta$ means, and whether entropy here is a constraint or a recipe.}

\setupcode{import numpy as np}

\code{def boltzmann(energies, beta):
    """Boltzmann probabilities $p_i \\propto e^{-\\beta E_i}$."""
    log_w = -beta * np.asarray(energies, dtype=float)
    log_w -= log_w.max()
    w = np.exp(log_w)
    return w / w.sum()

# Live check: boltzmann([0, 1], 1.0) -> about (0.731, 0.269)}

\speakernotes{Optional live check. Deep dive and free-energy plots are lecture 2.}

\subsection{Define This Week}

\slidesincremental{
* Product rule, sum rule, Bayes
* Bernoulli, binomial, Poisson, multinomial, Gaussian
* $H=-\sum_i p_i\log p_i$ (bits or nats)
* Seed: $p_i = e^{-\beta E_i}/Z$
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
