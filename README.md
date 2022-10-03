# MechaCar_Statistical_Analysis

## Summary of Statistical Outcomes

### Linear Regression to Predict MPG: 
Based on the outputs of a multiple linear regression model (image below), the following can be concluded: 
- There is a medium/strong correlation between data collected (vehicle length, vehicle weight, spoiler angle, ground clearance, and AWD) and MPGs of the MechaCar. The R squared value is 0.68 with greater than 0.7 signifying a strong correlation and less than 0.7 signifying a medium correlation.
- The two variables impacting MPGs the most are vehicle length and ground clearance due to their low p-values (<0.05).

![Deliverable_1_MPG](Analysis_Screenshots/Deliverable_1_MPG.png)

### Summary Statistics on Suspension Coils:

In comparing the PSI that each vehicle's suspension coils could handle, it is clear that there is the most variability from Lot 3 of the manufacturing plant. The variance of both lot 1 and 2 is less than 0.5% of the mean PSI. Whereas, the variability in lot 3 is over 11% of the mean PSI. 

Additionally, the mean and median PSI of lot 3 is slightly lower than lot 1, lot 2, and the total of the lots. This indicates that the data for lot 3 is skewed slightly left and may have a few suspension coils that are measuring at less than the ~1500 PSI (mean and median) of the other two lots.

Total Summary

![Total_Summary](Analysis_Screenshots/Total_Summary.png)

Lot Summary

![Lot_Summary](Analysis_Screenshots/Lot_Summary.png)

### t-Test on Suspension Coils: 

A sample t-test was used to learned whether the means of the total sample and each lots sample (1, 2, and 3) were statistically different than the mean of the population, 1,500 PSI. The results are as follows and can be visualized in the images below as well: 
- Total Sample: There is no statistical difference between the mean of the population and the mean of this sample. 

![Total_Sample_t.Test](Analysis_Screenshots/Total_Sample_t.Test.png)

- Lot 1 Sample: The mean of this sample is 1,500 PSI, which is equal to the population, so there is no statistical difference between the mean of Lot 1 and the mean of the population. This is further shown with the p-value of 1. 

![Lot1_t.Test](Analysis_Screenshots/Lot1_t.Test.png)

- Lot 2 Sample: There is no statistical difference between the mean of the population and the mean of this sample. 

![Lot2_t.Test](Analysis_Screenshots/Lot2_t.Test.png)

- Lot 3 Sample: There is a statistically significant difference in the mean of the population and the mean of this sample. this further supports the evidence of skew discussed in the previous section.

![Lot3_t.Test](Analysis_Screenshots/Lot3_t.Test.png)

### Study Design: MechaCar vs. Competition

Given the current prices for fuel in the United States, fuel economy may be top of mind for most consumers, so this analysis compares the average of a sample of prototype MechaCars to the competition. The images below are a set of t-tests of the average fuel economy of a sample of MechaCars compared to the average fuel economy of Volkswagon vehicles based on car class (sedan, convertable, etc.). In the given data, it was not specified whether the fuel economy for MechaCar samples was highway or city, so the comparison below is made between the average fuel economy of MechaCar and the average highway fuel economy of Volkswagons. Highway was chosen instead of city because highway values are generally higher and a statistically significant result for MechaCar would indicate that fuel economy for MechaCar actually is superior to Volkswagon in both types of driving. In this analysis, none of the Volkswagon fuel efficiency values were similar to that of the Mechacar, indicated by statistically significant p-values of less than 0.05 in each of the tests. In all cases, except the Volkswagon compact car category, the fuel ecomony of the MechaCar was significantly higher than the VW class. 

![mpg_t.Test_1](Analysis_Screenshots/mpg_t.Test_1.png)

![mpg_t.Test_2](Analysis_Screenshots/mpg_t.Test_2.png)

This study is incredibly limited due to a lack of given data for both the MechaCar and its competition. A more robust analysis would have more information about the MechaCar (type of car, price point, differentiation between highway and city MPGs, repair costs, etc.) and the same would be available for the competition to make a more interesting and complete comparison.
