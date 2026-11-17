---
title: "Channels, DPI, and the Good Regulator"
week: 6
layout: lecture
date: 2026-11-17
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  After Quiz 3, develop the exponential family that Week 5 only named:
  natural parameters θ=-λ, the canonical ensemble, the Gaussian, and the
  Bernoulli as one MaxEnt family, and A(θ)=log Z(-θ) as a cumulant
  generating function. The Hessian ∇²A is the Fisher information metric
  on that family: Fisher's I(θ) is not Shannon's H, and ds² = dθᵀ G dθ
  measures distinguishability. Dual charts (θ, η=∇A) are named; Crooks
  thermodynamic length is not. Then Shannon's noisy-channel coding
  theorem (R≤C), the data-processing inequality as a statement, and a
  full overview of the Good Regulator Theorem: Ashby's requisite variety,
  Conant–Ashby H(A|S)=0, two caveats, and the information-bottleneck
  gloss after the theorem.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO6, LO8, LO10, LO13]
duration_hours: 2
type: lecture
in_class_test:
  id: Q3
  duration_minutes: 10
  timing: start
  covers: [grouping, soft partitions / MI / KL, demon compartments, MaxEnt, exponential family named]
worksheet_due: W3
worksheet_released: W4
reading:
  - title: "A Mathematical Theory of Communication"
    author: "Shannon"
    chapter: "channel capacity; noisy channel coding"
    estimated_hours: 1
  - title: "Elements of Information Theory"
    author: "Cover and Thomas"
    chapter: "Chapter 7 (capacity); Theorem 2.8.1 (DPI)"
    estimated_hours: 1
  - title: "Information Geometry and Its Applications"
    author: "Amari"
    chapter: "Chapters 1–2 (Fisher metric; dual flatness)"
    estimated_hours: 1
  - title: "Every Good Regulator of a System Must Be a Model of That System"
    author: "Conant and Ashby"
    chapter: "whole paper (1970)"
    estimated_hours: 0.5
  - title: "An Introduction to Cybernetics"
    author: "Ashby"
    chapter: "requisite variety"
    estimated_hours: 0.5
---

