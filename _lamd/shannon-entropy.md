---
title: "Shannon Entropy and the Partition Function"
week: 3
layout: lecture
date: 2026-10-27
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  Shannon entropy as a measure of uncertainty, and its formal equivalence
  to thermodynamic entropy. The partition function as a generating function
  for mean energy, entropy, and free energy. The chain rule, mutual
  information, channel capacity, and the data-processing inequality are
  introduced as scaffolding: $I$ and DPI are stated today and proved
  in week 8.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO2, LO3]
duration_hours: 2
type: lecture
in_class_test: null
reading:
  - title: "A Mathematical Theory of Communication"
    author: "Shannon"
    chapter: "Sections 1–6"
    estimated_hours: 2
  - title: "Information Theory, Inference, and Learning Algorithms"
    author: "MacKay"
    chapter: "Chapters 1–4; 6 (arithmetic coding / Dasher); 8–10"
    estimated_hours: 3.5
  - title: "Elements of Information Theory"
    author: "Cover and Thomas"
    chapter: "Chapters 2 and 7; Theorem 2.8.1 stated, not proved"
    estimated_hours: 2
  - title: "Thermodynamics and an Introduction to Thermostatistics"
    author: "Callen"
    chapter: "Chapter 16"
    estimated_hours: 1
    required: false
  - title: "Generative AI and Stochastic Thermodynamics"
    author: "Welling, Lu and Holdijk"
    chapter: "§1.2.3–1.2.4; §3.2.4"
    estimated_hours: 0.5
    required: false
---

\notes{No class test today. Boltzmann and free energy were last week. Today: Shannon $H$ and the partition function as a generating function.}

\subsection{This Session}

\slidesincremental{
* Shannon $H$; Boltzmann $S = kH$
* Arithmetic coding → Dasher: $H$ as bits, $p$ as the next letter
* Partition function as a generating function
* Scaffolding: $I(X;Y)$, capacity, DPI (statement)
}

\notes{
**Time plan (120 minutes)**

| Minutes | Block |
|--------:|-------|
| 0–10 | Recap Boltzmann / free energy; preview Maxwell (next week) |
| 10–40 | Shannon axioms; Wiener from Gibbs; equivalence to Boltzmann |
| 40–55 | Arithmetic coding (MacKay Ch.~6) then Dasher |
| 55–65 | Break |
| 65–100 | Canonical ensemble; $Z$ as generating function; bath revisited |
| 100–120 | KL-divergence; Chain rule; define $I(X;Y)$; capacity (statement); DPI (statement) |

}

\newslides{From Lecture 1}

