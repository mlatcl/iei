---
title: "Worksheet 4: LLM Dialogue on the Good Regulator and General Intelligence"
practical: 4
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
date: 2026-12-01
released: 2026-11-17
venue: FW26, William Gates Building
abstract: >
  Before the lecture develops the Good Regulator Theorem, ask an LLM what
  that theorem is and how it relates to modern notions of general
  intelligence. Then act as Skepticus: press existence claims, weak models,
  and AGI slogans against what the model actually said.

  Submit one ten-turn transcript and a handwritten reflection.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO12, LO13]
duration_hours: 3
type: practical
assessment_id: W4
weight: 15
due_week: 8
word_count: 300
---

\section{Worksheet 4}

\notes{Released in lecture 6 (17 November). Due by 10:00 at the start of lecture 8 (1 December), *before* Quiz 4. Estimated three hours. This worksheet is 15% of the module mark (5 curiosity + 5 skepticism + 5 reflection).}

\notes{**Start Exchange 1 before the Good Regulator is taught.** Lecture 6 gave only a two-minute Good Regulator pointer (as taught; Shannon / DPI / $D,S,A,Z$ diagrams were not walked). Lecture 7 develops the GRT overview and goal measure; Lecture 8 after Quiz 4 is unassessed synthesis. Do not wait for those blocks, and do not read ahead in the notes to ``get the right answer.'' The point of this worksheet is that your *first* encounter with the theorem is through the LLM, under curiosity then skepticism. Later lectures will supply the careful statement and the two caveats --- use those to refine later turns and the reflection, not to replace Exchange 1.}

