\ifndef{weekSevenGoalMeasureCoarseGraining}
\define{weekSevenGoalMeasureCoarseGraining}

\subsection{The Measure of Success as a Coarse Graining}

\notes{This block extends "Goals as Radon--Nikodym". The identity $H_\nu(Z)=H(Z)-\mathbb{E}[r(Z)]$, with $r=-\log(\mathrm{d}\nu/\mathrm{d}\lambda)$, was stated as a change of measure. Here we read it as the grouping formula from Week 4. Two lessons follow. First, coarser success is easier: the more outcomes you are willing to lump together, the less entropy is left to remove and the less requisite variety the regulator needs. Second, any reward function can be read backwards as a coarse graining. It says how many finer outcomes each observed outcome stands for, and the regulator is assumed to have no grip inside each one.}

\newslide{Which Entropy Are We Minimising?}

\slides{$H(Z)$ depends on what we call an outcome.}

\slidesincremental{
* Fine description $X$; success measured on a coarse summary $Z=T(X)$
* $T$ is a deterministic channel, so $H(T(X))\le H(X)$
* Coarser $T$: lower floor, more policies count as good
* Coarsest $T$ (one cell): $H=0$ for every policy
}

\notes{Conant and Ashby minimise the entropy of the reguland, but the reguland is a description, not a fact of nature. Suppose the world has a fine description $X$ and we measure success on a summary $Z=T(X)$: a temperature band rather than a temperature, "patient discharged" rather than a full physiological state. Because $T$ is deterministic, $H(T(X))\le H(X)$ for every policy. This is the same DPI-style fact we met with $h_0$ in Week 6. So the coarser the measure of success, the lower the entropy the regulator has to remove. At the extreme, a single cell ("anything is fine") gives $H(Z)=0$ under every policy. Every regulator is then optimal, including the constant one. That is caveat 1 seen from the other side: the constant action $A=a_0$ is a good regulator exactly when the measure of success is coarse enough not to care.}

\speakernotes{Core slide. The point to land: choosing $Z$ is choosing how hard the problem is.}

\newslide{Coarser Success Needs Less Requisite Variety}

\slides{Disturbance $D$ uniform on 8 values; outcome $X=(D+A)\bmod 8$; success class $C=\lfloor X/w\rfloor$.}

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
import mlai
}

\plotcode{n = 8
widths = [1, 2, 4, 8]
variety = [1, 2, 4, 8]
fig, ax = plt.subplots(figsize=(7, 4))
for m in variety:
    floor = [max(0.0, np.log2(n/w) - np.log2(m)) for w in widths]
    ax.plot(widths, floor, marker='o', label=f'$m={m}$ actions')
ax.set_xscale('log', base=2)
ax.set_xticks(widths)
ax.set_xticklabels([str(w) for w in widths])
ax.set_xlabel('cell width $w$ (states per success class)')
ax.set_ylabel('minimum achievable $H(C)$ (bits)')
ax.legend()
ax.set_title('Coarser success needs less requisite variety')
plt.tight_layout()
mlai.write_figure('coarse-success-requisite-variety.svg', directory='\writeDiagramsDir/information')}

\figure{\includediagram{\diagramsDir/information/coarse-success-requisite-variety}{75%}}{Minimum achievable entropy of the success class against cell width, for regulators with $m$ evenly spaced actions that observe $D$. Each doubling of tolerance saves one bit, exactly as each doubling of action variety does.}{coarse-success-requisite-variety}

\notes{A toy thermostat. The disturbance $D$ is uniform on $\{0,\dots,7\}$, so $H(D)=3$ bits. The regulator sees $D$ and picks one of $m$ evenly spaced corrective shifts, and the outcome is $X=(D+A)\bmod 8$. We call the run a success at the level of bands of width $w$, $C=\lfloor X/w\rfloor$. Brute force over all deterministic policies gives
$$
\min_h H(C)=\max\left(0,\ \log_2\tfrac{8}{w}-\log_2 m\right).
$$
Doubling the tolerance $w$ saves exactly one bit, and so does doubling the action variety $m$: the two trade bit for bit. This is requisite variety in Shannon form, $H(Z)\ge H(D)-I(D;A)$, applied to the coarse variable. A coarse measure of success shrinks the effective $H(D)$, because disturbances that land in the same cell no longer need different responses. It also bounds how fine the "model" $h:S\to A$ has to be. The regulator only needs to tell apart states whose correct responses differ at the level of $C$. The measure of success sets the resolution of the model the theorem forces.}

