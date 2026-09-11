---
id: W4
title: "Worksheet 4: Multi-Information, Von Neumann Entropy, and Limits on Intelligence"
type: mini-project
mode: summative
weight: 15
word_count: 500
due_week: 8
due_date: 2026-12-01
due_time: "10:00"
released: 2026-11-24
source: _lamd/04-intelligence-practical.md
outcomes: [LO10, LO11, LO12, LO13]
feedback:
  type: written
  deadline_days: 21
  before_next: false
workload_hours: 3
authentication:
  mechanism: llm-assisted-with-reflection
  ai_robust: true
  ai_robust_rationale: "LLMs permitted. Authenticity verified by in-class Quiz 4 (Week 8), applying multi-information and the perpetual motion analogy to a new example under invigilated conditions."
---

# Worksheet 4: Multi-Information, Von Neumann Entropy, and Limits on Intelligence

Student-facing brief (LaMD, compiles to a notebook): [`_lamd/04-intelligence-practical.md`](../_lamd/04-intelligence-practical.md).

Released 24 November (lecture 7). Due Tuesday 1 December 2026, 10:00 (start of lecture 8), *before* Quiz 4.

The reflection now asks students to distinguish Crooks / Fisher–Rao, Wasserstein, and the Schrödinger bridge, and to use \(\mathcal{L}^2/\tau\) alongside Landauer and \(I+H=C\). The data-processing inequality and the information bottleneck (taught under LO10) may sharpen the no-go / prescription split.

Submit: `candidatenumber_worksheet4.ipynb` and `candidatenumber_worksheet4.md`.

## Marking Guidance

- **60–74%**: Multi-information computed correctly; Bell state density matrix written out; reflection addresses the perpetual motion analogy at a surface level.
- **75–79%**: Part A correctly identifies that \(S(\rho)=0\) for a pure state while marginals have \(S>0\); the three geometries are distinguished, not collapsed.
- **80–89%**: Reflection constructs a tight formal argument using Landauer, \(\mathcal{L}^2/\tau\), $I+H=C$, or DPI; Part A2 extended.
- **90–100%**: Original contribution — e.g. identifies a case where the perpetual motion analogy fails and proposes what a stronger information-theoretic limit would require.
