#!/bin/bash
set -e

echo "Publishing AI Weekly Signal..."

git add editions.json LandingPage.html NewsPage.html server.js

if git diff --cached --quiet; then
  echo "Nothing new to publish — no changes detected."
  exit 0
fi

git commit -m "Publish: $(date '+%B %d, %Y')"
git push

echo ""
echo "Done! Your site will update in about 30 seconds."