\notes{Quiz 3 occupies the first ten minutes from 10:05 --- Weeks 4--5 as delivered (grouping, demon compartments and two ledgers, soft partitions / MI / KL, MaxEnt and the exponential family *named*). After the quiz, teach the exponential family that was only named on 10 November: $\theta=-\lambda$, canonical / Gaussian / Bernoulli, and $A(\boldsymbol{\theta})=\log Z(-\boldsymbol{\theta})$ as a cumulant generating function. The Hessian of $A$ *is* the Fisher information metric --- that is today's information-geometry bridge (LO8). Thermodynamic length is still dropped: do not define $\mathcal{L}$, do not state $\langle W_{\mathrm{ex}}\rangle\ge\mathcal{L}^2/\tau$, and do not open Crooks (2007). Collect Worksheet 3 as they sit (due 10:00). Release Worksheet 4 *before* the Good Regulator block: it is another Skepticus dialogue; Exchange 1 asks what the Good Regulator Theorem is and how it relates to modern notions of general intelligence, begun before that theorem is taught. Then Shannon capacity, DPI as a statement, and a Good Regulator overview. W4 due 1 December (start of lecture 8).}

\subsection{This Session}

\slidesincremental{
* Quiz 3 (ten minutes); collect Worksheet 3; release Worksheet 4
* Exponential family: $\theta=-\lambda$; canonical, Gaussian, Bernoulli
* $A(\boldsymbol{\theta})=\log Z$ generates the mean and the covariance
* Fisher metric: $\nabla^2 A = G$; Fisher's $I$ is not Shannon's $H$
* Shannon: $R\le C$; DPI; Good Regulator $H(A\mid S)=0$
}

\notes{
**Time plan.** The slot is 10:05--11:55 (110 minutes, not 120). Quiz 3 is paper. Protect the exponential-family identification (LO6), the Fisher-geometry bridge (LO8), and the Good Regulator block. Shannon and DPI stay, shorter. Thermodynamic length is dropped; path length of $G$ is not today's object.

| Clock | Block |
|------:|-------|
| 10:05--10:15 | Quiz 3 (paper); collect Worksheet 3 |
| 10:15--10:20 | Release Worksheet 4 (start Exchange 1 before GRT) |
| 10:20--10:40 | Exponential family: $\theta=-\lambda$; three members; $A$ as CGF |
| 10:40--11:00 | Fisher geometry: $G=\nabla^2 A$; $I\neq H$; $\mathrm{d}s^2$; dual charts |
| 11:00--11:10 | Break |
| 11:10--11:25 | Shannon communication theorem / channel capacity |
| 11:25--11:35 | DPI statement; Markov moral |
| 11:35--11:55 | Good Regulator overview; preview Week 7 |
}

\subsection{Quiz 3}

\notes{Invigilated paper test, no notes, no network, no LLMs. Ten questions on Weeks 4--5 as delivered: exclusive grouping $H=H(w)+\sum_i w_i H(p_i)$, soft partitions $H(G\mid X)$ / $I(X;G)$ / KL, the missing measure, Maxwell's demon as compartments and two ledgers, MaxEnt (die / discrete proof), and the exponential family named ($\theta=-\lambda$). Not CGF, not continuous MaxEnt, not Fisher, not Legendre, not Crooks, not GRT.}

\slidesincremental{
* Paper; no notes, no network, no LLMs
* Ten minutes
* Worksheet 3 in as you sit
}

\classtimertitled{10:05}{Quiz 3}

\include{_iei/includes/iei-notebook-setup.md}

\classtimertitled{10:15}{Quiz 3}

\subsection{Exponential Family}

\newslide{Exponential Family: $\theta=-\lambda$}

\slides{Week 5's discrete MaxEnt solution *is* an exponential family.}

\slidesincremental{
* Sufficient statistics: $T_k(x_i)=f_k(x_i)$, fixed by the constraints
* MaxEnt: $p_i=\exp\bigl(-\sum_k \lambda_k T_k(x_i)\bigr)/Z$
* Family: $p(x\mid\boldsymbol{\theta})\propto \exp\bigl(\boldsymbol{\theta}\!\cdot\! T(x)-A(\boldsymbol{\theta})\bigr)$
* Identification: $\boldsymbol{\theta}=-\boldsymbol{\lambda}$
}

\speakernotes{LO6. This is the block Week 5 only named. Physics sign: Boltzmann writes $p_i\propto e^{-\beta E_i}$, so $\theta_1=-\beta$ when $T=E$. Fitting the $\lambda$s is maximum likelihood; say that and move to the three members. Geometry comes after the CGF slide, not here.}

\notes{On a finite state space the constrained MaxEnt distribution is an exponential family. With sufficient statistics $T_k(x)=f_k(x)$ and counting measure $h(x)$,
\begin{align}
p(x\mid\boldsymbol{\theta}) &= \exp\bigl(\boldsymbol{\theta}\cdot T(x) - A(\boldsymbol{\theta})\bigr)\, h(x),\\
A(\boldsymbol{\theta}) &= \log \sum_x \exp\bigl(\boldsymbol{\theta}\cdot T(x)\bigr),
\end{align}
and the Lagrange multipliers from the Week 5 proof are the negative natural parameters, $\theta_k=-\lambda_k$. The minus sign keeps high-energy states down-weighted when $\theta_1=-\beta<0$.}

\newslide{Three Members, One Family}

\slides{Canonical, Gaussian, and Bernoulli are the same theorem with different $T(x)$.}

\slidesincremental{
* Canonical: one energy constraint, $T=E$, $\theta=-\beta$
* Gaussian: mean and variance constraints
* Bernoulli / two-level: $T\in\{0,1\}$, $\theta=-\beta\varepsilon$
}

\speakernotes{LO6 punchline. Two-level system is a Bernoulli. Softmax is the same calculation with a richer feature map; name it only if the clock is ahead. Do not start the matrix exponential family; that waits for the Week 8 quantum close if at all.}

\notes{Each of these is MaxEnt for its moment constraints, so each belongs to the exponential family. The canonical ensemble is the mean-energy case already recovered in Week 5. A Gaussian is MaxEnt for a fixed mean and variance. A two-level system with energies $0$ and $\varepsilon$ is a Bernoulli with natural parameter $\theta=-\beta\varepsilon$.}

\subsection{$A(\theta)$ as Cumulant Generating Function}

\newslide{$A(\theta)=\log Z$ Generates Cumulants}

\slidesincremental{
* Week 3: $F=-k_BT\log Z$ (available energy)
* Same object: $A(\boldsymbol{\theta})=\log Z(-\boldsymbol{\theta})$
* Mean parameters: $\boldsymbol{\eta}=\nabla A=\langle T\rangle$
* Hessian: $\nabla^2 A=\mathrm{Cov}[T]$
}

\speakernotes{Board $\eta=\nabla A$ and $\nabla^2 A=\mathrm{Cov}[T]$. The next slides read that Hessian as Fisher information. Do not write $\mathcal{L}$ or $\langle W_{\mathrm{ex}}\rangle\ge\mathcal{L}^2/\tau$.}

\notes{The Quiz 2 debrief already read $\log Z$ as available energy, $F=-k_BT\log Z$. In exponential-family coordinates the same function is $A(\boldsymbol{\theta})=\log Z(-\boldsymbol{\theta})$. Its first derivative is the mean of $T$; its second derivative is the covariance of $T$. That is the cumulant-generating property. The next section is the geometric reading of the same Hessian.}

\subsection{Fisher Metric from the Exponential Family}

\classtimertitled{10:35}{Fisher geometry}

\newslide{Fisher's Information $\neq$ Shannon's Entropy}

\slides{Same word; different mathematical definition.}

\slidesincremental{
* Shannon $H$: uncertainty in an outcome
* Fisher $I(\theta)$: sensitivity of $\log p$ to $\theta$
* $H$ is a state function of $p$; $I$ is a property of a *family* $p(\cdot\mid\theta)$
}

\speakernotes{LO8. Hold this distinction for the rest of the module. Shannon is coming after the break as channel capacity; Fisher is already on the board as $\nabla^2 A$.}

\notes{Fisher (1925) called the expected squared score *information* about a parameter. For a scalar parameter,
$$
I(\theta)=\mathbb{E}_\theta\!\left[\left(\frac{\partial}{\partial\theta}\log p(x\mid\theta)\right)^2\right].
$$
Shannon's $H$ measures uncertainty in a random variable; Fisher's $I$ measures how much a sample tells you about $\theta$. Conflating the two words is the first mistake to block.}

\newslide{Hessian $\equiv$ Fisher Metric}

\slides{On an exponential family the CGF Hessian *is* the Fisher information.}

\slidesincremental{
* Score definition: $G_{ij}=\mathbb{E}[\partial_i\log p\,\partial_j\log p]$
* Exponential family: $G(\boldsymbol{\theta})=\nabla^2 A(\boldsymbol{\theta})=\mathrm{Cov}[T]$
* Same matrix: estimation, identifiability, geometry
}

\speakernotes{This is why information geometry follows the exponential family. You already have $G$; you are naming it. Cramér--Rao $\mathrm{cov}(\hat\theta)\succeq G^{-1}$ in one sentence if asked; do not board a proof.}

\notes{Three readings of one matrix: Fisher's expected squared score, Fréchet--Rao--Cramér identifiability ($\mathrm{cov}(\hat{\boldsymbol{\theta}})\succeq G^{-1}$), and --- for exponential families --- the Hessian of the cumulant generating function. That matrix is the Fisher information metric on the statistical manifold.}

\newslide{Information Distance}

\slides{
$$
\mathrm{d}s^2 = \mathrm{d}\boldsymbol{\theta}^\top G(\boldsymbol{\theta})\,\mathrm{d}\boldsymbol{\theta}
$$
}

\slidesincremental{
* $G$ is a Riemannian metric on the manifold of distributions
* Large $G$: nearby $\theta$ are easy to tell apart from data
* Small $G$: the parameter is almost invisible in samples
}

\speakernotes{State the line element. Do not integrate a path to get thermodynamic length $\mathcal{L}$. Distinguishability of nearby points is enough; Crooks path cost is dropped.}

\notes{The Fisher matrix defines infinitesimal information distance. Larger $G$ means a given parameter step is more distinguishable. Integrating $\mathrm{d}s$ along a path of equilibria would give Crooks' thermodynamic length; that development is dropped from the module. Today the metric itself is the object.}

\newslide{Dual Charts $(\theta,\eta)$}

\slides{Exponential families are dually flat under two coordinate systems.}

\slidesincremental{
* Natural parameters $\boldsymbol{\theta}$ (e-coordinates)
* Mean parameters $\boldsymbol{\eta}=\nabla A=\langle T\rangle$ (m-coordinates)
* Hessians of the dual potentials are inverse metrics
* Full Legendre / Pythagorean development stays notes
}

\speakernotes{Name dual flatness; do not board $H=A-\theta\cdot\eta$ unless ahead. The pair $(\theta,\eta)$ is enough to see why MaxEnt looks like an $m$-projection later. Natural gradient is optional colour only.}

\notes{Amari's dual flatness: exponential families admit affine coordinates in $\boldsymbol{\theta}$ and in $\boldsymbol{\eta}=\nabla A$, with dual potentials whose Hessians are inverse Fisher metrics. The Legendre dual $A^*(\eta)=A-\theta\cdot\eta$ and the Pythagorean theorem for KL on dual flats are the natural next theorem; they stay thin today so Shannon and the Good Regulator keep their clock.}

\addreading{@Amari-information16}{Fisher metric; dual flatness}

\classtimertitled{10:55}{Break}

\subsection{Shannon's Communication Theorem}

\classtimertitled{11:05}{Shannon}

\newslide{Shannon's Noisy Channel Coding Theorem}

\slides{A channel is a conditional $p(y\mid x)$. Rate cannot beat capacity.}

\slidesincremental{
* Mutual information $I(X;Y)$ is the channel currency
* Capacity $C = \max_{p(x)} I(X;Y)$
* No-go: reliable communication requires $R \le C$
* Prescription: the input $p(x)$ that achieves $C$
}

\speakernotes{Name Shannon's noisy-channel coding / communication theorem. Do not prove the coding theorems. The BSC plot from the capacity include is enough geometry for today.}

\notes{Shannon's communication theorem (noisy-channel coding) is the information-theoretic twin of Carnot: it forbids reliable rates above capacity and does not construct a code. Capacity $C=\max_{p(x)}I(X;Y)$ is the no-go number; the capacity-achieving input distribution is the prescription. Week 5 already made mutual information first-class via soft partitions; today that $I$ is the rate currency on a channel.}

\include{_information/includes/channel-capacity-chain-rule.md}

\addreading{@Shannon-mathematical48}{noisy channel coding / capacity}
\addreading{@Cover:elements91}{Chapter 7}
\addreading{@MacKay-information03}{Chapters 8--10}

\slides{
\includediagram{\diagramsDir/ml/bsc-capacity}{70%}
}

\subsection{Data-Processing Inequality}

\classtimertitled{11:20}{DPI}

\newslide{Data-Processing Inequality}

\slides{If $X\to Y\to Z$ is Markov, processing cannot create information about $X$.}

\slidesincremental{
* Markov: $p(z\mid x,y)=p(z\mid y)$
* Statement: $I(X;Z)\le I(X;Y)$
* Soft partitions: leftover $H(G\mid X)$ already spent information
* Proof: Week 7 (Cover--Thomas 2.8.1)
}

\speakernotes{State DPI; do not board the two expansions unless ahead of clock. Moral only: you cannot process your way to more $I$. Week 7 proves it when multi-information is the object.}

\notes{The data-processing inequality is the no-go on $I$: further processing of $Y$ cannot increase information about $X$. Week 5's soft-partition leftover $H(G\mid X)$ is the same grammar --- a stochastic map spends mutual information. Full proof waits for Week 7; today the statement is enough to underwrite the Good Regulator tools (requisite variety needs enough $I$; DPI forbids manufacturing missing $I$).}

\slidesincremental{
* No-go: processing cannot create $I$
* Week 7: prove DPI; information bottleneck as prescription
}

\subsection{Good Regulator}

\classtimertitled{11:30}{Good Regulator}

\include{_information/includes/entropic-good-regulator.md}

\addreading{@Conant-Ashby70}{the Good Regulator Theorem}
\addreading{@Ashby-introduction56}{requisite variety; Shannon form}

\subsection{Define This Week}

\slidesincremental{
* Why is the exponential family the MaxEnt family, and why $\theta=-\lambda$?
* Why is $\nabla^2 A$ both $\mathrm{Cov}[T]$ and the Fisher metric $G$?
* How does Fisher's $I(\theta)$ differ from Shannon's $H$?
* What does $R\le C$ forbid, and what does DPI state?
* Why $H(A\mid S)=0$, and why that model is weak?
}

\subsection{After This Lecture}

\notes{Quiz 3 opened the session, before the exponential family and Fisher geometry were developed. Worksheet 4 was released early in the session so Exchange 1 could begin before the Good Regulator overview (due 1 December, before Quiz 4). It is a Skepticus dialogue on GRT and general intelligence, not the parked notebook brief. Week 7 deepens multi-information, proves DPI, and develops the information bottleneck as the prescription paired with DPI --- and as a gloss after GRT, not the theorem. Week 7 does not restore thermodynamic length; dual-flatness colour may return only if clock allows.}

\slidesincremental{
* Worksheet 4 out (dialogue; Exchange 1 before GRT); due 1 December before Quiz 4
* Week 7: $I+H=C$, DPI proof, information bottleneck
}

\reading

\thanks

\references
