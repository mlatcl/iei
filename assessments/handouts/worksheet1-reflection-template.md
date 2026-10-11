---
worksheet: W1
title: "Worksheet 1: Handwritten reflection"
format: handwritten-scan
---

# Worksheet 1: Handwritten reflection

The reflection is **handwritten**, not typed. Do not submit a markdown reflection.

1. Build the printable proforma from the markdown source:
   ```bash
   cd assessments/handouts
   pandoc worksheet1-reflection-proforma.md -s -o worksheet1-reflection-proforma.tex
   pandoc worksheet1-reflection-proforma.md -o worksheet1-reflection-proforma.pdf
   ```
2. Print `worksheet1-reflection-proforma.pdf`.
3. Write ~300 words by hand in answer to the prompts on the form.
4. Scan or photograph clearly (single PDF preferred).
5. Upload **separately** from the dialogue as `candidatenumber_worksheet1_reflection.pdf`.

Source of truth: [`worksheet1-reflection-proforma.md`](worksheet1-reflection-proforma.md)
(pandoc writes the `.tex` / `.pdf`).

Do **not** put your name or CRSid on the form — candidate number only.

The dialogue remains a digital markdown file (`candidatenumber_worksheet1_dialogue.md`)
using [`worksheet1-dialogue-template.md`](worksheet1-dialogue-template.md).
