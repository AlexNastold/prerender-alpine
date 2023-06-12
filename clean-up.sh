FILES="/prerender/cache/**/*.html"
for f in $FILES
do
  if cat "$f" | grep -q "<title>Harolds - FIS/eSales dev</title>"; then
    rm "$f"
    echo "Removed: $f"
  fi
done
find /prerender/cache  -empty -type d -delete
