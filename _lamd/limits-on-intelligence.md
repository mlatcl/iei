---
title: "Probability Transport and Limits on Intelligence"
week: 8
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
  - title: "Measuring Thermodynamic Length"
    author: "Crooks"
    chapter: "whole paper"
    estimated_hours: 1
  - title: "The Atomic Human"
    author: "Lawrence"
    chapter: "Chapter 1"
    estimated_hours: 1
    required: false
  - title: "Sinkhorn Distances: Lightspeed Computation of Optimal Transportation Distances"
    author: "Cuturi"
    chapter: "§§3–4 (Sinkhorn distances and algorithm)"
    estimated_hours: 1
    required: false
  - title: "Computational Optimal Transport"
    author: "Peyré and Cuturi"
    chapter: "Chapters 1–2; §4.2 (Sinkhorn, optional)"
    estimated_hours: 2
    required: false
  - title: "Generative AI and Stochastic Thermodynamics"
    author: "Welling, Lu and Holdijk"
    chapter: "Chapter 14; §§22.2–22.3"
    estimated_hours: 1
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
| 10–55 | Agency as transport; Wasserstein; Schrödinger bridge; Sinkhorn as the discrete MaxEnt coupling |
| 55–65 | Break |
| 65–95 | Crooks versus Wasserstein versus Schrödinger; \(\mathcal{L}^2/\tau\) as a third bound |
| 95–120 | LO13: Landauer, \(I+H=C\), requisite variety / Good Regulator as named tools; close the Week 1 question |
}

\subsection{Quiz 4}

\notes{Ten MCQs on multi-information, \(I+H=C\), von Neumann entropy, and the perpetual-motion analogy. Three independent coins and a GHZ state — not the Worksheet 4 examples.}

\subsection{Agency as Transport}

\include{_information-game/includes/schrodingers-bridge-perspective.md}

<!-- SNIPPET: _information-game/includes/agency-as-transport.md -->

\newslides{Agency as Transport}

\slides{Shannon abstracted a code as probability over symbols. The analogous move: an agent transports probability mass from $p$ to $q$.}

\slidesincremental{
* Wasserstein: minimum ground-cost transport
* Schrödinger bridge: maximum-entropy stochastic interpolation
* Sinkhorn: discrete algorithm; not a fourth geometry
}

\speakernotes{LO12. One $2\times 2$ table is enough — week 4 moments, prescribed marginals. Worksheet 4 Part B.}

\notes{On a discrete grid, Schrödinger interpolation is entropy-regularised optimal transport. Sinkhorn is the discrete algorithm, not a fourth geometry.}

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
import mlai}

\plotcode{# Toy 2x2 transport plan between marginals p and q
p = np.array([0.6, 0.4])
q = np.array([0.5, 0.5])
C = np.array([[0., 1.], [1., 0.]])  # ground cost
# Greedy illustration — not optimal, just visual
P = np.array([[0.5, 0.1], [0.0, 0.4]])
fig, ax = plt.subplots(figsize=(5, 4))
im = ax.imshow(P, cmap='Blues')
ax.set_xticks([0,1]); ax.set_yticks([0,1])
ax.set_xlabel('target'); ax.set_ylabel('source')
ax.set_title('Transport plan $P$ (illustrative)')
plt.colorbar(im, ax=ax, fraction=0.046)
mlai.write_figure('transport-plan-2x2.svg', directory='\writeDiagramsDir/ml')}

\figure{\includediagram{\diagramsDir/ml/transport-plan-2x2}{55%}}{Illustrative $2\times 2$ coupling — week 4 moments become week 8 marginals.}{transport-plan-2x2}

\slides{
\includediagram{\diagramsDir/ml/transport-plan-2x2}{55%}
}

<!-- /SNIPPET: _information-game/includes/agency-as-transport.md -->

\notes{The entropic constraint in Sinkhorn distances has a direct connection to week 7: @Cuturi-sinkhorn13 shows that constraining $\mathrm{KL}(P \| rc^T) \le \alpha$ is equivalent to constraining the mutual information $I(X;Y) \le \alpha$ of the coupling. The week 7 identity $I + H = C$ relates mutual information to capacity; here we see mutual information serving as a budget on how deterministic the transport plan can be.}

\subsection{Three Geometries}

<!-- SNIPPET: _information/includes/three-geometries-compared.md -->

\newslides{Three Geometries — Do Not Collapse}

\slides{Optimal intelligence, in this module's voice, is a protocol under an entropic budget.}

\slidesincremental{
* **Fisher–Rao / Crooks** — near-equilibrium; $\langle W_{\mathrm{ex}}\rangle\ge\mathcal{L}^2/\tau$
* **Wasserstein** — minimum ground-cost on sample space
* **Schrödinger bridge** — max-entropy interpolation; Sinkhorn computes it
}

\speakernotes{Three prescriptions — three answers to “what should I do?”. Crooks, Landauer, $I+H=C$ are the no-gos. Worksheet 4 Part B: where is perpetual motion tight?}

\notes{Superintelligence at zero dissipation or infinite update rate is perpetual motion: it claims to repeal a no-go. Students must say where the analogy is tight and where it breaks.}

\setupcode{geometries = {
    'Crooks/Fisher-Rao': {'minimise': 'dissipation', 'no_go': 'L^2/tau'},
    'Wasserstein': {'minimise': 'ground cost', 'no_go': 'mass conservation'},
    'Schrodinger': {'minimise': 'relative entropy', 'no_go': 'fixed marginals'},
}}

<!-- /SNIPPET: _information/includes/three-geometries-compared.md -->

\slidesincremental{
* No-gos: Landauer, \(\mathcal{L}^2/\tau\), \(I+H=C\)
* Prescriptions: Crooks geodesic; Wasserstein; Schrödinger
* Do not collapse the three
}

\include{_information/includes/welling-three-geometries.md}

\addreading{@Crooks-length07}{the whole paper}

\addreading{@Cuturi-sinkhorn13}{§§3–4 (optional)}

\subsection{Limits on Intelligence}

\include{_information/includes/information-limits-on-intelligence.md}

\include{_information-game/includes/unified-intelligence-perspective.md}

\addreading{@Lawrence-atomic24}{Chapter 1}

<!-- SNIPPET: _information/includes/limits-on-intelligence-synthesis.md -->

\newslides{Evaluating Superintelligence Claims}

\slides{Apply three no-gos and name which geometry you are using as the prescription.}

\slidesincremental{
* Landauer: $k_B T\ln 2$ per bit erased
* Crooks: $\langle W_{\mathrm{ex}}\rangle\ge\mathcal{L}^2/\tau$
* Conservation: $I+H=C$ with fixed marginals
* Human bandwidth: $\sim 100$ bits/s — *The Atomic Human*
}

\speakernotes{LO13. Named tools only — requisite variety, Good Regulator, bottleneck, DPI. Close Week 1: entropy forbids; probability prescribes.}

\notes{Requisite variety, Good Regulator in entropic form, information bottleneck, and data-processing inequality are named tools, not new outcomes. Viable-system material is optional colour. Prescriptions operate inside fences set by physics and embodiment.}

\setupcode{no_gos = ['Landauer', 'Crooks L^2/tau', 'I+H=C', 'human bandwidth']
prescriptions = ['Boltzmann/MaxEnt p', 'Crooks geodesic', 'Wasserstein plan', 'Schrodinger bridge']

<!-- /SNIPPET: _information/includes/limits-on-intelligence-synthesis.md -->

\subsection{Interpret This Week}

\slidesincremental{
* Optimal trajectories and optimal intelligence?
* Transport plan as an act; which geometry is Sinkhorn?
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
