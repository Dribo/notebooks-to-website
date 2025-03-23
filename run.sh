#!/bin/bash

echo "Converting Jupyter notebooks to HTML..."

# Run the notebook conversion script
./convert.sh

echo "Generating main.html..."

# Generate the main.html file
./generate_main.sh

echo "Done! Website should be ready to view."