\slides{Lecture 1–2 counted human communication in Shannon's bits — a bottleneck on how fast thought can leave the body.}

\slidesincremental{
* Today: derive $H$ and connect $S = kH$
* The bottleneck remains; we gain the measure behind the bit
}

\speakernotes{Callback before axioms. Bandwidth is not a thermodynamic no-go — it constrains intelligence. $H$ is the formal account of uncertainty in $p$.}

\notes{Week 1 introduced Shannon's portrait and embodiment factors in bits per second. This lecture derives $H=-\sum_i p_i\log p_i$ and shows that Boltzmann entropy uses the same functional form. The human–machine bandwidth gap is a communication bottleneck; channel capacity is the analogous no-go on *codes*, not on embodiment.}

\subsection{Shannon Entropy}

\include{_policy/includes/shannon-information.md}

\include{_physics/includes/brownian-wiener.md}

<!-- SNIPPET: _information/includes/shannon-entropy-derivation.md -->

\newslides{Shannon Entropy from Axioms}

\slides{Shannon asked: what number measures uncertainty in a discrete distribution $p=(p_1,\ldots,p_n)$?}

\slidesincremental{
* Continuity; maximum at uniform; additive for independent parts
* Result: $H(p) = -\sum_i p_i \log p_i$
* No-go: codes cannot beat $H$ on average; prescription: $p$ *is* the code or belief
}

\speakernotes{Sketch the axioms; do not prove uniqueness. Board: fair coin, $p=0.9$, uniform-8. LO2. Wiener: Gibbs → communication.}

\notes{Shannon entropy $H=-\sum_i p_i\log p_i$ measures uncertainty. Thermodynamic entropy $S=kH$ uses the same functional form with a different operational reading: $H$ bounds what a code cannot do; the distribution $p$ is the prescription — the code or the belief.}

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
import mlai}

\plotcode{p = np.linspace(0.01, 0.99, 200)
H = [-q*np.log2(q)-(1-q)*np.log2(1-q) for q in p]
fig, ax = plt.subplots(figsize=(7, 4))
ax.plot(p, H, linewidth=2)
ax.scatter([0.5, 0.9], [1.0, 0.469], s=80, zorder=3)
ax.set_xlabel('$p$ (probability of 0)')
ax.set_ylabel('$H$ (bits)')
ax.set_title('Binary entropy')
mlai.write_figure('binary-entropy.svg', directory='\writeDiagramsDir/ml')}

\figure{\includediagram{\diagramsDir/ml/binary-entropy}{70%}}{Binary entropy is maximal at $p=\frac12$ and falls as the source becomes predictable.}{binary-entropy}

\slides{
\includediagram{\diagramsDir/ml/binary-entropy}{70%}
}

\setupcode{import numpy as np}

\code{def shannon_entropy(probs, base=2):
    p = np.asarray(probs, dtype=float)
    p = p[p > 0]
    H = -np.sum(p * np.log(p))
    return H / np.log(base) if base == 2 else H

# Worksheet 1 tabulates fair coin, p=0.9, uniform-8, Boltzmann at beta=1}

<!-- /SNIPPET: _information/includes/shannon-entropy-derivation.md -->

\addreading{@Shannon-mathematical48}{Sections 1--6}
\addreading{@MacKay-information03}{Chapters 1--4; Chapter 6}
\addreading{@Cover:elements91}{Chapter 2}

\subsection{Arithmetic Coding and Dasher}

\include{_information/includes/arithmetic-coding.md}

\include{_information/includes/dasher.md}

\notes{Dasher is the pair in one interface. Letter height is $p(\mathrm{char}\mid\mathrm{context})$; the information cost of a hit is $-\log p$. $H(\mathrm{next})$ is the no-go on the remaining rate. The language model is the prescription: this is the next letter you should make easy to hit. The bits-per-second counter is the same unit as lecture 1's bandwidth bottleneck — here spent on a pointer, not on speech.}

\subsection{The Partition Function}

<!-- SNIPPET: _physics/includes/partition-function-generating.md -->

\newslides{$Z$ as Generating Function}

\slides{The canonical ensemble from the bath: fix $\beta$ and let the small system fluctuate.}

\slidesincremental{
* $Z(\beta) = \sum_i e^{-\beta E_i}$
* $U = -\partial_\beta \log Z$, \quad $F = -\beta^{-1}\log Z$, \quad $S = \beta(U-F)$
* Equilibrium = on the $\beta$-manifold; finite-time driving leaves it
}

\speakernotes{LO3. Work the two-state example on the board. Finite-time cost: named lecture 2, Crooks week 6.}

\notes{The partition function $Z(\beta)=\sum_i e^{-\beta E_i}$ is a generating function: $U=-\partial_\beta\log Z$, $F=-\beta^{-1}\log Z$, $S=\beta(U-F)$. The canonical ensemble is an equilibrium construction; driving in finite time leaves that manifold.}

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
import mlai}

\plotcode{eps = 1.0
beta = np.linspace(0.1, 3.0, 300)
Z = 1.0 + np.exp(-beta * eps)
U = eps / (1.0 + np.exp(beta * eps))
F = -np.log(Z) / beta
S = beta * (U - F)
fig, ax = plt.subplots(figsize=(7, 4))
ax.plot(beta, U, label='$U$')
ax.plot(beta, S, label='$S$')
ax.plot(beta, F, label='$F$')
ax.set_xlabel(r'$\beta$')
ax.legend()
ax.set_title('Two-state system')
mlai.write_figure('two-state-partition.svg', directory='\writeDiagramsDir/ml')}

\figure{\includediagram{\diagramsDir/ml/two-state-partition}{75%}}{Thermodynamic quantities from $Z(\beta)$ for the two-state system used as a running example.}{two-state-partition}


\setupcode{import numpy as np

def partition(energies, beta):
    return np.sum(np.exp(-beta * np.asarray(energies)))

def thermo_from_Z(beta, energies):
    e = np.asarray(energies, dtype=float)
    Z = partition(e, beta)
    p = np.exp(-beta * e) / Z
    U = np.sum(p * e)
    F = -np.log(Z) / beta
    S = beta * (U - F)
    return U, S, F}

<!-- /SNIPPET: _physics/includes/partition-function-generating.md -->

\slidesincremental{
* $U = -\partial_\beta \log Z$
* $F = -\beta^{-1}\log Z$
* Bath justifies the canonical ensemble
}

\include{_information/includes/welling-entropy-partition.md}

\notes{GAIST §1.2.3 uses $-\int p\log p$ for Gaussians — that is *differential* entropy. It can be negative and is not bounded like discrete Shannon $H\in[0,\log n]$. Below we introduce KL divergence, which is always $\ge 0$ discrete and continuous. That is why MaxEnt projections minimise $\mathrm{KL}(\cdot\|r)$, not raw $H$.}

\addreading{@Callen-thermostatistics85}{Chapter 16}


<!-- SNIPPET: _information/includes/kl-divergence-discrete-continuous.md -->

\newslides{Discrete Shannon Entropy Is Bounded}

\slides{Week 3 derived Shannon entropy for discrete $p=(p_1,\ldots,p_n)$.}

\slidesincremental{
* $0 \le H(p) \le \log n$ on $n$ outcomes
* Maximum at uniform; zero on a delta
* Code interpretation: average length cannot beat $H$
}

\newslides{KL Divergence}

\slides{Comparing two distributions needs a functional that is always sensible.}

\slidesincremental{
* $\mathrm{KL}(p\|q) = \sum_i p_i \log(p_i/q_i)$ discrete; $\int p\log(p/q)\,dx$ continuous
* Always $\mathrm{KL}(p\|q) \ge 0$; zero iff $p = q$ (same support)
* Extra surprise when $q$ stands in for $p$ — not a metric, but a directed cost
}

\speakernotes{LO8 setup. Board: $\mathrm{KL}(p\|q)\neq\mathrm{KL}(q\|p)$. Jaynes die week 5 minimised $\mathrm{KL}(p\|r)$ without naming it. Week 7: $m$-projection.}

\notes{KL divergence measures information lost when $q$ is used instead of $p$. It is non-negative in both discrete and continuous settings (with common support). Unlike Shannon entropy, it is defined relative to a reference. MaxEnt and $m$-projections minimise $\mathrm{KL}(\cdot\|r)$; that is why week 4's die optimisation used $\sum_i p_i\log(p_i/r_i)$.}

\newslides{Differential Entropy Is a Different Object}

\slides{Gaussian channel uses $-\int p\log p$ — differential entropy.}

\slidesincremental{
* Can be **negative**; not bounded below
* Not a code-length bound — compare distributions with **KL**
}

\notes{For $\mathcal{N}(0,\sigma^2)$, differential entropy is $\frac{1}{2}\log(2\pi e\sigma^2)$ in nats. As $\sigma\to 0$ it diverges negatively. Discrete Shannon entropy stays in $[0,\log n]$. Thermodynamic $S=kH$ in week 1 used the discrete sum form on Boltzmann probabilities. Continuous MaxEnt still works because constraints fix scale; comparing to a reference uses KL, which remains non-negative.}

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
import mlai}

\plotcode{p = np.linspace(0.01, 0.99, 200)
H_bin = -p*np.log2(p) - (1-p)*np.log2(1-p)
sigma = np.linspace(0.15, 3.0, 200)
h_diff = 0.5 * np.log(2 * np.pi * np.e * sigma**2)
fig, axes = plt.subplots(1, 2, figsize=(9, 3.5))
axes[0].plot(p, H_bin, 'k-', linewidth=2)
axes[0].axhline(1.0, color='gray', linestyle='--', alpha=0.6, label='max ($n=2$)')
axes[0].set_xlabel('$p$'); axes[0].set_ylabel('$H$ (bits)')
axes[0].set_title('Discrete: $0 \\le H \\le \\log n$')
axes[0].legend(fontsize=8)
axes[1].plot(sigma, h_diff, 'C1', linewidth=2)
axes[1].axhline(0, color='gray', linestyle='--', alpha=0.6)
axes[1].set_xlabel('$\\sigma$'); axes[1].set_ylabel('$h$ (nats)')
axes[1].set_title('Gaussian differential entropy')
fig.tight_layout()
mlai.write_figure('entropy-bounded-vs-differential.svg', directory='\writeDiagramsDir/ml')}

\figure{\includediagram{\diagramsDir/ml/entropy-bounded-vs-differential}{90%}}{Left: binary Shannon entropy is bounded. Right: Gaussian differential entropy can be negative.}{entropy-bounded-vs-differential}

\slides{
\includediagram{\diagramsDir/ml/entropy-bounded-vs-differential}{90%}
}

<!-- /SNIPPET: _information/includes/kl-divergence-discrete-continuous.md -->

\subsection{Scaffolding, Not Outcomes}

<!-- SNIPPET: _information/includes/channel-capacity-chain-rule.md -->

\newslides{Chain Rule, Mutual Information, Capacity}

\slides{Four results we will need later --- stated, not proved today.}

\slidesincremental{
* Chain rule: $H(X,Y) = H(X) + H(Y|X)$
* Mutual information: $I(X;Y) = H(X)-H(X|Y) = H(X)+H(Y)-H(X,Y)$
* Capacity: no rate above $C$; achieving $C$ requires the capacity-achieving $p(x)$
* Data processing: if $X\to Y\to Z$ is Markov, $I(X;Z)\le I(X;Y)$
}

\speakernotes{Define $I$ from the chain rule. State DPI; do not prove. Proof and the information bottleneck are week 8 (LO10). Capacity remains this week's no-go/prescription pair.}

\notes{The chain rule $H(X,Y)=H(X)+H(Y|X)$ is the algebraic source of multi-information. Mutual information $I(X;Y)=H(X)-H(X|Y)$ is the pairwise case; we do not yet treat $n>2$. Channel capacity $C$ is a no-go on rate; the capacity-achieving input distribution is the prescription. The data-processing inequality is the no-go on $I$: processing cannot create information. Cover and Thomas Theorem 2.8.1 is the reading; the proof waits for week 8, when $I$ is first-class.}

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
import mlai}

\plotcode{eps = 0.1
p = np.linspace(0.01, 0.99, 200)
H = lambda q: -q*np.log2(q)-(1-q)*np.log2(1-q)
I = H(p) - H(eps)
fig, ax = plt.subplots(figsize=(7, 4))
ax.plot(p, I, linewidth=2)
ax.scatter([0.5], [H(0.5) - H(eps)], s=80, color='red', zorder=3)
ax.set_xlabel('input bias $p(x=1)$')
ax.set_ylabel('$I(X;Y)$ (bits)')
ax.set_title('Binary symmetric channel')
mlai.write_figure('bsc-capacity.svg', directory='\writeDiagramsDir/ml')}

\figure{\includediagram{\diagramsDir/ml/bsc-capacity}{70%}}{Mutual information for a binary symmetric channel; capacity is achieved at uniform input.}{bsc-capacity}

\slides{
\includediagram{\diagramsDir/ml/bsc-capacity}{70%}
}

<!-- /SNIPPET: _information/includes/channel-capacity-chain-rule.md -->

\addreading{@Cover:elements91}{Chapter 7}
\addreading{@MacKay-information03}{Chapters 8--10}

\slidesincremental{
* No-go: $R \le C$; processing cannot create information
* Prescription: the $p(x)$ that achieves $C$
* Week 8: prove DPI; information bottleneck as the prescription on $I$
}

\subsection{Three Framings, First Pass}

\slidesincremental{
* Same $H$; three operational assumptions
* Week 3: one bit $\leftrightarrow$ $k_B T \ln 2$ joules (Szilard, Landauer)
* Synthesis is week 4
}

\speakernotes{Name the three framings today. Week 3 makes the bit operational in a piston stroke. Full LO7 synthesis is week 4.}

\notes{Information, thermodynamic, and Bayesian readings of the same $H$ differ in what the probability is over and who is inferring. The intended comparison is LO7 in week 4.}

\subsection{Define This Week}

\slidesincremental{
* Why is entropy a sensible measure of information?
* Equilibrium versus non-equilibrium? (first cut)
* Channel capacity? (statement)
* Mutual information? (definition)
}

\notes{Interpret later: how entropy is understood today (week 5, then week 8); chain rule as the source of multi-information (week 8). DPI is named today; define-stage proof is week 8.}

\subsection{After This Lecture}

\notes{Next week: Maxwell's demon and Landauer. LLM exercise: ask whether Shannon entropy is a bound or a recipe.}

\slidesincremental{
* Next: Maxwell and Landauer (3 November)
* LLM: is Shannon entropy a bound or a recipe?
}

\reading

\thanks

\references
