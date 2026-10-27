\ifndef{weekThreeHomeworkDebrief}
\define{weekThreeHomeworkDebrief}

\subsection{Homework from Weeks 1--2}

\notes{No quiz today --- the class test is next week, even if the webpage said otherwise on 27 October. Feedback on Worksheet 1 and Quiz 1, then the heat thread. Comments go by email; marks do not appear on these slides, and names do not either. The numbers below are cohort figures from the marked scripts. Laptops away for the rest of the course: notes by hand.}

\newslide{No Quiz Today}

\slides{Worksheet 1 and Quiz 1 are marked. Today we spend a few minutes on what the scripts showed, then finish Week 2.}

\slidesincremental{
* Comments already sent by email; 
* Quiz 1: fifteen papers from people who had Week 1; mean $8.2/10$
* Worksheet 1: thirteen scripts; mean $12.2/15$
}

\speakernotes{As taught 27 October this block ran about twenty-four minutes, 10:06--10:32. That is the debrief. Then the heat story, not Week-2 carry-over.}

\subsection{Quiz 1}

\notes{The paper was ten items on the Week 1 probability review and the energy / Boltzmann seeds. Matching and the two-state $Z$ were essentially clean. Two multi-select items were where most marks were lost.}

\newslide{Quiz 1: Where Marks Moved}

\slides{Mean $8.2/10$. Two items accounted for most of the misses.}

\slidesincremental{
* Demon versus gremlin: about three in five missed it
* Energy as a machine-learning score: about half got this wrong
* Entropy as limit versus probability as prescription: one in five
}

\notes{Named distributions, the multinomial, curiosity-then-skepticism, the two-state partition function, and Bayes needing likelihoods and priors were mostly all got correct (well done). Boltzmann weights and the sum/product rules had a smaller tail. The two ideas worth looking at again for some are demons and gremlins and energy-as-score.}

\newslide{Gremlin, Not Demon}

\slides{Maxwell's demon *sorts*. Laplace's gremlin is the admission that complete knowledge is not available in practice.}

\slidesincremental{
* The demon is an intelligent mechanism at a trap door
* The gremlin is not a mind in the box; it is a limit on what we can know
* Shannon's $H$, in an hour, is a calculus for that incomplete knowledge
}

\notes{Week 1 put both figures on the table, and the quiz asked you to keep them apart. A majority of papers mixed them. Maxwell's demon is a sorting intelligence that appears to drop the entropy of a gas. Laplace's demon is a predictive intelligence. Laplace's gremlin (Neil's invention) is about the practical impossibility of knowing the positions and momenta of every molecule as well as the rules and then doing the resulting computations. The gremlin is why we *need* a statistical description at all. That will also be the bridge into today's free-energy to entropy story. The word itself is from aircraft: in the First World War they blamed gremlins for things going wrong in the planes. Two demons, one gremlin.}

\newslide{Energy Is a Score}

\slides{In machine learning, energy is a preference: lower is more probable. }

\slidesincremental{
* $p_i \propto e^{-\beta E_i}$: the occupation from Week 1
* Quadratic loss and cross-entropy are energy-*like* objectives
* The word energy does not, by itself, buy you a heat bath
}

\notes{The other expensive item asked which of the Week 1 energy remarks actually hold for machine learning. Lower energy corresponds to a more preferred, more probable state. Quadratic loss and cross-entropy can be written as energy-like scores. What does *not* follow is that every use of the word energy in an ML paper is a valid thermodynamic internal energy, or that a heat bath has been specified. We will cover the relationship today. $\beta$ is inverse temperature, or coldness; Cole Palmer has a high $\beta$. From an entropic perspective coldness is the more natural parameter than $T$.}

\subsection{Worksheet 1}

\notes{Thirteen dialogues, marked 5 curiosity / 5 skepticism / 5 reflection. Cohort means: curiosity $4.4$, skepticism $4.2$, reflection $3.9$ on the twelve reflections present. The work was strong. The comments clustered on a few habits I want in the room before Worksheet 2, which is already out and due at the start of lecture 4.}

\newslide{Worksheet 1: The Habit}

\slides{Curiosity ran slightly ahead of skepticism. Reflection was where the conversation was least often turned back on itself.}

\slidesincremental{
* Mean $12.2/15$; the dialogues did the job
* Strongest work expanded after the first thread, then challenged without collapsing the chat
* Weaker work ratholed, or let the model agree and stop
}

