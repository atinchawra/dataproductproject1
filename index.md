---
title       : Prediction Model for Iris Dataset
subtitle    : Iris dataset
author      : Atin Chawra
job         : Architect
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Objective of the Application

1. Select the dataset (only one option in this application)
2. Explore the dataset
3. Define predictors and outcome
4. Select appropriate Prediction model for the dataset

--- .class #id 

## Exploring Iris dataset

1. Explore Sepal vs Petal graphs for length and width

```r
data(iris)
str(iris)
```

```
## 'data.frame':	150 obs. of  5 variables:
##  $ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
##  $ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
##  $ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
##  $ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
##  $ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...
```
2. Species, a factor, is the outcome and others are predictors
3. The graphs indicate that for each species, the width and lengths of petal/sepal are very well-ranged
4. The ranges are exclusive for each species
5. Tree works well for such dataset rather than a linear regression model for Prediction

--- .class #id 

## Studying Prediction Tree vis-a-vis Graphs

1. Reconcile the tree with the graphs
2. In the tree, Petal.Length<2.4 leads us to Sentosa and the graph shows us exactly that
3. Petal.Length>=2.4 leads us to either verticolor or virginica
4. Otherwise, Petal.Width<1.6 leads us to versicolor
5. Otherwise, we go to Virginica
6. Graphs and Tree are very much reconciling

--- .class #id 

## Conclusion

1. Prediction Tree works well for this dataset and outcome

