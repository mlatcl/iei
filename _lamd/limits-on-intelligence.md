---
title: "Limits on Intelligence"
week: 8
layout: lecture
date: 2026-12-01
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  Final session: Quiz 4 and Worksheet 4 in, then a short unassessed
  classical limits synthesis (Landauer, Shannon/DPI, GRT with goal
  measure, human bandwidth) applied to capability claims. The protected
  second half motivates quantum information from the no-barber principle
  and the classical origin obstruction I=C with H=0, via von Neumann
  entropy and a Bell-state demo. Course close: entropy forbids;
  probability prescribes. Post-quiz material is not examined.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO11, LO12, LO13]
duration_hours: 2
type: lecture
worksheet_due: W4
in_class_test:
  id: Q4
  duration_minutes: 10
  timing: start
reading:
  - title: "The Atomic Human"
    author: "Lawrence"
    chapter: "Chapter 1"
    estimated_hours: 1
    required: false
  - title: "Every Good Regulator of a System Must Be a Model of That System"
    author: "Conant and Ashby"
    chapter: "whole paper (1970)"
    estimated_hours: 0.5
    required: false
  - title: "Elements of Information Theory"
    author: "Cover and Thomas"
    chapter: "Theorem 2.8.1 (DPI); capacity"
    estimated_hours: 0.5
    required: false
  - title: "Quantum Computation and Quantum Information"
    author: "Nielsen and Chuang"
    chapter: "Chapter 11"
    estimated_hours: 1
    required: false
---

\notes{Worksheet 4 is due at the start of this session (before Quiz 4). Quiz 4 occupies the first ten minutes and examines Weeks 6--7 as delivered. Everything after the quiz is unassessed: a short classical limits synthesis, then the protected no-barber $\to$ von Neumann / quantum arc, then course close. Do not re-prove Conant--Ashby (Week 7 overview stands). Do not reopen Fisher length, natural gradient, or three geometries as primary content.}

\subsection{This Session}

\slidesincremental{
* Quiz 4 (ten minutes); Worksheet 4 in
* Short limits synthesis: Landauer, DPI, GRT+$H_\nu$, bandwidth
* No-barber $\to$ classical obstruction $\to$ von Neumann / Bell
* Course close: entropy forbids; probability prescribes
}

\notes{
**Time plan.** The slot is 10:05--11:55 (110 minutes, not 120). Post-quiz material is not examined.

| Clock | Block |
|------:|-------|
| 10:05--10:15 | Quiz 4 (paper); collect Worksheet 4 |
| 10:15--10:40 | Short limits synthesis / W4 themes |
| 10:40--10:50 | Break |
| 10:50--11:35 | Protected: no-barber $\to$ quantum motivation; origin paradox; Bell |
| 11:35--11:55 | Course close; Week 1 answer |
}

\subsection{Quiz 4}

\notes{Ten questions on Weeks 6--7 as delivered: Fisher $I(\theta)$ versus Shannon $H$ (Week 6); GRT overview ($D,S,A,Z$; $\min H(Z)$; $H(A\mid S)=0$ with both caveats); goal measure / $r=-\ln(\mathrm{d}\nu/\mathrm{d}\lambda)$; Shannon $R\le C$ and DPI statement/moral; plus Landauer / bandwidth tools for LO13. Not multi-information depth, not DPI board proof, not IB as first-class theorem, not no-barber / von Neumann, not Fisher path length, not thermodynamic length, not three transport geometries.}

\slidesincremental{
* Paper; no notes, no network, no LLMs
* Ten minutes
* Worksheet 4 in as you sit
}

\classtimertitled{10:05}{Quiz 4}

\include{_iei/includes/iei-notebook-setup.md}

\subsection{Limits Synthesis}

\classtimertitled{10:15}{Limits}

\notes{Short unassessed synthesis. Apply tools already taught. Invite Worksheet 4 themes: slogan versus existence; weak model; predictability versus desirability. Do not board a second GRT proof.}

\include{_information/includes/information-limits-on-intelligence.md}

\include{_information-game/includes/unified-intelligence-perspective.md}

\newslides{Tools Already in Hand}

\slides{Apply what Weeks 6--7 taught. No new assessed theorems today.}

\slidesincremental{
* Shannon: $R\le C$
* DPI: processing cannot create $I$
* Requisite variety: $H(Z)\ge H(D)-I(D;A)$
* GRT: exists optimal $\pi$ with $H(A\mid S)=0$ (caveats stand)
* Goal measure: $r=-\ln(\mathrm{d}\nu/\mathrm{d}\lambda)$
}

\speakernotes{LO12--LO13. GRT overview was Week 7. Two caveats still live. IB gloss optional one-liner only if a W4 dialogue went there.}

\notes{A claim that an intelligent system will just process more is a DPI violation. Requisite variety supplies the quantity bound. The Good Regulator Theorem supplies an existence claim from concavity: among $H(Z)$-minimisers there is a deterministic policy with $H(A\mid S)=0$. Caveats: constant $A=a_0$ also has $H(A\mid S)=0$; low $H(Z)$ is predictability, not desirability. The goal-measure reading recovers ordinary reward as a change of base; it does not turn the slogan into an AGI guarantee.}

<!-- SNIPPET: _information/includes/limits-on-intelligence-synthesis.md -->

\newslides{Evaluating Superintelligence Claims}

\slides{Apply the no-gos. Name which tool you are using.}

\slidesincremental{
* Historical thread: Carnot $\to$ Clausius $\to$ Boltzmann $\to$ Shannon $\to$ Landauer $\to$ here
* Landauer; DPI; Shannon $R\le C$; GRT with caveats
* Human bandwidth: $\sim 100$ bits/s — *The Atomic Human*
}

