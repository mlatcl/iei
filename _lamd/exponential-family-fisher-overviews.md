---
title: "Exponential Family, Fisher, and Overviews"
week: 6
layout: lecture
date: 2026-11-17
venue: FW26, William Gates Building
room: FW26
transition: None
abstract: >
  After Quiz 3, develop the exponential family introduced at the end of
  Week 5: natural parameters θ=-λ, the canonical ensemble, the Gaussian,
  and the Bernoulli as one MaxEnt family, and ψ(θ)=log Z(-θ) as a
  cumulant generating function. The Hessian ∇²ψ is the Fisher information
  metric on that family: Fisher's I(θ) is not Shannon's H, and
  ds² = dθᵀ G dθ measures distinguishability. Dual charts are introduced
  briefly. Then Shannon's noisy-channel coding theorem (R≤C), the
  data-processing inequality as a statement, and a Good Regulator
  overview only: setup diagrams with disturbance D, system S, action A
  (not R), reguland Z; the slogan and its two caveats. Full Conant–Ashby
  development is the Week 8 review.
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
  covers: [grouping, soft partitions / MI / KL, demon compartments, MaxEnt, exponential family introduced]
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

\notes{Quiz 3 opens the session --- Weeks 4--5 as delivered (grouping, demon compartments and two ledgers, soft partitions / MI / KL, MaxEnt and the exponential family introduced). Collect Worksheet 3 as they sit (due 10:00). Release Worksheet 4 early: it is another Skepticus dialogue; Exchange 1 asks what the Good Regulator Theorem is and how it relates to modern notions of general intelligence, begun before that theorem is taught. After the quiz, develop the exponential family: $\theta=-\lambda$, canonical / Gaussian / Bernoulli, $\psi(\boldsymbol{\theta})=\log Z(-\boldsymbol{\theta})$ as a cumulant generating function, and the Hessian of $\psi$ as Fisher. Shannon capacity, DPI, and a full Good Regulator overview stay in the file; as taught on 17 November they were not reached (GRT was a two-minute W4 pointer only). W4 due 1 December (start of lecture 8).}

\subsection{This Session}

\slidesincremental{
* Quiz 3 (ten minutes); collect Worksheet 3; release Worksheet 4
* Exponential family: $\theta=-\lambda$; Week 1 families in $(\theta,\psi)$ form
* $\psi(\boldsymbol{\theta})=\log Z$; entropy $H=\psi-\theta\cdot\eta$ (when $h_0=1$)
* Fisher from the score: $G=\mathrm{Cov}[T]=\nabla^2\psi$; $I\neq H$
* Shannon: $R\le C$; DPI; Good Regulator overview ($D,S,A,Z$)
}

\notes{
**Time plan (as delivered 17 November 2026).** Clocks from the Whisper SRT on the Panopto capture (00:00 ≈ 10:00). The slot is 10:05--11:55 (110 minutes, not 120). Quiz 3 quiet ran to ~10:32. Shannon capacity and DPI were not walked. Path length of $G$ is not today's object. Full GRT diagrams wait for Week 7.

| Clock | Block |
|------:|-------|
| 10:05--10:32 | Quiz 3 (paper); collect Worksheet 3; release Worksheet 4 |
| 10:32--10:34 | Maxwell-speed / high-d ring aside |
| 10:34--11:00 | Exp family: $\theta=-\lambda$; $\psi=\log Z$ as CGF; cumulants |
| 11:00--11:05 | MaxEnt property Q\&A; break called |
| 11:05--11:15 | Break |
| 11:15--11:42 | Base measure (Poisson / binomial); Bernoulli; Gaussian natural params |
| 11:42--11:56 | $H=\psi-\theta\cdot\eta$; Fisher / natural gradient; NN deltas |
| 11:56--11:58 | GRT pointer for Worksheet 4 only |
}

\include{includes/week6-as-taught.md}

\subsection{Quiz 3}

