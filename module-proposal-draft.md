# Module Choices 2026–27 — Draft Answers
## Information, Entropy and Intelligence

*Draft for review by Neil D. Lawrence. Items marked ⚠️ require confirmation before submission.*

---

## General Information

**1. Name**

Neil D. Lawrence

**2. Email**

ndl21@cam.ac.uk

**3. Term preference** ⚠️

Lent *(suggested: avoids overlap with L48 Machine Learning and the Physical World, which runs in Michaelmas under the same lecturer; confirm with timetabling)*

**4. Are you proposing a module that is:**

New

---

## New Module Information

**5. Will this new module be for:**

ACS MPhil/Part III students only

**6. What is the proposed module title?**

Information, Entropy and Intelligence

**7. A brief description of teaching style**

Style: Lectures [L], 8 × 2-hour sessions = **16 hours** contact time.

Each session is followed by a formative (unassessed) exploration exercise in which students pose the session's central concept to a large language model from three disciplinary perspectives — thermodynamic, information-theoretic, and Bayesian — and write a short critical synthesis. This is the principal mechanism for building the multi-perspective fluency required by LO7; it is not separately timetabled but constitutes a significant proportion of the self-study hours.

**8. Faculty member(s) responsible for teaching and assessment**

Prof Neil D. Lawrence

**9. Name of person/people delivering the teaching**

Prof Neil D. Lawrence *(guest contributors may be invited for individual sessions; to be confirmed)*

**10. Please specify the maximum class size (if any)** ⚠️

No maximum specified. In-class Moodle quizzes require physical attendance and a personal device; room capacity will be the practical constraint.

**11. Pre-requisites**

Students are expected to have:

- Undergraduate probability and statistics: probability distributions, expectation, discrete and continuous random variables, Bayes' theorem
- Linear algebra: matrix operations, eigenvalues and eigenvectors (required for the Fisher information matrix in Weeks 6–7)
- Basic multivariate calculus: partial derivatives, Lagrange multipliers (introduced in session but prior exposure helpful)

No prior knowledge of physics or thermodynamics is assumed or required; all thermodynamic concepts are developed from first principles during the module.

**12. A brief statement of the overall aim of the module**

A century ago, every major automobile manufacturer was investing in the promise of perpetual motion — a car that needs no fuel. We know why that was impossible: the second law of thermodynamics. Today, billions are being invested in promises of superintelligence. Is there an equivalent conservation law that makes *that* equally impossible?

This module builds the mathematical machinery needed to answer that question rigorously. Entropy appears in three apparently separate traditions — thermodynamics (Boltzmann, Gibbs), information theory (Shannon), and Bayesian inference (Jaynes) — and turns out to be the same mathematical object viewed from different operational assumptions. Information geometry (Amari) provides the unifying geometric language. Multi-information, the data-processing inequality, and the information bottleneck make precise what processing can and cannot do; those tools, with Landauer and thermodynamic length, make the superintelligence promise analogous to perpetual motion and force the classical limit I = C toward von Neumann entropy.

The closing abstraction echoes Shannon's founding move: just as Shannon abstracted communication as probability over symbols, we can abstract intelligent agency as the transport of probability mass between distributions, an idea formalised by optimal transport and Schrödinger bridges.

**13. Syllabus** (topics and teaching method per session)

