#!/bin/bash

HTML_DIR="src/html"
OUTPUT_FILE="main.html"

# Write header to main.html
cat << 'EOF' > "$OUTPUT_FILE"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Notebook Browser</title>
  <style>
    body { font-family: sans-serif; padding: 20px; background: #f5f5f5; }
    h1 { text-align: center; }
    ul { list-style: none; padding: 0; }
    li { margin: 10px 0; }
    a { text-decoration: none; color: #007BFF; font-size: 1.2em; }
    a:hover { text-decoration: underline; }
  </style>
</head>
<body>
  <h1>Notebook Browser</h1>
  <ul>
EOF

# Append a list item for each HTML file in src/html
for file in "$HTML_DIR"/*.html; do
    base=$(basename "$file" .html)
    echo "    <li><a href=\"$file\">$base</a></li>" >> "$OUTPUT_FILE"
done

# Write footer to main.html
cat << 'EOF' >> "$OUTPUT_FILE"
  </ul>
</body>
</html>
EOF
