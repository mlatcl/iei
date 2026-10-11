---
title: "Worksheet 1: Socratic Dialogue on the History of Entropy"
practical: 1
week: 1
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
  Explore the history of the word *entropy* — why Shannon used it, what
  he cited, and where Wiener and Gibbs fit — by acting as Socrates with
  an LLM. Mandated opening pair, then your own probes. Submit one
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

\notes{Submit on Moodle as **two separate uploads**, anonymously:

1. Dialogue (typed markdown): `candidatenumber_worksheet1_dialogue.md`
2. Reflection (scan of handwritten proforma): `candidatenumber_worksheet1_reflection.pdf`

Use the templates in `assessments/handouts/`. Do **not** put your name or CRSid on the files, in the YAML, or on the proforma.}

\notes{Quiz 1 at the start of lecture 2 checks the probability and entropy review from lecture 1 and ideas this worksheet asks you to press. You are *not* expected to derive Shannon's $H$ or free energy yet — that is lectures 2--3. You *are* expected to open a historical question sharply and notice when the model offers folklore instead of the primary source.}

\section{Role: You Are Socrates}

\notes{Large language models answer expansively. They are weak at sustained Socratic questioning. You take Socrates' role (*elenchus*: test consistency by questioning, not by lecturing).}

\notes{
1. **Curiosity** then **skepticism** — see the mandated opening pair below.
2. Submit **exactly ten** prompt/answer turns. Turns 1--2 are fixed in topic; turns 3--10 are yours.
3. **Planning is open; submission is one chat.** You may use any materials and any LLMs you like while planning or drafting. What you submit is only the **final** exchange: ten turns from **one continuous conversation** with a single model (do not stitch turns from different chats or sessions). In the YAML header, record that model's name and version (or exact model id). You need not list practice runs or other tools.
}

\section{Subject: Why Did Shannon Call It Entropy?}

\notes{The subject of this dialogue is the **history of the name** --- how information theory borrowed *entropy* from statistical mechanics, and which intellectual trail that word actually follows. Lecture 1 gave you Shannon's bit as a unit and the course theme (entropy forbids; probability prescribes). Use those. Do not treat this as a quiz on Boltzmann weights; treat it as an inquiry into where the shared mathematics and the shared *word* come from.}

\subsection{Mandated Opening Pair}

\notes{**Exchange 1 --- Curiosity.** Ask why Shannon called his measure of information *entropy*. Let the model give a full answer. (Many models default to the von Neumann cocktail-party anecdote. That is useful raw material --- not the end of the inquiry.)}

\notes{**Exchange 2 --- Skepticism.** Press the answer against the primary source. In *A Mathematical Theory of Communication* (1948), when Shannon identifies $H=-\sum_i p_i\log p_i$ with statistical-mechanics entropy, he footnotes **Tolman**, *Principles of Statistical Mechanics* --- not von Neumann, and not Wiener. Challenge the model: if the naming story is von Neumann, what does the footnote actually do? Where does **Norbert Wiener** fit? Wiener's ideas about information grew from a ``theory of ignorance'' inspired by **Gibbs**. Did Wiener already talk about Gibbs entropy? Why then is the cocktail-party story the default answer?}

\notes{You need not quote the paper from memory. You *do* need to put the footnote and the Wiener--Gibbs trail into the dialogue and refuse to let the model stop at the anecdote.}

\subsection{Suggested Directions for Exchanges 3--10}

\notes{After the opening pair, choose a thread and keep pressing. Suggestions (pick one or mix):

* What did Wiener think entropy *was*? Where did he get the idea (Gibbs, continuous phase-space entropy, ``ignorance'')?
* How does Shannon's move differ from Wiener's --- discrete distributions, stripping *context*, making information fungible?
* Boltzmann's $H$-theorem versus Gibbs's ensemble entropy: which formulation is Shannon pointing at via Tolman?
* Is calling $H$ ``entropy'' a metaphor, an analogy, or an identity of mathematical form? What would have to be true for each reading?
* Does the model treat entropy as a **no-go** (what you cannot do) or as a **recipe** (what you should do) --- and which half of the course theme does the historical story miss?
* Optional later turns: connect back to lecture 1's seed $p_i=e^{-\beta E_i}/Z$ --- is that the same $H$, a different operational reading, or a confusion the model introduces?

Lecture 2 will account for free energy $F=U-TS$; lecture 3 will derive Shannon's $H$ and the Wiener--from--Gibbs line more carefully. Your job this week is to *open* those questions, not to settle them.}

\section{What to Submit}

\notes{
* **Dialogue** (markdown template): YAML frontmatter (including LLM name and version) + exactly ten Prompt/Answer pairs from one continuous conversation (exchanges 1--2 on the mandated topic).
* **Reflection** (handwritten): print the proforma, write about 300 words by hand, scan to PDF. What did the exchange teach you about the history of the word and about the model's habits? Where was it strong or thin? No-go versus recipe?
}

\section{Marking}

\notes{
* **Curiosity (5):** quality of opening and exploratory prompts --- does exchange 1 invite a substantive naming story rather than yes/no trivia? Do later open questions keep the inquiry alive?
* **Skepticism (5):** quality of probes --- does exchange 2 press folklore against Tolman / Wiener / Gibbs? Do later turns chase consequences or missing assumptions?
* **Reflection (5):** insight into what the exchange taught you about the subject *and* about the model's limits (handwritten; typed reflections are not accepted).
}

\section{Submission}

\notes{Upload both files to Moodle by 10:00 on Tuesday 20 October (start of lecture 2). Filenames use your **candidate number** only. The dialogue and the scanned reflection are separate submission items.}
