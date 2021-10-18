# Summary

## Linear Regression to Predict MPG

1.	According to the Multiple linear regression performed in RStudio we can conclude that the vehicle length with a p-value = 2.60e-12, and vehicle ground clearance with the p-value = 5.21e-08 provide a non-random amount of variance. The low p-value indicates that both variables have a high level of significance.

2.	The linear regression shows that some of the independent variables (vehicle length and vehicle ground clearance) have a significant effect on the dependent variable (MPG). That means that the slope of the linear model is not considered to be zero. If none of the independent variables  had an effect on the dependent variable in other words, the MPG is constant and does not change, then we can consider that the slope is zero. 

3.	The R-Squared shows how well the regression model fits the observed data. In our case the R-Squared = 0.71 which means  that 71% of the data fits the regression model. A R-Squared greater than 0.7 is considered showing a high level of correlation.

<img src="https://i.ibb.co/KLDGdtd/1-Linear-regression.png" alt="1-Linear-regression" border="0">

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. If we take a look at the total summary table, the variance of 62.29 PSI falls in the specified range. When looking at each lot individually we notice that 2 lots also fall in the specified range with a variance of 0.98 for lot 1 and variance of 7.47 for lot 2. But lot 3 falls out of the range with a variance of 170.29 PSI.
<img src="https://i.ibb.co/pyVQ0yP/2-1-Total-summary-table.png" alt="2-1-Total-summary-table" border="0">

<img src="https://i.ibb.co/bJkCspz/2-2-Lot-summary-table.png" alt="2-2-Lot-summary-table" border="0">

## T-Tests on Suspension Coils

Conducting a t-test on the suspension coil data in order to determine whether there is a statistical difference between the mean of the provided sample dataset and a hypothesized, potential population dataset by using the population mean of 1500, we concluded that:
the p-value = 0.06 tells us that there is no sufficient evidence to reject the null hypothesis. In other words, fail to reject that there is a statistical difference between the sample mean and the population mean.

<img src="https://i.ibb.co/t8p8LtT/3-T-Test.png" alt="3-T-Test" border="0">


If we look at each lot individually, then we can conclude the following: 
* Lot 1 -> p-value = 1 there is no sufficient evidence to reject the null hypothesis.
* Lot 2 -> p-value = 0.06 there is no sufficient evidence to reject the null hypothesis.
* Lot 3 -> p-value = 0.04 there is  sufficient evidence to reject the null hypothesis. And if we compare the mean we can see that sample mean = 1496 which is different from the population mean = 1500.

<img src="https://i.ibb.co/XYddw0b/3-2-T-test.png" alt="3-2-T-test" border="0"> 


## Study Design: MechaCar vs Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horsepower, maintenance cost, or safety rating.

In your description, address the following questions:
1.	What metric or metrics are you going to test?
2.	What is the null hypothesis or alternative hypothesis?
3.	What statistical test would you use to test the hypothesis? And why?
4.	What data is needed to run the statistical test?

Answers:
1.	The metrics that I would need for my analysis are price, maintenance cost, fuel efficiency.
2.	Null hypothesis: All cars (MechaCar and benchmark indicators of industry) with a high maintenance cost and a good fuel efficiency have a high price.
Alternative hypothesis: Not all cars with a high maintenance cost and a good fuel efficiency have a high price.
3.	I would use a One-Sample T-test analysis to determine whether there is a statistical difference between the means of a sample dataset (MechaCar data) and a hypothesized, potential population dataset (benchmark indicators of industry) are statistically different.
4.	I would need a sample of 30 MechaCar data that includes: price, maintenance cost, fuel efficiency and the benchmark indicators for car industry of the same car class. 
