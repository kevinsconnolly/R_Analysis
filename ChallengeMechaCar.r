# Use R's read.csv() function
MechaCar_MPG_Table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
View(MechaCar_MPG_Table)
# Use tidyverse's dplyr library which is the basis of transforming R data.
library(tidyverse)
library(ggplot2)

# MPG Regression
# Multiple linear regression, I designed a linear model which predicts the mpg of MechaCar prototypes using multiple variables within the MechaCar mpg dataset.
# The multiple linear regression statement below:
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_MPG_Table) #generate multiple linear regression model
# multiple linear regression model Nowe we need to obtain our statistical metrics using the summary() function.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_MPG_Table)) #generate summary statistics

# Calculate the data points to use for our line plot using our lm(mpg ~ vehicle_length,MechaCar_MPG_Table)coefficients as follows:
MPG_model1 <- lm(mpg ~ vehicle_length,MechaCar_MPG_Table) #linear model created
MPG_yvals1 <- MPG_model1$coefficients['vehicle_length']*MechaCar_MPG_Table$vehicle_length + MPG_model1$coefficients['(Intercept)'] #determine y-axis values from linear model
# after the calculation of our line plot data points, The linear model plot can be placed over our scatter plot:
plt1 <- ggplot(MechaCar_MPG_Table,aes(x=vehicle_length,y=mpg)) #import dataset into ggplot2
plt1 + geom_point() + geom_line(aes(y=MPG_yvals1), color = "red") #plot scatter and linear model

MPG_model2 <- lm(mpg ~ vehicle_weight,MechaCar_MPG_Table) #linear model created
MPG_yvals2 <- MPG_model2$coefficients['vehicle_weight']*MechaCar_MPG_Table$vehicle_weight + MPG_model2$coefficients['(Intercept)'] #determine y-axis values from linear model
plt2 <- ggplot(MechaCar_MPG_Table,aes(x=vehicle_weight,y=mpg)) #import dataset into ggplot2
plt2 + geom_point() + geom_line(aes(y=MPG_yvals2), color = "red") #plot scatter and linear model

MPG_model3 <- lm(mpg ~ spoiler_angle,MechaCar_MPG_Table) #linear model created
MPG_yvals3 <- MPG_model3$coefficients['spoiler_angle']*MechaCar_MPG_Table$spoiler_angle + MPG_model3$coefficients['(Intercept)'] #determine y-axis values from linear model
plt3 <- ggplot(MechaCar_MPG_Table,aes(x=spoiler_angle,y=mpg)) #import dataset into ggplot2
plt3 + geom_point() + geom_line(aes(y=MPG_yvals3), color = "red") #plot scatter and linear model

MPG_model4 <- lm(mpg ~ ground_clearance,MechaCar_MPG_Table) #linear model created
MPG_yvals4 <- MPG_model4$coefficients['ground_clearance']*MechaCar_MPG_Table$ground_clearance + MPG_model4$coefficients['(Intercept)'] #determine y-axis values from linear model
plt4 <- ggplot(MechaCar_MPG_Table,aes(x=ground_clearance,y=mpg)) #import dataset into ggplot2
plt4 + geom_point() + geom_line(aes(y=MPG_yvals4), color = "red") #plot scatter and linear model

MPG_model5 <- lm(mpg ~ AWD,MechaCar_MPG_Table) #linear model created
MPG_yvals5 <- MPG_model5$coefficients['AWD']*MechaCar_MPG_Table$AWD + MPG_model5$coefficients['(Intercept)'] #determine y-axis values from linear model
plt5 <- ggplot(MechaCar_MPG_Table,aes(x=AWD,y=mpg)) #import dataset into ggplot2
plt5 + geom_point() + geom_line(aes(y=MPG_yvals5), color = "red") #plot scatter and linear model





# Use R's read.csv() function
MechaCar_Suspension_Table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
View(MechaCar_Suspension_Table)
# Use tidyverse's dplyr library to transforms R data.
# Suspension Coil Summary
# Create a summary statistics table for the suspension coil's pounds-per-inch continuous variable.
Summary_Statistics_Table <- MechaCar_Suspension_Table %>% group_by(PSI) %>% summarize(Mean= mean(MechaCar_Suspension_Table$PSI), Median= median(MechaCar_Suspension_Table$PSI), Variance= var(MechaCar_Suspension_Table$PSI), Standard_Deviation= sd(MechaCar_Suspension_Table$PSI))
View(Summary_Statistics_Table)

# Suspension Coil T-Test
# determine if the suspension coil's pound-per-inch (PPI)results are statistically different from the mean population results of 1,500 pounds per inch.
# Generating samples using random sampling
population_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F) #import dataset
plt <- ggplot(population_table,aes(x=PSI)) #dataset into ggplot2
plt + geom_density() #density plot visualization plot

# Sample dataset using dplyr's sample_n() function.
sample_table <- population_table %>% sample_n(50) #50 data points randomly selected
plt <- ggplot(sample_table,aes(x=(PSI))) #dataset into ggplot2
plt + geom_density() #density plot visualization plot

# Welch One Sample t-test
t.test((sample_table$PSI),mu=mean(population_table$PSI)) #compare sample v pop. means

# Welch Two Sample t-test
sample_table <- population_table %>% sample_n(50) #50 randomly sampled data points generated
sample_table2 <- population_table %>% sample_n(50) #50 randomly sampled data
t.test((sample_table$PSI),(sample_table2$PSI)) #means of two samples cmpared