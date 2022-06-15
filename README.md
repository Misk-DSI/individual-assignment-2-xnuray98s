# Red Wine Quality EDA Report

## Description

This is an exploratory data analysis using R for the Red Wine Quality dataset from UCIML which can be found [here](https://www.kaggle.com/datasets/uciml/red-wine-quality-cortez-et-al-2009), this dataset originally has 1599 rows and 12 columns.

- [Github Repo](https://github.com/Misk-DSI/individual-assignment-2-xnuray98s)

- [Wine Report](./wine_report.html)

## Data

| Variable      | Description |
| ----------- | ----------- |
| fixed acidity      | Tartaric acid and it plays in maintaining the chemical stability of the wine and its color and finally in influencing the taste of the finished wine.       |
| volatile acidity   | Acetic acid and it can lead to unpleasant vinegar taste.       |
| citric acid   | It can add flavor and freshness to wine.        |
| residual sugar   | The amount of sugar remaining after fermentation.        |
| chlorides   | Sodium chloride and it shows the amount of salt in wine.        |
| free sulfur dioxide   | the free form of Sulfur Dioxide(SO2) and it prevents the oxidation of wine.         |
| total sulfur dioxide   | Total  Sulfur Dioxide(SO2).       |
| density   | Density of wine depends on the percent of alcohol and sugar.        |
| pH   | describes how acidic or basic a wine is, most wines are between 3-4.      |
| sulphates   | A wine additive that acts as an antioxidant.        |
| alcohol   | The percent of alcohol in wine.        |
| quality   | Quality of wine as a score between 0 and 10.        |

## Requirements

- ```tidyverse```
- ```dplyr```
- ```janitor```
- ```GGally```
- ```here```
- ```reactable```

## Folder Structure

```bash
./
│   README.md
│   wine_report.html    
│   individual-assignment-2-xnuray98s.Rproj
│
└───archive/
│   │   assignment.md
│   
└───data/
│   │   winequality-red.csv
│   
└───src/
    │   wine_EDA.R
    │   wine_report.Rmd
```
