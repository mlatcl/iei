---
id: Q4
title: "In-Class Quiz 4: Multi-Information, I+H=C, Von Neumann Entropy, Limits on Intelligence"
type: in-class-quiz
mode: summative
weight: 10
due_week: 8
outcomes: [LO10, LO11, LO12, LO13]
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
  mechanism: in-person-moodle
  ai_robust: true
  ai_robust_rationale: "Invigilated in-class test on Moodle. Random draw from a large bank. No external resources."
delivery: in-class
duration_minutes: 10
platform: Moodle
---

# In-Class Quiz 4: Multi-Information, I + H = C, Von Neumann Entropy, Limits on Intelligence

**Administered**: Week 8 lecture (first 10 minutes).  
**Format**: 10 auto-marked questions on Moodle. No notes, no internet, no LLMs.  
**Covers**: Weeks 7–8 material (LO10–LO13).

Question pool: `quiz-banks/q4-multiinfo-limits.yaml` (100 items). Independent coins / GHZ-style examples — not Worksheet 4's prior setups.

## Marking

Auto-graded by Moodle. 1 mark per correct item. Total: 10 marks → scaled to 10% of module grade.

```bash
./vc validate-quiz-bank assessments/quiz-banks/q4-multiinfo-limits.yaml
./vc draw-quiz assessments/in-class-quiz4.md --seed 42
```
