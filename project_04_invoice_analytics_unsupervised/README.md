# Predicting cluster for invoices - unsupervised
Notebooks for data exploratory analysis, data cleaning, feature engineering and model training, data pipeline and model evaluation of invoices.

Content:
- dataframes
- countplots
- boxplots (segmentations)
- transction level cleaning
- create features
- remove unused features
- encode dummy variables
- split dataset
- build model pipeline
- principal component analysis
- reducing dimensionality
- Cluster analysis
- k-means clustering


## Get Started
Run command below to give rights to execute bash scripts.
```bash
chmod +x setup_dev.sh start_dev.sh scripts/pipeline.sh
```

Run ```bash ./setup_dev.sh``` for creating docker image.   

After setup run ```./start_dev``` for running jupyterlab in docker instance.

## Dependencies:
See dependencies.txt for original used dependencies.    
See requirements.txt for freezed dependencies. (<-- Take this to make it run)
