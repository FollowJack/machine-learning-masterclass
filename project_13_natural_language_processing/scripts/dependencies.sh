#!/bin/bash
# using venv kernel
pip install ipykernel;
ipython kernel install --user --name=venv;
pip install -r requirements.txt;

# download required
python -m nltk.downloader punkt stopwords reuters maxent_treebank_pos_tagger averaged_perceptron_tagger
