find -L . -type f -name "*.css" -print0 | while IFS= read -r -d '' FNAME; do
    mv -- "$FNAME" "${FNAME%.css}.module.css"
done