# Activity analysis
![activities](data/activities.jpeg)

## Outline
- Objective (key question)
- Setup
- Get data
- Data exploration
  - Standard analysis
  - Missing data
  - Clean table
- Base table creation
  - Fill missing values
  - Feature engineering
  - Specific insights
- Model
  - Hypothesis
  - Evaluation
- Communicate results (conclusion)

# Helpful ressources
- Pandas documentation: https://pandas.pydata.org/pandas-docs/stable/reference/index.html

---
Key Questions answered in the objective:
1. Who are the customers?
- Why are they buying our product?
- How do we predict if a customer is going to buy our product?
- What is different from segments who are performing well and those that are performing below expectations?
- How much money will we lose if we don’t actively sell the product to these groups?


## Objective
(1) The goal of the project is to support and assist the time trackers and habit formers (customer) on their journey to save time and spend it more wisely. (2) This will push the customer to strengthen habits and identify bad habits and time-burning activities to get rid of.

(3) By early feature testing we can measure the acceptance of the feature based on ratings changes in the app store.

(4) At time of writing the feature (recommendation) is not available and early experiments with recommendations based on the past 3-4 weeks were misleading.

(5) The app [SaveMyTime](http://savemytime.co/en/) could loose their total customer base if the feature would be used by their competititors, due to the convenient support of time saving and automated guidance.

We will create the feature by analyzing activity data from SaveMyTime App and build a recommendation engine.
We will support users to form habits and get deeper insights into their daily habits. Predicting an activity is established at given time based on the past results.

For this we will find out:
1. total time spend on categories
- average time spend on categories
- the total time spend on activities
- average time spend on activities
- which activities have the highest occurences
- which activities have the highest time spend on
(- what is the mean, median, standard deviation of ???)