| Week | Topic | Teaching approach |
|------|-------|-------------------|
| 1 | **Theme; perpetual motion; *Atomic Human* bandwidth; probability/entropy review; Boltzmann seed** — Entropy forbids / probability prescribes. Motivating question. | Lecture + motivating examples; Worksheet 1 released |
| 2 | **Boltzmann; free energy F = U − TS; Schottky** — Partition function Z; internal energy U; entropy S; Helmholtz free energy. | Lecture; in-class Quiz 1; Worksheet 1 due |
| 3 | **Shannon entropy; partition function; chain rule; mutual information; DPI (statement)** — H = −Σ pᵢ log pᵢ; Boltzmann S = kH. Channel capacity as scaffolding. DPI named; proof and information bottleneck wait for week 8. | Lecture + derivation |
| 4 | **Maxwell's demon; Landauer; intelligence (first cut)** — Landauer (1961): erasing one bit costs k_B T ln 2. Feedback work bounded by information. | Lecture + thought-experiment; Worksheet 2 released |
| 5 | **MaxEnt; exponential family; three-perspective synthesis** — Jaynes with Lagrange multipliers; exponential family; Shannon / Boltzmann / Bayes comparison. | Lecture; in-class Quiz 2; Worksheet 2 due |
| 6 | **Fisher metric; thermodynamic length (Crooks)** — Manifold of distributions; Fisher information; e/m dual flats; Pythagorean theorem for KL. Length defined; intelligence interpretation in week 8. | Lecture + worked examples; Worksheet 3 released |
| 7 | **MaxEnt as projection; natural gradient; geodesics** — m-projection; natural gradient F⁻¹∇L; geodesics as minimum-dissipation protocols. | Lecture + coding; in-class Quiz 3; Worksheet 3 due; Worksheet 4 released |
| 8 | **Multi-information; DPI; IB; von Neumann; three geometries; limits on intelligence** — I + H = C; DPI proof; information bottleneck; classical I = C → quantum; OT / Schrödinger / Sinkhorn; evaluate superintelligence claims. | Split two-hour slot; in-class Quiz 4; Worksheet 4 due |

**14. List the objectives or learning goals**

| ID | Learning outcome | Bloom level | Week |
|----|-----------------|-------------|------|
| LO1 | Decompose the Boltzmann distribution into contributions from internal energy, entropy, and Helmholtz free energy, and interpret each term's physical and informational meaning | Analyse | 2 |
| LO2 | Derive Shannon entropy as a measure of uncertainty and prove its formal equivalence to thermodynamic (Gibbs) entropy in equilibrium statistical mechanics | Apply | 3 |
| LO3 | Derive the canonical ensemble and use the partition function to compute mean energy, entropy, and free energy for simple systems | Apply | 3 |
| LO4 | Explain Maxwell's demon thought experiment, identify where the apparent second-law violation arises, and apply Landauer's principle to show that information erasure restores thermodynamic consistency | Analyse | 4 |
| LO5 | Apply Jaynes' maximum entropy principle, using Lagrange multipliers, to derive the least-committal probability distribution consistent with a set of moment constraints | Apply | 5 |
| LO6 | Identify the exponential family as the MaxEnt family and explain why the canonical ensemble, Gaussian, and Bernoulli distributions all belong to it | Analyse | 5 |
| LO7 | Compare and contrast the information-theoretic, thermodynamic, and Bayesian perspectives on entropy, articulating the distinct operational assumptions each makes and what each illuminates or obscures | Evaluate | 5 |
| LO8 | Describe the manifold of probability distributions as a Riemannian space, define the Fisher information matrix as its metric, and explain the dually flat geometry of exponential families including the Pythagorean theorem for KL divergence | Analyse | 6 |
| LO9 | Apply information geometry to interpret maximum entropy inference as a projection onto a constraint manifold, and explain why natural gradient descent is the geometrically correct gradient for statistical models | Apply | 7 |
| LO10 | Define multi-information I, state the conservation law I + H = C, and explain the analogy between this structure and the kinetic/potential energy trade-off in classical mechanics (DPI and information bottleneck taught under this outcome) | Analyse | 8 |
| LO11 | Explain why the classical limit I = C requires H = 0, argue that sustaining high marginal entropies alongside I = C forces a move beyond classical probability, and show that von Neumann entropy S(ρ) = −Tr(ρ log ρ) satisfies S = 0 for a pure entangled state while its marginals carry positive entropy | Analyse | 8 |
| LO12 | Articulate how the movement of probability mass between distributions provides an abstraction of intelligent agency — analogous to Shannon's use of probability to abstract a communication code — and sketch the role of optimal transport and Schrödinger bridges in formalising this abstraction | Evaluate | 8 |
| LO13 | Evaluate claims about the capabilities of intelligent systems using Landauer's principle, the perpetual motion analogy, and information-theoretic constraints including I + H = C, the data-processing inequality, and human bandwidth | Evaluate | 8 |

