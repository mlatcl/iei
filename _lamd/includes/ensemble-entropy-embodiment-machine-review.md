\ifndef{ensembleEntropyEmbodimentMachineReview}
\define{ensembleEntropyEmbodimentMachineReview}

A language-model review of the as-delivered L172 Week 2 session (20 October 2026). It is not assessed. Where the written notes have since been amended, the sources used are those listed at the end. The lecture is mostly sound on the mathematics, but the session as given had several factual errors in the history and some overstated physics. Its learning objectives are weaker than its content, and the course publishes no single textbook.

\subsubsection{Fact check}

**Errors to fix**

* **Eddington and Chandrasekhar.** The lecture has Chandrasekhar presenting privately to Eddington, who then says there "must be some natural law that prevents this abomination". The sources describe a public Royal Astronomical Society meeting on 11 January 1935. Eddington's documented remark was that there should be a law of Nature to prevent a star behaving in such an absurd way; "abomination" does not appear in those sources. Other problems with this passage:
  * The Chandrasekhar limit concerns white dwarfs. Beyond it, the end state is a neutron star or black hole, not simply "a singularity".
  * The claim that Eddington's faith in the second law drove his dismissal is speculation. One account says he did not directly refute Chandrasekhar's mathematics.
  * From the reviewer's own knowledge, not checked in this session: Eddington was at the Observatory and Chandrasekhar at Trinity, not the Cavendish.
* **Eddington's second-law quote.** The lecture says it comes at the beginning of his book. It sits around page 74, in the chapters on the second law, not in the opening.
* **Shannon, "$\sim 12$ bits per word".** This figure is 11.82 bits per word, from Shannon's later paper "Prediction and Entropy of Printed English" (1951), not the 1948 paper the lecture cites. It is also a crude word-frequency estimate (Zipf's law, no context). Shannon's context-based estimates are around one bit per letter, so true word entropy is much lower. That undermines the "$10$--$60$ bits/s" figure.
* **Embodiment table.** The human column does not compute as printed. At $2{,}000$ bits/min (about $33$ bits/s) and a billion calculations per second, communicating one second of computation takes about a year, not $5$ billion years. You need around $10^{18}$ calculations per second, so "a billion" is probably a lost "billion billion". The machine column ($20$ minutes) is plausible.
* **Chain rule.** The conditional entropy is mislabelled. It should read $H(X|Y) = -\sum P(X,Y)\log P(X|Y)$, not $H(Y|X)$. The later "Bayes' rule" identity is correct.
* **"What Bernoulli Assumes".** As delivered at the board the assumptions may have been missing. The written notes now list them.

**Overstated or needs hedging**

* **Boltzmann's suicide.** The lecture presents his struggle for acceptance as the cause. The Stanford Encyclopedia of Philosophy calls that a myth, attributing the suicide instead to depression and declining health. Other sources do link it to the controversy, so it is contested, not settled.
* **The second law as "proven".** Boltzmann himself held that entropy increases almost always, not always. The law is statistical and rests on assumptions, so "demonstrated mathematically" is too strong.
* **"Exactly represent the state" via volume, temperature and pressure.** These describe the macrostate, not the microstate. They are also not independent, because an equation of state links them.
* **$S = k_B H$.** This holds only for $H$ in nats, but the lecture computes in bits ($\log_2$). With bits it is $S = k_B \ln 2 \cdot H$.
* **The wheel example for "entropy forbids".** A frictionless wheel spinning forever does not violate the second law. What the law forbids is extracting work from a single heat reservoir. The example illustrates friction, and the course's central slogan is built on it.
* **Differential entropy.** The line about it being "needed" in the continuous case is muddled. KL divergence is the invariant quantity, and differential entropy is not.
* **Clausius.** The lecture's "Define" summary says he named entropy and stated the second law in 1865. He stated the law in the 1850s and coined "entropy" in 1865 (from the reviewer's own knowledge).
* **MacKay's thesis.** The wording suggests he introduced the Laplace approximation. He applied it to neural networks; he did not invent it.

**Checked and correct**

* The Maxwell--Boltzmann point: Cartesian velocity components are Gaussian, while speed picks up a $v^2$ factor.
* Differential entropy is not invariant under a change of variables, but KL divergence is.
* The Gaussian, binomial and Poisson entropy formulas.
* The height example: $\sigma^2 = 0.0225$ gives a peak density of about $2.7$ and a negative differential entropy of about $-0.69$ bits.
* The value of $k_B$.
* Boltzmann's 1877 paper and its reference details.
* The 1983 Nobel Prize for Chandrasekhar.
* The dates and the Perrin timeline.

The review did not check Lawrence's personal anecdotes (Aston, Cambridge, Rogers and Mayhew).

\subsubsection{Learning objectives}

