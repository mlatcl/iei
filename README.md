# Course Template

This is a template for creating new ML@CL courses using Jekyll, LaMD (Lecture as Markdown), and VibeSafe project management tools.

## Quick Start

### 1. Copy the Template

```bash
# From the parent directory (e.g., /Users/neil/mlatcl/)
cp -r course-template/ yourcourse/
cd yourcourse/
```

### 2. Customize the Course

Run the customization script to update all placeholders:

```bash
./setup-course.sh
```

This will prompt you for:
- Course code (e.g., `mlfc`, `advds`, `mlphysical`)
- Course title (e.g., "Machine Learning Foundations")
- Course description
- Your name and institution
- Course venue

Alternatively, manually replace the following placeholders throughout the template:

- `COURSECODE` - Your course code (e.g., mlfc, advds)
- `COURSETITLE` - Your course full title
- `COURSE_DESCRIPTION` - Short course description
- `COURSE_DESCRIPTION_EXTENDED` - Longer description for home page
- `COURSE_OVERVIEW_TEXT` - Overview paragraph for home page
- `Your Name`, `Your Institution` - Author information

### 3. Install Dependencies

```bash
# Install Ruby gems for Jekyll
bundle install

# Make sure LaMD is installed
# See: https://github.com/lawrennd/lamd
```

### 4. Create Your First Lecture

```bash
cd _lamd
cp sample-lecture.md 01-01-introduction.md
# Edit 01-01-introduction.md with your content
maketalk 01-01-introduction.md
```

### 5. Preview Your Site Locally

```bash
bundle exec jekyll serve
# Visit http://localhost:4000/COURSECODE/
```

### 6. Deploy to GitHub Pages

```bash
# Initialize git repository
git init
git add .
git commit -m "Initial course setup"

# Create repository on GitHub (e.g., mlatcl/yourcourse)
git remote add origin https://github.com/mlatcl/yourcourse.git
git push -u origin main

# Enable GitHub Pages in repository settings
# Set source to "main" branch
# Your site will be at: https://mlatcl.github.io/yourcourse/
```

## Directory Structure

```
course-template/
├── _config.yml              # Jekyll configuration
├── _data/                   # Site data (navigation, etc.)
│   ├── nav.yml             # Navigation menu configuration
│   └── people.yml          # Course instructors/TAs
├── _lamd/                   # Lecture source files (LaMD format)
│   ├── _lamd.yml           # LaMD configuration
│   ├── sample-lecture.md   # Sample lecture
│   └── sample-practical.md # Sample practical
├── _lectures/               # Compiled lecture HTML (generated)
├── _notebooks/              # Compiled Jupyter notebooks (generated)
├── _practicals/             # Compiled practical exercises (generated)
├── _projects/               # Student project descriptions
├── _people/                 # People information
├── slides/                  # Compiled reveal.js slides (generated)
│   └── diagrams/           # Images and diagrams for slides
├── Gemfile                  # Ruby dependencies
├── .gitignore              # Git ignore rules
├── index.html              # Course home page
├── lectures.html           # Lectures index page
├── practicals.html         # Practicals index page
├── projects.html           # Projects index page
├── setup-course.sh         # Customization script
└── README.md               # This file
```

## Creating Course Content

### Lectures

Lectures are written in LaMD (Lecture as Markdown) format in the `_lamd/` directory.

**File naming convention**: `WW-SS-topic-name.md`
- WW = week number (01, 02, etc.)
- SS = session number (01, 02, etc.)

**Example**: `01-01-introduction.md` (Week 1, Session 1)

**Compiling lectures**:
```bash
cd _lamd
maketalk 01-01-introduction.md
```

This generates:
- HTML lecture page in `_lectures/`
- Reveal.js slides in `slides/`
- Jupyter notebook in `_notebooks/`

### Practicals

Practicals follow the same naming convention but include `-practical`:
- `01-01-introduction-practical.md`

### LaMD Commands

Common commands in LaMD files:

