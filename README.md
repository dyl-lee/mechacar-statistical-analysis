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
Design specifications for the suspension coils of these cars dictate variance must not exceed 100 psi. While this constraint may be met when considering the total manufactured cars, the summary statistics  indicates that the variance for lot 3 exceeded the 100 psi maximum.  
<div id="image-table">
    <table>
        <tr>
            <td>Summary Statistics (Total)</td>
            <td>Summary Statistics (per lot)</td>
        </tr>
	    <tr>
    	    <td style="padding:10px">
        	    <img src="Images/summary_stats_total" height="150"/>
      	    </td>
            <td style="padding:10px">
            	<img src="Images/summary_stats_lots" height="150"/>
            </td>
        </tr>
    </table>
</div>
### T-Tests on Suspension Coils


## Study Design: MechaCar prototypes vs the Competition
In a future study, the performance of the MechaCar will be compared against vehicles from other manufacturers (at least n=3) to determine if there is a difference in their fuel efficiencies (mpg). As there is one categorical independent variable and one quantitative dependent variable (measured by mpg) with multiple groups to be compared, a one-way ANOVA should be performed in R using aov() and summary() functions. A significance level of 0.05 should be sufficient to test the hypotheses using the resulting p-values:
> H<sub>0</sub>: The MechaCar performs as well as competitor vehicles in fuel efficiency
> H<sub>a</sub>: At least one manufacturer's vehicle differs significantly from the overall mean
If the ANOVA results indicate that there is significant differences among the considered vehicles, performing a TukeyHSD (in R, TukeyHSD() function) post-hoc test can reveal which groups are statiscally different from one another.