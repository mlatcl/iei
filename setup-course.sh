#!/bin/bash

# Course Template Setup Script
# This script helps customize the course template for a new course

set -e

echo "=========================================="
echo "Course Template Setup"
echo "=========================================="
echo ""
echo "This script will help you customize the course template."
echo "You'll be prompted for information about your course."
echo ""

# Function to prompt for input with default
prompt_with_default() {
    local prompt="$1"
    local default="$2"
    local varname="$3"
    
    if [ -n "$default" ]; then
        read -p "$prompt [$default]: " input
        eval "$varname=\"${input:-$default}\""
    else
        read -p "$prompt: " input
        eval "$varname=\"$input\""
    fi
}

# Gather course information
echo "Course Information:"
echo "-------------------"
prompt_with_default "Course code (e.g., mlfc, advds)" "mycoursecode" COURSECODE
prompt_with_default "Course title (e.g., Machine Learning Foundations)" "My Course Title" COURSETITLE
prompt_with_default "Short description" "A course about machine learning" COURSE_DESC
prompt_with_default "GitHub organization/username" "e.g. mlatcl" GITHUB_ORG

echo ""
echo "Author Information:"
echo "-------------------"
prompt_with_default "First name" "Author given name" AUTHOR_GIVEN
prompt_with_default "Last name" "Author family name" AUTHOR_FAMILY
prompt_with_default "Institution" "Your Institution" INSTITUTION
prompt_with_default "Personal URL" "http://example.com" AUTHOR_URL

echo ""
echo "Course Venue:"
echo "-------------"
prompt_with_default "Venue" "Venue for course" VENUE

echo ""
echo "=========================================="
echo "Configuration Summary:"
echo "=========================================="
echo "Course Code: $COURSECODE"
echo "Course Title: $COURSETITLE"
echo "Description: $COURSE_DESC"
echo "GitHub Org: $GITHUB_ORG"
echo "Author: $AUTHOR_GIVEN $AUTHOR_FAMILY"
echo "Institution: $INSTITUTION"
echo "Venue: $VENUE"
echo "=========================================="
echo ""

read -p "Proceed with these settings? (y/n): " confirm
if [ "$confirm" != "y" ] && [ "$confirm" != "Y" ]; then
    echo "Setup cancelled."
    exit 1
fi

echo ""
echo "Applying customizations..."

# Create temporary sed script
TMP_SED=$(mktemp)

# Build sed commands
cat > "$TMP_SED" <<EOF
s/COURSECODE/$COURSECODE/g
s/COURSETITLE/$COURSETITLE/g
s/COURSE_DESCRIPTION_EXTENDED/$COURSE_DESC/g
s/COURSE_DESCRIPTION/$COURSE_DESC/g
s/COURSE_OVERVIEW_TEXT/$COURSE_DESC/g
s/GITHUB_ORG/$GITHUB_ORG/g
s/YOUR_INSTITUTION/$INSTITUTION/g
s/YOUR_GIVEN_NAME/${AUTHOR_GIVEN}/g
s/YOUR_FAMILY_NAME/${AUTHOR_FAMILY}/g
s|YOUR_URL|${AUTHOR_URL}|g
s/COURSE_VENUE_NAME/$VENUE/g
EOF

# Files to update
FILES=(
    "_config.yml"
    "_lamd/_lamd.yml"
    "_lamd/sample-lecture.md"
    "_lamd/sample-practical.md"
    "_data/nav.yml"
    "_people/people.yml"
    "index.html"
    "lectures.html"
    "practicals.html"
    "projects.html"
    "casestudies.html"
    "about.md"
    "assessment.md"
    "README.md"
    "QUICKSTART.md"
)

# Apply replacements
for file in "${FILES[@]}"; do
    if [ -f "$file" ]; then
        echo "  Updating $file..."
        # Create backup
        cp "$file" "$file.bak"
        # Apply sed
        sed -f "$TMP_SED" "$file.bak" > "$file"
    else
        echo "  Warning: $file not found, skipping..."
    fi
done

# Update GitHub organization in _lamd.yml separately (different pattern)
if [ -f "_lamd/_lamd.yml" ]; then
    sed -i.bak "s/organization: mlatcl/organization: $GITHUB_ORG/g" "_lamd/_lamd.yml"
fi

# Clean up
rm "$TMP_SED"

# Ensure all required directories exist
echo ""
echo "Creating required directories..."
mkdir -p _lectures _notebooks _practicals _projects slides/diagrams

echo ""
echo "=========================================="
echo "Setup complete!"
echo "=========================================="
echo ""
echo "Next steps:"
echo "1. Review the updated files"
echo "2. Remove .bak backup files if satisfied:"
echo "   find . -name '*.bak' -delete"
echo "3. Install dependencies:"
echo "   bundle install"
echo "4. Create your first lecture in _lamd/"
echo "5. Test locally:"
echo "   bundle exec jekyll serve"
echo "6. Initialize git and push to GitHub"
echo ""
echo "See README.md for detailed instructions."
echo ""

