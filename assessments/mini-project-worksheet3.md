---
id: W3
title: "Worksheet 3: Socratic Dialogue on Coarse-Graining Maxwell"
type: mini-project
mode: summative
weight: 15
word_count: 300
due_week: 6
due_date: 2026-11-17
due_time: "10:00"
released: 2026-11-03
source: _lamd/grouping-maxwell-practical.md
outcomes: [LO4]
feedback:
  type: written
  deadline_days: 14
  before_next: true
workload_hours: 3
authentication:
  mechanism: mixed
  ai_robust: true
  ai_robust_rationale: "Students must pose curiosity and skepticism prompts as Socrates in exactly ten turns from one continuous conversation with a single LLM (model name and version declared); planning may use any tools, but only the final exchange is submitted. The reflection is handwritten on a scanned proforma."
---

# Worksheet 3: Socratic Dialogue on Coarse-Graining Maxwell

Student-facing brief (LaMD): [`_lamd/grouping-maxwell-practical.md`](../_lamd/grouping-maxwell-practical.md).

Handouts:

- [`handouts/worksheet3-dialogue-template.md`](handouts/worksheet3-dialogue-template.md) — typed dialogue (exactly 10 exchanges; `### User` / `### LLM` under each)
- [`handouts/worksheet3-reflection-proforma.md`](handouts/worksheet3-reflection-proforma.md) — pandoc source for the printable handwritten form
- [`handouts/worksheet3-reflection-template.md`](handouts/worksheet3-reflection-template.md) — student instructions for the scan

Released 3 November (lecture 4). Due Tuesday 17 November 2026, 10:00 (start of lecture 6).

**Subject:** once the demon is compartments and two ledgers, which coarse graining is legal for each compartment, and where may the missing entropy sit?

**Mandated opening:** exchange 1 curiosity (where the entropy sits / why a selective membrane looks like a violation); exchange 2 skepticism (Maxwellian-to-gate versus kinetic layer, both ledgers, or which of the four named families the model is actually using). Exchanges 3–10 free within suggested directions.

**Tools:** Students may use any materials or LLMs while planning. The submitted dialogue must be one continuous conversation with a single model; YAML records that model's name and version only.

Submit as **two separate** Moodle uploads. Filenames and form fields use CRSid (not full name):

- `L172_<CRSid>_worksheet3_dialogue.md` — exactly ten exchanges (`### User` then `### LLM`)
- `L172_<CRSid>_worksheet3_reflection.pdf` — scan of the handwritten proforma

Build the proforma PDF with:

```bash
cd assessments/handouts
pandoc worksheet3-reflection-proforma.md -o worksheet3-reflection-proforma.pdf
```

The former geometry notebook (`_lamd/03-geometry-practical.md.deferred`) is parked for later redesign, in the same way as `02-maxent-practical.md.deferred`.

## Marking Guidance

Total 15 marks, reported as a percentage of the worksheet.

- **Curiosity (5):** Exchange 1 and later open questions invite a location for the missing entropy; not trivia or a Landauer slogan.
- **Skepticism (5):** Exchange 2 presses which description is legal; later turns chase compartments, ledgers, trapdoor versus record versus fluctuation.
- **Reflection (5):** Handwritten; clear learning about legal coarse graining and about the model's limits; notes evolution of the LLM habit since Worksheet 2 where relevant. Typed reflections are not accepted.

Grade-band reading of the whole:

- **60–74%**: Ten turns present; mandated pair attempted; some curiosity and at least thin skepticism; reflection restates the dialogue.
- **75–79%**: Clear arc from "where does the entropy sit?" to a concrete family (illegal Maxwellian, trapdoor, record, or one ensemble); reflection names a tension.
- **80–89%**: Later probes expose a non-obvious inconsistency (both ledgers, kinetic layer versus bulk group, autonomous membrane with no record); reflection connects to the course theme.
- **90–100%**: Dialogue and reflection together show original synthesis not present in the model's answers alone.