\notes{Submit on Moodle as **two separate uploads**. Use your CRSid in the filenames and on the forms:

1. Dialogue (typed markdown): `L172_<CRSid>_worksheet4_dialogue.md` — start from the [dialogue template](https://github.com/mlatcl/iei/blob/gh-pages/assessments/handouts/worksheet4-dialogue-template.md) ([raw download](https://raw.githubusercontent.com/mlatcl/iei/gh-pages/assessments/handouts/worksheet4-dialogue-template.md)).
2. Reflection (scan of handwritten proforma): `L172_<CRSid>_worksheet4_reflection.pdf` — print the [handwritten reflection proforma (PDF)](https://mlatcl.github.io/iei/assessments/handouts/worksheet4-reflection-proforma.pdf).

Put your CRSid in the dialogue YAML and on the reflection proforma. Do *not* write your full name.}

\notes{*Note:* Quiz 4 at the start of lecture 8 will check related material under invigilation on a *new* example that does not reuse this worksheet's setups. You are *not* expected, in Exchange 1, to already know $H(A\mid S)=0$, the weak-model caveat, or the predictability-versus-desirability caveat. You *are* expected to open a sharp question about the Good Regulator and general intelligence, then notice when the model offers a slogan, a stronger claim than the theorem supports, or a collapse into Ashby's requisite variety.}

\section{Role: You Are Skepticus}

\notes{Large language models tend to give expansive answers to questions. This makes them very poor Socratic tutors; they are weak at sustained Socratic questioning.[^elenchus] As in Worksheets 1--3, take the role of a skeptical questioner --- Skepticus to the LLM's Grasshopper.

[^elenchus]: *elenchus* tests consistency by questioning, not by lecturing.}

\notes{
1. *Curiosity* then *skepticism*. An example opening pair is given below.
2. Submit *ten* prompt/answer turns. Turns 1--2 follow the mandated topic; turns 3--10 are yours.
3. *Planning is open*. You may use any materials or LLMs while planning. The submitted file must be the *final* exchange: ten turns from *one continuous conversation* with a *single* model. Do not stitch chats or switch models mid-file. Record that model's name and version in the YAML header.
}

\section{Subject: the Good Regulator and general intelligence}

\notes{Modern talk of *general intelligence* often claims that a system which can model the world well enough can regulate it --- plan, act, and succeed across domains. Conant and Ashby's Good Regulator Theorem is frequently recruited into that story, sometimes under the slogan ``every good regulator of a system must be a model of that system.'' Your job is to find out what an LLM says that slogan *means*, and whether the meaning it offers can support claims about AGI.}

\notes{Models often collapse three different ideas: Ashby's *requisite variety* (you need enough variety in the regulator), Conant--Ashby's *existence* result about entropy-minimising policies, and contemporary claims about world-models and general agents. Use the dialogue to keep those apart.}

\subsection{Topic to Explore}

\notes{*Opening --- Exchange 1 (curiosity).* Ask what the Good Regulator Theorem is, and how it relates to modern notions of general intelligence. Let the model give a full answer. Do not steer it yet toward $H(A\mid S)=0$, caveats, or the course notes. Invite an explanation that connects the theorem (as the model understands it) to AGI, foundation models, world-models, or ``systems that can regulate any environment.''}

\notes{*Follow-up --- Exchange 2 (skepticism).* Press that answer. What exactly is being claimed: that a successful regulator *contains a rich model* of the system, or something weaker? If the model says ``must be a model,'' ask what ``model'' means operationally. If it links the theorem to AGI capability, ask which step turns an existence claim about policies into a guarantee of general intelligence. If it conflates the Good Regulator with requisite variety, ask it to separate them.}

\notes{*Later exchanges (3--10).* Some ideas for follow-up once the opening pair is done. You need not use all of them; pick a thread and keep pressing.

* Existence versus universality: the theorem says something about *optimal* regulators of a *given* regulation problem. Does that license claims about *general* intelligence across problems?
* What is regulated? Conant--Ashby minimise $H(Z)$. Is low entropy of the outcome the same as a desirable outcome?
* Weak ``model'': if $A=h(S)$ is enough to count as a model, does a constant action $A=a_0$ also count? When would optimality rule that out?
* Requisite variety versus Good Regulator: Ashby demands enough variety (or enough relevant mutual information); Conant--Ashby organise an optimal policy. Which one are AGI slogans actually using?
* Data-processing: can further processing of observations manufacture the missing information an agent needs? (DPI as a no-go; Week 7 states the moral; board proof stays enrichment.)
* World-models and foundation models: if a large model predicts tokens or pixels well, is that the sense of ``model'' in the theorem --- or a different claim altogether?
* Course theme: for each claim the LLM makes, is entropy a *no-go* or a *prescription*?

Once you get the hang of it, take the conversation in your own directions. After lecture 6's Good Regulator pointer (and Week 7's GRT overview / goal measure / Shannon--DPI statement), you may return for later turns or rewrite the submitted conversation --- but keep Exchange 1 as a genuine pre-lecture curiosity probe in spirit, and do not stitch different chats.}

\section{What to Submit}

\notes{
* **Dialogue** ([markdown template](https://github.com/mlatcl/iei/blob/gh-pages/assessments/handouts/worksheet4-dialogue-template.md)): YAML frontmatter (LLM name and version) + exactly ten exchanges from one continuous conversation. Under each `## Exchange N`, use `### User` then `### LLM`.

* **Reflection** ([handwritten proforma PDF](https://mlatcl.github.io/iei/assessments/handouts/worksheet4-reflection-proforma.pdf)): print the form, write up to 300 words by hand. What did the exchange teach you about the Good Regulator Theorem relative to claims about general intelligence? What did you learn about the model's way of linking cybernetic slogans to AGI? How does this relate to lecture 6's pointer and Week 7's GRT overview as you understand it? Has your sense of LLMs as tools of inquiry changed since Worksheet 3?
}

\section{Marking}

\notes{
* **Curiosity (5):** quality of Exchange 1 and later exploratory prompts; the inquiry stays alive beyond a single slogan about ``good regulators must model the system.''
* **Skepticism (5):** quality of probes that chase what ``model'' means, existence versus AGI capability, requisite variety versus Good Regulator, or predictability versus desirability; later turns press consequences, not slogans.
* **Reflection (5):** insight into the subject *and* the model's limits; notes evolution of your LLM habit since Worksheet 3 where relevant (handwritten; typed reflections are not accepted).
}

\section{Submission}

\notes{Upload both files to Moodle by 10:00 on Tuesday 1 December (start of lecture 8). Filenames follow `L172_<CRSid>_worksheet4_…` (dialogue `.md`, reflection `.pdf`). Use your **CRSid** in the YAML and on the proforma (not your full name). The dialogue and the scanned reflection are separate submission items. Quiz 4 follows immediately and will not reuse your examples.}
