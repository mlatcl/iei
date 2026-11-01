\ifndef{freeEnergyShannonEntropyMachineReview}
\define{freeEnergyShannonEntropyMachineReview}

A language-model review of the published notes for the L172 Week 3 session (27 October 2026). It is not assessed. Unlike the Week 2 review, it works from the written notes only, not the recording.

The Helmholtz derivation is correct, and the Worksheet 1 three-state check holds. The history serves the argument better than in Week 2. However, it has a cluster of dating and attribution errors. The title promises Shannon entropy, which the session did not deliver.

\subsubsection{Fact check}

**Errors to fix**

* **Kelvin's statement attributed to Clausius.** "No cyclic engine converts the heat of a single bath entirely into work" is Thomson's 1851 form. Clausius's form is the cold-to-hot statement, made explicit in 1854.
* **Clausius "without a notion of conservation of energy".** Helmholtz's *Über die Erhaltung der Kraft* is 1847. Clausius's 1850 first law, which introduces $U$, is conservation of energy applied to heat. The lecture builds to "Helmholtz $F=U-TS$" but never mentions Helmholtz's 1847 paper or his 1882 free-energy lecture. Adding both would fix the claim and give the payload its own history.
* **Bernoulli "with momentum".** This contradicts Lecture 2, which credits Bernoulli with conservation of energy. Both are partly right: the kinetic chapter gets pressure from impacts (momentum), while the flow results use vis viva. Say which is meant.
* **Helmholtz's symbol.** The notes say Helmholtz wrote $A$, for *Arbeit*. The sources tie that to convention instead: IUPAC recommends the symbol $A$ from the German word Arbeit, while physics also uses $F$. From the reviewer's own knowledge, and not checked against the 1882 original, Helmholtz used $F$. If so, the justification "we use $F$ instead of Helmholtz's $A$" is backwards.
* **"Shannon is always discrete."** Part III of the 1948 paper treats continuous sources, differential entropy, entropy power and the Gaussian channel (reviewer's own knowledge). Lecture 2 itself teaches differential entropy. The Shannon/Wiener contrast should be about mechanism, not discreteness. The claim appears in both the Clausius section and the Preview.
* **Caloric theory dated after Clapeyron.** The notes say that after Clapeyron's 1834 paper "people form what becomes known as the caloric theory of heat". Caloric (Lavoisier's *calorique*, 1789) predates Carnot. The Rumford section itself says caloric was already in Lavoisier's table.
* **Lavoisier and Laplace.** There are three slips in one paragraph (reviewer's own knowledge):
  * Lavoisier's 1789 list of elements is his own, building on the 1787 nomenclature with Guyton de Morveau, Berthollet and Fourcroy. Laplace was not a co-author.
  * Oxygen was not "previously phlogiston". Phlogiston was the theory that Lavoisier's oxygen overturned; Priestley had called the gas "dephlogisticated air".
  * Napoleon made Laplace a count in 1806. The Restoration made him a marquis.
* **Watt timeline.** The Lap Engine was built by Boulton and Watt in 1788, not in the late 1770s or early 1780s. The first commercial Boulton \& Watt engines ran in 1776 (reviewer's own knowledge). That is about eleven years after the 1765 separate condenser, not "twenty-five to thirty years".
* **Newcomen.** The cold water was injected *into* the cylinder, not sprayed onto it.
* **Steam turbine efficiency.** "A modern steam turbine is about sixty percent" is wrong. Steam-cycle power stations reach roughly $35$--$47\%$; about $60\%$ is a combined-cycle gas plant (reviewer's own knowledge).
* **The Cambridge aside.** The Natural Sciences Tripos did not come out of the Great Exhibition. It was an immediate result of the earlier Royal Commission on the University, established in 1851, and physics was only included in it in 1873. The Duke of Devonshire's offer came in October 1870, and the Laboratory was formally inaugurated on 16 June 1874. So "Cavendish (1870)" is the offer date, not the founding.
* **Gremlins.** The word does not date from the First World War. It was RAF slang among pilots in Malta, the Middle East and India in the 1920s, first printed in 1929; claims of a First World War origin have no print evidence. It was popularised in the Second World War.
* **Four-stroke.** The notes give the strokes as ignition, piston down, exhaust, compression. They are intake, compression, power and exhaust. The Otto cycle is also not "the same loop" as Carnot's. Its ideal is two adiabats and two constant-volume legs, which is not a square on $T$--$S$.
* **Black's timing.** Four and a half times a fifteen-minute heat-up is about $68$ minutes, not "an hour and a quarter" (that would be five times). The $810$ figure uses $4.5$.

**Overstated or needs hedging**

* **"F is the energy we can use for work."** What bounds the work at constant $T$ is $-\Delta F$, not $F$. $F$ itself depends on the energy zero. The same applies to the answer "log $Z$ is available energy".
* **"If entropy has not changed, inner energy and available energy are the same."** At fixed $T$, $\Delta S=0$ gives $\Delta F=\Delta U$. It does not give $F=U$.
* **"That is the caloric they thought was conserved."** The Free Energy section states this as fact. The $T$--$S$ section correctly hedges it as Falk's reading. Use the hedge in both places.
* **The real-engine $T$--$S$ figure.** The ratio of the real loop's area to the Carnot square is a second-law (relative) efficiency, not "the efficiency"; thermal efficiency is $W/Q_h$. A process that is not quasi-static also has no well-defined $T$--$S$ path, so the cut-corner picture is schematic and should say so.
* **"Why the exponential? Equilibrium."** As given, this answer leaves the occupation an unexplained postulate. The standard system-plus-reservoir argument derives the Boltzmann factor from the heat bath alone by expanding the bath's log-multiplicity in energy. It needs no Shannon or MaxEnt, so it respects the lecture's own ordering rule.
* **ELBO.** The ELBO is the *negative* of the variational free energy. "Identify variational free energy with the ELBO" needs the sign.
* **Black's latent heat of fusion.**
  * $143$--$144$ Fahrenheit degrees is the modern value. Black's own estimate is usually quoted near $140$ (reviewer's own knowledge, not checked).
  * "$80^\circ\mathrm{C}$" should read "$80$ Celsius degrees". The paragraph's own point is that this is not a temperature.
* **Watt and high pressure.** Watt's opposition, and the extension of his patent to 1800, held back high-pressure work. "His patent covered engines that were not high-pressure" is muddled.
* **Thomson "independently".** His 1851 paper credits Clausius with priority, so independence is Thomson's own claim (reviewer's own knowledge). Also, Thomson was $23$ when the 1848 paper was read in June.
* **Disclosure.** Neil Lawrence's endorsement appears among the book's blurbs. A one-line disclosure would help where the course recommends Welling, Lu and Holdijk.

**Checked and correct**

* **The Helmholtz derivation.** $\log p=-\beta E-\log Z$; $U=F+TS$; $F=-k_BT\log Z$; $S=k_B H$.
* **The Worksheet 1 three-state system.** At $\beta=1$ with $E\in\{0,1,3\}$: $U\approx 0.365$, $S\approx 0.714$, and $F\approx -0.349$ by both routes.
* **Statistical-mechanics results.** The Maxwell speed density and its $v^2$ Jacobian; $\log Z$ as the cumulant generating function; $T=(\partial S/\partial U)^{-1}$.
* **Carnot cycle results.** Work equals the area $\Delta T\cdot\Delta S$. $1-313/433\approx 27.7\%$. Adiabats are steeper than isotherms on $p$--$V$.
* **Thomson 1848.** The characteristic property as stated, infinite cold at $-\infty$, and $-273$ coming from the air coefficient.
* **Joule.** The British Association meeting at Cambridge in 1845, the figure of $890$, and $772.692$ ft·lb in 1850.
* **Other historical details.**
  * Rumford's 1798 timings, and the equal heat capacities of chips and solid metal.
  * Carnot: the $600$ copies, and death from cholera in 1832.
  * Clapeyron, 1834.
  * Clausius 1850, 1854 and 1865, including τροπή.
  * The Fahrenheit and Celsius fixed points.
* **Machine-learning lineage.** Hopfield (1982), Ackley, Hinton and Sejnowski (1985), and the 2024 Nobel Prize.
* **Welling, Lu and Holdijk now verifiable.** The book is a 307-page Cambridge University Press title, dated 31 July 2026. Its epilogue is titled "Unification: free energy is all you need", so the slogan the lecture attributes to it is literally the book's own.

The review did not check Carnot's $160^\circ\mathrm{C}$ / $40^\circ\mathrm{C}$ example, the Thurston page numbers, Meyn (2024), the cohort marks, or the comments on model behaviour.

\subsubsection{Learning objectives}

The notes call Helmholtz "the LO1 payload" but never state LO1.

Strengths:

* **The payload is the right one.** It is a single identity, derived rather than asserted, and checked numerically on the Worksheet 1 three-state system. It is also tied back to latent heat and the Carnot square. "Derive $F=U-TS$ from the Gibbs occupation and verify it numerically" is a measurable objective.
* **The history carries the argument.** Each figure supplies one piece: heat as a quantity, the limit, non-conservation, the ratio scale, the state function.
* **The Worksheet feedback is specific and usable.** The see-saw and rat-holing patterns are concrete and actionable.
* **It fills the Week 2 gap.** Carnot and Clausius are now taught properly. That was the Week 2 review's main objection.

Problems:

* **The title does not match the content.** The Shannon material in "Free Energy and Shannon Entropy" is a two-paragraph preview, and the axioms are parked. Either rename the lecture or teach the content.
* **The carry-over is compounding.** The info game, MacKay and the die example went from Week 2 to Week 3, and now to Week 4. HMC, which Week 2 promised for Week 3, has gone to parking.
  * "Define This Week" lists only deferrals, with nothing to define.
  * Week 4 now holds a quiz, MacKay, grouping, the missing measure and Maxwell's demon.
  * Something should be cut explicitly rather than left to drift.
* **Opinion and settled result are still blurred in places.** "The Industrial Revolution is an information revolution" is properly flagged as conditional on reading entropy as information. Do the same for "$\beta$ is the more natural parameter" and the Shannon/Wiener mechanism contrast.
* **The examinable version is unclear.** Students need to know which week's notes hold the examinable version of deferred material.

\subsubsection{Editorial}

* **Unresolved citation keys.** Nine render as "(\textbf{\ldots?})": Rumford-friction98, Thomson-absolute48, Thomson-dynamical51, Joule-equivalent45, Joule-equivalent50, Clausius-motive50, Clausius-equivalence54, Clausius-entropy65 and Friston-free10. "(Cavendish, 1870)" is also missing from the references.
* **A missing item.** "Black $\to$ $\to$ Helmholtz" has a gap in the sequence.
* **Duplicated passages.**
  * The Maxwell's demon preview appears twice.
  * "You can convert all your work into heat" appears three times.
  * The Shannon-discrete / Wiener-continuous passage appears twice.
  * The "As Taught" section repeats the derivation section.
* **An internal path.** `_lamd/parking.md` appears in the student notes and means nothing to students.
* **Typos.** "After Waterloo Lazare he was driven into exile"; "with a short hollow cylinder is turned".

**Sources**

* [Lecture 3](https://mlatcl.github.io/iei/lectures/03-free-energy-shannon-entropy.html)
* [Lecture 2](https://mlatcl.github.io/iei/lectures/02-ensemble-entropy-embodiment.html)
* [Wikipedia, Kelvin (absolute scales)](https://en.wikipedia.org/wiki/Kelvin)
* [Chang and Yi, Thomson on absolute temperature, *Annals of Science*](https://informahealthcare.com/doi/abs/10.1080/00033790410001712246)
* [Science Museum Group, Lap Engine](https://collection.sciencemuseumgroup.org.uk/objects/co50948)
* [Wikipedia, Lap Engine](https://en.wikipedia.org/wiki/Lap_Engine)
* [Wikipedia, Helmholtz free energy](https://en.wikipedia.org/wiki/Helmholtz_free_energy)
* [Schweitzer, Welling, Lu and Holdijk (contents)](https://www.schweitzer-online.de/en/buch/Holdijk/Generative-AI-Stochastic-Thermodynamics/9781009709033/A76628239/)
* [Schweitzer, Welling, Lu and Holdijk (endorsements)](https://www.schweitzer-online.de/en/buch/Welling/Generative-AI-Stochastic-Thermodynamics/9781009709033/A76628239/)
* [CavMag, The birth of the Cavendish Laboratory](https://cavmag.phy.cam.ac.uk/issue-32/150-years-of-the-cavendish/the-birth-of-the-cavendish-laboratory/)
* [Cavendish Laboratory, Our history](https://www.phy.cam.ac.uk/about/our-history/)
* [Sevier, Founding of the Cavendish Laboratory](https://journals.indianapolis.iu.edu/index.php/ias/article/download/8644/8674/14847)
* [Wikipedia, Gremlin](https://en.wikipedia.org/wiki/Gremlin)

\endif