\speakernotes{Board the formula; the figure is optional. Optional aside if asked: this is why Wentworth's fix needs a rich family of goals. Many measures of success force a fine model; one coarse one forces almost none.}

\newslide{Reward Is Minus the Within-Group Entropy}

\slides{The Week 4 grouping formula, read as a goal.}

\slidesincremental{
* $H(X)=H(Z)+\sum_z P(z)\,H(X\mid Z=z)$
* No grip inside a cell: uniform within, $H(X\mid Z=z)=\log\nu(z)$
* Define $r(z)=-\log\nu(z)$
* Then $H(X)=H(Z)-\mathbb{E}[r(Z)]=H_\nu(Z)$
}

\notes{Week 4 gave the grouping formula $H=H(w)+\sum_i w_i H(p_i)$. Write it with the fine description $X$ grouped by the outcome $Z$:
$$
H(X)=H(Z)+\sum_z P(Z=z)\,H(X\mid Z=z).
$$
Now suppose each outcome $z$ is a cell containing $\nu(z)$ fine states, and the regulator has no control inside a cell. The MaxEnt description of "no control" is uniform within the cell, so $H(X\mid Z=z)=\log\nu(z)$. Define $r(z)=-\log\nu(z)$. Then
$$
H(X)=H(Z)-\mathbb{E}[r(Z)]=H_\nu(Z),
$$
which is exactly the goal-measure identity from the previous block, with $\nu$ as the cell-volume measure and $\lambda$ as counting on $Z$. So minimising entropy relative to the measure of success is minimising the entropy of the fine world, on the assumption that the regulator only acts on which cell it lands in. The reward of an outcome is minus the entropy left inside it. High reward means a small cell: landing there certifies a precise fine state. Low reward means a big cell: landing there leaves the world mostly unconstrained. This is Week 6's density of states again: $\nu$ plays the role of $h_0$, Boltzmann's $W$, and $\mathbb{E}[\log h_0]$ was "the entropy lost by recording only $k$".}

\speakernotes{Core slide. This is the main idea of the block: reward = $-$(log volume of the cell) = $-$(entropy you have not removed by landing there).}

\newslide{One Good State in Ten}

\slides{Conant and Ashby's good set $G$ as two cells: $\nu(G)=1$, $\nu(G^c)=9$.}

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
import mlai
}

\plotcode{def shannon(p):
    p = np.asarray(p, dtype=float)
    p = p[p > 0]
    return -np.sum(p * np.log2(p))

q = np.linspace(0, 1, 201)
nu_good, nu_bad = 1, 9
H_Z = np.array([shannon([qi, 1-qi]) for qi in q])
H_nu = H_Z + q*np.log2(nu_good) + (1-q)*np.log2(nu_bad)
fig, ax = plt.subplots(figsize=(7, 4))
ax.plot(q, H_Z, label='$H(Z)$ (counting measure)')
ax.plot(q, H_nu, label='$H_\\nu(Z)=H(Z)-\\mathbb{E}[r(Z)]$')
ax.set_xlabel('$q = P(Z\\in G)$')
ax.set_ylabel('bits')
ax.legend()
ax.set_title('One good state in ten: $\\nu(G)=1$, $\\nu(G^c)=9$')
plt.tight_layout()
mlai.write_figure('goal-measure-one-in-ten.svg', directory='\writeDiagramsDir/information')}

\figure{\includediagram{\diagramsDir/information/goal-measure-one-in-ten}{75%}}{Plain $H(Z)$ cannot tell always-succeed from always-fail. Entropy relative to the measure of success can: its minimum is at $q=1$ and its maximum is at $q=0.1$, the uniform distribution over the ten fine states.}{goal-measure-one-in-ten}

\notes{Ten fine states, one of them good. Coarse-grain into $G$ (one state) and $G^c$ (nine states), so $r(G)=0$ and $r(G^c)=-\log_2 9\approx-3.17$ bits. With $q=P(Z\in G)$:

| $q$ | $H(Z)$ | $H_\nu(Z)$ |
|---|---|---|
| 0 | 0 | 3.17 |
| 0.5 | 1.00 | 2.58 |
| 0.9 | 0.47 | 0.79 |
| 1 | 0 | 0 |

Under the counting measure, "always fail" ($q=0$) and "always succeed" ($q=1$) are equally good regulators, because both are perfectly predictable. That is caveat 2. The measure of success breaks the tie: always failing leaves $\log_2 9$ bits in the fine world, always succeeding leaves none. The maximum of $H_\nu$ is at $q=0.1$, where the fine state is uniform on all ten: $\log_2 10\approx3.32$ bits. The reward gap, $\log_2 9$ bits, is just the log of the ratio of the cell sizes.}

\speakernotes{Ask the room before revealing: which $q$ maximises $H_\nu$? Answer: $q=1/10$, the uniform micro distribution.}

\newslide{Reading Any Reward Backwards}

\slides{Given $r$, set $\nu(z)=e^{-r(z)}$ and read it as a cell volume.}

\slidesincremental{
* $r\mapsto r+c$: change of volume unit; same optimum
* Good set $G$: reward gap $=\log\nu(G^c)/\nu(G)$
* $r\mapsto\beta r$: volume ratios $\mapsto$ ratios$^\beta$; sharper goal
* Additive per-step reward: product of cells over a trajectory
* Constant $r$: equal cells; plain Conant--Ashby
}

\notes{The construction runs both ways. Given a coarse graining with cell volumes $\nu$, the reward is $r=-\log\nu$. Given any reward $r$, the measure $\nu(z)=e^{-r(z)}$ can be read as the volume of a cell of hidden fine states that outcome $z$ stands for. Several familiar facts about rewards become facts about coarse graining.

* *Shift invariance.* Adding a constant to $r$ multiplies every volume by the same factor. That is a change of unit, so the optimal policy does not move. This is why reward shifts do not matter in RL.
* *The good set.* Conant and Ashby's $G$ is the two-cell case. The size of the reward for success is the log of how much bigger failure is than success.
* *Reward scale.* Multiplying $r$ by $\beta$ raises the volume ratios to the power $\beta$. A sparse reward of 1 versus 0 (in nats) says success is a cell $e\approx2.7$ times smaller than failure. That is a mild preference; $\beta=10$ makes it about 22,000 times smaller.
* *Additive rewards over time.* If $Z=(Z_1,\dots,Z_T)$ and $r(z)=\sum_t r(z_t)$, then $\nu(z)=\prod_t\nu(z_t)$. The cell of a trajectory is the product of the per-step cells, as if each step had its own independent fine degrees of freedom.
* *Constant reward.* Every cell has the same volume, so $H_\nu$ and $H$ differ by a constant. We are back to plain Conant and Ashby: predictability with no preference.

Not every reward comes from a literal partition of a finite set, because $e^{-r}$ need not be an integer. That is why the course states the goal as a measure $\nu\ll\lambda$ and the reward as a Radon--Nikodym derivative. The volumes are like the Poisson's $1/k!$ in Week 6: a volume, not a count.}

\speakernotes{Pick two or three bullets live: shift invariance and the good set are enough. The trajectory product is for the notes.}

\newslide{When Reward Maximisation Takes Over}

\slides{$H_\nu(Z)=H(Z)-\mathbb{E}[r(Z)]$, and $0\le H(Z)\le\log|\mathcal{Z}|$.}

\slidesincremental{
* If $\mathbb{E}_\pi[r]-\mathbb{E}_{\pi'}[r]>\log|\mathcal{Z}|$ then $\pi$ beats $\pi'$
* Large reward gaps: entropy criterion $\to$ return maximisation
* Concave in the occupancy: a deterministic optimum, as in RL
}

\notes{The between-cell term $H(Z)$ is bounded by $\log|\mathcal{Z}|$. The within-cell term $-\mathbb{E}[r(Z)]$ is not. So if one policy's expected reward exceeds another's by more than $\log|\mathcal{Z}|$, it has lower $H_\nu$ whatever the outcome entropies are:
$$
H_\nu(\pi)-H_\nu(\pi')=\big[H(Z_\pi)-H(Z_{\pi'})\big]-\big[\mathbb{E}_\pi r-\mathbb{E}_{\pi'}r\big]<\log|\mathcal{Z}|-\log|\mathcal{Z}|=0.
$$
This is the "volume threshold" on the RL recovery slide. When cell volumes differ by much more than the number of cells, the regulator gains far more by landing in a small cell than by being predictable about which cell it lands in. Entropy minimisation then becomes reward maximisation. When reward gaps are small compared with $\log|\mathcal{Z}|$, the entropy term matters: the regulator will trade some reward for predictability. In both regimes $H_\nu$ is concave in the occupancy, because $H$ is concave and $\mathbb{E}[r]$ is linear. So the minimum is at a vertex of the occupancy polytope, a deterministic policy. That is the same structure that gives deterministic optimal policies in MDPs.}

\speakernotes{Board the one-line inequality. Do not open MM or the Joery construction.}

\newslide{When the Identity Is Only a Bound}

\slides{Uniform within cells is an assumption about what the regulator cannot do.}

\slidesincremental{
* In general $H(X\mid Z=z)\le\log\nu(z)$
* So $H(X)\le H_\nu(Z)$: we minimise an upper bound
* The reward declares what the regulator is *not* asked to control
}

\notes{The identity $H(X)=H_\nu(Z)$ needs the fine state to be uniform inside each cell. If the regulator does have some grip inside a cell, $H(X\mid Z=z)\le\log\nu(z)$, and minimising $H_\nu$ minimises an upper bound on the fine-grained entropy. This is Jaynes' reading of MaxEnt from Week 5: uniform within cells is the honest description of what we have declared we will not track. So a reward function carries three choices, usually hidden: what counts as an outcome (the partition), how big each outcome is ($\nu$), and what the regulator is assumed unable to control (MaxEnt inside each cell). Changing any one of them changes what "good regulation" means.}

\newslide{Choosing a Reward Is Choosing a Coarse Graining}

\slidesincremental{
* Coarser success: less entropy to remove, less variety needed, cruder model forced
* Reward $=-\log$ cell volume: the entropy left behind by landing there
* $H_\nu=H(Z)-\mathbb{E}[r]$ is the grouping formula, not a new principle
* Predictability vs desirability is settled by $\nu$, not by $H$
}

\notes{Taken together: Conant and Ashby's criterion, $\min H(Z)$, is only as meaningful as the description $Z$. Coarse-graining the description makes regulation easier, in bits you can count. A reward function is a compact way of specifying a coarse graining with unequal cells, and its value at each outcome is minus the entropy that outcome leaves unresolved. Reward maximisation is the large-gap limit of entropy minimisation relative to that coarse graining.}

\newslide{Check Yourself}

\slidesincremental{
* Why is a constant action optimal when there is one success cell?
* A reward is $+5$ for success and $0$ otherwise. What volume ratio does that declare?
* Two policies differ in expected reward by 2 bits and $|\mathcal{Z}|=8$. Can you tell which minimises $H_\nu$?
}

\speakernotes{Answers. (1) $H(T(X))=0$ for every policy. (2) $e^5\approx148$ in nats (or $2^5=32$ if $r$ is in bits). (3) No: a 2-bit gap is less than $\log_2 8=3$ bits, so the entropy term can still flip the order.}

\endif
