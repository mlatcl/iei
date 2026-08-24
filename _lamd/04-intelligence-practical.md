---
title: "Worksheet 4: Multi-Information, von Neumann Entropy, and Limits on Intelligence"
practical: 4
week: 7
layout: practical
assignment: True
ipynb: True
reveal: False
transition: None
date: 2026-12-01
released: 2026-11-24
venue: FW26, William Gates Building
abstract: >
  Compute multi-information and verify \(I+H=C\), then treat the Bell
  state as the quantum resolution of \(I=C\) with non-trivial marginals.
  The reflection asks you to contrast three geometries of an optimal
  change of state and to evaluate the perpetual-motion analogy with the
  course's formal constraints.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO10, LO11, LO12, LO13]
duration_hours: 3
type: practical
assessment_id: W4
weight: 15
due_week: 8
word_count: 500
---

\define{\incrementQuestionMarkCounter{marks}}{}

\section{Worksheet 4}

\notes{Released after lecture 7 (24 November). Due at the start of lecture 8 (1 December), *before* Quiz 4. Estimated three hours. This is the capstone worksheet, 15% of the module mark.

**Builds on the lecture.** Part A1–A2 use the $I+H=C$ family from lecture 7 (`multi-information-rho` figure). Part A3 repeats the Bell-state code from the lecture notebook. Part B mirrors lecture 8's three-geometries slide and perpetual-motion synthesis.}

\notes{Submit `crsid_worksheet4.ipynb` and `crsid_worksheet4.md` on Moodle. LLMs are permitted. Authenticity is checked by Quiz 4 at the start of lecture 8, on a *new* example (three independent coins; a GHZ state rather than a Bell state).}

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

\writeassignment{Three geometries (200 words). Shannon abstracted a code as probability over symbols. Write a short argument for why *probability transport* -- moving a distribution from \(p\) to \(q\) -- is a natural abstraction of agency. Then distinguish, in your own words, three notions of an optimal trajectory that this module has named: Crooks / Fisher--Rao thermodynamic length, Wasserstein optimal transport, and the Schrödinger bridge. What would it mean to collapse them, and why must you not?}{25}{}

\writeassignment{The perpetual motion analogy (300 words). Using at least two formal no-gos from the course (Landauer, \(\mathcal{L}^2/\tau\), \(I+H=C\), human bandwidth, the inaccessible game), argue why unbounded intelligence -- a system that processes information without entropic cost -- has the same shape as perpetual motion. Say which of your constraints are no-gos and which of the three geometries are prescriptions. Where is the analogy tight? Where does it break down? If you used an LLM, include the key responses as an appendix, not counted in the word limit.}{25}{}

\section{Marking}

\notes{
- 60--74: multi-information computed; Bell density matrix written out; perpetual-motion analogy addressed at a surface level.
- 75--79: \(S(\rho)=0\) with \(S(\rho_A)>0\) is correctly linked to \(I=C\); the three geometries are distinguished, not collapsed.
- 80--89: the perpetual-motion argument is formal (not just an analogy) and uses Landauer or \(\mathcal{L}^2/\tau\) or the inaccessible game tightly; Part A2 extended (three variables, or a continuous family).
- 90--100: original contribution -- a case where the analogy fails, and a proposal for what a stronger information-theoretic limit would require.
}

\section{Submission}

\notes{Upload both files to Moodle *before the start of lecture 8* on 1 December. Quiz 4 follows immediately and will not reuse your examples.}
