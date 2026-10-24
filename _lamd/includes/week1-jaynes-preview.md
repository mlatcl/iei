\ifndef{weekOneJaynesPreview}
\define{weekOneJaynesPreview}

\subsection{Preview: From Insufficient Reason to MaxEnt}

\figure{\includejpg{\diagramsDir/physics/e-t-jaynes}{30%}}{E. T. Jaynes. Maximum entropy is the modern writing of Laplace's principle of insufficient reason.}{week1-jaynes}

\slidesincremental{
* Laplace assigns probability to ignorance; he does not yet write entropy
* Insufficient reason: if nothing distinguishes the outcomes, set them equal
* Jaynes: that assignment is maximum entropy [@Jaynes-probability03]
* Week 5 is the derivation; today it is a pointer
}

\notes{Laplace's gremlin is uncertainty from ignorance --- of data, of law, of compute. He had a rule for turning that ignorance into a distribution: the principle of insufficient reason. If $n$ outcomes are mutually exclusive and nothing distinguishes them, take $p_i = 1/n$. He never wrote that rule in the language of entropy. Jaynes, who read Laplace hard, did: the principle of maximum entropy is the modern form of insufficient reason [@Jaynes-probability03]. Laplace stayed with probability. One of the arguments of this course is that entropy lets us make declarations about what will not happen that probability, used alone, does not. Week 5 is where we derive the occupation. Do not do Lagrange multipliers today.}

\notes{A question from the first delivery: what about uncertainty about the specification itself --- the risks you cannot even name? Dennis Lindley argued that you integrate that level out and it propagates. I believed that for a long time. I am less sure it is that simple. Anders Hansen, in mathematics here, has written about the need for an "I do not know" that current LLMs lack. Those are pointers, not this week's work.}

\speakernotes{Do not include the sunrise problem or the full insufficient-reason snippet. That is Week 5.}

\endif
