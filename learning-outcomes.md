---
outcomes:
  - id: LO1
    text: "Students will be able to decompose the Boltzmann distribution into contributions from internal energy, entropy, and Helmholtz free energy, and interpret each term's physical and informational meaning."
    bloom_level: analyse
    week: 2
    notes: "p_i ∝ exp(-E_i/kT); Z; F = -kT log Z = U - TS. Available (free) energy is what remains after the entropic no-go. Seeded in week 1; Hydrodynamica / entropy / embodiment in week 2 as delivered; named and accounted in week 3 (Gibbs/Boltzmann form; Hopfield / Boltzmann-machine colour only). Free-energy reading of log Z returns in the Week 5 Quiz 2 debrief. CGF / Legendre dual / Fisher geometry are notes-only after the Good-Regulator-first replan. MaxEnt derivation of the weights waits for week 5 (LO5). Theme: entropy forbids; probability prescribes. Historical thread: Carnot (1824, engines) → Clausius (1850s–1865, second law; entropy named) → Boltzmann/Gibbs (statistical count) → Shannon/Jaynes (information). Motivations: perpetual motion, and the human–machine bandwidth gap from The Atomic Human (Lawrence, 2024)."

  - id: LO2
    text: "Students will be able to derive Shannon entropy as a measure of uncertainty and prove its formal equivalence to thermodynamic (Gibbs) entropy in equilibrium statistical mechanics."
    bloom_level: apply
    week: 3
    notes: "Shannon H = -Σ p_i log p_i; Boltzmann S = k H. H bounds what a code cannot do; p is the code or the belief. The information game, MacKay's balance, and die grouping $H=H(w)+∑ w_i H(p_i)$ were named in week 3 and are taught at the start of week 4 as the setup for Maxwell's demon. Channel capacity (R ≤ C) and a DPI *statement* are live in week 6; the DPI proof and information bottleneck are week 7 (LO10)."

  - id: LO3
    text: "Students will be able to derive the canonical ensemble and use the partition function to compute mean energy, entropy, and free energy for simple systems."
    bloom_level: apply
    week: 3
    notes: "Practical computation. Bridges thermodynamics formalism to Jaynes MaxEnt. Partition function Z for U, F, S in week 3. The cumulant generating function reading A(θ)=log Z(-θ) with η=∇A stays notes-only after the Good-Regulator-first replan (unread continuous material in the Week 5 file / fisher-metric.md.deferred)."

  - id: LO4
    text: "Students will be able to explain Maxwell's demon thought experiment, identify where the apparent violation of the second law arises, and apply Landauer's principle to show that information erasure restores thermodynamic consistency."
    bloom_level: analyse
    week: 4
    notes: "Maxwell (1867); Landauer (1961): erasing one bit costs k_B T ln 2. Feedback work bounded by k_B T I(X;M) (Parrondo/Sagawa–Ueda). Macroscopic engines (car) cannot exploit demon-style feedback — thermal DOF/s dwarfs any bit memory; molecular machines (ATP synthase) operate at the scale where information thermodynamics applies. First rigorous link between decision-making and entropy; multi-information and I+H=C deepen in week 7 (LO10)."

  - id: LO5
    text: "Students will be able to apply Jaynes' maximum entropy principle, using Lagrange multipliers, to derive the least-committal probability distribution consistent with a set of moment constraints."
    bloom_level: apply
    week: 5
    notes: "Jaynes (1957). Week 5 opens with KL (overlap → MI; Jaynes m as KL; KL properties), then MaxEnt. Die example (mean 4.5). Recovers canonical ensemble from mean-energy constraint — this is the MaxEnt derivation of the Gibbs–Boltzmann weights named in week 3. Continuous reading: minimise KL{f}{m} under kinetic constraint recovers Gaussian / Maxwell–Boltzmann. Recovers Gaussian from mean and variance constraints."

  - id: LO6
    text: "Students will be able to identify the exponential family as the MaxEnt family and explain why the canonical ensemble, Gaussian, and Bernoulli distributions all belong to it."
    bloom_level: analyse
    week: 5
    notes: "p(x|θ) = exp(θ·T(x) - A(θ)) with θ = −λ. Unifies thermodynamics, Bayesian statistics and ML. Softmax / two-spin named if clock allows. Week 5 also returns to soft/overlapping coarse-graining: H(X)=H(w)+∑ w_i H(p_i)−H(I|X), with mutual information I(X;I)=H(w)−H(I|X)=KL{p(x,i)}{p(x)p(i)}. θ=−λ is named at the Week 5 close and briefly recalled in Week 6; A as CGF / Legendre dual / Fisher geometry are notes-only after the Good-Regulator-first replan (see fisher-metric.md.deferred)."

  - id: LO7
    text: "Students will be able to compare and contrast the information-theoretic, thermodynamic, and Bayesian perspectives on entropy, articulating the distinct operational assumptions each makes and identifying what each perspective illuminates or obscures."
    bloom_level: evaluate
    week: 5
    notes: "Central synthesis outcome. Shannon: channel capacity / data compression. Boltzmann/Gibbs: macrostate counting / equilibrium. Jaynes/Bayes: rational inference under constraint. All are the same H; the difference is in what the probability is over and who is doing the inferring. All three agree that H forbids and p prescribes."

  - id: LO8
    text: "Students will be able to distinguish Fisher information I(θ) from Shannon entropy H, stating that the former measures sensitivity of a parametric model to its parameters while the latter measures uncertainty in an outcome."
    bloom_level: understand
    week: 7
    notes: "Vocabulary outcome after the Good-Regulator-first replan. Named in Week 7 only if clock allows; not a Riemannian deep dive. Full Fisher metric / dual flatness / Crooks thermodynamic length remain in fisher-metric.md.deferred."

  - id: LO9
    text: "Students will be able to identify maximum-entropy inference as an m-projection onto a constraint set in the space of distributions, without computing natural gradients or geodesics."
    bloom_level: remember
    week: 7
    notes: "Thin naming only. Natural gradient, dual flatness, and geodesic / minimum-dissipation development stay in maxent-projection.md.deferred. Live MaxEnt derivation remains Week 5 (LO5)."

  - id: LO10
    text: "Students will be able to state Shannon's channel-capacity bound R ≤ C, define multi-information I and the conservation law I + H = C, prove or apply the data-processing inequality for a Markov chain, and explain the information bottleneck as a prescription for spending mutual information under a relevance constraint."
    bloom_level: analyse
    week: 7
    notes: "Live Weeks 6–7 information-theoretic toolkit. Week 6: Shannon capacity (no-go) and capacity-achieving p(x) (prescription); DPI as a statement. Week 7: multi-information / I+H=C (Watanabe); DPI proof (Cover & Thomas Thm 2.8.1); information bottleneck (Tishby, Pereira, Bialek 1999) as the prescription paired with DPI and as a gloss after GRT, not the theorem."

  - id: LO11
    text: "Students will be able to explain why the classical limit I = C requires H = 0, argue that sustaining high marginal entropies alongside I = C forces a move beyond classical probability, and show that von Neumann entropy S(ρ) = −Tr(ρ log ρ) satisfies S = 0 for a pure entangled state while its marginals carry positive entropy."
    bloom_level: analyse
    week: 8
    notes: "Classically H = 0 ⟹ deterministic (delta distribution). Quantum: pure entangled state |ψ⟩ has S(ρ) = 0 but reduced states ρ_A, ρ_B have S > 0. Forced by asking for I = C with nontrivial marginals under classical probability. Taught in the Week 8 close after Quiz 4."

  - id: LO12
    text: "Students will be able to articulate intelligent agency in information-theoretic terms — analogous to Shannon's use of probability to abstract a communication code — using channel capacity, the data-processing inequality, and the Good Regulator Theorem, rather than transport geometry."
    bloom_level: evaluate
    week: 8
    notes: "Live Week 8 framing after the GRT replan. Shannon abstracted a code as probability over symbols; an agent organises action given state under the same no-go / prescription grammar. Optimal transport, Wasserstein, and Schrödinger bridges remain deferred colour, not assessed live this term."

  - id: LO13
    text: "Students will be able to evaluate claims about the capabilities of intelligent systems using Landauer's principle, the perpetual motion analogy, Shannon's R ≤ C, I + H = C, the data-processing inequality, and human bandwidth; and to state the Good Regulator Theorem as an existence claim (an H(Z)-optimal regulator may be taken with H(A|S)=0), distinguishing it from Ashby's requisite variety and naming both caveats (weak model; predictability versus desirability)."
    bloom_level: evaluate
    week: 8
    notes: "Closes the Week 1 loop. GRT is earned as a full overview in Week 6 (requisite variety vs existence; concavity / extreme points; two caveats) and applied in Week 8. IB form min I(S;A) s.t. H(Z)≤ε is a course gloss after the theorem, not Conant–Ashby. L²/τ and three geometries are not live no-gos/prescriptions this term."
