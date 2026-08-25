# IEI in-class quiz question banks

YAML pools for **Q1–Q4** in-class Moodle quizzes. Schema follows VibeCourse **CIP-0008** / **REQ-0009**.

| Bank file | Assessment | Weeks / outcomes | Pool target |
|-----------|------------|------------------|-------------|
| `q1-boltzmann-shannon.yaml` | `in-class-quiz1.md` (Q1) | Weeks 1–2; LO1–LO3 | 100 |
| `q2-*.yaml` | `in-class-quiz2.md` | (planned) | 100 |
| `q3-*.yaml` | `in-class-quiz3.md` | (planned) | 100 |
| `q4-*.yaml` | `in-class-quiz4.md` | (planned) | 100 |

## Sitting

- **10 minutes**, **10 questions** per sitting (`questions_per_sitting`).
- Draw is **stratified by learning outcome** when tooling is available.
- Live delivery: Moodle at start of lecture (see assessment metadata).

## Maintenance

1. Add items to the YAML bank (not to the long question list in `in-class-quiz*.md`).
2. Tag each item with `outcomes` and varied `type` where possible.
3. Grow each bank toward **100 items** before the corresponding quiz week.
4. Align new items with `questions.md` and lecture learning outcomes.

Validation and draw scripts (when installed from VibeCourse):

```bash
./vc validate-quiz-bank assessments/quiz-banks/q1-boltzmann-shannon.yaml
./vc --quiz-banks
```

Export drawn sittings to GIFT for Moodle import rather than hand-typing each sitting.
