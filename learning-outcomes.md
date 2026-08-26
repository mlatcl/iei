---
outcomes:
  - id: LO1
    text: "Students will be able to decompose the Boltzmann distribution into contributions from internal energy, entropy, and Helmholtz free energy, and interpret each term's physical and informational meaning."
    bloom_level: analyse
    week: 1
    notes: "p_i ∝ exp(-E_i/kT); Z; F = -kT log Z = U - TS. Available (free) energy is what remains after the entropic no-go. Theme introduced here: entropy forbids; probability prescribes. Historical thread: Carnot (1824, engines) → Clausius (1850s–1865, second law; entropy named) → Boltzmann/Gibbs (statistical count) → Shannon/Jaynes (information). Motivations: perpetual motion, and the human–machine bandwidth gap from The Atomic Human (Lawrence, 2024)."

  - id: LO2
    text: "Students will be able to derive Shannon entropy as a measure of uncertainty and prove its formal equivalence to thermodynamic (Gibbs) entropy in equilibrium statistical mechanics."
    bloom_level: apply
    week: 2
    notes: "Shannon H = -Σ p_i log p_i; Boltzmann S = k H. H bounds what a code cannot do; p is the code or the belief. Channel capacity (R ≤ C) and the capacity-achieving input are this week's pair, taught as scaffolding."

  - id: LO3
    text: "Students will be able to derive the canonical ensemble and use the partition function to compute mean energy, entropy, and free energy for simple systems."
    bloom_level: apply
    week: 2
    notes: "Practical computation. Bridges thermodynamics formalism to Jaynes MaxEnt. Partition function Z as a generating function."

  - id: LO4
    text: "Students will be able to explain Maxwell's demon thought experiment, identify where the apparent violation of the second law arises, and apply Landauer's principle to show that information erasure restores thermodynamic consistency."
    bloom_level: analyse
    week: 3
    notes: "Maxwell (1867); Landauer (1961): erasing one bit costs k_B T ln 2. Feedback work bounded by k_B T I(X;M) (Parrondo/Sagawa–Ueda). Macroscopic engines (car) cannot exploit demon-style feedback — thermal DOF/s dwarfs any bit memory; molecular machines (ATP synthase) operate at the scale where information thermodynamics applies. First rigorous link between decision-making and entropy; motivates inaccessible game (week 7)."

  - id: LO5
    text: "Students will be able to apply Jaynes' maximum entropy principle, using Lagrange multipliers, to derive the least-committal probability distribution consistent with a set of moment constraints."
    bloom_level: apply
    week: 4
    notes: "Jaynes (1957). Die example (mean 4.5). Recovers canonical ensemble from mean-energy constraint. Recovers Gaussian from mean and variance constraints."

  - id: LO6
    text: "Students will be able to identify the exponential family as the MaxEnt family and explain why the canonical ensemble, Gaussian, and Bernoulli distributions all belong to it."
    bloom_level: analyse
    week: 4
    notes: "p(x|θ) = exp(θ·T(x) - A(θ)). Unifies thermodynamics, Bayesian statistics and ML. Entropy is the Legendre conjugate of the log-partition, H = A − θ·η, the same subtraction as Helmholtz F = U − TS. That pair (θ, η) is the dual coordinates of weeks 5–6. Softmax is MaxEnt with a feature map; the two-spin Ising model is the first product sufficient statistic. Connects to variational inference and the natural gradient."

  - id: LO7
    text: "Students will be able to compare and contrast the information-theoretic, thermodynamic, and Bayesian perspectives on entropy, articulating the distinct operational assumptions each makes and identifying what each perspective illuminates or obscures."
    bloom_level: evaluate
    week: 4
    notes: "Central synthesis outcome. Shannon: channel capacity / data compression. Boltzmann/Gibbs: macrostate counting / equilibrium. Jaynes/Bayes: rational inference under constraint. All are the same H; the difference is in what the probability is over and who is doing the inferring. All three agree that H forbids and p prescribes."

  - id: LO8
    text: "Students will be able to describe the manifold of probability distributions as a Riemannian space, define the Fisher information matrix as its metric, and explain the dually flat geometry of exponential families including the Pythagorean theorem for KL divergence."
    bloom_level: analyse
    week: 5
    notes: "Amari & Nagaoka (2000). g_ij = E[∂_i log p · ∂_j log p]. e-flat (natural parameters) and m-flat (mean parameters) coordinate systems — the Legendre pair (θ, η) from week 4. Pythagorean theorem: KL(p||r) = KL(p||q) + KL(q||r) when q is the e/m projection. This metric is Crooks' thermodynamic length (2007): the Fisher–Rao length of a path of equilibrium states. In the slow-driving regime dissipation is bounded by L²/τ. Define length in week 5; interpret as a constraint on intelligence in week 8."

  - id: LO9
    text: "Students will be able to apply information geometry to interpret maximum entropy inference as a projection onto a constraint manifold and to explain why natural gradient descent is the geometrically correct gradient for statistical models."
    bloom_level: apply
    week: 6
    notes: "MaxEnt = m-projection of uniform onto the constraint surface. Natural gradient = F^{-1} ∇L where F is the Fisher matrix. Removes the arbitrary dependence on parameterisation. Geodesics of the same metric are Crooks' minimum-dissipation protocols. One computed geodesic on a two-parameter exponential family is enough in week 6."

  - id: LO10
    text: "Students will be able to define multi-information I, state the conservation law I + H = C, and explain the analogy between this structure and the kinetic/potential energy trade-off in classical mechanics."
    bloom_level: analyse
    week: 7
    notes: "Watanabe (1960). I = Σ h_i - H ≥ 0. Fourth axiom of the inaccessible game: Σ h_i = C, so I + H = C. I ~ potential energy (stored correlation); H ~ kinetic energy (free uncertainty)."

  - id: LO11
    text: "Students will be able to explain why the classical limit I = C requires H = 0, argue that sustaining high marginal entropies alongside I = C forces a move beyond classical probability, and show that von Neumann entropy S(ρ) = −Tr(ρ log ρ) satisfies S = 0 for a pure entangled state while its marginals carry positive entropy."
    bloom_level: analyse
    week: 7
    notes: "Classically H = 0 ⟹ deterministic (delta distribution). Quantum: pure entangled state |ψ⟩ has S(ρ) = 0 but reduced states ρ_A, ρ_B have S > 0. This is the passage forced by the inaccessible game's consistency requirements. Algebraic quantum probability: outcomes no longer primitive."

  - id: LO12
    text: "Students will be able to articulate how the movement of probability mass between distributions provides an abstraction of intelligent agency — analogous to Shannon's use of probability to abstract a communication code — and sketch the role of optimal transport and Schrödinger bridges in formalising this abstraction."
    bloom_level: evaluate
    week: 8
    notes: "Shannon: probability over symbols abstracts a code. Analogy: probability transport abstracts an agent (an act as a coupling). Three geometries of an optimal change of state, which must not be collapsed: (1) Fisher–Rao / Crooks thermodynamic length — near-eq, minimum dissipation, bound L²/τ; (2) Wasserstein — minimum ground-cost of moving mass; (3) Schrödinger bridge — maximum-entropy interpolation between p and q. Sinkhorn / IPF is the discrete algorithm for (3), entropy-regularized OT; it is not a fourth geometry, and Wasserstein only as ε→0. Students need the intuition, not the technical details, and must say which geometry they are using."

  - id: LO13
    text: "Students will be able to evaluate claims about the capabilities of intelligent systems using Landauer's principle, the perpetual motion analogy, and the information-theoretic constraints derived from the inaccessible game framework."
    bloom_level: evaluate
    week: 8
    notes: "Closes the loop opened in Week 1. Superintelligence ~ perpetual motion: both promise to repeal a no-go. Evaluate with Landauer, L²/τ, I+H=C, and the human bandwidth constraint from The Atomic Human. The three geometries are prescriptions, not further no-gos."
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
thermodynamics, information theory, maximum entropy, information geometry, and the
inaccessible game.

