# _lamd Directory

This directory contains the source files for your course lectures and practicals in LaMD (Lecture as Markdown) format.

## Structure

- `_lamd.yml` - Configuration file for LaMD processing
- `*.md` - Lecture source files in LaMD format
- `*-practical.md` - Worksheets (compile with `maketalk`; layout: practical)

## Usage

To compile a lecture, use the `maketalk` command:

```bash
cd _lamd
maketalk sample-lecture.md
```

This will generate:
- HTML lecture page in `../_lectures/`
- Reveal.js slides in `../slides/`
- Jupyter notebook in `../_notebooks/`

## File Naming Convention

Lectures should be named following this pattern:
- `01-01-topic-name.md` - Week 1, Session 1
- `02-03-another-topic.md` - Week 2, Session 3

Practicals and worksheets should include `-practical` in the name so they are not treated as lectures:

- `01-thermodynamics-practical.md` — Worksheet 1
- `02-maxent-practical.md` — Worksheet 2
- `03-geometry-practical.md` — Worksheet 3
- `04-intelligence-practical.md` — Worksheet 4

Compile a worksheet with `maketalk 01-thermodynamics-practical.md` from this directory. Output goes to `../_practicals/` and `../_notebooks/`.

## LaMD Commands

Common LaMD commands used in lecture files:

- `\notes{}` - Content for lecture notes (not in slides)
- `\slides{}` - Content for slides only  
- `\subsection{}` - Section heading
- `\code{}` - Executable code block
- `\setupcode{}` - Setup code (hidden in output)
- `\reading{}` - Reading list

## Further Information

For more information about LaMD, see:
- [LaMD Documentation](https://inverseprobability.com/lamd)
- [LaMD GitHub Repository](https://github.com/lawrennd/lamd)

