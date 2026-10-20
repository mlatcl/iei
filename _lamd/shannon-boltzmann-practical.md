---
title: "Worksheet 2: LLM Dialogue on Shannon H and Boltzmann S"
practical: 2
layout: practical
assignment: True
notespdf: True
tex_template: exercise
posts: True
ipynb: False
reveal: False
docx: False
pptx: False
transition: None
notation: talk-notation.tex
date: 2026-11-03
released: 2026-10-20
venue: FW26, William Gates Building
abstract: >
  Are Shannon's $H$ and Boltzmann's $S$ the same mathematical object, or a
  metaphor? Act as Skepticus to an LLM: open with curiosity about the claimed
  equivalence, then press what must be true for identity of form versus analogy.

  Submit one ten-turn transcript and a handwritten reflection.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO2, LO3]
duration_hours: 3
type: practical
assessment_id: W2
weight: 15
due_week: 4
word_count: 300
---

\section{Worksheet 2}

\notes{Released after lecture 2 (20 October). Due by 10:00 at the start of lecture 4 (3 November). Estimated three hours. This worksheet is 15% of the module mark (5 curiosity + 5 skepticism + 5 reflection).}

\notes{Submit on Moodle as **two separate uploads**. Use your CRSid in the filenames and on the forms:

1. Dialogue (typed markdown): `L172_<CRSid>_worksheet2_dialogue.md` — start from the [dialogue template](https://github.com/mlatcl/iei/blob/gh-pages/assessments/handouts/worksheet2-dialogue-template.md) ([raw download](https://raw.githubusercontent.com/mlatcl/iei/gh-pages/assessments/handouts/worksheet2-dialogue-template.md)).
2. Reflection (scan of handwritten proforma): `L172_<CRSid>_worksheet2_reflection.pdf` — print the [handwritten reflection proforma (PDF)](https://mlatcl.github.io/iei/assessments/handouts/worksheet2-reflection-proforma.pdf).

Put your CRSid in the dialogue YAML and on the reflection proforma. Do *not* write your full name.}

\notes{*Note:* This worksheet presses lectures 2–3 (free energy as context; Shannon $H$; Boltzmann $S=kH$; the partition function as a generating function). You are *not* expected to explore MaxEnt optimisers or treat Maxwell's demon in detail. Those subjects come later. You *are* expected to open the equivalence claim sharply and notice when the model smuggles assumptions (equilibrium, discrete alphabet, what the probability is over).}

\section{Role: You Are Skepticus}

\notes{Large language models tend to give expansive answers to questions. This makes them very poor Socratic tutors; they are weak at sustained Socratic questioning.[^elenchus] As in Worksheet 1, take the role of a skeptical questioner — Skepticus to the LLM's Grasshopper.

[^elenchus]: *elenchus* tests consistency by questioning, not by lecturing.}

\notes{
1. *Curiosity* then *skepticism*. An example opening pair is given below.
2. Submit *ten* prompt/answer turns. Turns 1–2 follow the mandated topic; turns 3–10 are yours.
3. *Planning is open*. You may use any materials or LLMs while planning. The submitted file must be the *final* exchange: ten turns from *one continuous conversation* with a *single* model. Do not stitch chats or switch models mid-file. Record that model's name and version in the YAML header.
}

\section{Subject: is Shannon's $H$ the same as Boltzmann's $S$?}

\notes{Worksheet 1 asked why Shannon *named* his measure entropy. This worksheet asks what the naming *claims*. Lecture 3 states a formal equivalence: Shannon $H=-\sum_i p_i\log p_i$ and Boltzmann / Gibbs entropy share the same functional form (up to Boltzmann's constant $k$). The course theme still applies: entropy forbids; probability prescribes. Your job is to test whether the model's account of that equivalence is identity of mathematics, analogy, or metaphor — and what each reading would require.}

\notes{Models often collapse the claim into a single fluent story. Use the dialogue to expose what has been assumed about the sample space, the meaning of $p_i$, equilibrium, and units.}

\subsection{Topic to Explore}

\notes{*Opening.* Ask whether Shannon's $H$ and Boltzmann's $S$ are the same quantity. Invite a full explanation of the claimed equivalence (including the factor $k$ if the model mentions it). Let the model commit to a position: identity, analogy, or metaphor.}

\notes{*Follow ups.* Some ideas for follow up. What has to be true for *identity of mathematical form*? What fails if the alphabet is continuous (differential entropy)? What is the probability *over* in each tradition, i.e. microstates of a physical system, symbols of a code, or beliefs of an agent? If the model invokes the partition function $Z$ or free energy $F=U-TS$, ask whether those steps assume equilibrium, and whether Shannon's channel setting assumes the same. What is the meaning of equilibrium for Shannon? How does dynamics appear in the two cases. What is Boltzmann's $H$.}

\notes{* Discrete $H\in[0,\log n]$ versus differential entropy (can be negative): does the equivalence survive the continuous limit, or only KL-style relative entropy?
* Lectures 1--2 called Maxwell--Boltzmann ``Gaussian.'' For which variable is that true (component $v_x$ versus speed $v$)? Does the $H$ versus $S$ story survive a change from $v_x$ to $v$, or only relative entropy against a reference measure?
* Partition function as generating function: if $U=-\partial\log Z/\partial\beta$, is that a thermodynamic fact, an information-theoretic fact, or a shared calculus?
* Free energy $F=U-TS$: is the subtraction *the same move* as writing available information after an entropic no-go — or a physics-only bookkeeping device?
* Course theme: for each reading (identity / analogy / metaphor), what does entropy *forbid*, and what does $p$ *prescribe*?
* How (if at all) does this week's account improve on, or conflict with, the naming story you pressed in Worksheet 1?}

\section{What to Submit}

\notes{
* **Dialogue** ([markdown template](https://github.com/mlatcl/iei/blob/gh-pages/assessments/handouts/worksheet2-dialogue-template.md)): YAML frontmatter (LLM name and version) + exactly ten exchanges from one continuous conversation. Under each `## Exchange N`, use `### User` then `### LLM`.

* **Reflection** ([handwritten proforma PDF](https://mlatcl.github.io/iei/assessments/handouts/worksheet2-reflection-proforma.pdf)): print the form, write up to 300 words by hand. What did the exchange teach you about $H$ versus $S$? What did you learn about the model's way of presenting the equivalence? How does this relate to lectures 2–3? Has your sense of LLMs as tools of inquiry changed since Worksheet 1?
}

\section{Marking}

\notes{
* **Curiosity (5):** quality of opening and later exploratory prompts; the inquiry stays alive beyond a yes/no on equivalence.
* **Skepticism (5):** quality of probes that chase assumptions (sample space, continuous vs discrete, equilibrium, what $p$ is over); later turns press consequences, not slogans.
* **Reflection (5):** insight into the subject *and* the model's limits; notes evolution of your LLM habit since Worksheet 1 where relevant (handwritten; typed reflections are not accepted).
}

\section{Submission}

\notes{Upload both files to Moodle by 10:00 on Tuesday 3 November (start of lecture 4). Filenames follow `L172_<CRSid>_worksheet2_…` (dialogue `.md`, reflection `.pdf`). Use your **CRSid** in the YAML and on the proforma (not your full name). The dialogue and the scanned reflection are separate submission items.}