## Central thread

**Entropy** appears in three apparently separate traditions — thermodynamics (Boltzmann, Gibbs),
information theory (Shannon), and Bayesian inference (Jaynes) — and turns out to be the same
mathematical object viewed from different operational assumptions. **Information geometry**
(Amari) provides the unifying geometric language. The **inaccessible game** (Lawrence, 2025)
uses these tools to derive information-theoretic limits on autonomous systems — limits that
force a passage from classical to quantum probability and that make the superintelligence
promise analogous to perpetual motion.

**Entropy forbids; probability prescribes.** Entropy offers no-go theorems — the second
law, Landauer, channel capacity, \(\mathcal{L}^2/\tau\), \(I+H=C\), the human bandwidth
constraint of *The Atomic Human*. Probability tells us what to do inside that fence — the
Boltzmann occupation, the capacity-achieving input, the MaxEnt distribution, the geodesic,
the Schrödinger bridge.

The closing abstraction echoes Shannon's founding move: just as Shannon abstracted
communication as probability over symbols, we can abstract *intelligent agency* as the
transport of probability mass between distributions — an idea formalised by optimal transport
and Schrödinger bridges, with Sinkhorn as the discrete MaxEnt algorithm for the latter.

## Pedagogy

After each session, students complete a short assignment in which they pose the session's
central concept to an LLM from each of the three disciplinary perspectives (thermodynamic,
information-theoretic, Bayesian) and write a critical synthesis. They should also ask
whether the model treated entropy as a no-go or as a recipe, and note which half it
missed. This is not assessed as a separate outcome; it is the mechanism for building the
multi-perspective fluency required by LO7.