---

# Learning Outcomes

This module sits at the intersection of information theory, statistical mechanics, and the
foundations of machine learning and artificial intelligence. It is aimed at Part III / MPhil
students in computer science with limited prior exposure to physics.

## Motivating question

A century ago, every major automobile manufacturer was investing in the promise of perpetual
motion — a car that needs no fuel. We know why that was impossible: the second law of
thermodynamics. Today, billions are being invested in promises of superintelligence. Is there
an equivalent conservation law that makes *that* equally impossible?

This module builds the mathematical machinery needed to answer that question rigorously:
thermodynamics, information theory, maximum entropy, and information-theoretic limits on
intelligent agency (including the Good Regulator Theorem).

## Central thread

**Entropy** appears in three apparently separate traditions — thermodynamics (Boltzmann, Gibbs),
information theory (Shannon), and Bayesian inference (Jaynes) — and turns out to be the same
mathematical object viewed from different operational assumptions. Channel capacity, the
data-processing inequality, multi-information / $I+H=C$, and the information bottleneck make
precise what processing can and cannot do. Those tools, with Landauer, the Good Regulator
Theorem, and human bandwidth, make the superintelligence promise analogous to perpetual
motion; the classical limit $I=C$ forces the story toward von Neumann entropy.

**Entropy forbids; probability prescribes.** Entropy offers no-go theorems — the second
law, Landauer, channel capacity $R\le C$, the data-processing inequality, $I+H=C$, and the
human bandwidth constraint of *The Atomic Human*. Probability tells us what to do inside that
fence — the Boltzmann occupation, the capacity-achieving input, the MaxEnt distribution, a
deterministic Good-Regulator policy where the caveats allow, and the information bottleneck
as a way to spend mutual information on what is relevant for action.

