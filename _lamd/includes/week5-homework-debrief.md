\ifndef{weekFiveHomeworkDebrief}
\define{weekFiveHomeworkDebrief}

\subsection{Homework from Weeks 3--4}

\notes{No class test today. Feedback on Quiz 2 first; Worksheet 2 follows in a later pass of this include. Marks do not appear on these slides, and names do not either. The numbers below are cohort figures from the marked scripts.}

\newslide{Quiz 2 Is Marked}

\slides{Fifteen papers. A few minutes on what stuck, then MaxEnt.}

\slidesincremental{
* Quiz 1: mean $8.2/10$
* Quiz 2: mean $6.3/10$
* Same length; Weeks 2--3 material, and exact-set multi-select
}

\speakernotes{Quiz-only block for now. Add Worksheet 2 habits when that section is written. Keep names off the slides.}

\subsection{Quiz 2}

\notes{Ten items on Weeks 2--3 as delivered: matching on the heat thread, Helmholtz / $\log Z$, $H$ versus $S$, ensemble, intensive / extensive. Matching and the units blank were mostly clean when filled. The expensive items were multi-select with an exact-set rule.}

\newslide{Quiz 2: Where Marks Were Lost}

\slides{Mean $6.3/10$, down from Quiz 1's $8.2$. Two ideas carried most of the loss.}

\slidesincremental{
* What $\log Z$ *is* (about three in five)
* What Clausius kept and dropped in the heat thread (about two in three)
* Pressure as intensive was the usual miss on intensive / extensive
}

\notes{Named matching (Black, Carnot, Rumford, Joule), the joule blank on $k_BTH$, hurricane / grid coarse-graining, and $S=k_BH$ with units were mostly got when attempted. The two ideas worth looking at again are what $\log Z$ *is*, and what Clausius was *doing* in the heat thread --- not naming uncertainty.}

\newslide{What $\log Z$ Is}

\slides{From the occupation: take $\log$, take the expectation. $U$ splits.}

\slidesincremental{
* $p_i = e^{-\beta E_i}/Z$; $Z$ sums the states
* One piece of the split is entropy; the other sits in $\log Z$
* Up to $-k_BT$, that second piece is available energy --- not $U$, and not $H$
}

\notes{The distractors that showed up were $\log Z=U$ and $\log Z=H$. The Zustandssumme etymology was often known on its own; the available-energy reading was the part that dropped. Week 3 put the split on the board: inner energy is composed of an entropy term and an available-energy term in $\log Z$. Equivalently $F=U-TS=-k_BT\log Z$. The MaxEnt hour recovers the same object from constraints: the Lagrange multiplier on mean energy is coldness $\beta$, and $\log Z$ is the normaliser that becomes the free energy.}

\speakernotes{If the room needs the one-liner: $F=-k_BT\log Z$. Prefer the split story over listing wrong options. Do not derive MaxEnt here --- that is the rest of the hour.}

\newslide{Clausius Did Not Name Uncertainty}

\slides{Clausius is bookkeeping after Joule and Carnot --- not a Shannon preamble.}

\slidesincremental{
* Kept the mechanical equivalent of heat and Carnot's limit; dropped conserved caloric
* Work can become heat entirely; heat cannot all become work
* For a reversible engine, $Q_\mathrm{h}/T_\mathrm{h}=Q_\mathrm{c}/T_\mathrm{c}$
}

\notes{The sticky wrong option was that Clausius coined entropy *to name uncertainty*. That is the Worksheet 1 / 2 confusion again. Clausius's move is thermodynamic bookkeeping after Joule and Carnot, not a Shannon preamble. Uncertainty-as-entropy sits in the statistical tradition --- Boltzmann, Gibbs, Wiener --- and in Shannon's $H$. The quiz wanted the engineering story of the heat thread, not the naming story.}

\speakernotes{Bridge: Worksheet 2 pressed $H$ versus $S$; this item pressed the physical thread that $S$ came from. Then into Laplace / MaxEnt.}

\endif