**15. Recommended reading material and resources**

*Primary references (all covered in lectures):*

- Shannon, C.E. (1948). "A Mathematical Theory of Communication." *Bell System Technical Journal*, 27, 379–423.
- Jaynes, E.T. (1957). "Information Theory and Statistical Mechanics." *Physical Review*, 106(4), 620–630.
- Landauer, R. (1961). "Irreversibility and Heat Generation in the Computing Process." *IBM Journal of Research and Development*, 5(3), 183–191.
- Watanabe, S. (1960). "Information Theoretical Analysis of Multivariate Correlation." *IBM Journal of Research and Development*, 4(1), 66–82.
- Cover, T.M. & Thomas, J.A. (2006). *Elements of Information Theory* (2nd ed.). Wiley. *(DPI: Thm 2.8.1; background for Weeks 3 and 8)*
- Tishby, N., Pereira, F.C. & Bialek, W. (1999). "The information bottleneck method." *(Taught under LO10 in week 8)*
- Amari, S. & Nagaoka, H. (2000). *Methods of Information Geometry*. AMS/Oxford University Press. *(Chapters 1–3)*

*Supporting textbooks:*

- MacKay, D.J.C. (2003). *Information Theory, Inference, and Learning Algorithms*. Cambridge University Press. *(Freely available online; relevant chapters indicated per session)*
- Callen, H.B. *Thermodynamics and an Introduction to Thermostatistics*. *(Undergraduate thermodynamic thread for Weeks 1–3)*

**16. Assessment format**

The module is assessed by two paired components that together ensure both exploratory depth and authentic independent comprehension: four take-home worksheets (mini-projects) and four short in-class Moodle quizzes. There are no ticks; the maximum attainable grade is 100%.

*Worksheets (60% total, 15% each)*

Each worksheet consists of a short Python notebook and a written reflection (300–500 words). Use of LLMs is explicitly permitted and encouraged for both code generation and written exploration. Formative feedback on each worksheet is issued before the next worksheet opens (fortnightly cycle). Summative feedback is issued within 21 days of the final submission deadline.

| Worksheet | Due | Topics | LOs | Weight |
|-----------|-----|--------|-----|--------|
| Worksheet 1: Socratic dialogue on Boltzmann and entropy | Start of Week 2 (20 Oct) | Boltzmann / theme seeds; Socrates habit | LO1, LO2 | 15% |
| Worksheet 2: Maxwell's demon, MaxEnt, and the exponential family | Start of Week 5 (10 Nov) | Landauer; MaxEnt; exponential family; three perspectives | LO3–LO7 | 15% |
| Worksheet 3: Information geometry and thermodynamic length | Start of Week 7 (24 Nov) | Fisher matrix; natural vs vanilla gradient; length | LO8, LO9 | 15% |
| Worksheet 4: Multi-information, von Neumann entropy, and limits on intelligence | Start of Week 8 (1 Dec) | Multi-information; DPI/IB; von Neumann; transport; limits | LO10–LO13 | 15% |

*In-class Moodle quizzes (40% total, 10% each)*

Each quiz is administered at the start of the relevant lecture (10 minutes, ~10 auto-marked items). Students use their own phones or laptops; no external resources are permitted. Because quizzes are invigilated and in-person, LLM assistance is not possible — these provide a direct comprehension check independent of worksheet work. Questions are drawn from large YAML banks and auto-graded.

