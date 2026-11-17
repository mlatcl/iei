---
title: "Limits on Intelligence"
week: 8
layout: lecture
date: 2026-12-01
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  Final session: Quiz 4, then a full Good Regulator review (Conant–Ashby
  with D, S, A, Z; concavity; H(A|S)=0; two caveats), the classical
  limit I=C and von Neumann entropy if time allows, and the course close.
  Superintelligence claims are evaluated with Landauer, I+H=C, DPI, GRT,
  and human bandwidth.
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

\notes{Worksheet 4 is due at the start of this session (before Quiz 4). Quiz 4 occupies the first ten minutes. Then the full Good Regulator review (Week 6 gave only the $D,S,A,Z$ overview), optional von Neumann / $I=C$, then synthesis applying the tools proved earlier. Do not reopen Fisher length, natural gradient, or three geometries as primary content.}

\subsection{This Session}

\slidesincremental{
* Quiz 4 (ten minutes); Worksheet 4 in
* Full Good Regulator review: $D,S,A,Z$; $H(A\mid S)=0$; caveats
* Classical limit $I=C$; von Neumann if time allows
* Apply Landauer, DPI, GRT, bandwidth to capability claims
* Course close: entropy forbids; probability prescribes
}

\notes{
**Time plan.** The slot is 10:05--11:55 (110 minutes, not 120).

| Clock | Block |
|------:|-------|
| 10:05--10:15 | Quiz 4 (paper); collect Worksheet 4 |
| 10:15--10:45 | Good Regulator review (full Conant--Ashby; diagrams already from Week 6) |
| 10:45--10:55 | Break |
| 10:55--11:15 | Classical $I=C\Rightarrow H=0$; von Neumann / Bell if time |
| 11:15--11:40 | Limits synthesis: Landauer, $I+H=C$, DPI, GRT applied, bandwidth |
| 11:40--11:55 | Superintelligence as perpetual motion; Week 1 answer |
}

\subsection{Quiz 4}

\notes{Ten questions from the multi-information / DPI / GRT / limits bank. Invigilated paper test, no notes, no network, no LLMs. Covers Weeks 6--7 as delivered (Shannon capacity, DPI, GRT *overview* / notation, multi-information / $I+H=C$, IB) plus Landauer / bandwidth tools for LO13 --- not the Week 8 GRT proof depth, not Fisher geometry, not thermodynamic length, not three transport geometries.}

\slidesincremental{
* Paper; no notes, no network, no LLMs
* Ten minutes
* Worksheet 4 in as you sit
}

\classtimertitled{10:05}{Quiz 4}

\include{_iei/includes/iei-notebook-setup.md}

\subsection{Good Regulator Review}

\classtimertitled{10:15}{Good Regulator}

\notes{Week 6 gave the overview and the $D,S,A,Z$ diagrams. Today prove the theorem: requisite variety in those letters, the concavity argument, existence of a deterministic $H(Z)$-minimiser with $H(A\mid S)=0$, and both caveats. Then apply.}

\include{_information/includes/entropic-good-regulator.md}

\subsection{Von Neumann Entropy}

\classtimertitled{10:55}{Von Neumann}

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

\speakernotes{LO11. Run Bell-state cell. Bell-state cell. Cut short if behind --- LO13 close is protected.}

\notes{Classically, $I=C$ forces $H=0$ --- a delta joint. A pure entangled state has von Neumann entropy $S(\rho)=0$ while marginals remain uncertain. The matrix exponential family is the quantum MaxEnt family; Jaynes applied the same Lagrange move to $\rho$ in 1963.}

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

\classtimertitled{10:45}{Break}

\subsection{Limits on Intelligence}

\classtimertitled{11:15}{Limits}

\include{_information/includes/information-limits-on-intelligence.md}

\include{_information-game/includes/unified-intelligence-perspective.md}

\newslides{Agency, Named Without Transport Geometry}

\slides{Shannon abstracted a code as probability over symbols. An agent can be read as organising action given state.}

