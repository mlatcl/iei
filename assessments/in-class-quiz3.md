---
id: Q3
title: "In-Class Quiz 3: Fisher Metric, Natural Gradient, Dually Flat Geometry"
type: in-class-quiz
mode: summative
weight: 10
due_week: 7
outcomes: [LO8, LO9]
question_bank: quiz-banks/q3-fisher-geometry.yaml
questions_per_sitting: 10
pool_target: 100
draw:
  stratify_by: outcomes
  seed: null
feedback:
  type: auto
  deadline_days: 7
  before_next: true
workload_hours: 0.17
authentication:
  mechanism: in-person-moodle
  ai_robust: true
  ai_robust_rationale: "Invigilated in-class test on Moodle. Random draw from a large bank. No external resources."
delivery: in-class
duration_minutes: 10
platform: Moodle
---

# In-Class Quiz 3: Fisher Metric, Natural Gradient, Dually Flat Geometry

**Administered**: Start of Week 7 lecture (first 10 minutes).  
**Format**: 10 auto-marked questions on Moodle. No notes, no internet, no LLMs.  
**Covers**: Weeks 5–6 material (LO8, LO9).

Question pool: `quiz-banks/q3-fisher-geometry.yaml` (100 items). Bernoulli / Poisson parameterisations — not Worksheet 3's Gaussian.

## Marking

Auto-graded by Moodle. 1 mark per correct item. Total: 10 marks → scaled to 10% of module grade.

```bash
./vc validate-quiz-bank assessments/quiz-banks/q3-fisher-geometry.yaml
./vc draw-quiz assessments/in-class-quiz3.md --seed 42
```
