---
id: Q1
title: "In-Class Quiz 1: Probability and Entropy Foundations"
type: in-class-quiz
mode: summative
weight: 10
due_week: 2
outcomes: [LO1, LO2, LO3]
question_bank: quiz-banks/q1-probability-entropy-foundations.yaml
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
  mechanism: in-person-paper
  ai_robust: true
  ai_robust_rationale: "Invigilated in-class paper test. No external resources. The yaml path is an LO1–LO3-tagged pool for drafting reuse, not the printed paper."
delivery: in-class
duration_minutes: 10
platform: paper
---

# In-Class Quiz 1: Probability and Entropy Foundations

**Administered**: Start of Week 2 lecture (first 10 minutes).  
**Format**: 10-mark paper test (matching, T/F, fill-blank, selection). No notes, no internet, no LLMs.  
**Covers**: Lecture 1 probability and entropy review; Week 1 Boltzmann / theme seeds pressed in Worksheet 1 (LO1–LO3 foundations / seeds).

The `question_bank` path points at the LO1–LO3 foundation pool for tooling reuse only; it is not the printed paper.

## Marking

1 mark per correct item. Total: 10 marks → scaled to 10% of module grade.

```bash
./vc validate-quiz-bank assessments/quiz-banks/q1-probability-entropy-foundations.yaml
./vc draw-quiz assessments/in-class-quiz1.md --seed 42
```
