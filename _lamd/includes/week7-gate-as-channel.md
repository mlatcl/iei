\ifndef{weekSevenGateAsChannel}
\define{weekSevenGateAsChannel}

\newslide{The Gate Is a Channel}

\slides{Input: which region a molecule arrives from. Output: which region it leaves into.}

\slidesincremental{
* Open hole, solid wall: one-to-one, $I(\text{in};\text{out})=2$ bits
* Maxwell's gate: two-to-one, $I(\text{in};\text{out})=1$ bit
* The lost bit: $H(\text{in}\mid\text{out})=1$ --- "came through, or bounced?"
* Deterministic channel: capacity $=\log_2(\text{number of outputs reached})$
}

\notes{The phase-space map from the Liouville block is already a channel. Its input is the region a molecule arrives from, A, B, C or D. Its output is the region it leaves into. Suppose the four arrivals are equally likely, so $H(\text{in})=2$ bits. The open hole and the solid wall are one-to-one: knowing where a molecule left tells you exactly where it came from, so $I(\text{in};\text{out})=H(\text{in})=2$ bits. Maxwell's gate sends A and C to one output and B and D to another. Now $I(\text{in};\text{out})=1$ bit, and one bit is left over, $H(\text{in}\mid\text{out})=1$: given a fast molecule leaving to the right, did it come through or bounce? That is the merge we saw in the picture, measured in bits. A deterministic channel has no noise, so its capacity is just $\log_2$ of the number of distinct outputs it can produce: 2 bits for the hole or the wall, 1 bit for the gate.}

\speakernotes{Point back at the four-panel map. Same picture, now with bits on it.}

\newslide{No Later Processing Gets the Bit Back}

\slides{$\text{in}\to\text{out}\to\text{anything computed from the gas}$ is a Markov chain.}

\slidesincremental{
* DPI: $I(\text{in};f(\text{out}))\le I(\text{in};\text{out})=1$ bit
* A record $M$ kept by the gate: $I(\text{in};\text{out},M)=2$ bits
* Wiping $M$ is another two-to-one channel: the bit is gone from $M$ too
* Landauer says where it must go physically: the bath
}

\notes{Once the gate has acted, anything we later compute from the state of the gas is a function of the output. So $\text{in}\to\text{out}\to f(\text{out})$ is a Markov chain, and the data-processing inequality says no such computation can recover more than the 1 bit that survived. The only way to keep the missing bit is to store it somewhere else as the gate acts: a record $M$ of "let through" or "bounced". With the record, $I(\text{in};\text{out},M)=2$ bits and nothing has been lost; this is the middle panel of the memory figure. Wiping the record maps both of its states to "blank", another two-to-one channel, and the same inequality says the bit is now gone from the record as well. Information theory says the bit is lost from the system we are describing. Landauer's principle is the physical claim about where it goes: into the surroundings as heat.}

\newslide{Liouville Is the Equality Case}

\slides{Data processing loses information only when a step merges states.}

\slidesincremental{
* One-to-one step: DPI holds with equality (Hamiltonian flow, the hole, the wall)
* Many-to-one step: strict loss (the gate, erasure, a coarse graining)
* Coarse-grained second law: data processing applied step after step
}

\notes{This is the bridge between the physics and the information theory. The data-processing inequality says information can only be lost along a chain, and it is lost exactly when a step merges states that carried different information. Liouville's theorem says Hamiltonian mechanics never merges states: it is a one-to-one map that keeps volume. So mechanics is the equality case of the data-processing inequality. The fine-grained entropy of the pendulum cloud stays fixed for the same reason $I(\text{in};\text{out})$ stays at 2 bits through the open hole.

Strict loss needs a merge. The gate merges. Erasure merges. And a coarse graining merges every state inside a cell. The rise in the pendulum's cell entropy is data processing applied to the cells, and the KL-decay notes below make that precise: with equal-volume cells, Liouville makes the cell-to-cell transitions doubly stochastic, and forgetting the detail inside the cells at each step makes the cell entropy rise.

Two cautions. First, the bits here are bookkeeping in units of $\log 2$. Turning them into heat needs Boltzmann's constant and a temperature, and that step is Landauer's, not Shannon's. Second, phase space is continuous, so mutual information between exact states is infinite. The statements are about cells, or regions like A to D, not about exact points.}

\speakernotes{This is the slide that joins the two halves of the course. If time is short, give the slogan: mechanics is the equality case; the second law lives in the merges.}

\endif
