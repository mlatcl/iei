---
reading:
  # Core texts
  - title: "Information Theory, Inference, and Learning Algorithms"
    authors: "MacKay, D. J. C."
    year: 2003
    url: "http://www.inference.org.uk/mackay/itila/"
    required: true
    estimated_hours: 10
    notes: "Chapters 1-4 for entropy; Chapters 8-10 for dependent variables and the noisy channel; Chapter 22 for maximum entropy (as an exercise on exponential families). Free online."

  - title: "Elements of Information Theory"
    authors: "Cover, T. M. & Thomas, J. A."
    year: 2006
    edition: 2
    required: true
    estimated_hours: 8
    notes: "A complement to MacKay. Chapters 2, 7, and 12 most relevant (entropy, channel capacity, maximum entropy). Weeks 2 and 4."

  - title: "Probability Theory: The Logic of Science"
    authors: "Jaynes, E. T."
    year: 2003
    url: "https://bayes.wustl.edu/etj/prob/book.pdf"
    required: true
    estimated_hours: 6
    notes: "Chapters 11-12 on maximum entropy inference. Primary source for the Bayesian perspective in LO5-LO7. Week 4."

  - title: "Information Geometry and Its Applications"
    authors: "Amari, S."
    year: 2016
    required: true
    estimated_hours: 6
    notes: "Chapters 1-4 cover the Fisher metric, dually flat geometry, and exponential families. Primary text for weeks 5-6 (LO8, LO9)."

  # Supplementary texts
  - title: "The Atomic Human"
    authors: "Lawrence, N. D."
    year: 2024
    url: "https://the-atomic-human.ai"
    required: false
    estimated_hours: 3
    notes: "Chapter 1 for the embodiment factor and the human–machine bandwidth gap (~100 bit/s versus gigabits). Week 1 motivation; week 3 with Landauer; week 8 as a named no-go."

  - title: "Thermodynamics and an Introduction to Thermostatistics"
    authors: "Callen, H. B."
    year: 1985
    edition: 2
    required: false
    estimated_hours: 4
    notes: "Chapters 1-4 for the postulational formulation (entropy as primitive); Chapters 5-6 for the maximum work theorem and Helmholtz free energy $F=U-TS$; Chapter 16 for the canonical ensemble. Carnot (1824) and Clausius (1850s, entropy 1865) in the historical thread before Boltzmann. Best undergraduate-level treatment for LO1 and LO3. Weeks 1-2."

  - title: "Quantum Computation and Quantum Information"
    authors: "Nielsen, M. A. & Chuang, I. L."
    year: 2000
    url: "https://www.cambridge.org/9781107002173"
    required: false
    estimated_hours: 3
    notes: "Chapter 11 (quantum information theory) for von Neumann entropy and the passage from classical to quantum probability. Week 7 (LO11)."

  - title: "Computational Optimal Transport"
    authors: "Peyré, G. & Cuturi, M."
    year: 2019
    url: "https://optimaltransport.github.io"
    required: false
    estimated_hours: 2
    notes: "Chapters 1-2 for intuition on optimal transport and Wasserstein distance. §4.2 for Sinkhorn (optional; the discrete MaxEnt coupling, Schrödinger geometry). Week 8 (LO12). Free online."

  - title: "Generative AI and Stochastic Thermodynamics: A Tale of Free Energies"
    authors: "Welling, M., Lu, S. & Holdijk, L."
    year: 2026
    required: false
    estimated_hours: 3
    notes: "Supplementary. Draft on the course site. Ch. 3 for Boltzmann, free energy, Maxwell/Landauer (weeks 1–3); §1.5.5 and Ch. 5 for MaxEnt and the ELBO (week 4); Ch. 14 and §§22.2–22.3 for the Schrödinger bridge, Wasserstein, and finite-time Landauer (week 8). The Crooks in this book is the 1999 fluctuation theorem (Ch. 17), not thermodynamic length. The speed limit in Ch. 22 is W₂²/(Tτ), not L²/τ. Does not cover Amari, multi-information, or von Neumann entropy."

  # Primary papers
  - title: "Reflections on the Motive Power of Fire"
    authors: "Carnot, S."
    year: 1824
    required: false
    estimated_hours: 0.5
    notes: "Optional primary source. Heat-engine efficiency before Clausius. Week 1 historical thread (LO1)."

  - title: "Information Engines (seminar notes)"
    authors: "Lawrence"
    year: 2025
    url: "https://inverseprobability.com/talks/notes/information-engines.html"
    required: false
    estimated_hours: 1
    notes: "Optional. Jaynes' world, unified intelligence perspective, car-engine vs ATP synthase scale argument in full. Week 3 (LO4) and week 7 bridge."

  - title: "Thermodynamics of information"
    authors: "Parrondo, J. M. R., Horowitz, J. M. & Sagawa, T."
    year: 2015
    url: "https://doi.org/10.1038/nphys3230"
    required: false
    estimated_hours: 1
    notes: "Modern review: Szilárd engine, feedback second law $W \ge -k_B T I(X;M)$, memories, Landauer, experiments. Week 3 (LO4)."

  - title: "Feynman Lectures on Computation"
    authors: "Feynman, R. P. & Hey, A. J. G. (ed.)"
    year: 1996
    required: false
    estimated_hours: 0.5
    notes: "Chapter 5: reversible computation, Szilard engine, known microstate as fuel. Complement with Feynman Lectures Vol. I, Ch. 46 (ratchet). Week 3 (LO4)."

  - title: "Irreversibility and Heat Generation in the Computing Process"
    authors: "Landauer, R."
    year: 1961
    url: "https://doi.org/10.1147/rd.53.0183"
    required: true
    estimated_hours: 1
    notes: "The two-page original paper establishing Landauer's principle. Should be read directly. Week 3 (LO4)."

  - title: "Information Theory and Statistical Mechanics"
    authors: "Jaynes, E. T."
    year: 1957
    url: "https://doi.org/10.1103/PhysRev.106.620"
    required: true
    estimated_hours: 1
    notes: "The original maximum entropy paper. Very readable. Week 4 (LO5)."

  - title: "A Mathematical Theory of Communication"
    authors: "Shannon, C. E."
    year: 1948
    url: "https://people.math.harvard.edu/~ctm/home/text/others/shannon/entropy/entropy.pdf"
    required: false
    estimated_hours: 2
    notes: "Sections 1-6 give the clearest original exposition of the entropy axioms. Week 2 (LO2)."

  - title: "Measuring Thermodynamic Length"
    authors: "Crooks, G. E."
    year: 2007
    url: "https://doi.org/10.1103/PhysRevLett.99.100602"
    required: true
    estimated_hours: 1
    notes: "Identifies thermodynamic length with Fisher–Rao length of a path of equilibrium states; dissipation bound L²/τ. Week 5 define (LO8); week 8 interpret (LO12)."

  - title: "Sinkhorn Distances: Lightspeed Computation of Optimal Transportation Distances"
    authors: "Cuturi, M."
    year: 2013
    url: "https://arxiv.org/abs/1306.0895"
    required: false
    estimated_hours: 1
    notes: "The ML paper that named Sinkhorn distances and showed entropic regularization of OT enables lightspeed computation. §§3–4: the MaxEnt perspective (entropic constraint = I(X;Y) ≤ α) and the Sinkhorn-Knopp iteration. Connects to week 7 via mutual information. Week 8, optional (LO12)."

  - title: "Information Theoretical Analysis of Multivariate Correlation"
    authors: "Watanabe, S."
    year: 1960
    url: "https://doi.org/10.1147/rd.41.0066"
    required: false
    estimated_hours: 1
    notes: "Defines multi-information (total correlation). Week 7 (LO10)."

  - title: "Information Theory and Statistical Mechanics"
    authors: "Jaynes, E. T."
    year: 1963
    required: false
    estimated_hours: 1
    notes: "Brandeis lectures: MaxEnt for density matrices and von Neumann entropy. Week 7 (LO11)."
