---
layout: lecture-home
title: How this course uses generative AI
permalink: /ai/
---

MIT's [August 2026 report on AI and education](https://aiandeducation.mit.edu/report/) asks instructors to say, plainly, how they use generative AI, and to give students a policy with a reason attached. This page is that statement for L172. It describes my teaching practice, not a general theory of the tools.

The course already treats language models as objects of inquiry. Worksheets asks you to practice the *elenchus* of Socrates: curiosity first, then skepticism. This approach is inspired by my own habits, which are in turn coming from my best understanding of how we learn.

## What I use it for

I write and maintain this module in the course repository, with a coding assistant in the loop. The public history is the git log of [mlatcl/iei](https://github.com/mlatcl/iei). Typical jobs:

- **Drafting and restructuring notes.** Lecture sources live in `_lamd/` as LaMD. The assistant proposes cuts, moves overflow into the [parking lot](https://github.com/mlatcl/iei/blob/gh-pages/_lamd/parking.md), and compiles notes, slides, and notebooks. I decide what is taught, in what order, and when a later week must absorb what the room did not reach.
- **As-taught reconstruction.** After each Tuesday I work from the Panopto recording and a working transcript. The published notes for weeks 1–3 now follow what was said, including overrun, rather than just what was planned. I use AI assistants is useful for matching spoken blocks to slides and for rewriting the next week's opening. The judgement about what was actually taught is mine. I check modifications through pull requests back to the main material.
- **Machine reviews.** After reconstructing what was taught, I use language models to fact check the material. These clarifications are not presented on the slides, they are presented on the notes, and the nature of the fact check is not assessed. I have found that they catch real errors, either when I mis-remember, say the wrong name, have a failure of recall or misunderstand myself. Examples have included work of Kelvin attributed to Clausius, a four-stroke cycle named in the wrong order, a date that will not survive a primary source. They can also change my voice and sometimes introduce misplaced certainty. I treat those reviews the way the worksheets treat your interlocutor, with some skepticism.
- **Assessment plumbing.** The four worksheet briefs, the handwritten proformas, and the large in-class quiz pools have been drafted and grown with assistance, then edited. The quizzes you sit are invigilated and drawn from a private bank that is created in this way. I hand review each question before publishing it.
- **Course operations.** Site files, GitHub Pages, notebook smoke tests, the marking interface, and the discussion pages are maintained in the same repository. Generative AI is a fast clerk for that mechanical work.

None of this replaces the live two hours. I speak in FW26. The model does not. I am responsible for the material I share, the model is not.

The drafting and restructuring means that it can be that errors or hallucinations have slipped through (in a similar way to my own errors slipping through). If you spot something, you can use the edit links in the lectures to submit a pull request to fix it.

## What I do not use it for

I do not send your worksheets to a model for a mark. I use my own marking system, [`referia`](https://github.com/lawrennd/referia) to enter my own comments. It presents the dialogue and the scanned reflection; I score curiosity, skepticism, and the handwritten page myself. The YAML header on your dialogue records *your* model, so I can see which interlocutor you chose. That helps me feedback what I see the different models are doing.

I do not use a detector to police AI. The MIT report suggests that detectors start an arms race and punish the wrong people. The design here is different: the take-home work *requires* a model, and the invigilated quiz checks whether the ideas survived contact with you.

I do not treat a machine review as a substitute for reading the sources. When the review and the notes disagree, the next move is the paper, the recording, or the board, not another prompt.

I do use AI as a fast clerk to summarise the marks I have given so that I can give you generalised feedback on where answers were stronger or weaker.

## What I ask of you

The student-facing rule is already in lecture 1 and on the [assessment]({{ "/assessment/" | relative_url }}) page. In short:

| Setting | Generative AI |
|--------|----------------|
| Worksheets | Required as the interlocutor. Plan with any tools you like. Submit one continuous ten-turn conversation with a single named model, plus a handwritten reflection. Marks are for the quality of the probe, not for the model's prose. |
| In-class quizzes | Forbidden. Paper submission, ten minutes, no notes, no network, no models. These sit at the start of lectures 2, 4, 6 and 8. |
| Live lectures | No laptops. The room is conversation, notes, and the board. |

You are responsible for every claim you submit, including anything a model fabricated. The reflection is where you say what the model gave you and what it could not.

The worksheets have no AI-free variant, because the object of the exercise *is* the dialogue. The quizzes are the AI-free demonstration of the same outcomes, on a new example, under invigilation.

## Why this split

A language model  will give you a history of Shannon's footnote, a derivation of $F=U-TS$, or a confident date for Watt's engine. When pushed it can also give you the broader spectrum of opinion, particular where there are uncertainties. But it cannot dedicate its life to resolving those uncertainties, nor can it place a reputation on its conclusions.

We would like to treat superintelligence claims are to be treated the way the second law treats perpetual motion. What is the process of information accounting? What has been smuggled in as a free lunch? The Socratic approach is knowing that we don't know. Machine reviews of my notes is me applying it to my own drafts. The invigilated quiz is a reminder that there are some facts and they are worth learning.

This is my perspective, if you're interested in the departmental policy you can find it [here](https://www.cst.cam.ac.uk/files/ai_policy.pdf) (Faculty Board, October 2026). Course conveners set the module rules on the syllabus; this page and the assessment briefs are those rules for L172. The MIT report authors present a reflective and realistic perspective on how we might use and deploy AI. They call for AI policies with rationale, they warning against detectors, and they request that instructors share how they themselves work. This page is the last of those.

*Drafted from the L172 repository history with a coding assistant that had access to the repo and my chats, then edited by Neil D. Lawrence. 1 November 2026.*
