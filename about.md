---
layout: lecture-home
title: About
permalink: /about/
---

**Principal lecturer:** Prof Neil Lawrence  
**Taken by:** MPhil ACS, Part III  
**Code:** L172  
**Term:** Michaelmas  
**Hours:** 16 (8 × 2hr lectures)  
**When:** Tuesdays 10:00–12:00, 13 October – 1 December 2026  
**Where:** FW26, William Gates Building  
**Class limit:** max. 10 students  
**Prerequisites:** Undergraduate-level probability and statistics (distributions, Bayes theorem), linear algebra (matrix operations, eigenvalues), and basic multivariate calculus. No prior physics or thermodynamics assumed.

## Aim

Develop the mathematical connections between thermodynamics, information theory, and Bayesian inference, and understand how they provide a toolkit for reasoning about the foundations of intelligent systems.

## Syllabus

Entropy appears in three apparently separate traditions — thermodynamics (Boltzmann, Gibbs), information theory (Shannon), and Bayesian inference (Jaynes) — and turns out to be the same mathematical object viewed from different operational assumptions. The operational split is: **entropy forbids, probability prescribes.** The course covers:

1. probability and entropy review; Socratic LLM method; that theme via perpetual motion and the human–machine bandwidth gap of *The Atomic Human*; then the Boltzmann distribution and free energy,
2. Shannon entropy and its formal equivalence to thermodynamic entropy; grouping / missing measure; MaxEnt and the exponential family,
3. Maxwell's demon as compartments and two ledgers; Landauer's principle as the thermodynamic cost of decision-making,
4. information geometry: the Fisher metric, Crooks' thermodynamic length, dually flat geometry, MaxEnt as projection, and natural gradient descent,
5. multi-information, $I+H=C$, DPI and the information bottleneck, von Neumann entropy,
6. probability transport, Schrödinger bridges, and information-theoretic limits on intelligent agency.

Four ten-minute in-class quizzes sit at the start of lectures 2, 4, 6 and 8.

Worksheets 1–3 are Socratic LLM dialogues (curiosity then skepticism) plus a handwritten reflection. Worksheet 4 is a short notebook plus written reflection. Due at the start of weeks 2, 4, 6 and 8. Moodle filenames use `L172_<CRSid>_worksheet…`; file contents are anonymous (candidate number, not CRSid or name).

## Learning outcomes

| ID | Students will be able to… | Week |
|----|---------------------------|------|
| LO1 | Decompose the Boltzmann distribution into internal energy, entropy, and Helmholtz free energy, and interpret each term | 2 |
| LO2 | Derive Shannon entropy as uncertainty and prove its formal equivalence to thermodynamic (Gibbs) entropy in equilibrium | 3 |
| LO3 | Derive the canonical ensemble and use the partition function to compute mean energy, entropy, and free energy | 3 |
| LO4 | Explain Maxwell's demon, locate the apparent second-law violation, and apply Landauer's principle | 4 |
| LO5 | Apply Jaynes' maximum entropy principle with Lagrange multipliers under moment constraints | 5 |
| LO6 | Identify the exponential family as the MaxEnt family (canonical, Gaussian, Bernoulli, …) | 5 |
| LO7 | Compare information-theoretic, thermodynamic, and Bayesian perspectives on entropy | 5 |
| LO8 | Describe the manifold of distributions with the Fisher metric and the dually flat geometry of exponential families | 6 |
| LO9 | Interpret MaxEnt as a projection and explain why natural gradient descent is the geometrically correct gradient | 7 |
| LO10 | Define multi-information $I$, state $I+H=C$, and relate it to the DPI and information bottleneck | 8 |
| LO11 | Explain why classical $I=C$ forces $H=0$, and show von Neumann entropy resolves nontrivial marginals | 8 |
| LO12 | Articulate probability transport as an abstraction of agency (Fisher–Rao / Wasserstein / Schrödinger bridge) | 8 |
| LO13 | Evaluate capability claims with Landauer, $\mathcal{L}^2/\tau$, $I+H=C$, DPI, and human bandwidth | 8 |

## Assessment

Four take-home worksheets (15% each, 60% total) and four short in-class quizzes (10% each, 40% total).

| Component | Due | Form | Outcomes |
|-----------|-----|------|----------|
| Worksheet 1 | Start of week 2 | Socratic dialogue + handwritten reflection | LO1, LO2 |
| Quiz 1 | Start of week 2 lecture | 10 min invigilated | LO1, LO2, LO3 |
| Worksheet 2 | Start of week 4 | Socratic dialogue + handwritten reflection | LO2, LO3 |
| Quiz 2 | Start of week 4 lecture | 10 min invigilated (paper) | LO1, LO2, LO3 |
| Worksheet 3 | Start of week 6 | Socratic dialogue + handwritten reflection | LO4 |
| Quiz 3 | Start of week 6 lecture | 10 min invigilated | LO4, LO5, LO6, LO7 |
| Worksheet 4 | Start of week 8 | Notebook + written reflection | LO7–LO13 |
| Quiz 4 | Start of week 8 lecture | 10 min invigilated | LO8–LO13 |

Details and marking guidance: [assessment]({{ "/assessment/" | relative_url }}).

## Generative AI

How the lecturer uses generative AI to write and maintain the module, and the student-facing rule for worksheets versus quizzes, is on the [generative AI]({{ "/ai/" | relative_url }}) page.

## Getting help

Ask module questions on [GitHub Discussions](https://github.com/mlatcl/iei/discussions). Start from the pinned [Course Q&A — start here](https://github.com/mlatcl/iei/discussions/1) post, then open a new Q&A discussion for each question. Keep personal or confidential matters (extensions, marks, candidate numbers) off Discussions — use email or the course office instead.

## Recommended Reading

Shannon (1948), *Bell System Technical Journal*; Jaynes (1957), *Physical Review*; Landauer (1961), *IBM Journal*; Amari & Nagaoka (2000), *Methods of Information Geometry* (Chapters 1–3); Crooks (2007), *Physical Review Letters*. Cover & Thomas (2006) and MacKay (2003) as background. Welling, Lu and Holdijk (2026), *Generative AI and Stochastic Thermodynamics* (GAIST), is a supplementary monograph: Chapter 3 for free energy, Chapter 5 for the ELBO, Chapters 14 and 22 for the Wasserstein and Schrödinger-bridge geometries. It is not a substitute for Crooks (2007) or Amari.
