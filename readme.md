## How to use
Put your jupyter notebook files in src/jupyter.

Then use run.sh

It does conversion and makes a main.html where you can access the notebooks

## Converted names
> Anything after a '-' in the filename will be ignored. For example "Lecture2-v2 last edition.ipynb" will be converted to "Lecture2.html"

That just lets you add some metadata to filenames if you feel like it. 

### Make sure to have notebook with nbconvert 6.0+ installed
To check:
- pip show nbconvert
- conda list nbconvert