The closing abstraction echoes Shannon's founding move: just as Shannon abstracted
communication as probability over symbols, we can read *intelligent agency* as organising
action given state under the same no-go / prescription grammar — channels, DPI, and the Good
Regulator — rather than as transport geometry.

## Pedagogy

After each session, students complete a short assignment in which they pose the session's
central concept with an LLM using the Socratic habit (curiosity then skepticism) from lecture 1 (thermodynamic,
information-theoretic, Bayesian) and write a critical synthesis. They should also ask
whether the model treated entropy as a no-go or as a recipe, and note which half it
missed. This is not assessed as a separate outcome; it is the mechanism for building the
multi-perspective fluency required by LO7.

## Lecture map

Eight Tuesdays, 13 October – 1 December 2026, 10:00–12:00, FW26, William Gates Building. Each slot is two hours (speech 10:05--11:55). Class tests take the first ten minutes of lectures 2, 4, 6 and 8 (weeks 2, 4, 6, 8). After the Good-Regulator-first replan: Week 6 earns Shannon capacity, DPI (statement), and a full GRT overview; Week 7 deepens $I+H=C$, proves DPI, and develops IB as gloss; Week 8 closes with Quiz 4 and LO13 synthesis (von Neumann / $I=C$ if clock allows).

| Week | Date | Topic | Outcomes | In slot |
|------|------|-------|----------|---------|
| 1 | 13 Oct | Theme; perpetual motion; *Atomic Human* bandwidth; probability review; energy / Boltzmann seed; entropy review | LO1 (seed) | W1 released |
| 2 | 20 Oct | Gibbs--Boltzmann form; free energy $F=U-TS$; HMC; Schottky | LO1 | Q1 (10 min); W1 due |
| 3 | 27 Oct | Heat thread; Helmholtz $F=U-TS$. Game / MacKay named, not reached | LO1, LO2, LO3 | |
| 4 | 3 Nov | Quiz 2; questions / MacKay / grouping; missing measure; demon as compartments and two ledgers | LO2, LO4 | Q2 (10 min); W2 due; W3 released |
| 5 | 10 Nov | KL + MI; MaxEnt; exponential family named ($\theta=-\lambda$) | LO5, LO6, LO7 | |
| 6 | 17 Nov | Quiz 3; $\theta=-\lambda$ bridge; Shannon capacity; DPI statement; Good Regulator | LO10, LO13 | Q3 (10 min); W3 due; W4 released |
| 7 | 24 Nov | Multi-information / $I+H=C$; DPI proof; IB as GRT gloss; Fisher named thinly | LO8, LO9, LO10 | |
| 8 | 1 Dec | Quiz 4; von Neumann / $I=C$ (optional); LO13 synthesis (Landauer, DPI, GRT, bandwidth) | LO11–LO13 | Q4 (10 min, LO8–LO13); W4 due (LO7, LO10–LO13) |

## Outcome summary

| ID   | Short label                                           | Bloom level | Week |
|------|-------------------------------------------------------|-------------|------|
| LO1  | Boltzmann decomposition: U, TS, free energy           | Analyse     | 2    |
| LO2  | Shannon entropy ≡ thermodynamic entropy               | Apply       | 3    |
| LO3  | Partition function and thermodynamic quantities       | Apply       | 3    |
| LO4  | Maxwell's demon and Landauer's principle              | Analyse     | 4    |
| LO5  | Maximum entropy principle (Jaynes)                    | Apply       | 5    |
| LO6  | Exponential family as MaxEnt family                   | Analyse     | 5    |
| LO7  | Compare three perspectives on entropy                 | Evaluate    | 5    |
| LO8  | Fisher $I(\theta)$ versus Shannon $H$ (vocabulary)    | Understand  | 7    |
| LO9  | MaxEnt identified as $m$-projection (no gradients)    | Remember    | 7    |
| LO10 | Capacity, $I+H=C$, DPI, information bottleneck        | Analyse     | 6–7  |
| LO11 | I = C forces quantum: von Neumann entropy             | Analyse     | 8    |
| LO12 | Agency via Shannon / DPI / GRT                        | Evaluate    | 8    |
| LO13 | Limits on intelligence; Good Regulator (earn W6)      | Evaluate    | 6, 8 |
