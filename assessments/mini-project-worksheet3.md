---
id: W3
title: "Worksheet 3: Information Geometry and Thermodynamic Length"
type: mini-project
mode: summative
weight: 15
word_count: 400
due_week: 6
due_date: 2026-11-17
due_time: "10:00"
released: 2026-11-03
source: _lamd/03-geometry-practical.md
outcomes: [LO8, LO9]
feedback:
  type: written
  deadline_days: 14
  before_next: true
workload_hours: 3
authentication:
  mechanism: llm-assisted-with-reflection
  ai_robust: true
  ai_robust_rationale: "LLMs permitted. Authenticity verified by the paired in-class quiz, applying Fisher metric and natural gradient to a new parameterised family under invigilated conditions."
---

# Worksheet 3: Information Geometry and Thermodynamic Length

Student-facing brief (LaMD, compiles to a notebook): [`_lamd/03-geometry-practical.md`](../_lamd/03-geometry-practical.md).

Released 3 November (lecture 4). Due Tuesday 17 November 2026, 10:00 (start of lecture 6).

Part A now includes a Crooks length estimate on a straight-line path in \((\mu,\sigma^2)\). Students define length; they do not yet interpret it as intelligence.

Submit: `candidatenumber_worksheet3.ipynb` and `candidatenumber_worksheet3.md`.

## Marking Guidance

- **60–74%**: Fisher matrix implemented correctly; both gradient methods run; reflection identifies that natural gradient removes parameterisation dependence.
- **75–79%**: Reflection gives a precise account of dual flatness; trajectory plot clearly annotated; thermodynamic length computed.
- **80–89%**: A second path is compared, or the Pythagorean identity is checked on the Jaynes die; reflection extends to a connection not discussed in lectures.
- **90–100%**: Original experiment — e.g. tests a non-exponential-family distribution and characterises where the Pythagorean identity fails, or finds a geodesic shorter than the straight line.
