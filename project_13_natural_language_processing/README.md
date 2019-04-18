# Natural Language Processing
Sets of notebooks for Natural Language Processing.

The data is Consumer Complaint Database from https://catalog.data.gov/dataset/consumer-complaint-database#topic=consumer_navigation

Key Questions answered in the objective:
1. Who are the customers?
- Why are they buying our product?
- How do we predict if a customer is going to buy our product?
- What is different from segments who are performing well and those that are performing below expectations?
- How much money will we lose if we don’t actively sell the product to these groups?

## Objective
(1) The goal of the project is to assist customer service agents to increase the conversion rate.  (2) This will assist the agents in enriching and strengthen their word corpus.

(3) By early feature A/B testing we can measure the acceptance of the feature based on conversion changes.

(4) TODO

(5) TODO



### Content
- tokenization,
- total term frequency
- document frequency
- stop words
- stemming
- n-grams
- word clouds
- term-frequency inverse-document-frequency
- POS Tagging
- binary classifier for sport report detection
- multiclass classifier for language detection
- multilabel classifier for sport politics labels detection
- classification metrics (precision, recall, f1)
- inspecion of reuters test data

## Get Started
Run command below to give rights to execute bash scripts.
```bash
chmod +x start.sh scripts/dependencies.sh scripts/jupyter.sh scripts/virtualenv.sh
```

Run ```bash ./start.sh``` for jupyter notebook.   

After running the start.sh change Kernel in your jupyter notebook to ```venv```.

## Dependencies:
See requirements.txt

## Credits to
Bonzaninis NLP tutorial: https://github.com/bonzanini/nlp-tutorial
