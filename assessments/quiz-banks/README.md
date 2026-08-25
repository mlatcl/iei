# IEI in-class quiz question banks

YAML pools for **Q1–Q4**. Schema: VibeCourse CIP-0008 / REQ-0009.

| Bank | Assessment | Outcomes | Items |
|------|------------|----------|------:|
| `q1-boltzmann-shannon.yaml` | `in-class-quiz1.md` | LO1–LO3 | 100 |
| `q2-maxent-landauer.yaml` | `in-class-quiz2.md` | LO4–LO7 | 100 |
| `q3-fisher-geometry.yaml` | `in-class-quiz3.md` | LO8–LO9 | 100 |
| `q4-multiinfo-limits.yaml` | `in-class-quiz4.md` | LO10–LO13 | 100 |

## Sitting

- **10 minutes**, **10 questions** per sitting, stratified by outcome.
- Delivery: Moodle at start of lecture (see assessment metadata).

## Rebuild

Banks are generated from `scripts/quiz_banks/build_banks.py` (edit that script, then regenerate):

```bash
.venv-vibecourse/bin/python scripts/quiz_banks/build_banks.py
./vc validate-quiz-bank assessments/quiz-banks/q1-boltzmann-shannon.yaml
./vc draw-quiz assessments/in-class-quiz1.md --seed 42
```

Drawn sittings land in `assessments/generated/` (gitignored). Import `.gift` into Moodle.

Follow-on items use optional `depends_on: base-id` (see CIP-0008). The draw unlocks
them only after the base is in the sitting, and weights bases that unlock locked
mass more heavily.
