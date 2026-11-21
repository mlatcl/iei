\ifndef{weekSixAsTaught}
\define{weekSixAsTaught}

\subsection{As Taught}

\slides{Exp family and Fisher before the close. Shannon and DPI wait.}

\slidesincremental{
* MaxEnt re-derived: $\theta=-\lambda$, $\psi=\log Z$, $T$ as sufficient stats
* CGF: $\nabla\psi=\langle T\rangle$; Hessian is Fisher / $\mathrm{Cov}[T]$
* After the break: base measure (Poisson $1/k!$, binomial multiplicity)
* Bernoulli logit / softplus; Gaussian natural params; $H=\psi-\theta\cdot\eta$
* Natural gradient of entropy is $-\theta$; GRT only as a W4 pointer
}

\notes{As taught on 17 November Quiz 3 ran long (quiet until ~10:32 on the Panopto clock; Whisper filled the gap with thank-you loops). A short Maxwell-speed / high-dimensional ring aside opened the spoken half. The first half was a live MaxEnt re-derivation into exponential-family form ($\psi$, $\theta=-\lambda$, $T$), then $\psi=\log Z$ as a cumulant generating function: first derivative $\langle T\rangle$, second $\mathrm{Var}[T]$, with skew / kurtosis / Cauchy (MacKay lighthouse) as colour. The break was called after the CGF overview and a MaxEnt-property Q\&A. After the break: counting versus non-counting base measures (Poisson $1/k!$, binomial $\binom{n}{k}$, coin-toss limit), Bernoulli logit / sigmoid / softplus CGF and the ML ``deltas'' moral, Gaussian natural parameters $\mu/\sigma^2$ and $-1/(2\sigma^2)$ with a live completion of the square, then entropy $H=\psi-\theta\cdot\eta$ and $\nabla_\theta H=-G\theta$ (natural gradient). Shannon capacity and DPI were not walked. The Good Regulator was a two-minute close for Worksheet 4 (minimise entropy of $Z$; Ashby; body temperature) --- no $D,S,A,Z$ diagrams. Continuous MaxEnt remains unread overflow from Week 5.}

\speakernotes{As taught: stay on the board for $\theta$, $\psi$, base measure, and $H=\psi-\theta\cdot\eta$. Do not open Shannon / DPI if the Fisher / natural-gradient block is still live. GRT is a W4 pointer only; full Conant--Ashby waits for Week 8. Continuous MaxEnt stays parked.}

\endif
