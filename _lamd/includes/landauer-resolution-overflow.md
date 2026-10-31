\ifndef{landauerResolutionOverflow}
\define{landauerResolutionOverflow}

\notes{Parked from the live Week 4 lecture. The composition wrappers stop at the fork. This file is Szilard, Ellis, Landauer, and the information-engine scale argument --- Worksheet 3 material, not the live clock.}

\subsection{A Different Perspective}

\slides{John Ellis (Maxwell Day 2024): the demon fails because measurement and a located trap door already dissipate.}

\slidesincremental{
* **Dissipation ledger:** defined results (scatter, switch, barrier) already pay thermodynamically
* **Information ledger:** Szilard $\to$ stored outcome $\to$ Landauer erasure $\to$ Parrondo bound
* Bennett (1982): erasure cost from phase-space compression — not circular [@Bennett-thermodynamics82]
* Both restore Clausius; they disagree on the *bookkeeping* variable
* Worksheet 3: which account matches the generality of the second law?
}

\newslide{}

\figure{\includeyoutube{U4ENbYa60Uw}{800}{600}}{John Ellis presenting on Maxwell's demon at the Cambridge philosophical society's Maxwell day.}{ellis-maxwells-demon}

\speakernotes{Ellis rejects information-as-fuel and circular Landauer pedagogy. Bennett derives erasure from phase-space compression — substrate-independent. Curated excerpt on Moodle/repo; full talk optional.}

\notes{John Ellis, Maxwell Day 2024 (Cambridge). Dissipation-first: measurement scatters; the trap door is a switch in a metastable well — its position is already a physical memory degree of freedom, not a separate notebook. Information-first: the Feynman/Szilard/Landauer/Parrondo chain. The generality question — mechanism-independent law versus mechanism-specific rebuttals — is Worksheet 3. Bad textbook Landauer says erasure must cost entropy because otherwise the second law fails; @Bennett-thermodynamics82 derives the demon resolution from logical irreversibility of erasure (phase-space compression) --- the non-circular version students should cite against Ellis.}

\addreading{@Bennett-thermodynamics82}{Szilard engine and demon resolution (logical irreversibility of erasure)}

\subsection{Szilard's Engine}

\figure{<div><canvas id="szilard-canvas" width="900" height="500" style="border:1px solid black;display:inline;text-align:center"></canvas>
<div><button id="szilard-newball" style="text-align:right">New Ball</button><button id="szilard-pause" style="text-align:right">Pause</button></div>

\include{_scripts/includes/szilard-js.md}
</div>}{Szilard's Engine}{szilards-engine}

\notes{John Norton refers to Szilard's engine as the "worst thought experiment" @Norton-worst18 in science.}

\newslides{One Bit, One Piston Stroke}

\slides{Szilard: knowing which half holds the molecule lets an isothermal expansion extract $W_{\mathrm{ext}} = k_B T \ln 2$.}

\slidesincremental{
* Shannon count: $H(M)=\ln 2$ nats for unbiased left/right ($1$ bit)
* Thermodynamic count: $W_{\mathrm{ext}} = k_B T H(M)$ in natural units
* Same uncertainty; one names bits, the other names extractable work
}

\speakernotes{Operational bridge before Landauer. Write $H(M)=\ln 2$ next to $k_BT\ln 2$.}

\notes{Szilard (1929): partition, measure which side, expand from $V_0/2$ to $V_0$ against a thermal bath. For one molecule the work is $k_BT\ln 2$. If the outcome is equiprobable, $H(M)=\ln 2$ nats and $W_{\mathrm{ext}} = k_B T H(M)$.}

\newslides{Feynman's Piston Chain}

\slides{Feynman treats a known microstate as fuel — a low-entropy tape you can spend.}

\slidesincremental{
* *Lectures on Computation* (Ch. 5): Szilard step repeated; each stroke needs a fresh bit
* Vol. I, Ch. 46: a ratchet alone cannot mine a single bath — fluctuations break the pawl
* Chain: Maxwell $\to$ Szilard $\to$ measurement $\to$ work $\to$ erasure
}

\speakernotes{Feynman is the pedagogy; Parrondo is the modern ledger. Ratchet is the autonomous-demon cautionary tale.}

\notes{In *Feynman Lectures on Computation* (Hey ed., Ch. 5) Feynman uses the Szilard box with a piston on the occupied side: information about position is operational fuel. A chain of such strokes is only sustainable if you keep supplying low-entropy records or pay to erase them. In *The Feynman Lectures on Physics* [@Feynman-volumeI63], Ch. 46, he shows that a one-bath ratchet fails because thermal kicks on the pawl destroy rectification --- the same fluctuation physics Smoluchowski and Parrondo et al. cite for autonomous demons.}

\newslides{Thermodynamics of Information}

\slides{Clausius's second law says nothing about information; reconciling the pictures is a modern subject.}

\slidesincremental{
* Task 1: refine the second law — feedback work $W \ge -k_B T\, I(X;M)$
* Task 2: information is physical — outcomes live in metastable memory states
* Cycle: measure $\to$ feedback $\to$ reset (Landauer on the memory)
}

\speakernotes{Parrondo et al. survey. Szilard saturates $W = k_BT H(M)$ when $I(X;M)=H(M)$.}

\notes{Parrondo, Horowitz and Sagawa [@Parrondo-thermodynamics15] frame the thermodynamics of information as non-equilibrium thermodynamics for states updated by measurement. Shannon entropy of the microstate, multiplied by $k_B$, is the operative entropy for isothermal processes far from equilibrium. A measurement that correlates system $X$ with outcome $M$ raises non-equilibrium free energy by $k_B T I(X;M)$, so feedback can extract work bounded by that mutual information.}

\addreading{@Parrondo-thermodynamics15}{introduction and Szilárd engine section}

\subsection{Information Engines}

\newslides{Information Engines}

\slides{An *information engine* converts stored or acquired information into extractable work — Szilard is the textbook case.}

\slidesincremental{
* First model of intelligence (information-engines talk): policy under a thermodynamic ledger
* Feedback bound (Parrondo / Sagawa–Ueda): $W \ge -k_B T\, I(X;M)$ on average in a cycle
* Memory is physical: metastable states; equal double well next
* Prescription: measurement policy; no-go: pay on reset (Landauer)
}

\include{_physics/includes/boltzmann-memory-two-well.md}

\include{_physics/includes/landauer-broken-ergodicity-weights.md}

\include{_information-game/includes/landauer-shannon-connection.md}

\subsection{Landauer's Principle}

\newslides{Landauer's Principle}

\slides{The demon measures; Szilard's engine stores one bit. Neither violates the second law until the record is erased.}

\slidesincremental{
* Landauer (1961): erasing one bit at $T$ costs at least $k_B T \ln 2$
* No-go: you cannot erase for free
* Prescription: the demon's policy — which molecules to let through
}

\notes{Landauer (1961): erasing one bit in a bath at temperature $T$ dissipates at least $k_B T\ln 2$. Erasure of stored outcomes restores the second law. The demon's measurement policy is the prescription; it does not repeal the bound. Ellis agrees the demon fails but locates the cost at measurement and gating; @Bennett-thermodynamics82 completes the information ledger.}

\include{_information/includes/welling-maxwell-landauer.md}

\subsection{Information and Intelligence: First Cut}

\notes{Landauer: you cannot erase a bit for less than $k_B T\ln 2$. Embodiment: you cannot communicate at machine bandwidth. *The Atomic Human* [@Lawrence-atomic24] takes the second as the defining constraint on human intelligence. The full intelligence question is week 8.}

\endif
