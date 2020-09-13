# R_Analysis MechaCar Write Up
MechaCar Technical Report

MechaCar_mpg.csv- Multiple metrics such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance were collected for each vehicle.

Suspension_coil.csv- Contains the weight capacity of multiple suspension coils which were tested to determine if the manufacturing process is consistent across lots.

Below you will find a technical report which contains design choices using quantitative and qualitative reasoning.

MPG Regression
The multiple linear regression is used to design a linear model that predicts the mpg of MechaCar prototypes using a number of variables within the MechaCar mpg dataset.

Variables/coefficients that provided a non-random amount of variance to the mpg values in the dataset: Ground Clearance, Spoiler Angle, Vehicle Height and Vehicle Length.

AWD doesn't hold a significant linear relationship, the dependent value is determined by random chance and error. Therefore, the linear model is a flat line with a slope of 0.

It was determined that there is a significant relationship between mpg and vehicle_length, as well as, mpg and ground_clearance.

After reviewing the findings, it would be more effective by not including non-substancial metrics in our statistical test. Our linear modles does not predict mpg of MechaCar protypes effectively.

Suspension Coil Summary
In our RScript file, we created a summary statistics table for the suspension coil’s pounds-per-inch continuous variable, including the following metrics: Mean, Median, Variance and Standard Deviation.

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per inch. Our coil_summary_table shows that the current manufacturing data meets this design specification with a variance of 62.29356.

Suspension Coil T-Test
It is determined that the suspension coil’s pound-per-inch results are not statistically different from the mean population results of 1,500 pounds per inch.








Design My Own Study
A study which compares the performance of the MechaCar prototype vehicle to other comparable vehicles on the market; which will quantify how the MechaCar outperforms the competition. 

The design follows:
Metrics of interest to a consumer
Determine what question we would ask.
What the null and alternative hypothesis would be to answer that question.
What statistical test could be used to test this hypothesis.
What data should be collected?
Many companies today capture and analyze data to increase opportunities for growth. Businesses can use satisfaction surveys, how many units sold, service repair information and satisfaction, coupled with a variety of many other metrics. 

What does customers really care about (cost, fuel efficiency, color options, etc.)?
Below are 3:

Color
Safety Rating

Cost


Color
If the color is attractive, then we have the customer's attention to show the difference between the protype Mecha versus the prevelant industry competition

In order to verify the top selling color cars, we would need to test our question with a regression model. In using a multiple linear regression model, collection of numerical variables, such as number of units sold by color and time. We can then estimate a sample size by years. We can collect the data that has been procured from other dealerships from previous years. A bar plot would be appropriate when using color for the ease of reading and clarity for the investigation.


Safety ratings
Consumers really do care about safety capabilities which is a great way to increase overall customer satisfaction and increased margins as they consumer continues to appreciate quality safety

We can use the boxplot to visualize a variety of summary statistics ie car crashes, fatalities and surviability. Boxplots are very common in data science due to the density of information contained within a single visualization, as well as the boxplot’s ability to compare measurements across grouping factors. The grouped boxplots are easy to read and interpret as to what safety features consumers have purchased/upgraded and what they will continue to purchase as they have more families and travel more for activities

Cost
Consumer want to feel like they made a great deal. Both vehicles have to be as close in all specifications in order to satisfy accuracy and validity in claims.

The two sample test
pair t-test
Heatmap
The two-sample t-test will be used in order to compare two samples from a single population dataset. The two-sample t-test on each assumed comparable vehicle. Data that is perceived to be reliable from these results will provide the absolute list of vehicles to continue with a pair t-test, because we would pair observations in one dataset with observations in another.

We would use the pair t-test to compare cost of a MechaCar across the list of comparable vehicles. If the difference between our paired observations (the true mean difference, or “μd”) is equal to zero, then that comparable vehicle will go on into our heatmap plot.

Heatmap plots help visualize the relationship between one continuous numerical variable and two other variables (categorical or numerical). Heatmaps display numerical values as colors on a two-dimensional grid so that value clusters and trends are readily identifiable. We can visualize the average cost of comparable vehicles across the type of vehicle class from 2012 to 2022.