\speakernotes{LO13. Course punchline unchanged: entropy forbids; probability prescribes. Keep synthesis to ~25 minutes so the quantum arc is protected.}

\notes{Prescriptions operate inside limits set by physics and embodiment: whatever model is kept is not informationally free once Landauer prices sensing, storage, processing, and erasure. Unbounded intelligence that processes without entropic cost has the shape of perpetual motion: it claims to repeal a no-go.}

\setupcode{no_gos = ['Landauer', 'DPI', 'Shannon R<=C', 'human bandwidth']
prescriptions = ['Boltzmann/MaxEnt p', 'capacity-achieving p(x)', 'GRT deterministic policy', 'goal measure nu']
}

<!-- /SNIPPET: _information/includes/limits-on-intelligence-synthesis.md -->

\addreading{@Lawrence-atomic24}{Chapter 1}
\addreading{@Conant-Ashby70}{the Good Regulator Theorem}

\classtimertitled{10:40}{Break}

\subsection{No-Barber to Quantum}

\classtimertitled{10:50}{No-barber}

\notes{Protected unassessed arc (~35--40 minutes). Motivate why the course's classical information tools are not the last word. Course-level only: no Lawvere five-move board proof unless ahead; no NCFinProb axioms; do not claim a derivation of quantum mechanics from no-barber.}

\include{_information-game/includes/inaccessible-game-introduction.md}

\include{_information-game/includes/no-barber-principle.md}

\newslides{Why Classical Language Presupposes Copying}

\slides{Named outcomes are copyable data. Self-adjudication forbids free copying.}

\slidesincremental{
* Classical probability assigns mass to distinguishable alternatives
* If those alternatives are internal syntax, $x\mapsto(x,x)$ is available
* No-barber: rules must not need an external adjudicator
* Quantum / no-cloning: no canonical $A\to A\otimes A$ for unknown states
}

\speakernotes{One-slide moral from Lawvere / no-cloning colour. Do not board the five-move recipe unless the room is ahead and asking.}

\notes{Lawvere-style diagonalisation needs a self-application step that, categorically, uses a copying map. Classical FinProb characterisations of information loss (Shannon) presuppose a named outcome space; if that space is admitted as internal data, outcomes are copyable. Noncommutative states do not expose basis-independent outcomes without a measurement context --- the course-level bridge to von Neumann entropy [@Lawrence-nobarber26].}

\include{_information-game/includes/no-barber-favours-ncfinprob.md}

\subsection{Von Neumann Entropy}

\include{_physics/includes/origin-paradox-shannon-von-neumann.md}

\include{_information/includes/the-matrix-exponential-family.md}

\include{_physics/includes/jaynes-density-matrices.md}

<!-- SNIPPET: _physics/includes/von-neumann-bell-state.md -->

\newslides{Von Neumann Entropy}

\slides{Classically, $I=C$ forces $H=0$ — a delta joint. Quantum mechanics breaks that pattern.}

\slidesincremental{
* $S(\rho) = -\mathrm{Tr}(\rho\log\rho)$
* Bell state: $S(\rho)=0$ but marginals have $S>0$
* Matrix exponential family = quantum MaxEnt
}

\speakernotes{LO11. Run Bell-state cell. Cut short if behind --- course close is protected.}

\notes{Classically, $I=C$ forces $H=0$ --- a delta joint. A pure entangled state has von Neumann entropy $S(\rho)=0$ while marginals remain uncertain. The matrix exponential family is the quantum MaxEnt family; Jaynes applied the same Lagrange move to $\rho$ in 1963. Teaching fence: show the classical obstruction and one quantum object that breaks it; do not derive QM from no-barber.}

\setupcode{import numpy as np

def bell_state():
    v = np.array([1.0, 0.0, 0.0, 1.0]) / np.sqrt(2.0)
    return np.outer(v, v.conj())

def von_neumann(rho):
    w = np.linalg.eigvalsh(rho)
    w = w[w > 1e-12]
    return -np.sum(w * np.log2(w))

def partial_trace_A(rho):
    rho = rho.reshape(2, 2, 2, 2)
    return np.trace(rho, axis1=1, axis2=3)}

\code{rho = bell_state()
print('S(rho)=', von_neumann(rho))
print('S(rho_A)=', von_neumann(partial_trace_A(rho)))}

<!-- /SNIPPET: _physics/includes/von-neumann-bell-state.md -->

\subsection{Notes Overflow: Full GRT / Multi-Info / IB}

\notes{Optional enrichment if the room wants depth after the protected arc --- not examined. Full Conant--Ashby concavity argument; Watanabe multi-information; DPI proof; IB as gloss.}

\include{_information/includes/entropic-good-regulator.md}

\subsection{Interpret This Week}

\slidesincremental{
* Where does ``just process more'' violate DPI?
* Why is the GRT ``model'' weak, and why is low $H(Z)$ not the same as good?
* Why can classical $I=C$ with $H=0$ fail, and what does the Bell state show?
* Where is the perpetual-motion analogy tight, and where does it break?
}

\subsection{After This Lecture}

\classtimertitled{11:35}{Close}

\notes{Quiz 4 opened the session. No further assessed work after today. Feedback within the 21-day ACS window. Course punchline: entropy forbids; probability prescribes. The Week 1 question should now have a precise answer.}

\slidesincremental{
* The Week 1 question should now have a precise answer
* Entropy forbids; probability prescribes
}

\reading

\thanks

\references
