# Quick Start Guide

## 1. Copy the Template

```bash
# From the mlatcl directory
cp -r course-template/ yourcourse/
cd yourcourse/
```

## 2. Customize Your Course

### Option A: Use the Setup Script (Recommended)

```bash
./setup-course.sh
```

This will interactively prompt you for:
- Course code (e.g., `tig`, `mlfc`, `advds`)
- Course title (e.g., "The Inaccessible Game")
- Description
- Author information
- Institution and venue

### Option B: Manual Customization

Edit these files and replace placeholders:
- `_config.yml` - Replace `iei`, `Innformation, Energy and Intelligence`, `This course looks at the relationship between information, energy and intelligence. The idea iis to provide students with a solid grounding in the sets of tools that can help us understand the limits of what an intelligent system might be able to do. This module builds mathematical machinery needed to answer that question rigorously. Entropy appears in three apparently separate traditions — thermodynamics (Boltzmann, Gibbs), information theory (Shannon), and Bayesian inference (Jaynes) — and turns out to be the same mathematical object viewed from different operational assumptions. Information geometry (Amari) provides the unifying geometric language.`
- `_lamd/_lamd.yml` - Replace `iei` and author information
- `index.html` - Update course description
- `_people/people.yml` - Add your information

## 3. Install Dependencies

```bash
bundle install
```

## 4. Test Locally

```bash
bundle exec jekyll serve
# Visit http://localhost:4000/iei/
```

## 5. Create Your First Lecture

```bash
cd _lamd
cp sample-lecture.md introduction.md
# Edit the file; set week in frontmatter. Do not prefix the filename with 01-.
maketalk introduction.md
```

This will generate:
- HTML lecture in `_lectures/`
- Slides in `slides/`
- Jupyter notebook in `_notebooks/`

## 6. Deploy to GitHub

```bash
git init
git add .
git commit -m "Initial course setup"
git remote add origin https://github.com/mlatcl/yourcourse.git
git push -u origin main
```

Then enable GitHub Pages in your repository settings (Settings → Pages → Source: main branch).

Your site will be live at: `https://mlatcl.github.io/yourcourse/`

## Troubleshooting

### Jekyll won't start
```bash
bundle install
bundle update
```

### Missing directories
The template should include:
- `_lectures/`, `_notebooks/`, `_practicals/`, `_projects/`
- `slides/diagrams/`

If missing, create them:
```bash
mkdir -p _lectures _notebooks _practicals _projects slides/diagrams
```

### Site shows 404
Check that `baseurl` in `_config.yml` matches your repository name.

## Next Steps

1. Review `README.md` for detailed documentation
2. Add your lecture content in `_lamd/`
3. Customize navigation in `_data/nav.yml`
4. Add diagrams to `slides/diagrams/`

## Getting Help

- **LaMD Documentation**: https://inverseprobability.com/lamd
- **Jekyll Docs**: https://jekyllrb.com/docs/
- **Example Courses**: mlfc, advds, mlphysical repositories

