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

Lectures use a descriptive slug. The week number is in frontmatter; `maketalk` prefixes outputs with it. Do not put `01-` in the source filename.

- `motivation-boltzmann.md` — `week: 1` in frontmatter
- `shannon-entropy.md` — `week: 2`

There is one session per week, so do not set a `session` field.

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

