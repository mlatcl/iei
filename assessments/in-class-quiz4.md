---
id: Q4
title: "In-Class Quiz 4: Fisher, GRT, Goals, and Channels"
type: in-class-quiz
mode: summative
weight: 10
due_week: 8
outcomes: [LO8, LO10, LO12, LO13]
question_bank: quiz-banks/q4-multiinfo-limits.yaml
questions_per_sitting: 10
pool_target: 100
draw:
  stratify_by: outcomes
  seed: null
feedback:
  type: auto
  deadline_days: 21
  before_next: false
workload_hours: 0.17
authentication:
  mechanism: in-person-paper
  ai_robust: true
  ai_robust_rationale: "Invigilated in-class paper test. No external resources. The yaml path is a tagged pool for drafting reuse, not the printed paper."
delivery: in-class
duration_minutes: 10
platform: paper
---

# In-Class Quiz 4: Fisher, GRT, Goals, and Channels

**Administered**: Week 8 lecture (first 10 minutes).  
**Format**: 10-mark paper test, single-answer multiple choice (no multi-select). No notes, no internet, no LLMs.  
**Covers**: Weeks 6–7 as redesigned and delivered:

- **Week 6**: exponential family / Fisher $I(\theta)$ versus Shannon $H$; natural-gradient of entropy as taught (LO8).
- **Week 7**: Good Regulator overview ($D,S,A,Z$; minimise $H(Z)$; $H(A\mid S)=0$ existence slogan with the constant-action (dark-room) caveat; requisite variety as a bound on $H(Z)$) (LO12); goal as a measure of success, $r=-\ln(\mathrm{d}\nu/\mathrm{d}\lambda)$, with a quadratic reward as a Gaussian goal measure (statement and example only) (LO12); Shannon $R\le C$ and DPI as statement/moral (LO10); Landauer / human bandwidth tools for LO13.

**Not assessed**: low entropy as predictability rather than desirability; the coarse-graining reading of reward (cell volumes, one good state in ten); continuous MaxEnt; full DPI board proof; Watanabe multi-information / $I+H=C$ depth; information bottleneck as first-class theorem; no-barber principle and quantum / von Neumann motivation (Week 8 unassessed close only); Joery algorithm / MM / DeepSea; Fisher path length; thermodynamic length; three transport geometries. The exponential family (LO6) is taught in Week 6 and is not on this paper beyond Fisher vocabulary.

The `question_bank` path points at the existing multi-info / limits pool for tooling reuse only (`quiz-banks/q4-multiinfo-limits.yaml`); it is not the printed paper. Prefer items tagged LO8, LO10, LO12, LO13 that match the coverage contract above. Do not reuse Worksheet 4's setups on the paper sitting. Writing the actual paper items is out of scope for this metadata update.

## Marking

1 mark per correct item. Total: 10 marks → scaled to 10% of module grade.
