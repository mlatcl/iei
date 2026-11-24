\ifndef{weekSevenLiouvilleDetailedBalance}
\define{weekSevenLiouvilleDetailedBalance}

\subsection{Liouville, Detailed Balance, and the Trapdoor}

\notes{Many of the Worksheet 3 dialogues ended up reaching for Liouville's theorem, for detailed balance, or for Smoluchowski's trapdoor. We didn't cover any of these in lecture 4, so I want to fill in what they say and, just as importantly, what they don't say. They are often bundled together as if they were one argument. They aren't. Each answers a different question about the demon.}

\setupplotcode{import numpy as np
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
import mlai.plot as plot
import mlai}

\newslide{Three Questions About the Demon}

\slides{Three ideas the dialogues reached for. Each answers a different question.}

\slidesincremental{
* *Liouville*: could the gate's rule be part of ordinary mechanics?
* *Detailed balance*: what does equilibrium demand of each transition?
* *Smoluchowski's trapdoor*: what happens if we build the gate from the same stuff as the gas?
}

\speakernotes{Set up the three questions and keep them separate. No Hamilton's equations on the board; the pictures carry it.}

\notes{The first question is about the rule itself. Maxwell's being lets fast molecules through one way and slow ones the other. Is that a rule that Newton's laws, on their own, could ever carry out? Liouville's theorem says no, and the reason is surprisingly direct. The second question is about equilibrium. If the whole box, gate included, is at one temperature, what must be true of the traffic between any two states? That's detailed balance. The third is the engineering question. Suppose we try to build the gate out of real parts --- a little hinged flap --- sitting in the same gas. Why doesn't it work? That's Smoluchowski's trapdoor, and it fails for a different reason from the memoryful demon that Landauer's argument is about.}

\newslide{Liouville: Mechanics Never Loses Volume}

\slides{Follow a cloud of starting points. It stretches and folds, but its area never changes.}

\plotcode{def leapfrog(q, p, dt, steps):
    # Pendulum, H = p^2/2 - cos q. Leapfrog is symplectic: it preserves area exactly.
    for _ in range(steps):
        p = p - 0.5*dt*np.sin(q)
        q = q + dt*p
        p = p - 0.5*dt*np.sin(q)
    return q, p

def coarse_entropy(q, p, edges_q, edges_p):
    counts, _, _ = np.histogram2d(q, p, bins=[edges_q, edges_p])
    w = counts.ravel()/counts.sum()
    w = w[w > 0]
    return -np.sum(w*np.log(w)), counts

rng = np.random.default_rng(1)
n = 40000
r = 0.35*np.sqrt(rng.uniform(size=n))
theta = rng.uniform(0, 2*np.pi, size=n)
q0, p0 = -1.6 + r*np.cos(theta), 0.9 + r*np.sin(theta)

edges_q = np.linspace(-np.pi, np.pi, 17)
edges_p = np.linspace(-2.5, 2.5, 13)
qq, pp = np.meshgrid(np.linspace(-np.pi, np.pi, 300), np.linspace(-2.5, 2.5, 300))
energy = 0.5*pp**2 - np.cos(qq)

times = [0, 6, 40]
fig, axes = plt.subplots(1, 3, figsize=(12, 4.2), sharey=True)
q, p, t_prev = q0.copy(), p0.copy(), 0
for ax, t in zip(axes, times):
    q, p = leapfrog(q, p, 0.01, int((t - t_prev)/0.01))
    t_prev = t
    qw = (q + np.pi) % (2*np.pi) - np.pi
    H_cg, counts = coarse_entropy(qw, p, edges_q, edges_p)
    ax.pcolormesh(edges_q, edges_p, (counts.T > 0), cmap='Greys', vmin=0, vmax=4, alpha=0.6)
    ax.contour(qq, pp, energy, levels=12, colors='#bbbbbb', linewidths=0.6, linestyles='solid')
    ax.plot(qw, p, ',', color='#cc4444', alpha=0.4, rasterized=True)
    for e in edges_q: ax.axvline(e, color='white', lw=0.5)
    for e in edges_p: ax.axhline(e, color='white', lw=0.5)
    ax.set_xlim(-np.pi, np.pi); ax.set_ylim(-2.5, 2.5)
    ax.set_xlabel('position $q$')
    ax.set_title(f't = {t}: {int((counts>0).sum())} cells, coarse entropy {H_cg:.2f} nats', fontsize=11)
axes[0].set_ylabel('momentum $p$')
fig.tight_layout()
mlai.write_figure('liouville-pendulum-cloud.svg', directory='\writeDiagramsDir/physics')}

\figure{\includediagram{\diagramsDir/physics/liouville-pendulum-cloud}{95%}}{A cloud of 40,000 pendulum starting points (red) followed through time. Grey curves are lines of constant energy. The cloud's area is exactly the same in all three panels, so the fine-grained entropy hasn't moved. But it is drawn out into a filament that touches more and more of the coarse grid cells (shaded), so the entropy we'd compute from the cells goes up.}{liouville-pendulum-cloud}

\speakernotes{Point at the area: same in all three panels. Then point at the shaded cells. The second law lives in the cells, not in the cloud.}

\notes{Liouville's theorem is a statement about what mechanics does to *uncertainty*. Take a state of a mechanical system --- positions $\mathbf{q}$ and momenta $\mathbf{p}$ for every particle --- and suppose we don't know it exactly. We know it lies somewhere in a region of phase space. Let each point in that region evolve under Newton's laws (or Hamilton's equations, which are the same laws written more tidily). The region moves, it stretches, it folds back on itself. But its volume doesn't change.

The figure shows this for a single pendulum, where phase space is just a plane. The red cloud starts as a disc. Points nearer the top of the swing move more slowly than those nearer the bottom, so the disc is sheared into a crescent and then into a long thin thread that winds round. Its area is exactly what it was at the start.

That has a direct consequence for entropy. If our uncertainty is spread uniformly over the cloud, its Shannon entropy is the log of the cloud's volume. Same volume, same entropy. More generally, for any density $\rho_t$ carried along by Hamiltonian flow, the fine-grained entropy $-\int \rho_t \log \rho_t$ is constant in time.

So where does the second law come from? From the grid. We can't follow the thread; we only see which cells it is in. The entropy computed from the cell occupancies rises as the thread spreads across more cells. This is the Gibbs and Ehrenfest account of the second law: what increases is a *coarse-grained* entropy, the one that forgets the fine detail. That fits the grouping picture we have been using since the die in Week 2: the macrostate is the group, and the detail within each group is what we have chosen not to track.}

\newslide{Running the Film Backwards}

\slides{Volume is conserved because each state has exactly one past.}

\slidesincremental{
* Mechanics can be run backwards: flip every momentum
* So two different starting states can never end in the same place
* A map that merged states would shrink the volume
}

\notes{The reason volume can't shrink is that mechanics is reversible. If I hand you the state of the system now, you can flip all the momenta, run the same laws forward, and recover where it came from. So two different starting points can never arrive at the same end point: if they did, the backward run would have to choose between two pasts. Any rule that sent two distinct states to one would squeeze phase-space volume, and mechanics never does that.

This gives us a test we can apply to the demon's gate. Don't ask whether it is clever, or what it knows. Just ask: does it ever send two different states to the same one?}

\newslide{The Gate in Phase Space}

\slides{An open hole and a solid wall are both one-to-one. Maxwell's gate is two-to-one.}

\plotcode{vs, vmax, xw = 1.0, 2.0, 1.0   # threshold, velocity range, half-width of each side
col = {'A': '#cc4444', 'C': '#ee9944', 'B': '#4488cc', 'D': '#44aa99'}
# arriving at the gate: (x0, x1, v0, v1)
arrive = {'A': (-xw, 0, vs, vmax),      # on the left, moving right, fast
          'B': (-xw, 0, 0, vs),         # on the left, moving right, slow
          'C': (0, xw, -vmax, -vs),     # on the right, moving left, fast
          'D': (0, xw, -vs, 0)}         # on the right, moving left, slow
# leaving the gate
TR_hi, TR_lo = (0, xw, vs, vmax), (0, xw, 0, vs)
BL_lo, BL_hi = (-xw, 0, -vmax, -vs), (-xw, 0, -vs, 0)
cases = {
    'Open hole': {'A': TR_hi, 'B': TR_lo, 'C': BL_lo, 'D': BL_hi},
    'Solid wall': {'A': BL_lo, 'B': BL_hi, 'C': TR_hi, 'D': TR_lo},
    "Maxwell's gate": {'A': TR_hi, 'B': BL_hi, 'C': TR_hi, 'D': BL_hi},
}

def box(ax, r, **kw):
    x0, x1, v0, v1 = r
    ax.add_patch(mpatches.Rectangle((x0, v0), x1 - x0, v1 - v0, **kw))

fig, axes = plt.subplots(1, 3, figsize=(12, 4.4), sharey=True)
for ax, (name, rule) in zip(axes, cases.items()):
    for k, r in arrive.items():
        box(ax, r, facecolor=col[k], edgecolor='white', lw=1.5, alpha=0.85)
        ax.text(0.5*(r[0]+r[1]), 0.5*(r[2]+r[3]), k, ha='center', va='center',
                color='white', fontsize=13, fontweight='bold')
    landed = {}
    for k, r in rule.items():
        landed.setdefault(r, []).append(k)
    for r in [TR_hi, TR_lo, BL_lo, BL_hi]:
        ks = landed.get(r, [])
        if not ks:
            box(ax, r, facecolor='none', edgecolor='#aaaaaa', lw=1, ls='--')
            ax.text(0.5*(r[0]+r[1]), 0.5*(r[2]+r[3]), 'empty', ha='center',
                    va='center', color='#888888', fontsize=10)
        elif len(ks) == 1:
            box(ax, r, facecolor=col[ks[0]], edgecolor='white', lw=1.5, alpha=0.35)
            ax.text(0.5*(r[0]+r[1]), 0.5*(r[2]+r[3]), ks[0], ha='center',
                    va='center', color=col[ks[0]], fontsize=13, fontweight='bold')
        else:
            box(ax, r, facecolor=col[ks[0]], edgecolor=col[ks[1]], lw=0,
                alpha=0.5, hatch='///')
            box(ax, r, facecolor='none', edgecolor='#222222', lw=2)
            ax.text(0.5*(r[0]+r[1]), 0.5*(r[2]+r[3]), '+'.join(ks), ha='center',
                    va='center', color='#222222', fontsize=13, fontweight='bold')
    ax.axvline(0, color='#2ca02c', lw=4)
    ax.axhline(0, color='#333333', lw=0.8)
    for v in (vs, -vs):
        ax.axhline(v, color='#888888', lw=0.6, ls=':')
    ax.set_xlim(-xw, xw); ax.set_ylim(-vmax, vmax)
    ax.set_xticks([-0.5*xw, 0.5*xw]); ax.set_xticklabels(['left side', 'right side'])
    ax.set_title(name, fontsize=12)
axes[0].set_yticks([-vs, 0, vs]); axes[0].set_yticklabels([r'$-v_\star$', '0', r'$v_\star$'])
axes[0].set_ylabel('velocity across the gate $v$')
fig.text(0.5, 0.005, 'Strong colour: about to reach the gate.   Pale colour: just left it.   Dashed: nothing arrives here.',
         ha='center', fontsize=10, color='#444444')
fig.tight_layout(rect=(0, 0.04, 1, 1))
mlai.write_figure('maxwell-gate-phase-space-map.svg', directory='\writeDiagramsDir/physics')}

\figure{\includediagram{\diagramsDir/physics/maxwell-gate-phase-space-map}{95%}}{What happens to a molecule at the gate, drawn in (side, velocity) space. Molecules about to arrive are in the strong-coloured quadrants: A and B on the left heading right (fast and slow), C and D on the right heading left. An open hole lets everything through; a solid wall bounces everything back. Both send each arriving region to its own leaving region. Maxwell's gate sends A and C to the same place (fast, leaving to the right) and B and D to the same place (slow, leaving to the left). Two quadrants end up empty. The gate halves the phase-space volume.}{maxwell-gate-phase-space-map}

\speakernotes{This is the slide to spend time on. Walk A, B, C, D through the open hole, then the wall, then the gate. The punchline: four regions in, two regions out.}

\notes{Here is the gate drawn in phase space. Look only at the direction across the gate: which side a molecule is on, and its velocity $v$ across the gate (positive means heading right). Molecules about to hit the gate are on the left moving right, or on the right moving left. I've split each of those by speed, giving four regions: A (left, fast), B (left, slow), C (right, fast), D (right, slow).

With an open hole every molecule carries on through. A ends up on the right moving right, C ends up on the left moving left, and so on. Four regions in, four distinct regions out. With a solid wall every molecule bounces: its velocity flips and it stays on its own side. Again four in, four distinct out. Both are perfectly good mechanics.

Now apply Maxwell's rule. A fast molecule from the left (A) is let through, so it leaves to the right, moving right, fast. A fast molecule from the right (C) is bounced, so it also leaves on the right, moving right, fast. A and C land in the same place. In the same way B (slow from the left, bounced) and D (slow from the right, let through) both end up on the left moving left, slow. Four regions in, two out. Half of phase space is never visited after an encounter with the gate.

Look at one of the fast molecules leaving to the right. Did it come through the gate, or bounce off it? The state of the gas no longer tells you. That is exactly the many-to-one map that Liouville forbids. So the gate's rule is not something mechanics, on its own, can do. The rule is fine as a thought experiment, and it does sort the gas: the simulation in lecture 4 shows that, and so does the flux calculation. What Liouville tells us is that the rule cannot be the whole of the physics. Something else has to enter the story.}

\newslide{Where Could the Lost Volume Go?}

\slides{Give the gate a memory and it's one-to-one again. Wiping the memory brings the merge back.}

\plotcode{red, orange = '#cc4444', '#ee9944'

def blob(ax, xy, w, h, fc, text, tc='#222222'):
    ax.add_patch(mpatches.FancyBboxPatch(xy, w, h, boxstyle='round,pad=0.02,rounding_size=0.08',
                 facecolor=fc, edgecolor='#333333', lw=1.5))
    ax.text(xy[0] + w/2, xy[1] + h/2, text, ha='center', va='center', fontsize=10, color=tc)

def arrow(ax, a, b, c='#333333'):
    ax.annotate('', xy=b, xytext=a, arrowprops=dict(arrowstyle='->', color=c, lw=1.6))

fig, axes = plt.subplots(1, 3, figsize=(12, 3.8))
for ax in axes:
    ax.set_xlim(0, 10); ax.set_ylim(0, 6); ax.axis('off')

ax = axes[0]
blob(ax, (0.3, 3.6), 3, 1.4, red, 'A: fast, came\nfrom the left', tc='white')
blob(ax, (0.3, 0.8), 3, 1.4, orange, 'C: fast, came\nfrom the right', tc='white')
blob(ax, (6.2, 2.2), 3.4, 1.6, '#f3c3b0', 'fast, leaving\nto the right')
arrow(ax, (3.4, 4.3), (6.1, 3.3)); arrow(ax, (3.4, 1.5), (6.1, 2.7))
ax.set_title('Gate alone: two pasts, one present', fontsize=11)

ax = axes[1]
blob(ax, (0.3, 3.6), 3, 1.4, red, 'A', tc='white')
blob(ax, (0.3, 0.8), 3, 1.4, orange, 'C', tc='white')
blob(ax, (5.0, 3.6), 4.9, 1.4, '#f3c3b0', 'leaving right\nmemory = "let through"')
blob(ax, (5.0, 0.8), 4.9, 1.4, '#fbe0c6', 'leaving right\nmemory = "bounced"')
arrow(ax, (3.4, 4.3), (4.9, 4.3)); arrow(ax, (3.4, 1.5), (4.9, 1.5))
ax.set_title('Gate plus a memory: one-to-one again', fontsize=11)

ax = axes[2]
blob(ax, (0.2, 3.6), 3.6, 1.4, '#f3c3b0', 'memory =\n"let through"')
blob(ax, (0.2, 0.8), 3.6, 1.4, '#fbe0c6', 'memory =\n"bounced"')
blob(ax, (6.0, 2.2), 3.6, 1.6, 'white', 'memory = "blank"')
arrow(ax, (3.9, 4.3), (5.9, 3.3)); arrow(ax, (3.9, 1.5), (5.9, 2.7))
ax.text(7.8, 0.9, 'at least kT ln 2 of heat\nper bit into the bath', ha='center',
        va='center', fontsize=10, color=red)
arrow(ax, (7.8, 2.15), (7.8, 1.45), c=red)
ax.set_title('Wiping the memory: the merge comes back', fontsize=11)

fig.tight_layout()
mlai.write_figure('maxwell-gate-memory-merge.svg', directory='\writeDiagramsDir/physics')}

\figure{\includediagram{\diagramsDir/physics/maxwell-gate-memory-merge}{95%}}{Left: on its own the gate sends two different pasts to one present. Middle: if the gate keeps a record of what it did, the combined state of gas plus record is one-to-one again, and Liouville is satisfied. Right: to run the demon in a cycle the record has to be wiped, which merges two memory states into one. That merge can only be paid for by pushing entropy into the surroundings, at least $k_BT\ln 2$ of heat per bit.}{maxwell-gate-memory-merge}

\speakernotes{Landauer's argument is a Liouville argument applied to the memory. Don't derive $k_BT\ln 2$; say where it comes from.}

\notes{If the gas alone can't hold the history, maybe something else can. Suppose the gate keeps a record each time it acts: "let through" or "bounced". Now the joint state of the gas and the record is one-to-one again. A fast molecule leaving to the right with the record "bounced" came from C; with "let through" it came from A. No volume has been lost. It has been moved from the gas into the record.

This is why Liouville sits so close to Landauer's principle. A finite memory fills up. To keep the demon running in a cycle we have to reset the record to blank, and that reset is itself a two-to-one map: "let through" and "bounced" both go to "blank". The merge is back, this time in the memory. The only way a reset can happen in a world governed by mechanics is if the lost volume is pushed into something else, usually a heat bath. Landauer's figure of at least $k_BT\ln 2$ of heat per erased bit is the size of that push [@Landauer-irreversibility61]. Bennett used this to put the demon's cost at erasure rather than at measurement [@Bennett-thermodynamics82].

Earman and Norton argue that this resolution assumes some of what it sets out to prove [@Earman-exorcist98; @Earman-exorcist99]. That debate is real, and I don't want to present the erasure story as settled. But the phase-space picture is not in dispute: the gate's rule, on its own, throws away volume, and the volume has to go somewhere.}

\newslide{Detailed Balance}

\slides{At equilibrium, every transition is matched by its reverse. Not just on average round a loop.}

\plotcode{pos = {'A': (0.0, 1.0), 'B': (0.87, -0.5), 'C': (-0.87, -0.5)}
cases = [('Detailed balance', {('A','B'):1.5, ('B','A'):1.5, ('B','C'):1.5,
                                ('C','B'):1.5, ('C','A'):1.5, ('A','C'):1.5}),
         ('Stationary, but not detailed balance',
          {('A','B'):2, ('B','C'):2, ('C','A'):2, ('B','A'):1, ('C','B'):1, ('A','C'):1})]
pi = 1/3

fig, axes = plt.subplots(1, 2, figsize=(10, 4.6))
for ax, (title, k) in zip(axes, cases):
    for (i, j), rate in k.items():
        (x0, y0), (x1, y1) = pos[i], pos[j]
        d = np.array([x1 - x0, y1 - y0]); d /= np.linalg.norm(d)
        n = np.array([-d[1], d[0]])*0.09
        a = np.array([x0, y0]) + 0.22*d + n
        b = np.array([x1, y1]) - 0.22*d + n
        flux = pi*rate
        ax.annotate('', xy=b, xytext=a, arrowprops=dict(arrowstyle='-|>',
                    color='#333333', lw=9*flux, mutation_scale=14))
        m = 0.5*(a + b) + 2.0*n
        ax.text(*m, f'{flux:.2f}', ha='center', va='center', fontsize=9, color='#555555')
    for s, (x, y) in pos.items():
        ax.add_patch(plt.Circle((x, y), 0.18, facecolor='#ddeeff', edgecolor='#333333', lw=1.5))
        ax.text(x, y, s, ha='center', va='center', fontsize=13, fontweight='bold')
    if 'not' in title:
        ax.text(0, -0.02, '↻', ha='center', va='center', fontsize=26, color='#cc4444')
    ax.set_xlim(-1.3, 1.3); ax.set_ylim(-0.95, 1.3); ax.set_aspect('equal'); ax.axis('off')
    ax.set_title(title, fontsize=12)
fig.text(0.5, 0.02, 'Each state holds probability 1/3 in both. Numbers are probability flows (probability of state times rate). Red: a net current of 1/3 circulates.',
         ha='center', fontsize=10, color='#444444')
fig.tight_layout(rect=(0, 0.05, 1, 0.97))
mlai.write_figure('detailed-balance-vs-stationary.svg', directory='\writeDiagramsDir/physics')}

\figure{\includediagram{\diagramsDir/physics/detailed-balance-vs-stationary}{85%}}{Two three-state systems with the same stationary distribution (one third each). On the left every flow is cancelled by its own reverse: detailed balance. On the right the probabilities still don't change in time, because each state gains as much as it loses, but the clockwise flows are twice the anticlockwise ones and a net current goes round the loop. That is a steady state, not an equilibrium.}{detailed-balance-vs-stationary}

\speakernotes{The right panel is the one to dwell on. Unchanging probabilities don't mean equilibrium. Then map the gate onto it: the reverse of a let-through is a bounce.}

\notes{Detailed balance is a statement about transitions between states. Write $\pi_i$ for the equilibrium probability of state $i$ and $k_{ij}$ for the rate of jumping from $i$ to $j$. The probability flowing from $i$ to $j$ per unit time is $\pi_i k_{ij}$. Detailed balance says that for *every* pair,
$$
\pi_i k_{ij} = \pi_j k_{ji}.
$$
Note that this is a balance of probability flows, not of rates. If $j$ is much less likely than $i$, the rate back from $j$ has to be correspondingly higher.

It is easy to confuse detailed balance with stationarity, and the figure shows why they differ. Stationarity only asks that each state's total inflow equals its total outflow, so the probabilities stop changing. On the right of the figure that holds, but probability is circulating clockwise round the loop. You can have a steady current with unchanging probabilities. Detailed balance rules that out. It is what equilibrium means at the level of individual transitions, and it follows from reversible microscopic laws together with a thermal stationary distribution. (When velocities are involved the reverse of a transition also flips the velocities: the reverse of "fast molecule moves left to right" is "fast molecule moves right to left".)

Now look at the gate again. A fast molecule crossing left to right is allowed. Its reverse, a fast molecule crossing right to left, is bounced. A slow molecule crossing right to left is allowed; its reverse is bounced. The gate is built from transitions whose reverses it forbids. That is the right-hand panel: a steady state with a current running through it, not an equilibrium. If the gas and the gate are really at one temperature, detailed balance has to hold, so once we include the gate's own workings the reverse moves must come back. If they don't, something outside the box is driving it.

In lecture 4 we called the condition "as many molecules cross left to right as right to left" flux balance. That is stationarity across the membrane. It is not detailed balance, and the gate can satisfy one while violating the other.}

\newslide{What the Lecture 4 Calculation Did and Didn't Show}

\slides{Two Maxwellians can't balance both number and energy. That's a fact about the description, not a proof that sorting fails.}

\slidesincremental{
* Fix the number crossing each way, and the energy crossing each way won't match
* So the steady state is not two clean Maxwellians
* The gas still sorts: the simulation shows it
* Liouville and detailed balance say what that sorting must cost
}

\speakernotes{One sentence back to lecture 4. Don't redo the flux calculation. Correct the impression that the number/energy mismatch by itself is the second law at work.}

\notes{Let me be careful about how this connects to lecture 4. There we treated each side as a Maxwellian at its own temperature and asked whether the flows across the gate could balance. They can't, for both number and energy at once: a fast molecule carries more energy than a slow one, so when equal numbers cross each way more energy goes right than comes back. That told us the steady state is not two clean Maxwellians. The tails near the gate are continually being eaten away and refilled by collisions.

That is a statement about which description of the gas is right. It is not, by itself, a proof that the demon fails. The gas really does sort under the gate's rule: the simulation shows it, and the entropy of the gas really does fall. What Liouville and detailed balance add is the reason the sorting can't be free. The gate's rule merges states, so the merge has to be paid for somewhere. And at a single temperature the reverse transitions it forbids have to reappear once the gate is made of real physics. Which brings us to the trapdoor.}

\newslide{Smoluchowski's Trapdoor}

\slides{Build the gate from a flap and a spring. The flap is in the gas too.}

\plotcode{rng = np.random.default_rng(3)
fig, ax = plt.subplots(figsize=plot.big_wide_figsize)
ax.set_xlim(0, 10); ax.set_ylim(0, 6); ax.set_aspect('equal'); ax.axis('off')

ax.add_patch(mpatches.Rectangle((0.5, 0.5), 9, 5, facecolor='none', edgecolor='#333333', lw=2))
ax.plot([5, 5], [0.5, 2.2], color='#333333', lw=4)
ax.plot([5, 5], [3.8, 5.5], color='#333333', lw=4)

for x0 in (0.7, 5.2):
    xs = rng.uniform(x0, x0 + 4.1, 45); ys = rng.uniform(0.7, 5.3, 45)
    ax.scatter(xs, ys, s=18, color='#777777', zorder=2)

hinge = np.array([5.0, 3.8]); L = 1.6
for ang, a in [(0, 1.0), (25, 0.35), (45, 0.2), (12, 0.25)]:
    t = np.deg2rad(ang)
    tip = hinge + L*np.array([np.sin(t), -np.cos(t)])
    ax.plot([hinge[0], tip[0]], [hinge[1], tip[1]], color='#cc4444', lw=4, alpha=a,
            solid_capstyle='round', zorder=3)
ax.add_patch(plt.Circle(hinge, 0.09, color='#222222', zorder=4))
zz = np.linspace(0, 1, 40)
ax.plot(5.0 + 0.6*zz, 4.3 + 0.08*np.sin(zz*12*np.pi), color='#222222', lw=1.2)
ax.plot([5.6, 5.6], [4.3, 4.0], color='#222222', lw=1.2)

ax.annotate('', xy=(5.6, 2.9), xytext=(3.9, 2.9),
            arrowprops=dict(arrowstyle='->', color='#2ca02c', lw=2))
ax.text(3.0, 3.25, 'a fast molecule\npushes the flap open', ha='center', fontsize=10, color='#2ca02c',
        bbox=dict(boxstyle='round', facecolor='white', edgecolor='none', alpha=0.9))
ax.text(7.9, 1.4, 'the flap sits in the same gas:\nit is kicked from both sides\nand rattles open on its own',
        ha='center', fontsize=10, color='#cc4444',
        bbox=dict(boxstyle='round', facecolor='white', edgecolor='#cc4444'))
ax.annotate('', xy=(5.7, 2.6), xytext=(7.0, 1.9),
            arrowprops=dict(arrowstyle='->', color='#cc4444', lw=1.2))
ax.text(5.75, 4.5, 'soft spring', fontsize=9, color='#222222')
ax.text(2.75, 0.1, 'left: temperature $T$', ha='center', fontsize=10)
ax.text(7.25, 0.1, 'right: temperature $T$', ha='center', fontsize=10)
mlai.write_figure('smoluchowski-trapdoor.svg', directory='\writeDiagramsDir/physics')}

\figure{\includediagram{\diagramsDir/physics/smoluchowski-trapdoor}{75%}}{Smoluchowski's trapdoor. A light flap on a soft spring is meant to open only when a fast molecule hits it from the left. But a flap light enough to be pushed by one molecule is light enough to be shaken by the gas around it. It has its own thermal energy, rattles open at random (faint positions), and lets molecules back the wrong way.}{smoluchowski-trapdoor}

\speakernotes{Name Smoluchowski (1912) and Feynman's ratchet and pawl (Lectures, Vol. I, ch. 46). No simulation. The point is that the failure is thermal, and nothing here is a memory.}

\notes{Smoluchowski asked the engineering question in 1912. Replace the demon with a mechanism: a small flap over the hole, held shut by a weak spring, that a molecule coming from the left can push open but one from the right can't. No intelligence, no measurement, no memory. Surely that sorts the gas?

It doesn't, and the reason has nothing to do with information. The flap is itself a physical object in contact with the gas. For one molecule to push it open it has to be very light and the spring very soft. But then the flap is shaken by the gas just like any other light object. Equipartition gives it $\tfrac{1}{2}k_BT$ of kinetic energy in its swing and another $\tfrac{1}{2}k_BT$ stored in the spring, on average, just as every molecule has $\tfrac{1}{2}k_BT$ per direction of motion. It rattles. Sometimes it is open when a molecule arrives from the right, and lets it through the wrong way. Sometimes it slams shut and knocks a molecule back. Once we include the flap in the description, detailed balance holds for gas plus flap together, and the net sorting averages to zero. Feynman's ratchet and pawl, in the *Feynman Lectures* (Volume I, chapter 46), is the same argument for extracting work rather than sorting.

There is a tempting fix: keep the flap cold so that it doesn't rattle. That does work for a while. But a cold flap in a warm gas is a second heat bath at a different temperature, and what we have built is a small heat engine running between the flap and the gas. It stops when the flap has warmed up. We haven't beaten the second law; we've brought in a second reservoir.

So the trapdoor is not a Liouville-and-memory story. Each time the flap shuts, the two-to-one merge from the gate picture is being absorbed by the flap's own jiggling, which is passed straight back to the gas as heat. There is no record to fill or wipe. If we want to coarse-grain this system we can't just add a "door open / door closed" label to our compartments. We have to add the flap as a real degree of freedom, with its own position, momentum, and temperature, and check detailed balance for the enlarged system.}

\newslide{Two Different Ways to Fail}

\slides{The trapdoor fails because it heats up. The memoryful demon fails when it has to forget.}

\slidesincremental{
* Trapdoor: no record; the mechanism is in the same bath and jiggles
* Memoryful demon: the record fills; wiping it costs at least $k_BT\ln 2$ per bit
* If a story invokes Landauer, ask: where is the bit kept?
}

\speakernotes{One slide. This is the habit for Worksheet 4: when a model says "Landauer", ask where the memory is.}

\notes{About ten of the twelve Worksheet 3 conversations reached for Landauer or erasure. That is a legitimate move when the demon has a memory. It is the wrong move for an automatic membrane or a trapdoor with no record, where the failure is thermal and the argument is detailed balance. Many dialogues blended the two into one fluent story.

The test is simple. If a resolution mentions erasure, ask where the bit is stored, and when it is wiped. If there is no answer, the explanation belongs somewhere else. Usually that means asking about the gate's own physics: what it is made of, what temperature it is at, and whether its reverse transitions have been left out.}

\endif
