---
id: Q2
title: "In-Class Quiz 2: MaxEnt, Exponential Family, Landauer"
type: in-class-quiz
mode: summative
weight: 10
due_week: 5
outcomes: [LO4, LO5, LO6, LO7]
question_bank: quiz-banks/q2-maxent-landauer.yaml
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

# In-Class Quiz 2: MaxEnt, Exponential Family, Landauer

**Administered**: Start of Week 5 lecture (first 10 minutes).  
**Format**: 10 auto-marked questions on Moodle. No notes, no internet, no LLMs.  
**Covers**: Weeks 4–5 material (LO4–LO7): Maxwell/Landauer and MaxEnt / exponential family.

Question pool: `quiz-banks/q2-maxent-landauer.yaml` (100 items). Spinner / Bernoulli examples — not Worksheet 2's die / Gaussian.

## Marking

Auto-graded by Moodle. 1 mark per correct item. Total: 10 marks → scaled to 10% of module grade.

```bash
./vc validate-quiz-bank assessments/quiz-banks/q2-maxent-landauer.yaml
./vc draw-quiz assessments/in-class-quiz2.md --seed 42
```