\notes{Several dialogues pulled in material I had not put in the brief --- IAS, a Masters thesis, interviews, Schrödinger, the bandwagon paper, Markov chains and Kolmogorov complexity, the H-theorem versus Gibbs confusion, Jaynes on the observer. That is curiosity doing what it is for. The recurring gap was not ignorance of Shannon's footnote. It was how to keep a ten-turn chat moving *after* the first successful challenge.}

\newslide{The See-Saw}

\slides{A direct challenge is often met by sycophancy: the model agrees, and the conversation has nowhere to go.}

\slidesincremental{
* Concede the part you accept; then ask what follows
* Admitting "this may be my misunderstanding" denies the model the chance to merely please
* Grasshopper is not sycophantic ... the models are.
}

\notes{I used "see-saw" in the comments for a pattern that showed up across models: you contradict, it caves, you have won a turn and lost a thread. The Grasshopper in Suits does not fold when Skepticus objects. Current chat models are trained to satisfy. Intellectual judo --- stating the point of agreement in your own words, or framing the objection as a possible misunderstanding --- kept the better dialogues in motion. Long, specific prompts also helped; they give the model less room to treat the last user turn as a verdict to submit to.}

\speakernotes{Live: one sentence of see-saw, then the judo alternative. Do not quote a student. Gemini Flash came up in several scripts as shorter and more usable than a larger model; mention as a cohort observation, not a ranking of students.}

\newslide{Expand, Then Return}

\slides{Once a thread is established, step back. Ten turns is enough to open a second front and still close.}

\slidesincremental{
* Early precision is good; staying there for six turns is not
* State the model's point in your prompt, then ask the adjacent question
* Smaller models sometimes left more to work with than verbose ones
}

\notes{A few dialogues got a precise definition and then spent the remaining turns litigating it. Push-back is the skepticism mark, but remaining in the same hole for five turns is rat-holing! The dialogues that recovered did something simple: after pushing for two or three exchanges they changed the question, taking what had been established as a premise. Model choice also mattered. Gemini Flash, in several scripts, gave shorter answers that were easier to steer than a larger, more fluent model. Claude models were a little too verbose which made it easy to point out a flaw and end up see-sawing. DeepSeek, in one case, had to be led by the hand. The reflection is the place to say *why* you stayed with the model you stayed with --- several reflections missed that.}

\newslide{Who Made Entropy Uncertainty?}

\slides{Clausius did not. A question most chats approached and few quite landed.}

\slidesincremental{
* Clausius: a thermodynamic accounting identity
* Uncertainty as entropy is already in the statistical tradition --- Boltzmann, Gibbs, then Wiener's "ignorance"
* Shannon's footnote is Tolman, not the cocktail-party story
}

\notes{This was the probe I kept writing in the comments. If Shannon's $H$ is "entropy as uncertainty," someone in physics must already have treated entropy that way, or Shannon (and Wiener) did it independently. It is not in Clausius. It *is* in the Boltzmann--Gibbs statistical reading, and Wiener is explicit that his information comes from a Gibbsian theory of ignorance. Whether Wiener and Shannon had that conversation before 1948 is a historical question the models will fluently invent. Primary sources still beat that attempt at fluency. Shannon footnotes Tolman; he credits Wiener in another footnote; the von Neumann cocktail party seems to be later folklore. Worksheet 2 asks a sharper version of the same issue: once the *name* is granted, is $H$ the same mathematical object as $S$, or a metaphor?}

\speakernotes{This slide is the hinge. Do not derive $H$ here. Later in the hour we go back to heat, starting with Joseph Black, to see what Clausius *was* solving.}

\newslide{Worksheet 2 Is Already Out}

\slides{Same habit, different claim: is Shannon's $H$ Boltzmann's $S$, or an analogy?}

\slidesincremental{
* Due 10:00 at the start of lecture 4 (3 November)
* Open on the equivalence; then press sample space, discrete vs continuous, what $p$ is over
* Use the see-saw lesson: concede, then move. Do not rathole on the first definition.
}

\notes{Worksheet 2 was released in Week 2. The brief is in the notes from that session and on the course site. Ten turns, one continuous conversation, one declared model; handwritten reflection on the proforma. The subject is no longer why Shannon *named* the quantity, but what the naming *claims*. If the model says identity of form, ask what must be true of the sample space. If it says metaphor, ask what the metaphor licenses. Reflection should include how the inquiry habit has changed since Worksheet 1 --- that was the weakest of the three marks this round, and it is explicitly in the W2 rubric.}

\speakernotes{One minute. Point at the course page rather than re-reading the brief. Then: finish Week 2.}

\endif