---

# Reading List

## Core texts (required)

**MacKay (2003)** — *Information Theory, Inference, and Learning Algorithms* ([free online](http://www.inference.org.uk/mackay/itila/))
Chapters 1–4 for entropy; Chapters 8–10 for dependent variables and the noisy channel; Chapter 22 for maximum entropy. The primary accessible reference for weeks 2 and 4.

**Cover & Thomas (2006)** — *Elements of Information Theory* (2nd ed.)
The rigorous complement to MacKay. Chapter 2 (entropy), Chapter 7 (channel capacity), Chapter 12 (maximum entropy). Weeks 2 and 4.

**Jaynes (2003)** — *Probability Theory: The Logic of Science* ([free online](https://bayes.wustl.edu/etj/prob/book.pdf))
Chapters 11–12 on maximum entropy. The primary source for the Bayesian perspective (LO5–LO7). Week 4.

**Amari (2016)** — *Information Geometry and Its Applications*
Chapters 1–4 for the Fisher metric, dually flat geometry, and exponential families. Primary text for weeks 5–6.

## Supplementary texts

**Lawrence (2024)** — *The Atomic Human* ([the-atomic-human.ai](https://the-atomic-human.ai))
Chapter 1 for the embodiment factor: human communication at about 100 bits per second against machine gigabits. Week 1 motivation; week 3 next to Landauer; week 8 as a named no-go.

**Callen (1985)** — *Thermodynamics and an Introduction to Thermostatistics* (2nd ed.)
Chapters 1–4 for the postulational formulation (entropy as primitive). Chapters 5–6 for the maximum work theorem and Helmholtz free energy $F = U - TS$. Chapter 16 for the canonical ensemble and the partition function. Best undergraduate-level thermodynamics treatment for LO1 and LO3. Weeks 1–2.

**Nielsen & Chuang (2000)** — *Quantum Computation and Quantum Information*
Chapter 11 (quantum information theory) for von Neumann entropy. Week 7 (LO11).

**Peyré & Cuturi (2019)** — *Computational Optimal Transport* ([free online](https://optimaltransport.github.io))
Chapters 1–2 for intuition on optimal transport and Wasserstein distance. §4.2 for Sinkhorn, if you want the iteration that computes the discrete MaxEnt coupling (Schrödinger geometry, not Crooks). Week 8 (LO12).

**Welling, Lu & Holdijk (2026)** — *Generative AI and Stochastic Thermodynamics: A Tale of Free Energies* (GAIST)
A supplementary monograph from the 2024 AIMS lectures. Variational free energy is identified with the ELBO; inference is heat, learning is work. Read by chapter, not cover to cover. A draft is on the course site.

| Weeks | Read | Do not expect |
|-------|------|----------------|
| 1–2 | Ch. 3 (ensembles, $F=U-TS$, heat as $\delta\rho$, work as $\delta H$); §1.2.3–1.2.4 (entropy, KL) | Perpetual motion; Shannon axioms; channel capacity |
| 3 | §3.3, pp. 49–52 (Maxwell, Landauer, Bennett); optional Parrondo et al. (2015) | Szilard's engine calculation; full fluctuation-theorem formalism |
| 4 | §1.5.5 (MaxEnt $\to$ canonical); Ch. 5 (ELBO as nonequilibrium free energy) | The three-perspective comparison. GAIST collapses thermo and ML; we do not. |
| 5–6 | Nothing required. Ch. 17 is the *other* Crooks (1999 fluctuation theorem). | Thermodynamic length; Fisher–Rao; Amari; natural gradient. The speed limit in Ch. 22 is Wasserstein. |
| 7 | — | Multi-information; $I+H=C$; von Neumann entropy |
| 8 | Ch. 14 (Schrödinger bridge, maximum caliber); §§22.2–22.3 ($W_2$, $\Sigma\ge W_2^2/(T\tau)$, finite-time Landauer) | A substitute for Crooks (2007). Keep the three geometries distinct. |

## Primary papers (required)

**Landauer (1961)** — "Irreversibility and Heat Generation in the Computing Process," *IBM J. Res. Dev.*
Two pages; should be read in full. Week 3 (LO4).

**Parrondo, Horowitz & Sagawa (2015)** — "Thermodynamics of information," *Nature Physics* 11, 131–139. ([doi](https://doi.org/10.1038/nphys3230))
Accessible review of Szilárd's engine, the feedback second law, physical memories, laboratory realizations, and molecular-scale engines. Week 3 (LO4).

**Lawrence (2025)** — [Information Engines](https://inverseprobability.com/talks/notes/information-engines.html) (seminar notes)
Optional depth: Jaynes' world, car-engine versus ATP synthase scale contrast, unified intelligence perspective. Week 3 and week 7 bridge; full synthesis week 8.

**Feynman & Hey (1996)** — *Feynman Lectures on Computation*
Chapter 5 on reversible computation and the Szilard engine; known microstate as thermodynamic fuel. Pair with *The Feynman Lectures on Physics* Vol. I, Ch. 46 (ratchet and one-bath caution). Week 3 (LO4).

**Jaynes (1957)** — "Information Theory and Statistical Mechanics," *Phys. Rev.* 106, 620.
The original maximum entropy paper; very readable. Week 4 (LO5).

**Shannon (1948)** — "A Mathematical Theory of Communication," *Bell Syst. Tech. J.*
Sections 1–6 for the entropy axioms. Week 2 (LO2).

**Crooks (2007)** — "Measuring Thermodynamic Length," *Phys. Rev. Lett.* 99, 100602.
Thermodynamic length as Fisher–Rao length; dissipation $\ge \mathcal{L}^2/\tau$. Define in week 5 (LO8); interpret in week 8 (LO12).

**Watanabe (1960)** — "Information Theoretical Analysis of Multivariate Correlation," *IBM J. Res. Dev.*
The original multi-information paper. Week 7 (LO10).

**Jaynes (1963)** — "Information Theory and Statistical Mechanics," Brandeis lectures.
MaxEnt applied to density matrices. Week 7 (LO11).

**Cuturi (2013)** — "Sinkhorn Distances: Lightspeed Computation of Optimal Transportation Distances," *NeurIPS 26*, pp. 2292–2300. ([arXiv:1306.0895](https://arxiv.org/abs/1306.0895))
The paper that brought entropy-regularized OT into machine learning. §§3–4: the MaxEnt perspective on the coupling polytope (entropic constraint = bounding mutual information $I(X;Y) \le \alpha$) and the Sinkhorn-Knopp iteration. Optional; read §3 for the MaxEnt framing and §4.1 for the algorithm. Week 8 (LO12).
