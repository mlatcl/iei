---
id: W4
title: "Worksheet 4: Socratic Dialogue on the Good Regulator and General Intelligence"
type: mini-project
mode: summative
weight: 15
word_count: 300
due_week: 8
due_date: 2026-12-01
due_time: "10:00"
released: 2026-11-17
source: _lamd/good-regulator-agi-practical.md
outcomes: [LO12, LO13]
feedback:
  type: written
  deadline_days: 21
  before_next: false
workload_hours: 3
authentication:
  mechanism: mixed
  ai_robust: true
  ai_robust_rationale: "Students must pose curiosity and skepticism prompts as Socrates in exactly ten turns from one continuous conversation with a single LLM (model name and version declared); Exchange 1 begins before the Good Regulator is taught in lecture 6. Planning may use any tools, but only the final exchange is submitted. The reflection is handwritten on a scanned proforma. Related material is checked under invigilated Quiz 4 (Week 8) on a new example."
---

# Worksheet 4: Socratic Dialogue on the Good Regulator and General Intelligence

Student-facing brief (LaMD): [`_lamd/good-regulator-agi-practical.md`](../_lamd/good-regulator-agi-practical.md).

Handouts:

- [`handouts/worksheet4-dialogue-template.md`](handouts/worksheet4-dialogue-template.md) — typed dialogue (exactly 10 exchanges; `### User` / `### LLM` under each)
- [`handouts/worksheet4-reflection-proforma.md`](handouts/worksheet4-reflection-proforma.md) — pandoc source for the printable handwritten form
- [`handouts/worksheet4-reflection-template.md`](handouts/worksheet4-reflection-template.md) — student instructions for the scan

Released 17 November (lecture 6). Students begin Exchange 1 *before* the Good Regulator segment of that lecture. Due Tuesday 1 December 2026, 10:00 (start of lecture 8), *before* Quiz 4.

**Subject:** what is the Good Regulator Theorem, and how (if at all) does it relate to modern notions of general intelligence?

**Mandated opening:** exchange 1 curiosity (GRT and general intelligence, asked before the lecture develops the theorem); exchange 2 skepticism (what ``model'' means; existence versus AGI capability; requisite variety versus Good Regulator). Exchanges 3–10 free within suggested directions.

**Tools:** Students may use any materials or LLMs while planning. The submitted dialogue must be one continuous conversation with a single model; YAML records that model's name and version only.

Submit as **two separate** Moodle uploads. Filenames and form fields use CRSid (not full name):

- `L172_<CRSid>_worksheet4_dialogue.md` — exactly ten exchanges (`### User` then `### LLM`)
- `L172_<CRSid>_worksheet4_reflection.pdf` — scan of the handwritten proforma

Build the proforma PDF with:

```bash
cd assessments/handouts
pandoc worksheet4-reflection-proforma.md -o worksheet4-reflection-proforma.pdf
```

The former notebook brief (`_lamd/04-intelligence-practical.md.deferred`) is parked for later redesign, in the same way as `02-maxent-practical.md.deferred` and `03-geometry-practical.md.deferred`.

## Marking Guidance

Total 15 marks, reported as a percentage of the worksheet.

- **Curiosity (5):** Exchange 1 and later open questions invite a link between the Good Regulator and general intelligence; not trivia or a yes/no.
- **Skepticism (5):** Exchange 2 presses what ``model'' means and whether AGI claims follow; later turns chase existence versus capability, variety versus organisation, or predictability versus desirability.
- **Reflection (5):** Handwritten; clear learning about GRT relative to intelligence claims and about the model's limits; notes evolution of the LLM habit since Worksheet 3 where relevant. Typed reflections are not accepted.

Grade-band reading of the whole:

- **60–74%**: Ten turns present; mandated pair attempted; some curiosity and at least thin skepticism; reflection restates the dialogue.
- **75–79%**: Clear arc from the AGI/GRT slogan to a concrete assumption (e.g. what counts as a model, or existence versus universality); reflection names a tension.
- **80–89%**: Later probes expose a non-obvious inconsistency (weak constant ``model,'' $H(Z)$ versus desirability, requisite variety conflation, DPI no-go); reflection connects to the course theme.
- **90–100%**: Dialogue and reflection together show original synthesis not present in the model's answers alone.
