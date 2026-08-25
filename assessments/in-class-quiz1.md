---
id: Q1
title: "In-Class Quiz 1: Boltzmann, Partition Function, Shannon Entropy"
type: in-class-quiz
mode: summative
weight: 10
due_week: 3
outcomes: [LO1, LO2, LO3]
question_bank: quiz-banks/q1-boltzmann-shannon.yaml
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
  ai_robust_rationale: "Invigilated in-class test on Moodle. Random draw from a large bank reduces repeatability. No external resources."
delivery: in-class
duration_minutes: 10
platform: Moodle
---

# In-Class Quiz 1: Boltzmann, Partition Function, Shannon Entropy

**Administered**: Start of Week 3 lecture (first 10 minutes).  
**Format**: 10 auto-marked questions on Moodle (MCQ, T/F, matching, fill-blank). No notes, no internet, no LLMs.  
**Covers**: Weeks 1–2 material (LO1, LO2, LO3).

Question pool: `quiz-banks/q1-boltzmann-shannon.yaml` (100 items). Draw 10 stratified by outcome. Examples use two-state / binary sources — not Worksheet 1's three-state / die.

## Marking

Auto-graded by Moodle. 1 mark per correct item. Total: 10 marks → scaled to 10% of module grade.

```bash
./vc validate-quiz-bank assessments/quiz-banks/q1-boltzmann-shannon.yaml
./vc draw-quiz assessments/in-class-quiz1.md --seed 42
```
