#!/bin/bash

# Usage: ./macos_clone.sh https://github.com/username/repository.git

REPO_URL="$1"

# Check if a URL was provided
if [ -z "$REPO_URL" ]; then
  echo "❌ Error: Please provide a GitHub repository URL."
  echo "Example: ./macos_clone.sh https://github.com/username/repo.git"
  exit 1
fi

# Extract the repository name from the URL
REPO_NAME=$(basename "$REPO_URL" .git)

# Clone the repository into the current directory
git clone "$REPO_URL" "$REPO_NAME"

# Check if the clone was successful
if [ -d "$REPO_NAME" ]; then
  cd "$REPO_NAME" || exit

  # If no .gitignore exists, create one, commit it, and push the change
  if [ ! -f .gitignore ]; then
    echo ".DS_Store" > .gitignore
    git add .gitignore
    git commit -m "Add .gitignore to exclude .DS_Store"
    git push
    echo "✅ .gitignore created, committed, and pushed in $REPO_NAME"
  else
    echo "ℹ️ .gitignore already exists in $REPO_NAME – no changes made"
  fi
else
  echo "❌ Error: Directory $REPO_NAME not found after cloning."
  exit 1
fi
