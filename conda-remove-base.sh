#!/bin/bash

# removes the annoying '(base)' or whatever environment name
# that miniconda/anaconda automatically adds to PS1 without asking
conda config --set changeps1 false
