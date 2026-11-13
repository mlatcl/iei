# IEI in-class quiz question banks

YAML **question pools are instructor-only and are not committed** (see root `.gitignore`).
Only this README is tracked under `assessments/quiz-banks/`.

| Bank (local) | Assessment | Outcomes | Notes |
|--------------|------------|----------|-------|
| `q1-probability-entropy-foundations.yaml` | `in-class-quiz1.md` | LO1–LO3 | Drafting pool for Quiz 1 paper sitting |
| `q1-probability-entropy-foundations.yaml` | `in-class-quiz2.md` | LO1–LO3 | Drafting pool for Quiz 2 paper sitting |
| `q2-maxent-landauer.yaml` | `in-class-quiz3.md` | LO4–LO7 | Filename is historical; covers grouping / demon / MaxEnt (not unread CGF) |
| `q4-multiinfo-limits.yaml` | `in-class-quiz4.md` | LO10–LO13 | DPI / GRT / multi-info / limits after Good-Regulator-first replan |

Archived local copies (not wired to any assessment metadata):
`q3-fisher-geometry.yaml`, `q4-geometry-multiinfo-limits.yaml`.

Keep the YAML files on the teaching machine (or private backup). Do not push them to GitHub.

## Sitting

- **10 minutes**, **10 questions** per sitting, stratified by outcome when drawing from the pool.
- Delivery: **paper** tests at the start of lectures **2, 4, 6 and 8**. The YAML banks are drafting pools; they are not the printed papers.

## Rebuild / draw (local pools required)

```bash
# Optional: regenerate YAMLs from the private builder (also gitignored)
# python3 scripts/quiz_banks/build_banks.py

./vc validate-quiz-bank assessments/quiz-banks/q1-probability-entropy-foundations.yaml
./vc validate-quiz-bank assessments/quiz-banks/q2-maxent-landauer.yaml
./vc validate-quiz-bank assessments/quiz-banks/q4-multiinfo-limits.yaml
./vc draw-quiz assessments/in-class-quiz1.md --seed 42
./vc draw-quiz assessments/in-class-quiz3.md --seed 42
./vc draw-quiz assessments/in-class-quiz4.md --seed 42
./vc draw-quiz assessments/in-class-quiz1.md --seed 42 --answers-tex
```

Drawn sittings land in `assessments/generated/` (gitignored). Use for drafting the paper scripts.

Follow-on items use optional `depends_on: base-id` (see CIP-0008).
