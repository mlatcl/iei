---
id: W2
title: "Worksheet 2: Socratic Dialogue on Shannon H and Boltzmann S"
type: mini-project
mode: summative
weight: 15
word_count: 300
due_week: 4
due_date: 2026-11-03
due_time: "10:00"
released: 2026-10-20
source: _lamd/shannon-boltzmann-practical.md
outcomes: [LO2, LO3]
feedback:
  type: written
  deadline_days: 14
  before_next: true
workload_hours: 3
authentication:
  mechanism: mixed
  ai_robust: true
  ai_robust_rationale: "Students must pose curiosity and skepticism prompts as Socrates in exactly ten turns from one continuous conversation with a single LLM (model name and version declared); planning may use any tools, but only the final exchange is submitted. The reflection is handwritten on a scanned proforma. Related material is checked later under invigilated Quiz 2 (Week 5)."
---

# Worksheet 2: Socratic Dialogue on Shannon H and Boltzmann S

Student-facing brief (LaMD): [`_lamd/shannon-boltzmann-practical.md`](../_lamd/shannon-boltzmann-practical.md).

Handouts:

- [`handouts/worksheet2-dialogue-template.md`](handouts/worksheet2-dialogue-template.md) — typed dialogue (exactly 10 exchanges; `### User` / `### LLM` under each)
- [`handouts/worksheet2-reflection-proforma.md`](handouts/worksheet2-reflection-proforma.md) — pandoc source for the printable handwritten form
- [`handouts/worksheet2-reflection-template.md`](handouts/worksheet2-reflection-template.md) — student instructions for the scan

Released 20 October (lecture 2). Due Tuesday 3 November 2026, 10:00 (start of lecture 4).

**Subject:** are Shannon's $H$ and Boltzmann's $S$ the same mathematical object, or a metaphor / analogy? What must be true for identity of form?

**Mandated opening:** exchange 1 curiosity (equivalence claim); exchange 2 skepticism (sample space, discrete vs continuous, what $p$ is over, equilibrium / $Z$ / $F=U-TS$ if raised). Exchanges 3–10 free within suggested directions.

**Tools:** Students may use any materials or LLMs while planning. The submitted dialogue must be one continuous conversation with a single model; YAML records that model's name and version only.

Submit as **two separate** Moodle uploads. Filenames and form fields use CRSid (not full name):

- `L172_<CRSid>_worksheet2_dialogue.md` — exactly ten exchanges (`### User` then `### LLM`)
- `L172_<CRSid>_worksheet2_reflection.pdf` — scan of the handwritten proforma

Build the proforma PDF with:

```bash
cd assessments/handouts
pandoc worksheet2-reflection-proforma.md -o worksheet2-reflection-proforma.pdf
```

## Marking Guidance

Total 15 marks, reported as a percentage of the worksheet.

- **Curiosity (5):** Exchange 1 and later open questions invite substantive explanation of the $H$/$S$ claim; not trivia or yes/no.
- **Skepticism (5):** Exchange 2 presses identity versus metaphor; later turns chase assumptions (alphabet, continuous limit, meaning of $p_i$, equilibrium).
- **Reflection (5):** Handwritten; clear learning about $H$ versus $S$ and about the model's limits; notes evolution of the LLM habit since Worksheet 1 where relevant. Typed reflections are not accepted.

Grade-band reading of the whole:

- **60–74%**: Ten turns present; mandated pair attempted; some curiosity and at least thin skepticism; reflection restates the dialogue.
- **75–79%**: Clear arc from equivalence claim to a concrete assumption (e.g. discrete alphabet, equilibrium, or what $p$ is over); reflection names a tension.
- **80–89%**: Later probes expose a non-obvious inconsistency (differential entropy, units/$k$, free-energy bookkeeping); reflection connects to the course theme.
- **90–100%**: Dialogue and reflection together show original synthesis not present in the model's answers alone.
