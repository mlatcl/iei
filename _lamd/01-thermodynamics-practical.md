---
title: "Worksheet 1: Thermodynamics and Shannon Entropy"
practical: 1
week: 1
layout: practical
assignment: True
ipynb: True
reveal: False
transition: None
date: 2026-10-20
released: 2026-10-13
venue: FW26, William Gates Building
abstract: >
  Sample from a Boltzmann distribution, decompose the free energy, and
  compute Shannon entropy of simple sources. Then compare thermodynamic
  and information-theoretic accounts of entropy, using an LLM as an
  epistemic tool rather than as an authority.
author:
- given: Neil D.
  family: Lawrence
  institution: University of Cambridge
  url: http://inverseprobability.com
outcomes: [LO1, LO2, LO3]
duration_hours: 3
type: practical
assessment_id: W1
weight: 15
due_week: 2
word_count: 300
---

\define{\incrementQuestionMarkCounter{marks}}{}

\section{Worksheet 1}

\notes{Released after lecture 1 (13 October). Due at the start of lecture 2 (20 October). Estimated three hours. This worksheet is 15% of the module mark.}

\notes{Submit a Jupyter notebook (`.ipynb`) and a short written reflection (`.md`) on Moodle. Name the notebook `crsid_worksheet1.ipynb`.}

\notes{LLMs are explicitly permitted for code generation, debugging, and exploration. The reflection asks you to use one deliberately. Authenticity is checked by Quiz 1 at the start of lecture 3 (27 October), which applies the same ideas to a *new* example under invigilated conditions.}

\setupcode{import numpy as np
import matplotlib.pyplot as plt}

\section{Part A -- Code}

\notes{A running example for later: the *two-state* system \(E\in\{0,\varepsilon\}\) is what Quiz 1 will use, and its heat capacity has a peak (Schottky's anomaly). You do not need to compute that peak here. This worksheet uses a *three-state* system so that the quiz cannot be answered by pattern-matching to your own plots.}

\codeassignment{A three-state system has energy levels \(E_0=0\), \(E_1=1\), \(E_2=3\) in units of \(k_B\). Write functions for the partition function \(Z(\beta)\) and the Boltzmann probabilities \(p_i = e^{-\beta E_i}/Z\). Draw 10,000 samples and plot the empirical frequencies against the analytic probabilities for \(\beta\in\{0.1, 0.5, 1.0, 2.0\}\).}{
energies = np.array([0.0, 1.0, 3.0])

def partition(beta, energies=energies):
    # return Z(beta)
    pass

def boltzmann(beta, energies=energies):
    # return the array of probabilities p_i
    pass

def sample_boltzmann(beta, n=10000, energies=energies):
    # return n integer samples in {0, 1, 2}
    pass

# Plot empirical frequencies against analytic p_i for each beta
}{20}{}

\codeassignment{Using the same three-level system, compute and plot as a function of \(\beta\): mean energy \(U=\langle E\rangle\), entropy \(S=-\sum_i p_i\ln p_i\) (nats), and Helmholtz free energy \(F=U-S/\beta\). Verify numerically that \(F=-\ln Z/\beta\).}{
def mean_energy(beta, energies=energies):
    pass

def entropy(beta, energies=energies):
    pass

def free_energy(beta, energies=energies):
    pass

# Plot U, S, F against beta. Check F == -log(Z)/beta.
}{20}{}

\codeassignment{Write `shannon_entropy(probs)` returning \(H=-\sum_i p_i\log_2 p_i\) in bits. Apply it to a fair coin, a biased coin with \(p=0.9\), a uniform distribution over eight outcomes, and the Boltzmann distribution from the first question at \(\beta=1\). Print a table and state which has the highest and lowest entropy, and why.}{
def shannon_entropy(probs):
    pass

# fair coin, biased coin, uniform-8, Boltzmann at beta=1
}{15}{}

\section{Part B -- Reflection}

\writeassignment{Ask an LLM (your choice) the following two questions *separately*: (1) "Explain entropy from a thermodynamic perspective." (2) "Explain entropy from an information-theoretic perspective." Write a 300-word critical synthesis that (a) identifies what each framing illuminates that the other does not, (b) notes any point at which the two explanations used the same mathematics but described it differently, (c) states in one sentence the essential difference in *operational assumption*, and (d) says whether each framing treated entropy as a no-go (what you cannot do) or as a recipe (what you should do), and which half the model missed. Include the key LLM responses as an appendix, not counted in the word limit.}{45}{}

\section{Marking}

\notes{
- 60--74: code runs; reflection identifies surface differences between the framings.
- 75--79: reflection shows what the operational assumptions are; code is annotated with the physics.
- 80--89: reflection finds a non-obvious connection or tension; code extends the brief (for example, animates relaxation to equilibrium).
- 90--100: original synthesis that reframes one perspective in terms of the other in a way not present in the LLM responses.
}

\section{Submission}

\notes{Upload `crsid_worksheet1.ipynb` and `crsid_worksheet1.md` to Moodle before the start of lecture 2 on 20 October.}
