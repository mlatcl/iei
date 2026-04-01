# _lamd Directory

This directory contains the source files for your course lectures and practicals in LaMD (Lecture as Markdown) format.

## Structure

- `_lamd.yml` - Configuration file for LaMD processing
- `*.md` - Lecture source files in LaMD format
- `*-practical.md` - Practical exercise files

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

Practicals should include `-practical` in the name:
- `01-01-topic-practical.md`

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

