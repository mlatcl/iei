# John Ellis — *Maxwell's Demon?* (Maxwell Day 2024)

**Source:** Maxwell Day lecture, University of Cambridge. Full talk (optional): [YouTube](https://www.youtube.com/watch?v=U4ENbYa60Uw). Transcript: `john-ellis-maxwells-demon.md` in the module repository.

**Worksheet 2:** Read this excerpt for Part B (i)(ii). The full video is optional; the extension band (80–89%) invites engagement with the complete argument.

---

## Defined results and dissipation

Thermodynamics is about **change**, not equilibrium. Equilibrium is the special case where change has stopped.

A macroscopic **defined result** cannot sit in thermal noise without help. A frictionless pulley surrounded by molecules jiggles away from any position you set; when you return, it has diffused. To hold a result you need a **located** degree of freedom — a potential barrier, like a switch. You push the switch over the barrier; work becomes kinetic energy and is **dissipated** as heat and sound. A spring only stores energy briefly and pushes back. The only robust way to obtain a defined, holdable outcome is surmounting a barrier with dissipation.

Change, in this sense, *is* obtaining a defined result against fluctuations.

## Ellis's resolution of Maxwell's demon

Maxwell proposed a finite being at a trap door who sorts fast and slow molecules (or lets molecules accumulate on one side). Apparent second-law violation.

Ellis's answer has two parts, both about **physical mechanisms**, not abstract bits:

1. **Measurement dissipates.** Any process that locates a molecule — photon scattering off a detector, for example — is dissipative. Scattering is dissipation.

2. **The trap door must be located.** Moving the door is like flipping a switch: it must sit in a definite position to control the gas. That requires a barrier and costs entropy when the door is moved.

Any defined result — a measurement outcome, a gate position — comes from an irreversible step. On this reading the demon never gets a free lunch; Clausius's bookkeeping is restored without invoking Shannon entropy or computer memory.

Ellis also rejects the claim that the demon needs a separate **memory register**. The trap-door position *is* its memory; it can look at the door rather than write on paper.

## Critique of the information-theoretic story

Ellis argues that the standard textbook/Wikipedia chain (Szilard → information → Landauer erasure) is a **dog's dinner**:

- **"Information" is the wrong object.** Shannon's entropy describes reversible manipulation of numbers. Thermodynamics cares about the **physical entities** that represent those numbers — they must be moved into defined configurations.

- **Memory and erasure.** Storing outcomes is not free: degrees of freedom must be changed. Eventually the demon must wipe a record. Textbook accounts then say something must generate entropy **because otherwise the second law would be violated** — Ellis calls this circular (he notes Wikipedia admits the circularity and carries on anyway).

- **Contrast with good physics pedagogy.** Schrödinger's cat was a *reductio*, not a recipe for superposed cats; likewise, the information-demon story often asserts what it should derive.

Ellis's positive claim: dissipation at measurement and gating suffices. His negative claim: the information ledger often **assumes** the second law at the step where it should **derive** the erasure cost independently.

## The generality question (for your reflection)

Ellis motivates the second law from **time-reversal symmetry** of microdynamics: under passive constraints, forward and backward trajectories must balance; irreversibility appears when we coarse-grain or drive.

His demon rebuttal, however, works through **examples** — photons, trap doors, switches — rather than a substrate-independent theorem in the same style.

The Landauer–Bennett programme tries to close that gap. **Charles Bennett (1982)**, *The Thermodynamics of Computation: A Review*, *International Journal of Theoretical Physics* **21**, 905–940, shows that **erasing one bit** is logically irreversible: resetting a bistable memory compresses phase space, so dissipation of at least $k_B T \ln 2$ in a bath at temperature $T$ follows from the mechanics of that compression — not from assuming the second law at the conclusion. The argument is substrate-independent (latch, spin, trap-door state). Read Bennett when answering Ellis's circularity charge: cite the derivation, not the bad textbook version.

Your worksheet asks you to compare these accounts: does either match the **generality** of the second law itself? What would the other side need to prove?
