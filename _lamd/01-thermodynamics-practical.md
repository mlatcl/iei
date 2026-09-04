---
title: "Worksheet 1: Socratic Dialogue on Boltzmann and Entropy"
practical: 1
week: 1
layout: practical
assignment: True
ipynb: False
reveal: False
transition: None
date: 2026-10-20
released: 2026-10-13
venue: FW26, William Gates Building
abstract: >
  Explore the Boltzmann distribution and entropy *before* lecture 2 by
  acting as Socrates in dialogue with an LLM: curiosity first, then
  skepticism. Submit one ten-turn transcript and a short reflection.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO1, LO2]
duration_hours: 3
type: practical
assessment_id: W1
weight: 15
due_week: 2
word_count: 300
---

\section{Worksheet 1}

\notes{Released after lecture 1 (13 October). Due by 10:00 at the start of lecture 2 (20 October). Estimated three hours. This worksheet is 15% of the module mark (5 curiosity + 5 skepticism + 5 reflection).}

\notes{Submit on Moodle, anonymously: `candidatenumber_worksheet1_dialogue.md` and `candidatenumber_worksheet1_reflection.md`. Use the template provided. Do **not** put your name or CRSid on the files or in the YAML.}

\notes{Quiz 1 at the start of lecture 2 checks the probability and entropy review from lecture 1 and the seeds this worksheet asks you to press.}

\section{Role: You Are Socrates}

\notes{Large language models answer expansively. They are weak at sustained Socratic questioning. You take Socrates' role (*elenchus*: test consistency by questioning, not by lecturing).}

\notes{
1. **Curiosity.** Open with a genuine question about Boltzmann weights, temperature / $\beta$, entropy, or free energy. Let the model give a long answer.
2. **Skepticism.** Take a portion of that answer and press it: "If that were true, then…" / "But doesn't that contradict…" / "What would have to be false for this to fail?"
3. Aim for about **ten** prompt/answer turns in the submitted chain. Early turns open; later turns probe.
4. You may try several LLMs. Submit **one** conversation only. Record the model in the YAML header.
}

\section{Seed Material (Enough to Start)}

\notes{From lecture 1 you have:

* Product / sum / Bayes; Bernoulli, binomial, Poisson, multinomial, Gaussian.
* Shannon entropy (review): $H(p)=-\sum_i p_i\log p_i$ (bits or nats).
* Theme: entropy forbids; probability prescribes.
* Seed formula: $p_i = e^{-\beta E_i}/Z$ with $Z=\sum_i e^{-\beta E_i}$ and coldness $\beta=1/kT$.

Lecture 2 will derive and account for free energy $F=U-TS$. This worksheet is exploration *before* that lecture. You are not expected to know the full derivation yet — you are expected to ask sharp questions and notice when the model is vague, circular, or conflates thermodynamic entropy with Shannon $H$.}

\section{What to Submit}

\notes{
* **Dialogue** (template): YAML frontmatter + ten Prompt/Answer pairs.
* **Reflection** (~300 words): what you learned; where the model was strong; where it was thin or inconsistent; whether entropy was treated as a no-go or a recipe.
}

\section{Marking}

\notes{
* **Curiosity (5):** quality of opening and exploratory prompts — do they invite substantive explanation rather than yes/no trivia?
* **Skepticism (5):** quality of probes — do later turns press consequences, contradictions, or missing assumptions?
* **Reflection (5):** insight into what the exchange taught you about the subject *and* about the model's limits.
}

\section{Submission}

\notes{Upload both files to Moodle by 10:00 on Tuesday 20 October (start of lecture 2). Filenames use your **candidate number** only.}
