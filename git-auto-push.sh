#!/bin/bash

# Get current branch
BRANCH=$(git branch --show-current)

# Check if commit message provided
if [ -z "$1" ]
then
  echo "❌ Please provide a commit message."
  echo "Usage: ./git-auto-push.sh \"Your message\""
  exit 1
fi

echo "📂 Adding files..."
git add .

echo "📝 Committing..."
git commit -m "$1"

echo "🚀 Pushing to branch: $BRANCH"
git push origin $BRANCH

echo "✅ Successfully pushed!"
