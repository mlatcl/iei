---
title: "Worksheet 4: Multi-Information, von Neumann Entropy, and Limits on Intelligence"
practical: 4
week: 8
layout: practical
assignment: True
ipynb: True
reveal: False
transition: None
date: 2026-12-01
released: 2026-11-17
venue: FW26, William Gates Building
abstract: >
  Compute multi-information and verify \(I+H=C\), then treat the Bell
  state as the quantum resolution of \(I=C\) with non-trivial marginals.
  The reflection asks you to apply the data-processing inequality and
  the Good Regulator Theorem (with caveats), and to evaluate the
  perpetual-motion analogy for unbounded intelligence.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO7, LO10, LO11, LO13]
duration_hours: 3
type: practical
assessment_id: W4
weight: 15
due_week: 8
word_count: 500
---

\define{\incrementQuestionMarkCounter{marks}}{}

\section{Worksheet 4}

\notes{Released after lecture 6 (17 November). Due by 10:00 at the start of lecture 8 (1 December), *before* Quiz 4. Estimated three hours. This is the capstone worksheet, 15% of the module mark.

**Builds on lectures 5–7.** Part A1–A2 use the $I+H=C$ family (`multi-information-rho` figure). Part A3 treats the Bell state. Part B applies DPI and the Good Regulator Theorem (earned in lecture 6; IB gloss in lecture 7), uses the three perspectives on entropy (LO7) when separating no-gos from prescriptions, and evaluates capability claims with Landauer, $I+H=C$, DPI, and human bandwidth (LO13).}

\notes{Submit `candidatenumber_worksheet4.ipynb` and `candidatenumber_worksheet4.md` on Moodle. LLMs are permitted. Use the Lecture 1 habit: curiosity first, then skeptical probes. Authenticity is checked by Quiz 4 at the start of lecture 8, on a *new* example that does not reuse this worksheet's setups.}

\include{_iei/includes/iei-notebook-setup.md}

\setupcode{import numpy as np}

\section{Part A -- Code}

\codeassignment{Write `multi_information(joint_probs)` that takes a joint array (shape `(2,2,2)` for three binary variables) and returns the marginal entropies \(h_1,h_2,h_3\), the joint entropy \(H\), and the multi-information \(I=\sum h_i-H\). Evaluate it on (a) three independent fair coins, (b) \(X_2=X_1\) with \(X_3\) independent, (c) \(X_1=X_2=X_3\). For (c), verify \(I+H=\sum_i h_i\).}{
def shannon(p, axis=None):
    pass

def multi_information(joint_probs):
    # return h, H, I
    pass

# Three cases: independent; pairwise correlation; all identical.
}{15}{}

\codeassignment{A one-parameter family of joints on two binary variables, with uniform marginals for every \(\rho\in[-1,1]\):
$$
p(1,1)=p(0,0)=\tfrac14(1+\rho),\qquad p(1,0)=p(0,1)=\tfrac14(1-\rho).
$$
Then \(C=2\) bits throughout. Plot \(I(\rho)\) and \(H(\rho)\) on the same axes. Confirm \(I+H=2\) for all \(\rho\). At what \(\rho\) is \(H=0\)? What does the joint look like there, and what does \(I=C\) mean in that case?}{
def correlated_pair(rho):
    # return a (2,2) joint
    pass

# Plot I(rho) and H(rho). Check I+H == 2.
}{15}{}

\codeassignment{The Bell state \(|\Psi^+\rangle=\frac1{\sqrt{2}}(|00\rangle+|11\rangle)\) has density matrix \(\rho=|\Psi^+\rangle\langle\Psi^+|\). Write \(\rho\) as a \(4\times 4\) matrix in the computational basis. Compute the von Neumann entropy \(S(\rho)=-\mathrm{Tr}(\rho\log_2\rho)\) using `numpy.linalg.eigvalsh`. Trace out the second qubit to get \(\rho_A\) and compute \(S(\rho_A)\). In a markdown cell: why is \(S(\rho)=0\) while \(S(\rho_A)>0\), and what does that say about achieving \(I=C\) with non-trivial marginals?}{
bell = np.array([1.0, 0.0, 0.0, 1.0]) / np.sqrt(2.0)

def von_neumann(rho):
    pass

def partial_trace_B(rho):
    # rho is 4x4; return 2x2 rho_A
    pass

# S(rho) and S(rho_A). Markdown cell for the interpretation.
}{20}{}

\section{Part B -- Reflection}

\writeassignment{DPI and the Good Regulator (200 words). State the data-processing inequality in your own words and give one concrete intelligence-claim that would violate it. Then state the Good Regulator Theorem as an *existence* claim ($H(A\mid S)=0$ among $H(Z)$-minimisers). Distinguish it from Ashby's requisite variety. Name both caveats from lecture 6 (weak model; predictability versus desirability). Optionally, say how the information-bottleneck gloss $\min I(S;A)$ subject to $H(Z)\le\epsilon$ sits *after* the theorem without replacing it.}{25}{}

\writeassignment{The perpetual motion analogy (300 words). Using at least two formal no-gos from the course (Landauer, $I+H=C$, the data-processing inequality, Shannon's $R\le C$, human bandwidth), argue why unbounded intelligence -- a system that processes information without entropic cost -- has the same shape as perpetual motion. Say which of your constraints are no-gos and which tools (capacity-achieving $p(x)$, MaxEnt $p$, IB compression, a GRT deterministic policy) are prescriptions. Use the three perspectives on entropy (thermodynamic, information-theoretic, Bayesian) where they clarify that split. Where is the analogy tight? Where does it break down? If you used an LLM, include the key responses as an appendix, not counted in the word limit.}{25}{}

\section{Marking}

\notes{
- 60--74: multi-information computed; Bell density matrix written out; perpetual-motion analogy addressed at a surface level.
- 75--79: \(S(\rho)=0\) with \(S(\rho_A)>0\) is correctly linked to \(I=C\); DPI versus GRT versus requisite variety are distinguished; no-go versus prescription is named; both GRT caveats appear.
- 80--89: the perpetual-motion argument is formal (not just an analogy) and uses Landauer or $I+H=C$ / DPI / $R\le C$ tightly; IB is correctly treated as a gloss after GRT, not as the theorem; Part A2 extended (three variables, or a continuous family).
- 90--100: original contribution -- a case where the analogy fails, and a proposal for what a stronger information-theoretic limit would require.
}

\section{Submission}

\notes{Upload both files to Moodle by 10:00 on Tuesday 1 December (start of lecture 8). Quiz 4 follows immediately and will not reuse your examples.}
