# IEI in-class quiz question banks

YAML **question pools are instructor-only and are not committed** (see root `.gitignore`).
Only this README is tracked under `assessments/quiz-banks/`.

| Bank (local) | Assessment | Outcomes |
|--------------|------------|----------|
| `q1-probability-entropy-foundations.yaml` | `in-class-quiz1.md` | LO1–LO3 |
| `q2-maxent-landauer.yaml` | `in-class-quiz2.md` | LO4–LO7 |
| `q3-fisher-geometry.yaml` | `in-class-quiz3.md` | LO8–LO9 |
| `q4-multiinfo-limits.yaml` | `in-class-quiz4.md` | LO10–LO13 |

Keep the YAML files on the teaching machine (or private backup). Do not push them to GitHub.

## Sitting

- **10 minutes**, **10 questions** per sitting, stratified by outcome.
- Delivery: Moodle at start of lectures **2, 5, 7 and 8** (see assessment metadata).

## Rebuild / draw (local pools required)

```bash
# Optional: regenerate YAMLs from the private builder (also gitignored)
# python3 scripts/quiz_banks/build_banks.py

./vc validate-quiz-bank assessments/quiz-banks/q1-probability-entropy-foundations.yaml
./vc draw-quiz assessments/in-class-quiz1.md --seed 42
./vc draw-quiz assessments/in-class-quiz1.md --seed 42 --answers-tex
```

Drawn sittings land in `assessments/generated/` (gitignored). Import `.gift` into Moodle.

Follow-on items use optional `depends_on: base-id` (see CIP-0008).
