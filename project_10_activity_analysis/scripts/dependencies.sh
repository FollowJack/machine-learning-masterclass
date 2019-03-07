#!/bin/bash
# using venv kernel
pip install ipykernel;
ipython kernel install --user --name=venv;
# dependencies HERE
pip install numpy;
pip install pandas;
pip install matplotlib;
pip install seaborn;
pip install missingno;
pip install -U turicreate;
pip install sqlalchemy;
