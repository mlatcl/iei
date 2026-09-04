# IEI in-class quiz question banks

YAML pools for **Q1–Q4**. Schema: VibeCourse CIP-0008 / REQ-0009.

| Bank | Assessment | Outcomes | Items |
|------|------------|----------|------:|
| `q1-probability-entropy-foundations.yaml` | `in-class-quiz1.md` | LO1–LO2 | 100 |
| `q2-maxent-landauer.yaml` | `in-class-quiz2.md` | LO3–LO7 | 100 |
| `q3-fisher-geometry.yaml` | `in-class-quiz3.md` | LO8–LO9 | 100 |
| `q4-multiinfo-limits.yaml` | `in-class-quiz4.md` | LO10–LO13 | 100 |

## Sitting

- **10 minutes**, **10 questions** per sitting, stratified by outcome.
- Delivery: Moodle at start of lectures **2, 5, 7 and 8** (see assessment metadata).

## Rebuild

```bash
./vc validate-quiz-bank assessments/quiz-banks/q1-probability-entropy-foundations.yaml
./vc draw-quiz assessments/in-class-quiz1.md --seed 42
./vc draw-quiz assessments/in-class-quiz1.md --seed 42 --answers-tex
```

Drawn sittings land in `assessments/generated/` (gitignored). Import `.gift` into Moodle;
compile `Q1-sitting.tex` with `pdflatex` for hard copies (`Q1-answers.tex` is the marker key).

Follow-on items use optional `depends_on: base-id` (see CIP-0008). The draw unlocks
them only after the base is in the sitting, and weights bases that unlock locked
mass more heavily.
