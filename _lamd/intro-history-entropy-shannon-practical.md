---
title: "Worksheet 1: LLM Dialogue on the History of Entropy"
practical: 1
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
date: 2026-10-20
released: 2026-10-13
venue: FW26, William Gates Building
abstract: >
  Explore the history of the word *entropy*. Whiy did Shannon use it? What
  did he cite as inspiration? Where do Norbert Wiener and Willard Gibbs fit in (if at all)? By acting as Skepticus to the LLM's grasshopper. We share a suggested opening pair of questions, be inspired by these to create your own probes. 
  
  Submit one
  ten-turn transcript and a handwritten reflection.
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

\notes{Submit on Moodle as **two separate uploads**. Moodle filenames use your CRSid (departmental convention); the file *contents* stay anonymous (candidate number only):

1. Dialogue (typed markdown): `L172_<CRSid>_worksheet1_dialogue.md`
2. Reflection (scan of handwritten proforma): `L172_<CRSid>_worksheet1_reflection.pdf`

Use the templates in `assessments/handouts/`. Do *not* put your name or CRSid in the YAML, on the proforma, or anywhere inside the files — candidate number only.}

\notes{*Note:* Quiz 1 at the start of lecture 2 will check your understanding of the probability and entropy review from lecture 1 as well as the ideas this worksheet asks you to press. You are *not* expected to derive Shannon's $H$ or free energy yet. You *are* expected to open a historical question sharply and notice when the model seems to offer folklore and how that relates to primary sources.}

\section{Role: You Are Skepticus}

\notes{Large language models tend to give expansive answers to question. This makes them very poor Socratic tutors, they are very weak at sustained Socratic questioning.[^elenchus] In response, we need you to take the role of a skeptical questioner, similar to Skepticus in Bernhard Suit's Grasshopper.

[^elenchus]: recall that *elenchus* requires us to test consistency by questioning, not by lecturing.}

\notes{
1. *Curiosity* then *skepticism*. An example is given with the suggested opening pair below.
2. Submit *ten* prompt/answer turns. Turns 1-2 are suggested below, turns 3-10 are over to you.
3. *Planning is open*. You can use any materials and any LLMs you like while planning your question sequence or testing a particular idea. But what you submit will be the *final* echange. That exchange will be ten turns from *one continuous conversation* with a single model. Do not stich turns from different chats. Do not switch model during the submitted chat. Your submission will have a YAML header. Use it to record the model's name and version (or exact model id). You need not list or share practice runs or other tools. You will only submit the final conversation.
}

\section{Subject: why did Shannon use the term entropy?}

\notes{The subject of this dialogue is the *history of the name*. How did information theory come to borrow *entropy* from thermodynamics? What was the intellectual trail that word followed. Lecture 1 gave you Shannon's bit as a unit and the course theme (entropy forbids; probability prescribes).}

\notes{Of course there are different interpretations of what happened, the imposition of a single narrative is known as narrative fallacy. You will be using this session to expose the narrative fallacies.}

\subsection{Suggesgted opening query}

\notes{*Exchange 1 - curiosity.* Ask why Shannon called his measure of information *entropy*. Let the model give a full answer. Many models default to a von Neumann cocktail-party anecdote. That is the raw material, not the end of the inquiry. You may have to vary your prompt to trigger the von Neumann anecdote.}

\notes{*Exchange 2 - skepticism.* Press the answer against the primary source. In *A Mathematical Theory of Communication* [@Shannon-info48], when Shannon identifies $H=-\sum_i p_i\log p_i$ with statistical-mechanics entropy, he footnotes **Tolman**, *Principles of Statistical Mechanics*. He cites von Neumann in passing and credits Wiener extensively in footnote 4. Challenge the model: if the naming story is von Neumann, why does the footnote credit Wiener so much? Where does *Norbert Wiener* fit?}

\notes{You will need to do some work with the original sources to get the most interesting story out. See below for some suggestions.}

\subsection{Suggested directions for later exchanges}

\notes{For additional context Wiener's ideas about information grew from a "theory of ignorance" inspired by *Gibbs*. Had Wiener already talked about Gibbs entropy with Shannon? Why then is the cocktail-party story the default answer?}

\notes{After the opening pair, choose a thread and keep pressing. Suggestions (pick one or mix).

* What did *Wiener* think entropy *was*? Where did he get the idea??
* How does Shannon's move differ from Wiener's. Think about continuous vs discrete distributions, stripping *context*, making information fungible?
* Boltzmann's $H$-theorem versus Gibbs's ensemble entropy: which formulation is Shannon pointing at via Tolman?
* Is calling $H$ "entropy" a metaphor, an analogy, or an identity of mathematical form? What would have to be true for each reading?

Once you get the hang of it, take the conversation in your own directions.}

\section{What to Submit}

\notes{
* **Dialogue** (markdown/frontmatter template): YAML frontmatter (including LLM name and version) + exactly ten exchanges from one continuous conversation (exchanges 1-2 on the mandated topic). Under each `## Exchange N`, use `### User` for your question and `### LLM` for the model's reply. Frontmatter is a format developed initially for the [Jekyll static website generator](https://en.wikipedia.org/wiki/Jekyll_(software)).

* **Reflection** (handwritten): print the proforma, write up to 300 words by hand as a reflection. Either submit as a scanned PDF, or hand in a copy at the start of the lecture. What did the exchange teach you about the history of the word? What did you learn about the model's way of presenting information? How does this relate to the course material as you understand it? Is the approach useful in developing your understanding of the topic? Or were there other techniques you used?
}

\section{Marking}

\notes{
* **Curiosity (5):** quality of opening and exploratory prompts.  Does the exchange invite demonstrate a good exploration of the naming story and related subjects? Do later open questions keep the inquiry alive?
* **Skepticism (5):** quality of skeptical probes. How does the stuent balance their learnings versus their questioning. Do later turns chase consequences or missing assumptions?
* **Reflection (5):** insight into what the exchange taught you about the subject *and* about the model's limits (handwritten; typed reflections are not accepted).
}

\section{Submission}

\notes{Upload both files to Moodle by 10:00 on Tuesday 20 October (start of lecture 2). Filenames follow `L172_<CRSid>_worksheet1_…` (dialogue `.md`, reflection `.pdf`). Inside each file, use your **candidate number** only. The dialogue and the scanned reflection are separate submission items.}
