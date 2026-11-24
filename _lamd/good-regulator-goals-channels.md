---
title: "Good Regulator, Goals, and Channels"
week: 7
layout: lecture
date: 2026-11-24
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  Open with Quiz 3 feedback (cohort figures; missing measure; MaxEnt;
  die grouping), then a Worksheet 3 review of Liouville, detailed balance,
  and Smoluchowski's trapdoor. Read Maxwell's gate as a channel into Shannon
  capacity and the data-processing inequality (Liouville as the equality case).
  Develop the Good Regulator overview: $D$, $S$, $A$, $Z$ and $\min H(Z)$;
  existence of a deterministic $H(A\mid S)=0$ policy. Relate that criterion to
  a goal measure via Radon--Nikodym (reward as
  $-\log(\mathrm{d}\nu/\mathrm{d}\lambda)$) using the relative-entropy language
  already covered.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO9, LO10, LO12]
duration_hours: 2
type: lecture
in_class_test: null
reading:
  - title: "Every Good Regulator of a System Must Be a Model of That System"
    author: "Conant and Ashby"
    chapter: "whole paper (1970)"
    estimated_hours: 0.5
    required: false
  - title: "An Introduction to Cybernetics"
    author: "Ashby"
    chapter: "requisite variety"
    estimated_hours: 0.5
    required: false
  - title: "A Mathematical Theory of Communication"
    author: "Shannon"
    chapter: "channel capacity; noisy channel coding"
    estimated_hours: 1
    required: false
  - title: "Elements of Information Theory"
    author: "Cover and Thomas"
    chapter: "Theorem 2.8.1 (data-processing inequality)"
    estimated_hours: 0.5
    required: false
---

\notes{No class test today. Quiz 3 was last week (start of lecture 6). Worksheet 3 was due last week; Worksheet 4 (Skepticus dialogue on GRT and general intelligence) is already out (due 1 December, before Quiz 4). Today: Quiz 3 debrief; W3 review (Liouville / detailed balance / trapdoor); gate as a channel into Shannon capacity and DPI; GRT overview; goal measure via Radon--Nikodym and its coarse-graining reading.}

\subsection{This Session}

\slidesincremental{
* Quiz 3 feedback (cohort figures; missing measure; MaxEnt; die grouping)
* Worksheet 3 review: Liouville; detailed balance; trapdoor
* Gate as a channel; Shannon $R\le C$; data-processing inequality
* Good Regulator overview: $D$,$S$,$A$,$Z$; $\min H(Z)$; $H(A\mid S)=0$
* The goal as a measure of success: $r=-\log(\mathrm{d}\nu/\mathrm{d}\lambda)$
* Goal measure as coarse graining (grouping / requisite variety)
}

\sessionstart{10:05}
\sessionlength{110}

\notes{
\timeplan
}

\blocktime{13}{Quiz 3 debrief}

\include{includes/week7-homework-debrief.md}

\include{_iei/includes/iei-notebook-setup.md}

\subsection{Submission Review}

\blocktime{18}{W3 review (Liouville / detailed balance / trapdoor; habits); flag W4}

\include{includes/week7-maxwell-review.md}

\subsection{Shannon Capacity and DPI}

\blocktime{25}{Gate as a channel; Shannon $R\le C$; DPI statement and moral}

\notes{The Liouville block ended with Maxwell's gate merging four regions of phase space into two. That picture is already a channel, and it carries us straight into Shannon's capacity and the data-processing inequality. Live today: the gate as a channel, what capacity is, and the statement and moral of the DPI. The DPI proof, its form for distributions, and the KL-decay account of the second law are in the notes overflow below.}

\include{includes/week7-gate-as-channel.md}

\include{_information/includes/channel-capacity-chain-rule.md}

\newslide{Data-Processing Inequality}

\slides{If $X\to Y\to Z$ is Markov, processing $Y$ cannot create information about $X$.}

\slidesincremental{
* Markov: $p(z\mid x,y)=p(z\mid y)$ --- $Z$ is computed from $Y$ alone
* Statement: $I(X;Z)\le I(X;Y)$
* Equality when $Z$ keeps everything in $Y$ that bears on $X$ (a sufficient statistic)
* The gate: nothing computed from the gas recovers the merged bit
}

\speakernotes{Statement and moral only; the two-line proof is in the notes overflow. You cannot process your way to more $I$. This underwrites requisite variety: the action can carry no more about $D$ than the observation did.}

\notes{The data-processing inequality is the no-go on mutual information. If $Z$ is computed from $Y$ alone, possibly with extra randomness, then $Z$ knows no more about $X$ than $Y$ did: $I(X;Z)\le I(X;Y)$. Equality holds when $Z$ keeps everything in $Y$ that bears on $X$, in which case $Z$ is a sufficient statistic. We use it again in a moment: in error-controlled regulation, $D\to S\to A$ is a chain, so $I(A;D)\le I(S;D)$. The proof (Cover and Thomas Theorem 2.8.1) is in the notes overflow. Quiz 4 examines the statement and the moral, not the proof.}

\subsection{Good Regulator Overview}

\blocktime{18}{Good Regulator overview: $D$,$S$,$A$,$Z$; $\min H(Z)$; existence slogan; caveats}

\notes{Week 6 reached only a two-minute W4 pointer. Today is the first live $D,S,A,Z$ overview: diagrams, $\min H(Z)$, existence of a deterministic $H(A\mid S)=0$ policy named (not proved via $g(\alpha)$), and both caveats. Week 8 will *not* re-prove Conant--Ashby; it moves to limits synthesis and quantum motivation.}

\include{_information/includes/good-regulator-overview.md}

