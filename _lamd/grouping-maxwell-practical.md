---
title: "Worksheet 3: LLM Dialogue on Coarse-Graining Maxwell"
practical: 3
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
date: 2026-11-17
released: 2026-11-03
venue: FW26, William Gates Building
abstract: >
  After lecture 4 the demon is a choice of coarse graining, not a single
  puzzle. Act as Skepticus to an LLM: open with curiosity about where the
  missing entropy is allowed to sit, then press which description is legal
  for each compartment.

  Submit one ten-turn transcript and a handwritten reflection.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO4]
duration_hours: 3
type: practical
assessment_id: W3
weight: 15
due_week: 6
word_count: 300
---

\section{Worksheet 3}

\notes{Released after lecture 4 (3 November). Due by 10:00 at the start of lecture 6 (17 November). Estimated three hours. This worksheet is 15% of the module mark (5 curiosity + 5 skepticism + 5 reflection).}

\notes{Submit on Moodle as **two separate uploads**. Use your CRSid in the filenames and on the forms:

1. Dialogue (typed markdown): `L172_<CRSid>_worksheet3_dialogue.md` — start from the [dialogue template](https://github.com/mlatcl/iei/blob/gh-pages/assessments/handouts/worksheet3-dialogue-template.md) ([raw download](https://raw.githubusercontent.com/mlatcl/iei/gh-pages/assessments/handouts/worksheet3-dialogue-template.md)).
2. Reflection (scan of handwritten proforma): `L172_<CRSid>_worksheet3_reflection.pdf` — print the [handwritten reflection proforma (PDF)](https://mlatcl.github.io/iei/assessments/handouts/worksheet3-reflection-proforma.pdf).

Put your CRSid in the dialogue YAML and on the reflection proforma. Do *not* write your full name.}

\notes{*Note:* This worksheet presses lecture 4 as delivered: grouping $H=H(w)+\sum_i w_i H(p_i)$, the missing measure $m$, Maxwell's demon as compartments and two ledgers (number and energy), and the named fork. You are *not* expected to derive Landauer's bound, run Szilard's engine, or treat information geometry. Those subjects come later or sit in parking. You *are* expected to say which coarse graining is legal for each compartment, and what entropy that description may claim.}

\section{Role: You Are Skepticus}

\notes{Large language models tend to give expansive answers to questions. This makes them very poor Socratic tutors; they are weak at sustained Socratic questioning.[^elenchus] As in Worksheets 1 and 2, take the role of a skeptical questioner — Skepticus to the LLM's Grasshopper.

[^elenchus]: *elenchus* tests consistency by questioning, not by lecturing.}

\notes{
1. *Curiosity* then *skepticism*. An example opening pair is given below.
2. Submit *ten* prompt/answer turns. Turns 1–2 follow the mandated topic; turns 3–10 are yours.
3. *Planning is open*. You may use any materials or LLMs while planning. The submitted file must be the *final* exchange: ten turns from *one continuous conversation* with a *single* model. Do not stitch chats or switch models mid-file. Record that model's name and version in the YAML header.
}

\section{Subject: where can the entropy sit?}

\notes{Lecture 4 left Maxwell's demon as a fork, not a resolution. The two ledgers (particle flux and energy flux) do not close if every compartment is Maxwellian all the way to the gate. The next move is to coarse-grain Maxwell: which description you are allowed to write for each compartment, and what entropy each description may claim.

The lecture named four families. They are different books, not competing slogans:

1. *Illegal coarse graining.* Maxwellians all the way to $v_\star$. Particle-flux balance and energy-flux balance cannot hold together.
2. *Physical trapdoor.* The door is a degree of freedom in the same bath; it thermalises (Smoluchowski 1914).
3. *Memoryful policy.* The record fills; erasure is on the ledger (Szilard 1929; Landauer 1961).
4. *One ensemble for the whole box.* Sorting is a fluctuation, not a cycle (Maxwell, *Theory of Heat*).

Your job is to test whether the model's account of the demon is a legal coarse graining, an illegal Maxwellian-at-the-gate, or a slogan that never says where the entropy sits.}

\notes{Models often collapse the demon into a single fluent story (usually Landauer, sometimes "information is physical"). Use the dialogue to expose which compartments that story is describing, and whether both ledgers close.}

\subsection{Topic to Explore}

\notes{*Opening.* Ask where the missing entropy is allowed to sit once the demon is drawn as compartments. Invite a full explanation of why a selective membrane at $v_\star$ looks like a second-law violation. Let the model commit to a location: the gate, the record, the trapdoor, the whole-box fluctuation, or somewhere else.}

\notes{*Follow ups.* Some ideas for follow up. If the left and right *bulks* are locally Maxwellian, what is the kinetic layer at the membrane --- a group of the same kind, or a different description? Can number current and energy current both vanish in a closed box if every velocity at the gate is drawn from a bulk Maxwellian? If the model invokes Landauer, ask which physical degree of freedom is the memory, and what happens if there is no record. If it invokes a trapdoor, ask whether the door is in the same bath. If it refuses compartments, ask what Maxwell meant by a being who handles individual molecules. For each family: what does entropy *forbid*, and what does the coarse graining *prescribe*?}

\notes{* Illegal Maxwellian-to-gate versus local equilibrium in the bulks only: which $H(\pi_i)$ are you allowed to write?
* Two ledgers: flux balance of $N$ versus flux balance of $U$. Detailed balance of velocities is a stronger claim; does the model notice?
* Smoluchowski's trapdoor / Feynman's pawl: mechanism in the bath, not a notebook.
* Szilard / Landauer: one bit of a sorting policy; erasure cost. Does that story apply to an autonomous membrane with no record?
* Maxwell's own statistical second law: sorting as a fluctuation of one ensemble.
* Course theme: for each family, is entropy a no-go or a recipe?}

\section{What to Submit}

\notes{
* **Dialogue** ([markdown template](https://github.com/mlatcl/iei/blob/gh-pages/assessments/handouts/worksheet3-dialogue-template.md)): YAML frontmatter (LLM name and version) + exactly ten exchanges from one continuous conversation. Under each `## Exchange N`, use `### User` then `### LLM`.

* **Reflection** ([handwritten proforma PDF](https://mlatcl.github.io/iei/assessments/handouts/worksheet3-reflection-proforma.pdf)): print the form, write up to 300 words by hand. What did the exchange teach you about which coarse graining is legal? What did you learn about the model's way of locating the missing entropy? How does this relate to lecture 4 as you understand it? Has your sense of LLMs as tools of inquiry changed since Worksheet 2?
}

\section{Marking}

\notes{
* **Curiosity (5):** quality of opening and later exploratory prompts; the inquiry stays alive beyond a slogan about Landauer or "information is physical".
* **Skepticism (5):** quality of probes that chase compartments, ledgers, and which description is legal; later turns press consequences, not slogans.
* **Reflection (5):** insight into the subject *and* the model's limits; notes evolution of your LLM habit since Worksheet 2 where relevant (handwritten; typed reflections are not accepted).
}

\section{Submission}

\notes{Upload both files to Moodle by 10:00 on Tuesday 17 November (start of lecture 6). Filenames follow `L172_<CRSid>_worksheet3_…` (dialogue `.md`, reflection `.pdf`). Use your **CRSid** in the YAML and on the proforma (not your full name). The dialogue and the scanned reflection are separate submission items.}
