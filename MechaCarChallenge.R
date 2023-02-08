# Deliverable 1

# Use the library() function to load the dplyr package.

library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe.

mecha_car <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)

# Perform linear regression

reg <- lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data=mecha_car)
summary(reg)

# Deliverable 2

# Import and read the Suspension_Coil csv file

suspension_coil <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors = F)

# Create a total_summary data frame using the summarize() function to get the mean, median, 
# variance, and standard deviation of the suspension coil’s PSI column.

total_summary <- suspension_coil %>% summarize(Mean=mean(PSI),
                                             Median=median(PSI),
                                             Variance=var(PSI),
                                             Std_Dev=sd(PSI),
                                             .groups = 'keep') 
total_summary

# Create a lot_summary data frame to group each manufacturing lot by mean, median, variance, and standard deviation
# of the suspension coil's PSI column

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                                             Median=median(PSI),
                                                                             Variance=var(PSI),
                                                                             Std_Dev=sd(PSI),
                                                                             .groups = 'keep')

# Deliverable 3 T-Tests on Suspension Coils

# Perform t-tests to determine if all manufacturing lots and each lot individually are statistically 
# different from the population mean of 1,500 pounds per square inch.

t.test((suspension_coil$PSI),mu = 1500)

# T-Test for each lot

t.test(subset(suspension_coil,Manufacturing_Lot =="Lot1")$PSI,mu = 1500)
t.test(subset(suspension_coil,Manufacturing_Lot =="Lot2")$PSI,mu = 1500)
t.test(subset(suspension_coil,Manufacturing_Lot =="Lot3")$PSI,mu = 1500)

