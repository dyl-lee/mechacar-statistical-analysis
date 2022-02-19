# mechacar-statistical-analysis

## Overview

## Results

### Linear Regression to Predict MPG
Various design specifications were used to manufacture 50 prototype cars in an effort to identify ideal vehicle performance. Each vehicle was subjected to fuel efficiency testing (miles per gallon, or MPG) and the following metrics were measured for each vehicle for comparison: vehicle length, weight, spoiler angle, ground clearance and drivetrain type. 

> * H<sub>0</sub>: there is no correlation between the measured vehicle metrics and MPG results in the prototypes.
> * H<sub>a</sub>: at least one of these vehicle metrics accounts for non-random variance observed in the MPG results. 
> * Significance level (alpha = 0.05) was established before multiple regression was performed on the dataset.

![mpg_summary](/Images/linear_regression_mpg.png)

Both vehicle length and ground clearance metrics (p<0.001) significantly contribute to fuel efficiency. 

The appropriate considerations were made to assess whether the slope of the model is considered to be zero