\notes{Invigilated paper test, no notes, no network, no LLMs. Ten questions on Weeks 4--5 as delivered: exclusive grouping $H=H(w)+\sum_i w_i H(p_i)$, soft partitions $H(G\mid X)$ / $I(X;G)$ / KL, the missing measure, Maxwell's demon as compartments and two ledgers, MaxEnt (die / discrete proof), and the exponential family introduced ($\theta=-\lambda$). Not CGF, not continuous MaxEnt, not Fisher, not Legendre, not Crooks, not GRT.}

\slidesincremental{
* Paper; no notes, no network, no LLMs
* Ten minutes
* Worksheet 3 in as you sit
}

\classtimertitled{10:05}{Quiz 3}

\include{_iei/includes/iei-notebook-setup.md}

\subsection{Exponential Family}

\newslide{Exponential Family: $\theta=-\lambda$}

\slides{Week 5's discrete MaxEnt solution *is* an exponential family.}

\slidesincremental{
* Sufficient statistics: $T_k(x_i)=f_k(x_i)$, fixed by the constraints
* MaxEnt: $p_i=\exp\bigl(-\sum_k \lambda_k T_k(x_i)\bigr)/Z$
* Family: $p(x\mid\boldsymbol{\theta})\propto \exp\bigl(\boldsymbol{\theta}\!\cdot\! T(x)-\psi(\boldsymbol{\theta})\bigr)$
* Identification: $\boldsymbol{\theta}=-\boldsymbol{\lambda}$
}

\speakernotes{LO6. This is the block Week 5 only named. Physics sign: Boltzmann writes $p_i\propto e^{-\beta E_i}$, so $\theta_1=-\beta$ when $T=E$. Fitting the $\lambda$s is maximum likelihood. Next slide: the base measure $h_0$ is counting measure as a prior --- then three members. Geometry comes after the CGF slide, not here.}

\notes{On a finite state space the constrained MaxEnt distribution is an exponential family. With sufficient statistics $T_k(x)=f_k(x)$ and base density $h_0$ of the counting measure $\#$ on the allowed outcomes,
\begin{align}
p(x\mid\boldsymbol{\theta}) &= \exp\bigl(\boldsymbol{\theta}\cdot T(x) - \psi(\boldsymbol{\theta})\bigr)\, h_0(x),\\
\psi(\boldsymbol{\theta}) &= \log \sum_x \exp\bigl(\boldsymbol{\theta}\cdot T(x)\bigr),
\end{align}
where $h_0(x)=\mathbf{1}[x\in\mathcal{X}]$ (one on allowed labels, zero elsewhere). The Lagrange multipliers from the Week 5 proof are the negative natural parameters, $\theta_k=-\lambda_k$. The minus sign keeps high-energy states down-weighted when $\theta_1=-\beta<0$.}

\newslide{Counting Measure Is a Prior}

\slides{Weeks 4--5: every density is ${\mathrm{d}}P/{\mathrm{d}}\mu$. On a finite alphabet the unnoticed $\mu$ is counting measure.}

\slidesincremental{
* Counting $\#$: each allowed label weight 1; $\int f\,{\mathrm{d}}\#=\sum_x f(x)$
* Shannon: $H(P)=\log N-\mathrm{KL}(P\|u)$ with $u=\#/N$
* Exponential family: $p=\exp(\theta\cdot T-\psi)\,h_0$, today $h_0=\mathbf{1}[x\in\mathcal{X}]$
* Same role as Jaynes' $m$; not a new ``measure of uncertainty''
}

\speakernotes{Two minutes maximum. Counting measure is a *prior*: every label a priori as good as every other. The identity $H=\log N-\mathrm{KL}(P\|u)$ is the discrete case of the relative-entropy story from Weeks 4--5. Do not open Lebesgue singularity or mixed measures live --- those sit in the notes for the curious. Poisson $1/k!$ and binomial $\binom{n}{k}$ appear as $h_0$ on the next distribution slides --- name them there, do not derive. Move to the three members.}

\notes{A probability is always a density with respect to some reference measure $\mu$: the Radon--Nikodym derivative ${\mathrm{d}}P/{\mathrm{d}}\mu$. Every entropy-like quantity in the course is the same expression,
\begin{align}
H_\mu(P)=-\int\log\frac{{\mathrm{d}}P}{{\mathrm{d}}\mu}\,{\mathrm{d}}P,
\end{align}
with a different $\mu$ each time. Lecture 4 already said that choosing a discretisation is choosing a measure; the counting measure $\#$ is the case so natural that nobody notices the choice has been made.

Separate two uses of the word Lebesgue. The *Lebesgue integral* $\int f\,{\mathrm{d}}\mu$ is a single integration machine that works for *any* measure $\mu$: a sum is a Lebesgue integral against $\#$, and the ordinary calculus integral is a Lebesgue integral against Lebesgue measure $\lambda$. *Lebesgue measure* $\lambda$ itself is one particular choice of $\mu$: length, area, or volume, so $\lambda([a,b])=b-a$. Integrating against $\#$ gives a sum, $\int f\,{\mathrm{d}}\#=\sum_x f(x)$, and the density of $P$ with respect to $\#$ is the probability mass function $p(x)=P(\{x\})$. Shannon entropy is exactly $H_\#(P)=-\sum_x p(x)\log p(x)$.

Counting measure is a prior: every outcome gets weight 1. On a finite set of $N$ outcomes write $u=\#/N$ for the uniform distribution. Then
\begin{align}
H(P)=\log N-\mathrm{KL}(P\|u).
\end{align}
So Shannon entropy *is* a negative KL divergence against the uniform that $\#$ defines. Three immediate consequences: (i) $H\ge 0$, because each atom has counting measure 1 so $p(x)\le 1$; (ii) $H$ is unchanged by any relabelling of the outcomes ($\#$ is invariant under bijections); (iii) on a countably infinite set $\#$ has infinite total mass, there is no uniform $u$, and entropy need not be finite.

The same template covers the continuous and relative cases. Lebesgue measure $\lambda$ is the continuum counterpart: differential entropy is $H_\lambda$, can be negative, and changes under nonlinear reparametrisation because $\lambda$ does. Two distinct effects meet here and should stay separate. Under a change of variable the Jacobian $|{\mathrm{d}}y/{\mathrm{d}}x|$ appears --- that is Lecture 4's density-of-states factor (for example $v^2$ in the speed coordinate). Separately, putting counting measure on a grid of spacing $\Delta$ and rescaling by $\Delta$ converges to $\lambda$ as $\Delta\to 0$; a binned Shannon entropy then carries an additive $-\log\Delta$, which is the log of that rescaling factor between $\#$ and $\lambda$, not a Jacobian. Why not just use counting measure on $\mathbb{R}$? Because $\#$ and $\lambda$ are mutually singular: $\lambda(\{x\})=0$ for every point, while a discrete law puts positive mass on points, so neither measure admits a density with respect to the other. A mixed law --- daily rainfall exactly zero with probability $0.3$, otherwise continuous --- has a density only with respect to something like $\delta_0+\lambda$.

KL divergence uses a probability $Q$ as reference,
\begin{align}
\mathrm{KL}(P\|Q)=\int\log\frac{{\mathrm{d}}P}{{\mathrm{d}}Q}\,{\mathrm{d}}P,
\end{align}
provided $P$ is absolutely continuous with respect to $Q$ ($P\ll Q$). If $P$ puts mass anywhere $Q$ does not, the Radon--Nikodym derivative fails and $\mathrm{KL}(P\|Q)=+\infty$. When both densities are written against a common base $\mu$, the ratio of densities cancels $\mu$, which is why KL (and mutual information) has no $-\log\Delta$ divergence and is unchanged when the same invertible map is applied to both arguments.

\begin{center}
\begin{tabular}{llll}
Reference $\mu$ & $H_\mu(P)$ & Sign & Implicit prior\\
\hline
Counting $\#$ & $-\sum p\log p$ (Shannon) & $\ge 0$ & each *label* equally likely\\
Lebesgue $\lambda$ & $-\int f\log f\,{\mathrm{d}}x$ (differential) & either & each unit of *volume* equally likely\\
Probability $Q$ & $-\mathrm{KL}(P\|Q)$ & $\le 0$ & $Q$, stated explicitly
\end{tabular}
\end{center}

Maximum entropy relative to $\mu$ gives ${\mathrm{d}}P/{\mathrm{d}}\mu=\exp(\theta\cdot T-\psi)$. The factor $h_0$ in the exponential family is the density of that base measure when sums or integrals are written against a default chart. Today $\nu=\#$ on the allowed set and $h_0={\mathrm{d}}\nu/{\mathrm{d}}\#=\mathbf{1}[x\in\mathcal{X}]$, so $\psi$ is a log-sum. Even in discrete cases the base need not be plain counting: Poisson uses $h_0(x)=1/x!$ on $\mathbb{N}$, binomial uses $\binom{n}{x}$ --- combinatorial multiplicity as the discrete counterpart of the $v^2$ density of states. We write $h_0$ rather than $h$ to avoid colliding with differential entropy and with the regulator map $A=h(S)$ later in the module.

*Extension: where does $h_0$ come from?* Often $x$ is a coarse summary of a finer description. For example, $k$ = number of successes in $n$ binary trials. Put the uniform (counting) measure on the micro states and push it forward through the summary: $h_0(k)=\#\{\text{micro states with summary }k\}=\binom{n}{k}$. Because the tilt $\exp(\theta k-\psi(\theta))$ depends only on $k$, the distribution stays uniform within each group of micro states. So $h_0$ is the *density of states*, Boltzmann's $W$, and $\mathbb{E}[\log h_0(K)]$ is the entropy lost by recording only $k$. *(For the Poisson, the micro states are unordered event times in $[0,1]$, and $h_0(k)=1/k!$ is a volume rather than a count.)* Coarse-graining by $T$ is a deterministic channel, so $H(K)\le H_{\mathrm{micro}}$ --- a small DPI-style fact that the Data-Processing Inequality later makes precise.}

\newslide{Three Members, One Family}

\slides{Canonical, Gaussian, and Bernoulli are the same theorem with different $T(x)$.}

\slidesincremental{
* Canonical: one energy constraint, $T=E$, $\theta=-\beta$
* Gaussian: mean and variance constraints
* Bernoulli / two-level: $T\in\{0,1\}$, $\theta=-\beta\varepsilon$
}

\speakernotes{LO6 punchline. Two-level system is a Bernoulli. Softmax is the same calculation with a richer feature map; name it only if the clock is ahead. The next block rewrites the Week 1 families: protect Bernoulli ($h_0=1$, counting prior) then Poisson or binomial ($h_0=1/k!$ or $\binom{n}{k}$, discrete density of states). Gaussian names Lebesgue. Do not start the matrix exponential family; that waits for the Week 8 quantum close if at all.}

\notes{Each of these is MaxEnt for its moment constraints, so each belongs to the exponential family. The canonical ensemble is the mean-energy case already recovered in Week 5. A Gaussian is MaxEnt for a fixed mean and variance. A two-level system with energies $0$ and $\varepsilon$ is a Bernoulli with natural parameter $\theta=-\beta\varepsilon$. The distribution bank that follows is where both measure morals land: Bernoulli / categorical use plain counting ($h_0=1$); binomial / Poisson / multinomial use combinatorial $h_0$ as discrete density of states.}

\include{_statistics/includes/common-distributions-exponential-family.md}

\subsection{$\psi(\theta)$ as Cumulant Generating Function}

\newslide{$\psi(\theta)=\log Z$ Generates Cumulants}

\slidesincremental{
* Week 3: $F=-k_BT\log Z$ (available energy)
* Same object: $\psi(\boldsymbol{\theta})=\log Z(-\boldsymbol{\theta})$
* Mean parameters: $\boldsymbol{\eta}=\nabla\psi=\langle T\rangle$
* Next: entropy from $\log p$, then Fisher from the score
}

\speakernotes{Board $\eta=\nabla\psi$ first. Do not yet claim the Hessian is Fisher --- that calculation is the next two slides. Do not write $\mathcal{L}$ or $\langle W_{\mathrm{ex}}\rangle\ge\mathcal{L}^2/\tau$.}

\notes{The Quiz 2 debrief already read $\log Z$ as available energy, $F=-k_BT\log Z$. In exponential-family coordinates the same function is $\psi(\boldsymbol{\theta})=\log Z(-\boldsymbol{\theta})$. Its first derivative is the mean of $T$. Differentiating again will give $\mathrm{Cov}[T]$, but we derive it after the entropy form.}

\include{_information/includes/exponential-family-entropy-fisher.md}

###{Fisher Metric from the Exponential Family}

\newslide{Fisher's Information $\neq$ Shannon's Entropy}

\slides{Same word; different mathematical definition.}

\slidesincremental{
* Shannon $H$: uncertainty in an outcome --- $H=\psi-\theta\cdot\eta$ (when $h_0=1$)
* Fisher $I(\theta)$: sensitivity of $\log p$ to $\theta$ --- $I=\mathrm{Cov}[T]=\nabla^2\psi$
* $H$ is a state function of $p$; $I$ is a property of a *family* $p(\cdot\mid\theta)$
}

\speakernotes{LO8 vocabulary slide after the calculation. They have already done the algebra; name the distinction. Flag the $h_0=1$ caveat: after Poisson / binomial, the full form is $H=\psi-\theta\cdot\eta-\mathbb{E}[\log h_0]$. Shannon after the break is channel capacity, a different use of the same $H$.}

\notes{Fisher (1925) called the expected squared score *information* about a parameter. For a scalar parameter,
$$
I(\theta)=\mathbb{E}_\theta\!\left[\left(\frac{\partial}{\partial\theta}\log p(x\mid\theta)\right)^2\right].
$$
On an exponential family that is exactly $\nabla^2\psi=\mathrm{Cov}[T]$, as derived above. Shannon's $H$ measures uncertainty in a random variable; Fisher's $I$ measures how much a sample tells you about $\theta$. Conflating the two words is the first mistake to block --- and the exponential family is where both appear from one $\log p$.}

\newslide{Same Matrix, Three Names}

\slides{These are the same matrix.}

\slidesincremental{
* $\mathrm{Cov}[T]$ from cumulants
* Fisher $G$ from the score $T-\eta$
* $\nabla^2\psi$ from differentiating $\eta=\nabla\psi$
* Cramér--Rao: $\mathrm{cov}(\hat{\boldsymbol{\theta}})\succeq G^{-1}$ (stated, not proved)
}

\speakernotes{One sentence on Cramér--Rao if asked; do not board a proof. Information geometry follows because the metric is already on the board.}

\notes{Three readings of one matrix: covariance of the sufficient statistics, Fisher's expected squared score, and the Hessian of the cumulant generating function. Fréchet--Rao--Cramér identifiability ($\mathrm{cov}(\hat{\boldsymbol{\theta}})\succeq G^{-1}$) is the estimation reading. That matrix is the Fisher information metric on the statistical manifold.}

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
* Mean parameters $\boldsymbol{\eta}=\nabla \psi=\langle T\rangle$ (m-coordinates)
* Hessians of the dual potentials are inverse metrics
* Details in the notes
}

\speakernotes{Name dual flatness. $H=\psi-\theta\cdot\eta$ (when $h_0=1$) is already on the board --- that *is* $-\psi^*(\eta)$. The pair $(\theta,\eta)$ is enough to see why MaxEnt looks like an $m$-projection later. Natural gradient is optional colour only.}

\notes{Amari's dual flatness: exponential families admit affine coordinates in $\boldsymbol{\theta}$ and in $\boldsymbol{\eta}=\nabla\psi$, with dual potentials whose Hessians are inverse Fisher metrics. The Legendre dual is what they already computed for entropy: $\psi^*(\eta)=\theta\cdot\eta-\psi=-H$ when $h_0=1$ (otherwise subtract $\mathbb{E}[\log h_0]$ from $H$).}

\addreading{@Amari-information16}{Fisher metric; dual flatness}

\subsection{Shannon's Communication Theorem}

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

\subsection{Data-Processing Inequality}

\newslide{Data-Processing Inequality}

\slides{If $X\to Y\to Z$ is Markov, processing cannot create information about $X$.}

\slidesincremental{
* Markov: $p(z\mid x,y)=p(z\mid y)$
* Statement: $I(X;Z)\le I(X;Y)$
* Soft partitions: leftover $H(G\mid X)$ already spent information
* Full proof: notes overflow (Cover--Thomas 2.8.1)
}

\speakernotes{State DPI; do not board the two expansions unless ahead of clock. Moral only: you cannot process your way to more $I$. As taught this block was not reached; Week 7 states Shannon $R\le C$ and DPI as statement/moral for Quiz 4.}

\notes{The data-processing inequality is the no-go on $I$: further processing of $Y$ cannot increase information about $X$. Week 5's soft-partition leftover $H(G\mid X)$ is the same grammar --- a stochastic map spends mutual information. As taught on 17 November this statement was not walked; Week 7 recovers it as statement/moral. The board proof stays notes overflow / enrichment, not assessed.}

\slidesincremental{
* No-go: processing cannot create $I$
* Week 7: state Shannon $R\le C$ and DPI if unread; GRT overview; goal measure
}

\subsection{Good Regulator}

\include{_information/includes/good-regulator-overview.md}

\subsection{Define This Week}

\slidesincremental{
* Why is the exponential family the MaxEnt family, and why $\theta=-\lambda$?
* Why is $H=\psi-\theta\cdot\eta$ when $h_0=1$ (and what changes for Poisson), and why does that make $G=\nabla^2\psi=\mathrm{Cov}[T]$?
* How does Fisher's $I(\theta)$ differ from Shannon's $H$?
* What does $R\le C$ forbid, and what does DPI state?
* Name $D$, $S$, $A$, $Z$ --- Week 7 develops the overview
}

\subsection{After This Lecture}

\notes{Quiz 3 opened the session (quiet until ~10:32), before the exponential family and Fisher geometry were developed. Worksheet 4 was released so Exchange 1 could begin before any GRT material (due 1 December, before Quiz 4). It is a Skepticus dialogue on GRT and general intelligence, not the parked notebook brief. As taught, Shannon capacity and DPI were not walked; the Good Regulator was a two-minute close (entropy of $Z$; Ashby), not the $D,S,A,Z$ diagrams. Week 7 (*Good Regulator, Goals, and Channels*) takes the assessed spine: unmarked W3 review; GRT overview; goal measure via Radon--Nikodym; Shannon $R\le C$ and DPI as statement/moral. Multi-information depth, DPI board proof, and IB stay notes overflow. Week 8 after Quiz 4 / W4 is unassessed: short classical limits synthesis, then protected no-barber $\to$ von Neumann / quantum motivation, then course close.}

\slidesincremental{
* Worksheet 4 out (dialogue; Exchange 1 before GRT); due 1 December before Quiz 4
* Week 7: GRT overview; goal measure; Shannon / DPI statement
* Week 8: Quiz 4; limits synthesis; no-barber $\to$ quantum (unassessed)
}

\reading

\thanks

\references
