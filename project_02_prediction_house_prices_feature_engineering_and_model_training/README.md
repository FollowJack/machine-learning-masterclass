# Predicting house prices - regression
Notebooks for data exploratory analysis, data cleaning, feature engineering and model training, data pipeline and model evaluation of house prices.

Content:
- dataframes
- countplots
- boxplots (segmentations)
- groupby
- removing duplicates
- fill NaN values
- fix structural errors
- remove outliers
- label missing categorical data
- create features
- remove unused features
- encode dummy variables
- split dataset
- build model pipeline
- fit and tune model with gridsearch
- try out several machine learning algorithms
  - lasso
  - ridge
  - elastic net
  - random forest
  - gradient boosting
- model evaluation with r^2 value and mean absolute error
- model saving

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