\slidesincremental{
* Live tools: channels, DPI, GRT, Landauer, bandwidth
* Transport / Wasserstein / Schrödinger: deferred notes
}

\speakernotes{LO12 thin by design. Do not open three geometries.}

\newslides{Tools Just Reviewed}

\slides{Apply what Weeks 6--7 taught and what today's GRT review proved.}

\slidesincremental{
* Shannon: $R\le C$
* DPI: processing cannot create $I$
* Requisite variety: $H(Z)\ge H(D)-I(D;A)$
* GRT: exists optimal $\pi$ with $H(A\mid S)=0$ (caveats stand)
* IB: spend $I$ on action-relevant distinctions (interpretation, not GRT)
}

\speakernotes{GRT was overview in Week 6; the existence claim is proved in this session's review. Two caveats still: constant action; low $H(Z)$ is not desirable.}

\notes{Data-processing inequality and the information bottleneck were taught under LO10 in Weeks 6--7. The Good Regulator Theorem was overviewed in Week 6 ($D,S,A,Z$ diagrams) and reviewed in full earlier this session. Today they are evaluation tools: a claim that an intelligent system will just process more is a DPI violation; a system that keeps only what is relevant for action is an IB statement. Requisite variety supplies the quantity bound $H(Z)\ge H(D)-I(D;A)$. The Good Regulator Theorem supplies an existence claim from concavity: among $H(Z)$-minimisers there is a deterministic policy with $H(A\mid S)=0$. Caveats: constant $A=a_0$ also has $H(A\mid S)=0$; low $H(Z)$ is predictability, not desirability. The IB-shaped reading $\min I(S;A)$ subject to $H(Z)\le\epsilon$ remains an interpretation after that theorem, not Conant and Ashby's statement and not the course punchline.}

<!-- SNIPPET: _information/includes/limits-on-intelligence-synthesis.md -->

\newslides{Evaluating Superintelligence Claims}

\slides{Apply the no-gos. Name which tool you are using.}

\slidesincremental{
* Historical thread: Carnot $\to$ Clausius $\to$ Boltzmann $\to$ Shannon $\to$ Landauer $\to$ here
* Landauer; $I+H=C$; DPI; Shannon $R\le C$
* GRT: exists optimal $\pi$ with $H(A\mid S)=0$ (overview Week 6; proved today)
* Human bandwidth: $\sim 100$ bits/s — *The Atomic Human*
}

\speakernotes{LO13. Course punchline unchanged: entropy forbids; probability prescribes. GRT is proved in today's review inside that caveat, not the caveat. Weak model and $H(Z)\ne$ desirable are the two caveats on the slogan.}

\notes{Prescriptions operate inside limits set by physics and embodiment: whatever model is kept is not informationally free once Landauer prices sensing, storage, processing, and erasure. Unbounded intelligence that processes without entropic cost has the shape of perpetual motion: it claims to repeal a no-go.}

\setupcode{no_gos = ['Landauer', 'I+H=C', 'DPI', 'Shannon R<=C', 'human bandwidth']
prescriptions = ['Boltzmann/MaxEnt p', 'capacity-achieving p(x)', 'IB compression', 'GRT deterministic policy']
}

<!-- /SNIPPET: _information/includes/limits-on-intelligence-synthesis.md -->

\addreading{@Lawrence-atomic24}{Chapter 1}
\addreading{@Conant-Ashby70}{the Good Regulator Theorem}

\subsection{Interpret This Week}

\slidesincremental{
* Why $H(A\mid S)=0$, and why that model is weak?
* Why low $H(Z)$ is not the same as good?
* Where does ``just process more'' violate DPI?
* Where is the perpetual-motion analogy tight, and where does it break?
}

\subsection{After This Lecture}

\notes{Quiz 4 opened the session. No further assessed work after today. Feedback within the 21-day ACS window. The last LLM exercise: ask the model what the Good Regulator Theorem has to do with intelligence, then write down whether it offered a no-go, a prescription, collapsed the caveats, or confused GRT with requisite variety.}

\slidesincremental{
* The Week 1 question should now have a precise answer
}

\reading

\thanks

\references
