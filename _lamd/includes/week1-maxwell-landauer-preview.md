\ifndef{weekOneMaxwellLandauerPreview}
\define{weekOneMaxwellLandauerPreview}

\subsection{Preview: Maxwell's Demon}

\figure{\includepng{\diagramsDir/physics/james-clerk-maxwell}{35%}}{James Clerk Maxwell (1831--1879). The demon is an 1860s thought experiment, not a machine we will build today.}{week1-maxwell-portrait}

\slides{A sorting mind in a gas. Fast molecules one way, slow the other. Temperature splits. Entropy of the gas appears to fall.}

\slidesincremental{
* Partition; frictionless trap door; an "intelligent" entity that measures
* Temperature here is the variance of molecular velocity
* Apparent violation of the second law --- that is why the puzzle lasts
* Preview of Week 4; we do not resolve the ledger today
}

\notes{Boltzmann wrote entropy as the Greek letter eta. Capital eta looks like an H, and we have called it $H$ ever since. The second law is then $\mathrm{d}H/\mathrm{d}t \ge 0$: entropy of an isolated system does not decrease. Perpetual motion fails because, in practice, organised motion is converted into entropy. The United States Patent Office will not examine perpetual-motion applications; they receive too many.}

\notes{Why should any of that matter for intelligence? Maxwell's demon is the 1860s thought experiment that ties a *decision* to a thermodynamic ledger. An entity sits in a box of ideal gas, at a partition, with a trap door it can open without friction. If a fast molecule approaches from one side it lets it through; if a slow one approaches from the other, likewise. Temperature is the variance of molecular speed --- a few hundred metres per second in this room. After enough such decisions one side is hotter than the other. The entropy of the gas has fallen. The second law sits with the speed of light in the physicist's mind: if you think you have transgressed it, the error is in the thinking.}

\notes{The demon is also the place where nineteenth-century physics starts to conflate information, entropy, and energy. If information processing has a physical cost, we can begin to ask questions about intelligence that are not just polemic. I am happy to rank *an action* under a tightly specified goal and a time bound --- get these tables out of the room, stacked, in twenty-five minutes --- and then compare the energy two methods spent. Thermodynamics already knows the tension: wait for equilibrium and the engine is more efficient; demand the work in a hurry and you pay in dissipation. What I will not do is rank *an entity* across every criterion by which a human might be judged. That is Bostrom's superintelligence [@Bostrom-superintelligence14], and it is not a scientific ranking.}

\speakernotes{Preview of Week 4. Diagram and story only. No live canvas, no detailed balance, no Szilard piston, no Ellis clip.}

\subsection{Preview: Landauer's Principle}

\slides{Erasing a bit has a thermodynamic price. Computation, in the reversible ideal, is claimed not to.}

\slidesincremental{
* Erase one bit: at least $k_B T\ln 2$ of heat [@Landauer-irreversibility61]
* $k_B \sim 10^{-23}\,\mathrm{J\,K}^{-1}$; at room temperature this is tiny
* Classical computers dissipate far above the bound; we are not at Landauer yet
* Why erasure answers the demon --- memory, or an infinite tape --- is Week 4
}

\notes{One resolution offered for the demon is Landauer's principle: deleting information has a minimum energy cost, $k_B T\ln 2$ per bit, at the temperature of the bath [@Landauer-irreversibility61]. Boltzmann's constant is of order $10^{-23}$ joules per kelvin, so at $300\,\mathrm{K}$ the bound is not a constraint on any machine we have built. It still states a relationship between information and energy.}

\notes{The usual further claim is that *computation* need not cost energy, because it can be made reversible. The computers we actually run are not reversible, which is why data centres draw power. After Feynman's death, Tony Hey collected the lectures as *Feynman Lectures on Computation*; Chapter 5 is the place he talks about this. Some of what he says remains contested, including the claim that measurement and computation are the same operation. Early arguments against the demon blamed the *measurement*. The present consensus in physics is that measurement need not produce entropy if computation is reversible. I am not sure I believe the reversible ideal. We do not have examples of reversible computers.}

\notes{A student question from the first delivery is the right one, and we will spend Week 4 on it: why is Maxwell's demon a story about *erasure*? The sketch --- not a proof --- is that the demon needs a memory. If that memory scales with the number of particles that pass, either the tape is unbounded (a Turing machine that will not fit in the box) or at some point the demon must erase. Arguments then split. Physicists almost always declare a *mechanism*: heat baths, frictionless doors, pistons. Counter-arguments then say that mechanism cannot exist --- thermal noise, no frictionless door. The second law, like Shannon's capacity, is not a mechanism argument. It is a no-go. Mixing the two levels is why the demon literature is still noisy. Week 4 is the treatment; today is the hook.}

\speakernotes{If asked how Landauer answers the demon: memory must grow or be erased; infinite tape will not fit in the box. Do not derive $k_B T\ln 2$. Do not open Szilard.}

\endif