| Quiz | Administered | Topics tested | LOs | Weight |
|------|-------------|---------------|-----|--------|
| Quiz 1 | Start of Week 2 | Probability/entropy foundations; Week 1 Boltzmann seeds | LO1–LO3 | 10% |
| Quiz 2 | Start of Week 5 | MaxEnt, exponential family, Landauer | LO4–LO7 | 10% |
| Quiz 3 | Start of Week 7 | Fisher metric, natural gradient, dually flat geometry | LO8, LO9 | 10% |
| Quiz 4 | Start of Week 8 | Multi-information, I + H = C, DPI/IB, von Neumann, limits | LO10–LO13 | 10% |

ACS constraints satisfied: 60% pass, 75% distinction, formative feedback issued fortnightly, summative feedback within 21 days of final submission. Worksheets satisfy the Cambridge "coursework" definition (submission window > 24 hours).

**17. How will the module fit with the rest of the current modules?**

*Information, Entropy and Intelligence* is positioned as a foundational theory module that is complementary to, but does not overlap with, the existing ACS portfolio.

The closest existing modules are:

- **L48 Machine Learning and the Physical World** (Lawrence & Ek, Michaelmas): that module focuses on probabilistic modelling and decision-making for physical systems under data scarcity; it assumes familiarity with probability and inference but does not cover their thermodynamic or information-geometric foundations. *IEI* supplies exactly those foundations and would be a natural precursor or companion; the two modules share no content.

- **Theory of Deep Learning (R252)** (Huszar & Mishra, Lent): examines why deep learning works from a mathematical perspective, including implicit regularisation and generalisation theory. *IEI* operates at a more foundational level — classical and quantum information theory, thermodynamic limits — and provides tools (Fisher metric, natural gradient, exponential family) that recur in deep learning theory but are not developed there from first principles. The modules are complementary.

- **Advanced Topics in Machine Learning (R255)** (Jamnik & Ek, Lent): a reading-group module on current ML research. *IEI* equips students with the foundational vocabulary needed to engage with information-theoretic arguments that appear throughout the ML literature.

- **Category Theory (L108)** (Fiore, Michaelmas): provides mathematical foundations in an algebraic/categorical direction. *IEI* provides an orthogonal probabilistic-geometric foundation. Students wishing a rigorous mathematical basis for CS would benefit from both.

No current ACS module covers thermodynamics, information theory, or information geometry as primary material. *IEI* therefore fills a distinct position in the module landscape without duplicating existing content.

**18. Does it fill a teaching gap of the department?**

Yes. The module fills two related gaps.

First, **information theory as a foundational discipline for computer science and AI** is not covered as a primary topic in any current ACS module. Shannon's framework underpins data compression, channel coding, statistical inference, machine learning, and cryptography, yet students graduate from the ACS without encountering it systematically. *IEI* addresses this.

Second, and more timely, **rigorous formal limits on the capabilities of autonomous intelligent systems** are not addressed anywhere in the current curriculum. As claims about artificial general intelligence and superintelligence attract increasing public and policy attention, the department has no module that equips students to evaluate those claims from first principles. *IEI* provides precisely this — grounding the question in Landauer's principle, the second law of thermodynamics, and the information-geometric framework, in a way that is analogous to how thermodynamics settled the perpetual-motion debate. This aligns with the department's strategic interest in the foundations of AI.

**19. Any additional comments for the TMC or PEC?**

The use of LLMs in assessed worksheets is intentional and pedagogically motivated. The course is designed around the observation that current AI tools are excellent at presenting information from multiple disciplinary perspectives but cannot perform the critical synthesis required to answer the module's central question. The worksheet reflections are therefore designed to be LLM-assisted but LLM-unresolvable: a student who delegates the reflection to a model without genuine understanding will not have the comprehension needed to pass the in-class quizzes, which cover the same material independently. The paired assessment structure thus makes LLM assistance a feature of the learning design rather than an integrity risk.
