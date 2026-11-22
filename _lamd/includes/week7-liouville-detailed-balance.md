\ifndef{weekSevenLiouvilleDetailedBalance}
\define{weekSevenLiouvilleDetailedBalance}

\subsection{Liouville, Detailed Balance, and the Trapdoor}

\notes{Teach-back from Worksheet 3. Several dialogues landed on Liouville or detailed balance; lecture 4 never named either formally. Today seat them under the course fork: Liouville is the fine-grained kinematic fact; detailed balance is the equilibrium rate consequence; the two-ledger membrane argument is the same impossibility written in compartments. Trapdoor in passing --- why it is hard to coarse-grain. No Hamiltonian derivation; no Smoluchowski simulation; no Landauer proof.}

\newslide{Three Levels of the Same Objection}

\slides{Same impossibility; different grain.}

\slidesincremental{
* Liouville --- phase-space volume under reversible flow
* Detailed balance --- equilibrium rates of micro-transitions
* Course fork --- two ledgers under Maxwellians-to-gate
}

\speakernotes{Open the teach-back here. Students met all three in dialogues; today map them. Do not board Hamilton's equations.}

\notes{Liouville is not ``a more sophisticated detailed balance.'' Detailed balance is the equilibrium *rate* statement that follows from microscopic reversibility plus a stationary measure. Liouville is the *kinematic* fact that Hamiltonian flow preserves phase-space measure (and therefore the fine-grained Shannon entropy of the phase-space density). The Week 4 fork --- number flux can close while energy flux cannot if every velocity at the gate is drawn from a bulk Maxwellian --- is the course-native form of the same objection at the coarse grain students already have.}

\newslide{Liouville (What We Need)}

\slides{Reversible microscopic dynamics cannot throw volume away.}

\slidesincremental{
* Track a cloud of microstates in phase space $(\mathbf{q},\mathbf{p})$
* Hamiltonian flow deforms the cloud; its volume stays constant
* Fine-grained Shannon entropy of the density is conserved
}

\speakernotes{Picture only: a blob that stretches and folds but keeps its area. No symplectic form. Link to Ehrenfest: only *coarse-grained* entropy can grow.}

\notes{Under deterministic Hamiltonian flow the phase-space density $\rho_t$ is transported by a volume-preserving map (Liouville's theorem). The fine-grained Shannon entropy $-\int \rho\log\rho$ is therefore invariant. The Gibbs--Ehrenfest account of the second law is that the entropy that increases is a *coarse-grained* entropy: one that first lumps microstates into cells (or Shannon groups) and only then computes $H$. A selective membrane that looked like a many-to-one ``sorting map'' --- collapsing distinct incoming velocities onto one sorted side without putting the missing volume somewhere else --- would violate that conservation. Where the volume goes is the same question as where the missing entropy sits.}

\newslide{Detailed Balance (What We Need)}

\slides{At equilibrium, each transition is cancelled by its reverse.}

\slidesincremental{
* Microscopic reversibility: laws look the same under time reversal
* Stationarity alone is weaker: net currents among groups can still vanish
* Detailed balance: rate $A\to B$ equals rate $B\to A$ for each pair
}

\speakernotes{Distinguish flux balance (stationarity of a ledger) from detailed balance (each reverse pair). Course terminology from Week 4: membrane number-flux stationarity is flux balance, not detailed balance.}

\notes{Detailed balance is stronger than ``no net particle current.'' It requires that every microscopic transition be matched by its reverse at equilibrium. A velocity-selective gate that admits hot left$\to$right and cold right$\to$left, with no reverse partners of those same transitions, is exactly the kind of rule that breaks detailed balance. If the whole box is supposed to sit at one equilibrium, that rule cannot be the complete dynamics: either reverse processes appear once the gate's physical state is included, or some resource (a record, a colder hinge, an external drive) is being consumed. The dialogues that pressed ``detailed balance'' were pressing this point --- often against fluent Landauer closes that never named a record.}

\newslide{How the Course Fork Fits}

\slides{Two ledgers are Liouville/detailed-balance at the coarse grain.}

\slidesincremental{
* Illegal grain: every gate velocity drawn from a bulk Maxwellian
* Number flux can balance; energy flux then cannot (or conversely)
* Same moral: you cannot have a one-way sorter at equilibrium for free
}

\speakernotes{One sentence back to lecture 4. Do not re-derive $\Phi^{\mathrm{hot}}=\Phi^{\mathrm{cold}}$. The point is the map: fork $\leftrightarrow$ detailed balance $\leftrightarrow$ Liouville.}

\notes{If left and right bulks are locally Maxwellian and the gate draws every crossing from those bulks, particle-flux stationarity and energy-flux stationarity cannot both hold at a nontrivial $v_\star$. That is the taught fork. It does not mention phase space, yet it is the same impossibility: a complete equilibrium description cannot sustain useful sorting without a place for the missing entropy (or the missing reverse flux). Time-reversal as a slogan (several dialogues) is right; Liouville and detailed balance are how that slogan seats in the coarse-graining language the module already uses.}

\newslide{Trapdoor in Passing}

\slides{Smoluchowski: the door is a thermal degree of freedom.}

\slidesincremental{
* Same bath as the gas --- no notebook, no Landauer bill yet
* Door fluctuates; useful openings come with reverse openings
* Failure mode is thermal, not informational
}

\speakernotes{Name the family. Feynman ratchet / pawl is the same book. Do not simulate. Bridge immediately to the coarse-graining difficulty.}

\notes{Smoluchowski's trapdoor (and Feynman's ratchet) resolve the autonomous mechanical demon *without* Landauer: the door (or pawl) is a physical degree of freedom in the same thermal bath; fluctuation--dissipation and detailed balance kill net sorting. Landauer's erasure cost is a different book --- a memoryful controller with a record that must later be reset. Models in Worksheet 3 often collapsed the two. Keep them distinct: trapdoor fails because the mechanism thermalises; memoryful demon fails (on the Landauer reading) when the record is erased into a bath.}

\newslide{Why the Trapdoor Resists Coarse Graining}

\slides{Legal move is usually to \emph{enlarge} the system.}

\slidesincremental{
* Include hinge angle, energy exchange, reverse events
* ``Open / closed'' is not a Maxwellian Shannon group in the same bath
* Cold door / insulated hinge smuggles an external reservoir
}

\speakernotes{This is the honest difficulty. Can one coarse-grain the trapdoor? Only by saying which new DOF enter. Illegal: frictionless decision without bath DOF --- same sin as Maxwellians-all-the-way-to-$v_\star$.}

\notes{Coarse-graining the trapdoor is awkward because the honest description does not *lump* the door into an existing bulk Maxwellian; it *adds* degrees of freedom (angle, angular momentum, coupling to the gas) and then applies detailed balance in the enlarged space. Treating the door as a frictionless open/closed decision without those thermal DOF is an illegal coarse grain --- the same modelling sin as drawing every gate velocity from a bulk Maxwellian. Stories that keep the hinge ``cold'' or insulated are smuggling a second bath or a prepared resource; once that is named, one has left the one-bath trapdoor family. Mutual information between door and gas can be a useful intermediate language, but it is not yet a Shannon group $H(\pi_i)$ on the course's compartment diagram.}

\newslide{Memory Is a Different Book}

\slides{Record fills; erasure is a later ledger entry.}

\slidesincremental{
* Measurement need not be the dissipative step
* Cycle cost appears when the register is reset (Landauer reading)
* No record $\Rightarrow$ not this family --- ask again about the gate or the door
}

\speakernotes{One slide only. Park the $k_BT\ln 2$ derivation. Skepticus habit: if the model says Landauer, ask where the bit lives.}

\notes{About ten of twelve Worksheet 3 threads invoked Landauer or erasure. That is legitimate as *one* of the four families in the brief; it is illegitimate as a fluent substitute for compartments and two ledgers, especially for an autonomous membrane with no record. Bennett's non-circular reading derives the erasure cost from logical irreversibility (phase-space compression) --- again Liouville's neighbourhood --- but that derivation is not today's board. Today's fence: name the record, or leave this book.}

\endif
