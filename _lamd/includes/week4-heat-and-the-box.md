\ifndef{weekFourHeatAndTheBox}
\define{weekFourHeatAndTheBox}

\subsection{Heat, and the Box}

\slides{Last week's heat thread was already about a vessel. Grouping is the bookkeeping for what that vessel keeps and what it throws away.}

\slidesincremental{
* Black mixed and timed; the ice calorimeter is a box that weighs meltwater
* Rumford boiled a box of water with a cannon
* Helmholtz: $Z$ picks up a factor $V$ --- a box, not a well
* Bernoulli drew a box around the flow: keep $T,V,P$; discard which molecule
}

\speakernotes{Callback, not a re-lecture. Do not reopen Black or re-derive $F=U-TS$. The new sentence is: the box is a group. $H(w)$ is the label of the vessel; $\sum w_i H(p_i)$ is the unresolved motion inside it. Clausius writes the books of that box. Maxwell asks what a being could do if it could see the faces inside.}

\notes{The heat thread from 27 October got us to Helmholtz: inner energy splits as $U=F+TS$, and entropy is the cut you cannot get back as work. That algebra assumed an ensemble. The ensemble lives in a container. Black's quantity of heat was measured by mixing, and later by a calorimeter that is literally a box of ice. Rumford surrounded a cannon with a wooden box of water and boiled it. Carnot's mill has an upper reservoir and a lower one. After Maxwell the kinetic half of an ideal-gas particle is three copies of $E=v_i^2/2$; the configuration half is a factor $V$ in $Z$ --- a box, not another Gaussian well.

Bernoulli already made the same move without the word entropy: he drew a box around a subsection of the flow and kept a mechanical story that still predicts pressure. That box is a group in the sense we have just written. The coarse label is the macrostate of the vessel. The faces inside the group are the molecules we refuse to track. Thermodynamic entropy is counting the residual,
$$
\sum_i w_i H(p_i).
$$
Clausius's second law is a statement about that box, written for bodies we deal with only in large masses. The demon is the being who declines the discard.}

\include{_physics/includes/local-equilibrium-grouping.md}

\subsection{Clausius's Second Law}

\slides{Maxwell's demon seems to act against the second law Clausius had made explicit thirty years earlier.}

\slidesincremental{
* Carnot (1824): engine efficiency has a ceiling
* Clausius (1850s--1865): second law; entropy named and conserved in the books
* Maxwell (1867): a being who can see inside the box
* Landauer (1961): erasure cost restores Clausius's bookkeeping
}

\speakernotes{Historical thread, not a new formula. The punchline is Maxwell's sentence, not this slide. Landauer is after the break.}

\notes{Maxwell wrote that his demon would act ``in contradiction to the second law of thermodynamics'' --- the law Clausius had formulated for heat engines and irreversible processes. Szilard and Landauer do not replace Clausius; they extend the same no-go to stored outcomes and erased bits. The demon's sorting policy remains a prescription; it cannot repeal the law Clausius stated. What is new today is the grouping language: the being is trying to move $H(w)$ while treating the within-group term as a bath that has already mixed.}

\newslides{The Punchline}

\slides{A being whose faculties are so sharpened that he can follow every molecule in its course.}

\slidesincremental{
* We have been describing the box
* He looks inside it
* He sorts on the group labels --- hot enough to cross, cold enough to cross
}

\speakernotes{Read Maxwell's sentence from the next include. The canvas is the vessel with a membrane. Do not start detailed balance until after the break unless they are already there.}

\endif