\newslide{Existence and Two Caveats}

\slidesincremental{
* Among $H(Z)$-minimisers there exists $\pi$ with $H(A\mid S)=0$
* Caveat 1: constant $A=a_0$ also has $H(A\mid S)=0$ (weak "model")
* Caveat 2: low $H(Z)$ is predictability, not desirability
}


\notes{The Good Regulator Theorem, in entropy form, is an existence result: among policies that minimise $H(Z)$ there is a deterministic one, $A=h(S)$, equivalently $H(A\mid S)=0$ [@Conant-Ashby70]. The full concavity / extreme-point argument is in the notes include; today the diagrams and the slogan-with-fences are enough for assessment.}

\addreading{@Conant-Ashby70}{the Good Regulator Theorem}
\addreading{@Ashby-introduction56}{requisite variety}

\blocktime{10}{Break}

\subsection{Goals as Radon--Nikodym}

\blocktime{28}{Goal measure / Radon--Nikodym; coarse-graining reading of reward}

\newslide{The Measure of Success}

\slides{Week 5: relative entropy needs a reference. Goals need one too.}

\slidesincremental{
* Channel: occupancy over $(S,A)$ pushes to an outcome law on $Z$
* Criterion: $\min_\pi H(Z)$ --- or $H_\nu(Z)$ under a goal measure $\nu$
* Base $\lambda$; goal $\nu\ll\lambda$; density $\mathrm{d}\nu/\mathrm{d}\lambda$
* Change of base: $H_\nu(Z)=H_\lambda(Z)+\mathbb{E}\!\left[\log\tfrac{\mathrm{d}\nu}{\mathrm{d}\lambda}(Z)\right]$
* Reward reading: $r(z)=-\log(\mathrm{d}\nu/\mathrm{d}\lambda)$
}

\speakernotes{Bridge to Week 5 Radon--Nikodym / KL language. Board the change-of-base identity, then $r=-\log(\mathrm{d}\nu/\mathrm{d}\lambda)$ once. Do not open MM loops, empowerment budgets, or DeepSea.}

\notes{Conant and Ashby minimise the entropy of the reguland. We might ask the question, how does that relate to the more usual approach in reinforcement learning where we maximise a reward function. In ongoing work (with Joery de Vries) we suggest that the long-run state--action occupancy is pushed through a fixed channel $K(z\mid s,a)$ to an outcome law $p_\pi$ on $Z$. Minimising $H(Z)$ is concave over the occupancy polytope, so a deterministic policy is optimal.

If the "good" outcomes are not the whole alphabet, then we introduce a goal measure $\nu$, a "measure of success" as it were. This must be absolutely continuous with respect to the base measure $\lambda$. The change of base is
$$
H_\nu(Z)=H_\lambda(Z)+\mathbb{E}\!\left[\log\tfrac{\mathrm{d}\nu}{\mathrm{d}\lambda}(Z)\right].
$$
The second term is the goal: writing $r=-\log(\mathrm{d}\nu/\mathrm{d}\lambda)$ makes it $-\mathbb{E}[r(Z)]$. So ordinary reward maximisation is entropy minimisation under a reference (the measure of success). This is the same change-of-measure we reviewed when considering speed and velocity of a Maxwellian gas. Our interpretation is that Conant and Ashby's good set $G$ is the special case that puts smaller $\nu$-volume on $G$ than on $G^c$, so the goal term pays for landing in $G$.}

\include{includes/week7-goal-measure-coarse-graining.md}

\newslide{RL Recovery and AGI}

\slidesincremental{
* Reward channel: entropy criterion collapses to return maximisation (under a volume threshold)
* Regulation channel: hold a set-point with no scalar reward
* Existence of a deterministic organiser $\neq$ a rich world-model
}

\speakernotes{LO12 fence for W4. One slide. No algorithm, no Thompson sampling, no belief MDP.}

\notes{This is a course-level vocabulary map, not the Joery paper. Assessed: letters $D$,$S$,$A$,$Z$; $\min H(Z)$; $H(A\mid S)=0$ with both caveats; $r=-\log(\mathrm{d}\nu/\mathrm{d}\lambda)$ as the goal/reward bridge to Week 5. Not assessed: majorisation--minimisation, empowerment as a summand, DeepSea thresholds.}


\subsection{Notes Overflow: Multi-Information, DPI Proof, IB}

\notes{The following blocks were the previous Week 7 live spine. They remain available as notes and as Week 8 enrichment if the room wants depth after Quiz 4. They are **not** on today's clock and **not** on Quiz 4 except insofar as DPI's statement was taught above.}


\subsection{Define This Week}

\blocktime{5}{Define-this-week; W4 reminder; Week 8 preview}

\slidesincremental{
* Name $D$, $S$, $A$, $Z$ --- and what $\min H(Z)$ means
* Why $H(A\mid S)=0$ is a weak reading of "model"
* How does $r=-\log(\mathrm{d}\nu/\mathrm{d}\lambda)$ connect goals to Week 5's RN/KL language?
* What does $R\le C$ forbid, and what does DPI state?
}

\subsection{After This Lecture}

\notes{No class test today. Quiz 4 is 1 December at the start of lecture 8: Weeks 6--7 as delivered (Fisher from Week 6; GRT overview / goal measure / Shannon / DPI from today). Week 8 after the quiz is unassessed: short limits synthesis, then no-barber motivation for von Neumann / quantum information, then course close.}

\slidesincremental{
* Worksheet 4 due 1 December, before Quiz 4
* Quiz 4: first ten minutes of Week 8
* Week 8: limits synthesis; no-barber $\to$ quantum motivation; course close
}

\reading

\thanks

\references
