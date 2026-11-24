\ifndef{weekSevenHomeworkDebrief}
\define{weekSevenHomeworkDebrief}

\subsection{Homework from Weeks 4--5}

\notes{No class test today. Feedback on Quiz 3 first; Worksheet 3 follows as an unmarked review (Liouville, detailed balance, the trapdoor) in this session. Marks do not appear on these slides, and names do not either. The numbers below are cohort figures from the marked scripts.}

\newslide{Quiz 3 Is Marked}


\slidesincremental{
* Quiz 1: mean $8.2/10$
* Quiz 2: mean $6.3/10$
* Quiz 3: mean $6.4/10$
}

\notes{This block is the quiz marks only. Worksheet 3 is unmarked on the slides; the review of its ideas comes after. Names stay off the slides.}

\subsection{Quiz 3}

\notes{The quiz tested ten items on grouping and soft partitions, the missing measure, Maxwell--Boltzmann speed geometry, MaxEnt under constraints, the coarse graining of the die, the demon as membrane and ledgers, and KL. THe matching and the blank question were mostly got right by all. Marks were lost on multi-select items.}

\newslide{Quiz 3: Where Marks Were Lost}

\slides{Mean $6.4/10$, level with Quiz 2. Three ideas took most of the misses.}

\slidesincremental{
* The missing measure (about one in three)
* MaxEnt under a mean-energy constraint (about two in five)
* The die grouping identity / demon abstraction (about half)
}

\notes{Named matching of $I(X;G)$, $H(w)$, residual group entropy and $H(G\mid X)$, and the balanced odd/even blank, were mostly correctly answerd. Soft exclusive versus overlapping grouping (Q6) and discrete MaxEnt multipliers (Q9) held up. KL non-negativity and asymmetry (Q10) mostly held. The questions where marks were lost were the missing-measure multi-select, MaxEnt recovering Maxwell--Boltzmann from one mean constraint, and the exact sets on the die identity and the demon membrane picture.}

\newslide{The Measure Is Still There}

\slidesincremental{
* Entropy of steam already neglects other uncertainties (nuclear spins, \ldots)
* Relative entropy against a declared $m$ is $\KL{\,\cdot\,}{m}$
* Going continuous does \emph{not} remove the choice of measure
}

\notes{The common incomplete selection was to keep the KL reading of relative entropy and drop the steam point --- or to add the claim that a density erases the remaining measure choice.  Anthropomorphic entropy of steam is already a coarse-graining. Passing from bin counts to a density does not cancel that choice; shifting bins while holding the discrete probabilities fixed does not change discrete $H$ either. The three points that matter: relative entropy is a KL; steam entropy is already a truncation; going continuous does not finish the job. The Radon--Nikodym language returns in today's goal-measure block.}

\newslide{MaxEnt Recovers Maxwell--Boltzmann}

\slides{Maximise $H$ under the stated moments. One mean energy is enough for MB.}

\slidesincremental{
* Objective: Shannon entropy under the constraints you wrote down
* A single mean-energy constraint recovers Maxwell--Boltzmann
}

\notes{Several scripts kept the MaxEnt slogan and missed that a lone $\langle E\rangle$ constraint already recovers the Boltzmann weights, or added a free claim about non-equilibrium stationarity. The discrete derivation ends at $p_i\propto\exp(-\sum_k\lambda_k f_k(x_i))$; each $\lambda_k$ is tied to a constraint, and energy is only one allowed $f_k$. Uniform stays optimal only when the constraints are trivial.}

\newslide{Plus, Not Minus}

\slides{The minus sign is a trap.}

\slidesincremental{
* Within one partition the groups do not overlap
* $H = H(w)+\sum_i w_i H(p_i)$ --- residual entropy is \emph{added}
}

\notes{About half the papers missed the exact set on the die item. The recurring distractor was the identity with a minus in front of the residual term. Total entropy is the entropy of the group weights plus the average entropy inside the groups; residual entropy is added, not subtracted. There is leftover uncertainty after the first cut. Soft overlapping allocations can leave $H(G\mid X)>0$; an exclusive partition does not overlap. The same grouping language returns for the demon membrane: a velocity gate, compartments and a non-equilibrium layer, and balanced crossings that need not balance energy.}

\endif
