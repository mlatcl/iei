# _lamd Directory

This directory contains the source files for your course lectures and practicals in LaMD (Lecture as Markdown) format.

## Structure

- `_lamd.yml` - Configuration file for LaMD processing
- `lectures.csv` - Lecture stubs compiled by `./compile.sh`
- `worksheets.csv` - Worksheet (`*-practical.md`) stubs compiled by `./compile.sh`
- `parking.md` - Overflow holding bay (not a week; do not add to `lectures.csv`)
- `*.md` - Lecture source files in LaMD format
- `*-practical.md` - Worksheets (compile with `maketalk`; layout: practical)

## Usage

Compile everything listed in the CSVs:

```bash
cd _lamd
./compile.sh
```

Or compile one lecture / worksheet:

```bash
cd _lamd
maketalk intro-review-motivation.md
maketalk intro-history-entropy-shannon-practical.md
```

Lectures generate:
- HTML lecture page in `../_lectures/`
- Reveal.js slides in `../slides/`
- Jupyter notebook in `../_notebooks/`

Worksheets generate HTML under `../_practicals/` (and notebooks when enabled).
Printable assessment handouts listed in `../assessments/handouts/handouts.csv`
are built with pandoc (`.tex` / `.pdf`) as a second step in `./compile.sh`.

## File Naming Convention

Lectures use a descriptive slug. The week number is in frontmatter; `maketalk` prefixes outputs with it. Do not put `01-` in the source filename.

- `intro-review-motivation.md` — `week: 1`
- `ensemble-entropy-embodiment.md` — `week: 2`
- `free-energy-shannon-entropy.md` — `week: 3`

There is one session per week, so do not set a `session` field.

## Parking lot

`parking.md` holds leftover slides when a live lecture overruns. It is not a
week, not in the 16h contact total, and not presented until an item is moved
into a live `_lamd/*.md` file. Record each leftover in the `parked:` frontmatter
list. Compile with `maketalk parking.md` only to review overflow. Do not add
`parking` to `lectures.csv`.

Practicals and worksheets should include `-practical` in the name so they are not treated as lectures:

- `intro-history-entropy-shannon-practical.md` — Worksheet 1
- `shannon-boltzmann-practical.md` — Worksheet 2 (Socratic: H vs S)
- `02-maxent-practical.md.deferred` — former MaxEnt notebook brief (parked for later redesign)
- `03-geometry-practical.md` — Worksheet 3
- `04-intelligence-practical.md` — Worksheet 4

Compile a worksheet with `maketalk intro-history-entropy-shannon-practical.md` from this directory. Output goes to `../_practicals/` and `../_notebooks/`.

## LaMD Commands

Common LaMD commands used in lecture files:

- `\notes{}` - Content for lecture notes and notebooks (not on slides)
- `\speakernotes{}` - Presenter-only cues in reveal.js (delivery, timing, worksheet pointers)
- `\slides{}` - Content for slides only
- `\subsection{}` - Section heading
- `\code{}` - Executable code block
- `\setupcode{}` - Setup code (hidden in output)
- `\reading{}` - Reading list

## Further Information

For more information about LaMD, see:
- [LaMD Documentation](https://inverseprobability.com/lamd)
- [LaMD GitHub Repository](https://github.com/lawrennd/lamd)

