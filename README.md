
# Mod 15 –R & Statistics – MechaCar Auto Manufacturer 
### Overview of Analysis 
The purpose of this analysis was to leverage summary statistics and statistical testing improve the manufacturing process for MechaCar and to be able to make more informed decisions for a new product lineup.

### Results
## Linear Regression to Predict MPG

![Linear Regression Summary Statistics]( https://github.com/RichelynScott/MechaCar_Statistical_Analysis/blob/main/R_Analysis/MechaCar/Linear%20Regression%20Summary%20Stats.png)
1) The vehicle length and ground clearance are statistically likely to provide non-random amounts of variance to the miles per gallon (mpg) value. The two have a significant impact on mpg on the MechaCar prototype, whereas the vehicle weight, spoiler angle, and All Wheel Drive (AWD) have p-Values that indicate a random amount of variance with the dataset.

2) The slope of this linear model is not 0, because the strong r-squared value of 0.7149 and a p-value of 5.35e-11 (a value lower than the significant level threshold of .05% indicates that the model is able to explain much of the mpg variance between vehicles with the selected independent variables, and we may thus reject the null hypothesis.

3) This linear model has an r-squared value of 0.7149, which means that approximately 71% of all mpg predictions will be determined by this model. Relatively speaking, his multiple regression model does predict mpg of MechaCar prototypes effectively.

## Summary Statistics on Suspension Coils

![Suspension Coils Total Summary Statistics](https://github.com/RichelynScott/MechaCar_Statistical_Analysis/blob/main/R_Analysis/MechaCar/Suspension%20Coil%20total_summary%20.png)

![Suspension Coil Lot Summary Statistics](https://github.com/RichelynScott/MechaCar_Statistical_Analysis/blob/main/R_Analysis/MechaCar/S%20Coil%20Lot_Summary.png)



The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. When we look at all 3 lots together we see that the variance is within the acceptable range, but when we perform the statistical analysis on each individual lot (1 through 3) we find that the variance is below even 10 pounds per square inch of variance for lots 1 & 2, but lot 3 has a variance of 170, beyond the 100 pounds per square inch threshold, and therefore does not pass quality control.

## T-Tests on Suspension Coils


T-Tests on Suspension Coils confirms what we found in the summary statistics above: that all but lot 3 meet the expected 1500 PSI standard required for manufactured suspension coils. With the assumption of a significance level of p = 0.05 or higher, there is evidence to reject the null hypothesis that lot 3 is statistically similar to the expected 1500 PSI standard for manufactured suspension coils.

![Suspension Coil T-test](https://github.com/RichelynScott/MechaCar_Statistical_Analysis/blob/main/R_Analysis/MechaCar/Suspension_Coil%20T%20Test.png)
![Lot 1 T-Test](https://github.com/RichelynScott/MechaCar_Statistical_Analysis/blob/main/R_Analysis/MechaCar/Lot1%20T%20Test%20ISOLATED.png)
![Lot 2 T-test](https://github.com/RichelynScott/MechaCar_Statistical_Analysis/blob/main/R_Analysis/MechaCar/Lot2%20T%20Test%20ISOLATED.png)
![Lot 3 T-test](https://github.com/RichelynScott/MechaCar_Statistical_Analysis/blob/main/R_Analysis/MechaCar/Lot3%20T%20Test%20ISOLATED.png)

## Study Design: MechaCar vs Competition


In order to quantify how the MechaCar performs against the competition we will think about some metrics that are of high interest to a consumer of today such as fuel efficiency (MPG overall, MPG City, & MPG Highway). We would compare fuel efficiency data for both city and highway and compare our data to that of competitors for vehicles of the same class. The null hypothesis would be that MechaCar’s fuel efficiency will be less than or equal to that of competition and alternative hypothesis would be that MechaCar’s fuel efficiency is greater than that of competition. We would have to use a two sample t-test to compare the fuel efficiency of MechaCar vs Competition, we would use this because A two-sample t-test is used when you want to compare two independent groups to see if their means are different. We would need vast amounts of statistical data on fuel efficiency such as MPG overall, MPG City, & MPG Highway.