## Lecture map

Eight Tuesdays, 13 October – 1 December 2026, FW26, William Gates Building. Each slot is two hours. Class tests take the first ten minutes of lectures 3, 5, 7 and 8.

| Week | Date | Topic | Outcomes | In slot |
|------|------|-------|----------|---------|
| 1 | 13 Oct | Theme; perpetual motion; *Atomic Human* bandwidth; Boltzmann; free energy | LO1 | W1 released |
| 2 | 20 Oct | Shannon entropy; partition function; chain rule | LO2, LO3 | W1 due |
| 3 | 27 Oct | Maxwell's demon; Landauer; intelligence (first cut) | LO4 | Q1 (10 min); W2 released |
| 4 | 3 Nov | MaxEnt; exponential family; three-perspective synthesis | LO5, LO6, LO7 | W2 due |
| 5 | 10 Nov | Fisher metric; thermodynamic length defined (Crooks) | LO8 | Q2 (10 min); W3 released |
| 6 | 17 Nov | MaxEnt as projection; natural gradient; geodesics | LO9 | W3 due |
| 7 | 24 Nov | Multi-information; I + H = C; von Neumann entropy | LO10, LO11 | Q3 (10 min); W4 released |
| 8 | 1 Dec | Three geometries; limits on intelligence | LO12, LO13 | Q4 (10 min); W4 due |

## Outcome summary

| ID   | Short label                                           | Bloom level | Week |
|------|-------------------------------------------------------|-------------|------|
| LO1  | Boltzmann decomposition: U, TS, free energy           | Analyse     | 1    |
| LO2  | Shannon entropy ≡ thermodynamic entropy               | Apply       | 2    |
| LO3  | Partition function and thermodynamic quantities       | Apply       | 2    |
| LO4  | Maxwell's demon and Landauer's principle              | Analyse     | 3    |
| LO5  | Maximum entropy principle (Jaynes)                    | Apply       | 4    |
| LO6  | Exponential family as MaxEnt family                   | Analyse     | 4    |
| LO7  | Compare three perspectives on entropy                 | Evaluate    | 4    |
| LO8  | Fisher metric and dually flat geometry                | Analyse     | 5    |
| LO9  | MaxEnt as projection; natural gradient                | Apply       | 6    |
| LO10 | Multi-information and I + H = C                       | Analyse     | 7    |
| LO11 | I = C forces quantum: von Neumann entropy             | Analyse     | 7    |
| LO12 | Probability transport as abstraction of agency        | Evaluate    | 8    |
| LO13 | Information-theoretic limits on intelligence          | Evaluate    | 8    |
