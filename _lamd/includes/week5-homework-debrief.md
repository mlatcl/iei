\ifndef{weekFiveHomeworkDebrief}
\define{weekFiveHomeworkDebrief}

\subsection{Homework from Weeks 3--4}

\notes{No class test today. Feedback on Quiz 2 first; Worksheet 2 follows in a later pass of this include. Marks do not appear on these slides, and names do not either. The numbers below are cohort figures from the marked scripts. As delivered 10 November 2026 the debrief ran about thirteen minutes, with Carnot-as-waterwheel colour and a short contested-narrative aside before the KL arc.}

\newslide{Quiz 2 Is Marked}

\slides{Fifteen papers. A few minutes on matters arising, then MaxEnt.}

\slidesincremental{
* Quiz 1: mean $8.2/10$
* Quiz 2: mean $6.3/10$
}

\speakernotes{Quiz-only block for now. Add Worksheet 2 habits when that section is written. Keep names off the slides. Worksheets are marking well; quizzes differentiate more.}

\subsection{Quiz 2}

\notes{The quiz tested ten items on Weeks 2--3 as delivered. It looked at the thread we followed on the history of heat and then Helmholtz's decomposition into the free energy ($U$, $S$, $\log Z$). It considered Shannon entropy $H$ versus physical entropy, $S$, and the notion of an ensemble, and intensive / extensive variables. The first matching question and the units blank were mostly correctly done. The points tended to be lost on multi-select items.}

\newslide{Quiz 2: Where Marks Were Lost}

\slides{Mean $6.3/10$, down from Quiz 1's $8.2$. Two ideas were responsible for most of the reduction.}

\slidesincremental{
* What $\log Z$ *is* (about three in five)
* What Clausius kept and dropped in the story of heat (about two in three)
* What values are intensive: e.g. pressure as an intensive variable was a common miss.
}

\notes{Named matching (Black, Carnot, Rumford, Joule), the Joule blank on $k_BTH$, hurricane / grid coarse-graining, and $S=k_BH$ with units were mostly got when attempted. The two ideas worth looking at again are what $\log Z$ *is*, and what Clausius was *doing* in the heat thread (not naming uncertainty). Pressure as intensive was the third recurring miss: pressure and temperature are weather-map fields (isobars); molecule count and heat energy are extensive --- that is why you can draw fields of $P$ and $T$.}

\newslide{What $\log Z$ Is}

\slides{From the occupation: take $\log$, take the expectation. $U$ splits.}

\slidesincremental{
* $p_i = e^{-\beta E_i}/Z$; $Z$ sums the states
* One piece of the split is entropy; the other sits in $\log Z$
* Up to $-k_BT$, that second piece is available energy (not $U$, and not $H$)
}

\notes{There were some confusions where people suggested that $\log Z=U$ and $\log Z=H$. The Zustandssumme etymology was often known on its own; the available-energy reading was the part that dropped. As a reminder inner energy is composed of an entropy term and an available-energy term in $\log Z$. Equivalently $F=U-TS=-k_BT\log Z$. Physical entropy versus Shannon: Boltzmann's constant carries joules per kelvin; $\log Z$ is dimensionless; physicists often omit $k_B$. We'll see some related ideas when we look at MaxEnt today. Honest aside as spoken: still looking for a better intuition why the partition function *is* available energy --- learning by teaching.}

\speakernotes{If the room needs the one-liner: $F=-k_BT\log Z$. Prefer the split story over listing wrong options. Do not derive MaxEnt here (that is the rest of the hour).}

\newslide{Clausius Did Not Name Uncertainty}

\slides{Clausius is bookkeeping after Joule and Carnot (not a Shannon preamble).}

\slidesincremental{
* Kept the mechanical equivalent of heat and Carnot's limit; dropped conserved caloric
* Work can become heat entirely; heat cannot all become work
* For a reversible engine, $Q_\mathrm{h}/T_\mathrm{h}=Q_\mathrm{c}/T_\mathrm{c}$
}

\notes{Clausius did not coin entropy *to name uncertainty*. He was dealing with the thermodynamic bookkeeping that arose from combining Joule and Carnot. Entropy was not yet a preamble for Shannon. Uncertainty-as-entropy sits in the statistical tradition (Boltzmann, Gibbs, Wiener) and in Shannon's $H$. The quiz was focussed on the engineering story of the heat thread, which sets context for why it wasn't seen as uncertainty until the rise of statistical mechanics. The Carnot miss $Q_\mathrm{h}/T_\mathrm{h}=Q_\mathrm{c}/T_\mathrm{c}$ is the reversible-engine balance: entropy entering the hot reservoir equals entropy leaving the cold one.}

\newslide{Carnot as a Waterwheel}

\slides{Entropy drops like water. $T\times S$ is in joules. Spill nothing if reversible.}

\slidesincremental{
* Carnot: caloric conserved $\approx$ entropy conserved through the cycle
* Joule / Rumford: heat is inexhaustible; work can become heat entirely
* Clausius keeps both: heat cannot all become work
}

\notes{Spoken colour on 10 November: Carnot as a waterwheel. Entropy enters the bucket at high $T$, drops through the engine, and leaves at low $T$; $T\times S$ is an energy in joules. A reversible engine spills no water. The Mill Works pub waterwheel is the inefficiency demo --- water that misses the wheel does no work. Kinetic waterwheels (no height drop) were named as a reminder that more is going on than the potential-drop analogy. Course-local: keep the pub name here, not in reusable snippets.}

\speakernotes{Bridge: Worksheet 2 pressed $H$ versus $S$; this item pressed the physical thread that $S$ came from. Contested narrative next, then into the KL arc.}

\newslide{A Contested Narrative}

\slides{The heat story is a narrative to explore around, not a creed to recite.}

\slidesincremental{
* Worksheets: use an LLM to press the contested edges
* Marks are on the quizzes and the understanding you defend in the room
* Dinner colour: Blei, Rasmussen, Turner, Hernández-Lobato --- narrative as scaffolding
}

\notes{Reminder: you are not being marked on the narrative, it provides structure for you to explore with the LLM worksheets. }

\endif