The About page has one sentence: equip students to reason rigorously about entropy across thermodynamics, information theory and Bayesian inference, and to evaluate claims about intelligent systems using information-theoretic constraints. The Questions page cites "LO7", "LO10", "LO12" and "LO13", but no numbered outcome list appears on any page the reviewer read. That is a traceability gap.

Lecture 2's stated "Define this week" items are:

* how entropy was discovered;
* what Carnot and Clausius each contributed;
* the first cut of human bandwidth limits;
* continuous entropy versus relative entropy, named only.

Strengths:

* The two-stage define-then-interpret design is good.
* The class tests examine the applied form of these questions on a new example, not "What is $X$?".

Problems:

* **The content does not deliver the first two objectives.** Carnot and Clausius get one line in "Define This Week" and no teaching. Most of the page goes to Laplace, Bernoulli and the Eddington/Chandrasekhar story, which the objectives do not mention. The lecture admits it overran and pushed material into Week 3, which the Questions page itself describes as crowded.
* **The objectives are not measurable.** "What is $X$?" asks for recall. Better would be "distinguish microstate, macrostate and ensemble, and explain why an ensemble is a coarse-graining", or "compute entropy for Bernoulli, categorical and Gaussian distributions and explain why differential entropy is not invariant but KL is".
* **The embodiment objective rests on shaky numbers.** It is the link to the course's goal of evaluating claims about intelligent systems, but the Shannon figure and the table are wrong as noted above. Students should leave with defensible estimates and stated assumptions.
* **Opinion and settled result are blurred.** The lecture says the course is about opinion, yet the objective is rigorous reasoning. Labelling each claim as established, contested or the lecturer's thesis would help.
* **The prerequisites sit oddly with the content.** They say no physics is assumed, yet this lecture uses ensembles, Jacobian changes of variables and KL invariance.

\subsubsection{Textbook}

The course lists papers (Shannon, Jaynes, Landauer, Crooks, Amari and Nagaoka) and offers Cover and Thomas (2006) and MacKay (2003) as background, with a 2026 monograph by Welling, Lu and Holdijk as a supplement. The reviewer could not verify that monograph. No single book spans thermodynamics, information theory and information geometry, so a pairing:

1. **MacKay, *Information Theory, Inference, and Learning Algorithms* (2003).** It is the best fit for an ML audience and freely available from the author's site. It covers entropy, inference and Monte Carlo methods, and the lecture itself builds on MacKay.
2. **Sethna, *Statistical Mechanics: Entropy, Order Parameters, and Complexity* (2nd ed., OUP 2021).** It suits non-physicists: it is aimed at graduates across physics, computer science and other fields, with no prior statistical mechanics required. It has a section on entropy as ignorance: information and memory, and a PDF is on Sethna's site.
3. **Cover and Thomas, *Elements of Information Theory* (2nd ed., 2006).** Use it as the rigorous reference for chain rules, KL divergence, the data-processing inequality and maximum entropy.

Supplements from the reviewer's own knowledge:

* Schroeder's *An Introduction to Thermal Physics* for the Carnot and Clausius material the lecture lacks.
* Jaynes (2003) and his 1957 paper for the MaxEnt viewpoint.
* Amari's more readable *Information Geometry and Its Applications* (2016) for Weeks 6--7.

If students buy only one, MacKay is the choice for the ML orientation and cost. Add Sethna if the physics side is weak.

**Sources**

* [Lecture 2](https://mlatcl.github.io/iei/lectures/02-ensemble-entropy-embodiment.html)
* [Course About](https://mlatcl.github.io/iei/about/)
* [Course Questions](https://mlatcl.github.io/iei/questions/)
* [Universe Today, Chandrasekhar part 2](https://www.universetoday.com/articles/chandrasekhar-and-the-limits-of-physics-part-2-humiliation)
* [Southampton, The Stellar Graveyard](https://www.personal.soton.ac.uk/dij/GR-Explorer/NS/graveyard.htm)
* [Flamsteed Astronomy Society, Eddington and Chandrasekhar talk](https://www.flamsteed.info/post/ring-of-fire-chronicles-of-eddington-and-chandrasekhar-by-bobby-manoo)
* [Today in Science History, Eddington quote](https://todayinsci.com/E/Eddington_Arthur/EddingtonArthur-Entropy-Quotations.htm)
* [Stanford Encyclopedia of Philosophy, Boltzmann (archive)](https://plato.stanford.edu/archives/spr2006/entries/statphys-Boltzmann/)
* [MacTutor-style Boltzmann biography](https://cyberphysics.co.uk/Scientists/Boltzmann.htm)
* [Shannon, Prediction and Entropy of Printed English](https://sites.socsci.uci.edu/~rfutrell/teaching/itl-davis/readings/shannon1951prediction.pdf)
* [Sethna's textbook page](https://sethna.lassp.cornell.edu/StatMech/)
* [Sethna's Cornell course page](https://sethna.lassp.cornell.edu/Teaching/562/index.html)

\endif
