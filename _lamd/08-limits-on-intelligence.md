---
title: "Probability Transport and Limits on Intelligence"
week: 8
session: 1
layout: lecture
date: 2026-12-01
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  In-class Quiz 4, then intelligent agency as transport of probability
  mass. Three geometries of an optimal change of state — Crooks /
  Fisher–Rao, Wasserstein, and the Schrödinger bridge — and the
  evaluation of superintelligence claims with Landauer, \(\mathcal{L}^2/\tau\),
  and \(I+H=C\).
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO12, LO13]
duration_hours: 2
type: lecture
in_class_test:
  id: Q4
  duration_minutes: 10
  slot: start
  covers: [LO10, LO11, LO13]
worksheet_due: W4
reading:
  - title: "Computational Optimal Transport"
    author: "Peyré and Cuturi"
    chapter: "Chapters 1–2"
    estimated_hours: 2
    required: false
---

\notes{Worksheet 4 is due at the start of this session. Quiz 4 occupies the first ten minutes. Then 110 minutes to close the course. This is the interpret week for thermodynamic length, information and intelligence, and the two purely entropic readings.}

\subsection{This Session}

\slidesincremental{
* Quiz 4 (ten minutes)
* Three geometries of an optimal change of state
* Superintelligence as perpetual motion, now with bounds
}

\notes{
**Time plan (120 minutes)**

| Minutes | Block |
|--------:|-------|
| 0–10 | Quiz 4 (Moodle; LO10, LO11, LO13) |
| 10–55 | Agency as transport; Wasserstein; Schrödinger bridge |
| 55–65 | Break |
| 65–95 | Crooks versus Wasserstein versus Schrödinger; \(\mathcal{L}^2/\tau\) as a third bound |
| 95–120 | LO13: Landauer, \(I+H=C\), requisite variety / Good Regulator as named tools; close the Week 1 question |
}

\subsection{Quiz 4}

\notes{Ten MCQs on multi-information, \(I+H=C\), von Neumann entropy, and the perpetual-motion analogy. Three independent coins and a GHZ state — not the Worksheet 4 examples.}

\subsection{Agency as Transport}

\include{_information-game/includes/schrodingers-bridge-perspective.md}

\notes{STUB. Shannon abstracted a code as probability over symbols. The analogous move: abstract an agent as the transport of probability mass between distributions. Optimal transport (Wasserstein) is minimum ground-cost. The Schrödinger bridge is the maximum-entropy stochastic interpolation. Students need the intuition, not the technical development. This is LO12.}

\subsection{Three Geometries}

\notes{STUB. Do not collapse these.

- **Fisher–Rao / Crooks.** Near-equilibrium, finite-time. Minimise dissipation. Speed limit \(\langle W_{\mathrm{ex}}\rangle\ge\mathcal{L}^2/\tau\).
- **Wasserstein.** Optimal transport. Minimise a ground-cost of moving mass on the sample space. A different metric.
- **Schrödinger bridge.** Maximum-entropy interpolation between \(p\) and \(q\).

Optimal intelligence, in this module's voice, is a protocol that moves belief or state under an entropic budget. The three geometries are three prescriptions — three answers to “what should I do?”. Crooks, Landauer, and \(I+H=C\) are the no-gos. Superintelligence that updates infinitely fast, or at zero dissipation, is a zero-duration or zero-length protocol: it claims to repeal the no-go.}

\slidesincremental{
* No-gos: Landauer, \(\mathcal{L}^2/\tau\), \(I+H=C\)
* Prescriptions: Crooks geodesic; Wasserstein; Schrödinger
* Do not collapse the three
}

\subsection{Limits on Intelligence}

\include{_information/includes/information-limits-on-intelligence.md}

\include{_information-game/includes/unified-intelligence-perspective.md}

\notes{STUB. Evaluate a superintelligence claim with three no-gos: Landauer, \(\mathcal{L}^2/\tau\), \(I+H=C\). The human bandwidth constraint from lecture 1 — *The Atomic Human* — is the same kind of statement: you cannot communicate as a human at machine rates, and intelligence that ignores that fence is not an intelligence we have. Named tools, not new outcomes: requisite variety, the Good Regulator in its entropic form, information bottleneck, data-processing inequality. Viable-system material is optional colour if time remains. This is LO13.}

\subsection{Interpret This Week}

\slidesincremental{
* Optimal trajectories and optimal intelligence?
* Information and intelligence? (final)
* Purely entropic Good Regulator and Schottky
* How is entropy understood today? (last revision)
}

\subsection{This Week's Pair}

\notes{No-go: Landauer, \(\mathcal{L}^2/\tau\), \(I+H=C\), human bandwidth. Prescription: which geometry you are using for the path.}

\include{_information/includes/entropy-nogo-pair.md}

\subsection{After This Lecture}

\notes{No further assessed work. Quiz 4 feedback within the 21-day ACS window. The last LLM exercise: ask the model what thermodynamic length has to do with intelligence, then write down whether it offered a no-go, a prescription, or collapsed the two.}

\slidesincremental{
* Last LLM exercise: no-go, prescription, or a collapse?
* The Week 1 question should now have a precise answer
}

\reading

\thanks

\references
