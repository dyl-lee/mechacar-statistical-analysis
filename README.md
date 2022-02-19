# mechacar-statistical-analysis

## Overview

## Results

### Linear Regression to Predict MPG
Various design specifications were used to manufacture 50 prototype cars in an effort to identify ideal vehicle performance. Each vehicle was subjected to fuel efficiency testing (miles per gallon, or MPG) and the following metrics were measured for each vehicle for comparison: vehicle length, weight, spoiler angle, ground clearance and drivetrain type. 

> * H<sub>0</sub>: there is no correlation between the measured vehicle metrics and MPG results in the prototypes.
> * H<sub>a</sub>: at least one of these vehicle metrics accounts for non-random variance observed in the MPG results. 
> * Significance level (alpha = 0.05) was established before multiple regression was performed on the dataset.

![mpg_summary](/Images/linear_regression_mpg.png)

The regression model slope is considered to be non-zero (F-statistic p<0.05, therefore the H<sub>0</sub> that the overall model slope is 0 can be rejected). The model fits the data fairly well, accounting for 71% of the variability in the observed data (multiple R-squared = 0.71). Both vehicle length and ground clearance metrics (p<0.001, therefore reject the H<sub>0</sub>) are statistically significant predictors of fuel efficiency compared to other metrics.

### Summary Statistics on Suspension Coils


### T-Tests on Suspension Coils

## Study Design: MechaCar prototypes vs the Competition
