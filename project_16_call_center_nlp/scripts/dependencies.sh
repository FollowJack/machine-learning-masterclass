#!/bin/bash
# using venv kernel
pip install ipykernel;
ipython kernel install --user --name=venv;
pip install -r requirements.txt;

# Necessary for NTLK error
# see https://stackoverflow.com/questions/41348621/ssl-error-downloading-nltk-data
/Applications/Python 3.6/Install Certificates.command
# download required
python -m nltk.downloader punkt stopwords reuters maxent_treebank_pos_tagger averaged_perceptron_tagger wordnet
