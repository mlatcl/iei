---
id: W2
title: "Worksheet 2: Maxwell's Demon, MaxEnt, and the Exponential Family"
type: mini-project
mode: summative
weight: 15
word_count: 400
due_week: 4
due_date: 2026-11-03
released: 2026-10-27
source: _lamd/02-maxent-practical.md
outcomes: [LO4, LO5, LO6, LO7]
feedback:
  type: written
  deadline_days: 14
  before_next: true
workload_hours: 3
authentication:
  mechanism: llm-assisted-with-reflection
  ai_robust: true
  ai_robust_rationale: "LLMs are permitted. Authenticity verified by in-class Quiz 2 (Week 5), which applies MaxEnt and Landauer to a new problem under invigilated conditions."
---

# Worksheet 2: Maxwell's Demon, MaxEnt, and the Exponential Family

Student-facing brief (LaMD, compiles to a notebook): [`_lamd/02-maxent-practical.md`](../_lamd/02-maxent-practical.md).

Released 27 October (lecture 3). Due at the start of lecture 4, 3 November.

Submit: `crsid_worksheet2.ipynb` and `crsid_worksheet2.md`.

## Marking Guidance

- **60–74%**: Optimiser runs; distribution matches Jaynes' result; reflection covers Landauer at a surface level; Part B (ii) names Ellis or Landauer without comparing generality.
- **75–79%**: Markdown cells show genuine understanding of why the Lagrange multiplier equals \(\beta\); reflection identifies a non-trivial tension (Bayesian vs thermodynamic MaxEnt, or Ellis circularity vs Landauer generality gap).
- **80–89%**: Extension beyond the brief --- two spins with a prescribed correlation $\langle s_1 s_2\rangle$, recovering the coupling $J$, entropy landscape on the simplex, *or* full Ellis talk/transcript with a proposed lemma for substrate-independent dissipation accounting.
- **90–100%**: Original insight — e.g. proposes a new constraint type and predicts the distribution family it should yield before computing it; or synthesises the two demon ledgers in a way not present in lecture or excerpt.
