# Employee Analytics - binary classification
Notebooks data exploratory analysis, data cleaning, feature engineering and model training, data pipeline, model evaluation and project delivery of employee retention.

Content:
- dataframes
- countplots
- boxplots (segmentations)
- bivariate segmentations
- groupby
- removing duplicates
- fill NaN values
- remove outliers
- label missing categorical data
- create features
- remove unused features
- split dataset
- build model pipeline
- fit and tune model with gridsearch
- try out several machine learning algorithms
  - Logistic regressin Lasso
  - Logistic regressin Ridge
  - random forest
  - gradient boosting
- model evaluation with ROC and AUC as metricc for classification
- model saving
- project delivery

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