- `\notes{...}` - Content for lecture notes (not in slides)
- `\slides{...}` - Content for slides only
- `\subsection{...}` - Section heading
- `\code{...}` - Executable Python code
- `\setupcode{...}` - Setup code (hidden in output)
- `$$...$$` - LaTeX mathematics
- `\reading{...}` - Reading list

See [LaMD documentation](https://inverseprobability.com/lamd) for full details.

## Configuration Files

### `_config.yml`

Main Jekyll configuration. Key settings:
- `title`: Course title
- `description`: Course description
- `baseurl`: Course URL path (e.g., `/mlfc`)
- `collections`: Defines lectures, practicals, projects

### `_lamd/_lamd.yml`

LaMD configuration. Key settings:
- `author`: Your information
- `postsdir`, `slidesdir`, etc.: Output directories
- `posts`, `ipynb`, `reveal`: Enable/disable output formats
- `url`, `baseurl`: Website URLs
- `venue`: Course venue

### `_data/nav.yml`

Navigation menu configuration. Customize the main navigation, footer, and top bar.

## VibeSafe Project Management (Optional)

This template can be integrated with VibeSafe for project management:

- **Backlog**: Task tracking system
- **CIPs** (Code Improvement Plans): Structured improvements
- **AI-Requirements**: Requirements gathering framework
- **Tenets**: Project principles and guidelines

To install VibeSafe tools, see: [VibeSafe Documentation](https://github.com/vibeSafe)

## Customization

### Changing the Theme

The template uses `mlatcl/jekyll-theme`. To use a different theme:

1. Update `remote_theme` in `_config.yml`
2. Adjust layouts in HTML files if needed

### Adding Custom Layouts

Create custom layouts in `_layouts/` directory:
```html
---
layout: default
---
{{ content }}
```

### Custom CSS

Add custom styles by creating `_sass/custom.scss` and including in Jekyll.

## Common Tasks

### Add a New Lecture

```bash
cd _lamd
# Create new file following naming convention
vim 02-01-new-topic.md
# Compile it
maketalk 02-01-new-topic.md
```

### Update Navigation

Edit `_data/nav.yml` to add/remove menu items.

### Add Course Images

Place images in `slides/diagrams/` and reference in markdown:
```markdown
![Description](slides/diagrams/image.svg)
```

### Test Locally

```bash
bundle exec jekyll serve --watch
# Visit http://localhost:4000/COURSECODE/
```

### Clean Generated Files

```bash
# Remove Jekyll build
rm -rf _site

# Remove generated lecture files
rm -rf _lectures/* _notebooks/* slides/*
```

## Troubleshooting

### Jekyll won't start

```bash
bundle install
bundle update
```

### LaMD compilation errors

Check:
- `_lamd.yml` configuration
- YAML frontmatter in lecture files
- Python environment for code execution

### Slides not showing

- Verify `reveal: True` in `_lamd.yml`
- Check that `slidesdir` path is correct
- Ensure reveal.js is included in theme

### Page 404 errors

- Check `baseurl` in `_config.yml` matches repository name
- Verify GitHub Pages is enabled in repository settings
- Wait a few minutes for GitHub Pages to build

## Resources

- **LaMD Documentation**: https://inverseprobability.com/lamd
- **LaMD GitHub**: https://github.com/lawrennd/lamd
- **Jekyll Documentation**: https://jekyllrb.com/docs/
- **GitHub Pages**: https://pages.github.com/
- **ML@CL Jekyll Theme**: https://github.com/mlatcl/jekyll-theme

## Example Courses

See these courses for examples:
- **ML Foundations**: https://github.com/mlatcl/mlfc
- **Advanced Data Science**: https://github.com/mlatcl/advds
- **ML and the Physical World**: https://github.com/mlatcl/mlphysical
- **Deep Neural Networks**: https://github.com/mlatcl/deepnn

## Support

For questions or issues:
- Open an issue on the course repository
- Contact ML@CL group: https://mlatcl.github.io/contact-us/

## License

This template is provided as-is for creating ML@CL courses. Individual course content is subject to its own licensing.

