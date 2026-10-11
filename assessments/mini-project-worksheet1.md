---
id: W1
title: "Worksheet 1: Socratic Dialogue on the History of Entropy"
type: mini-project
mode: summative
weight: 15
word_count: 300
due_week: 2
due_date: 2026-10-20
due_time: "10:00"
released: 2026-10-13
source: _lamd/intro-history-entropy-shannon-practical.md
outcomes: [LO1, LO2]
feedback:
  type: written
  deadline_days: 14
  before_next: true
workload_hours: 3
authentication:
  mechanism: mixed
  ai_robust: true
  ai_robust_rationale: "Students must pose curiosity and skepticism prompts as Socrates in exactly ten turns from one continuous conversation with a single LLM (model name and version declared); planning may use any tools, but only the final exchange is submitted. The reflection is handwritten on a scanned proforma. Authenticity is further verified by the paired in-class Quiz 1 (Week 2)."
---

# Worksheet 1: Socratic Dialogue on the History of Entropy

Student-facing brief (LaMD): [`_lamd/intro-history-entropy-shannon-practical.md`](../_lamd/intro-history-entropy-shannon-practical.md).

Handouts:

- [`handouts/worksheet1-dialogue-template.md`](handouts/worksheet1-dialogue-template.md) — typed dialogue (exactly 10 exchanges)
- [`handouts/worksheet1-reflection-proforma.md`](handouts/worksheet1-reflection-proforma.md) — pandoc source for the printable handwritten form
- [`handouts/worksheet1-reflection-template.md`](handouts/worksheet1-reflection-template.md) — student instructions for the scan

Released 13 October (lecture 1). Due Tuesday 20 October 2026, 10:00 (start of lecture 2).

**Subject:** why Shannon called information *entropy*; folklore (von Neumann) versus primary source (Tolman footnote) and the Wiener–Gibbs trail.

**Mandated opening:** exchange 1 curiosity (naming); exchange 2 skepticism (Tolman / Wiener / Gibbs). Exchanges 3–10 free within suggested historical and thematic directions.

**Tools:** Students may use any materials or LLMs while planning. The submitted dialogue must be one continuous conversation with a single model; YAML records that model's name and version only.

Submit as **two separate** Moodle uploads (anonymous; candidate number only):

- `candidatenumber_worksheet1_dialogue.md` — exactly ten prompt/answer turns
- `candidatenumber_worksheet1_reflection.pdf` — scan of the handwritten proforma

Build the proforma PDF with:

```bash
cd assessments/handouts
pandoc worksheet1-reflection-proforma.md -s -o worksheet1-reflection-proforma.tex
pandoc worksheet1-reflection-proforma.md -o worksheet1-reflection-proforma.pdf
```

## Marking Guidance

Total 15 marks, reported as a percentage of the worksheet.

- **Curiosity (5):** Exchange 1 and later open questions invite substantive explanation; not trivia or yes/no.
- **Skepticism (5):** Exchange 2 presses anecdote against Tolman / Wiener / Gibbs; later turns chase consequences or missing assumptions.
- **Reflection (5):** Handwritten; clear learning about the naming history and about the model's limits; identifies no-go vs recipe framing where relevant. Typed reflections are not accepted.

Grade-band reading of the whole:

- **60–74%**: Ten turns present; mandated pair attempted; some curiosity and at least thin skepticism; reflection restates the dialogue.
- **75–79%**: Clear arc from naming question to Tolman/Wiener probe; reflection names a concrete tension or gap (e.g. folklore vs footnote).
- **80–89%**: Later probes expose a non-obvious inconsistency or missing assumption in the model's history; reflection connects to the course theme.
- **90–100%**: Dialogue and reflection together show original synthesis not present in the model's answers alone.
