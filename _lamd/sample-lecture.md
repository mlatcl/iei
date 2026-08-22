---
title: "Sample Lecture Title"
week: 1
featured_image: slides/diagrams/sample-diagram.svg
abstract: >
  This is a sample lecture file. Replace this with your actual lecture content.
  The abstract should provide a brief overview of what this lecture covers.
author:
- given: Your
  family: Name
  institution: Your Institution
  url: http://example.com
date: 2025-10-19
venue: Your Institution Name
transition: None
---

\notes{This is a notes section. Content here appears in lecture notes but not slides.}

\subsection{Introduction}

\notes{
This is a sample lecture using LaMD (Lecture as Markdown) format. 

Key features:
- Write once in markdown
- Generate multiple outputs (HTML, slides, notebooks)
- Embed code and visualizations
- Include mathematical notation
}

\slides{* This content appears in slides
* Use bullet points for clarity
* Keep slides concise}

\subsection{Mathematical Notation}

\notes{You can include LaTeX-style mathematics:}

$$
y = mx + c
$$

\notes{Or inline math like $E = mc^2$.}

\subsection{Code Examples}

\notes{You can include Python code that will be executed:}

\setupcode{import numpy as np
import matplotlib.pyplot as plt}

\code{# Generate sample data
x = np.linspace(0, 10, 100)
y = np.sin(x)

# Create a plot
plt.figure(figsize=(8, 4))
plt.plot(x, y)
plt.xlabel('x')
plt.ylabel('sin(x)')
plt.title('Sample Plot')
plt.show()}

\subsection{Further Reading}

\notes{
Additional resources and references can be included here.
Use the `\reading{}` command for structured reading lists.
}

\thanks

\references

