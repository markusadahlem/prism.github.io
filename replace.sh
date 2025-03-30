
grep -R -l -E '\b[Ss]ervice(s)?\b' .  --exclude="*.svg" --exclude="./services.md" --exclude="./_sass/pages/_page-service.scss"  --exclude="./_layouts/servic*.html" | while IFS= read -r file; do
  echo "Processing $file"
  perl -pi -e 's/\bservices\b/solutions/g; s/\bServices\b/Solutions/g; s/\bservice\b/solution/g; s/\bService\b/Solution/g' "$file"
done
