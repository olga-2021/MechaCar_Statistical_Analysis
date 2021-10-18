library(tidyverse)
library(dplyr)

# Deliverable 1: Linear Regression to Predict MPG

# 4. Import and read file as a data frame
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)
head(MechaCar_mpg)

# 5. Perform linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)

# 6. determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg))


# Deliverable 2:Create Visualizations for the Trip Analysis

# 2. import and read file
sus_coils <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# 3. create a total_summary dataframe to get the mean, median, variance, and standard deviation
total_summary <- sus_coils %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# 4. group each manufacturing lot by the mean, median, variance, and standard deviation
lot_summary <- sus_coils %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Deliverable 3: T-Tests on Suspension Coils

# determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(x=sus_coils$PSI, mu=1500)

# determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch
lot1 <- subset(sus_coils, Manufacturing_Lot=="Lot1")
t.test(x=lot1$PSI, mu=1500)

lot2 <- subset(sus_coils, Manufacturing_Lot=="Lot2")
t.test(x=lot2$PSI, mu=1500)

lot3 <- subset(sus_coils, Manufacturing_Lot=="Lot3")
t.test(x=lot3$PSI, mu=1500)


















