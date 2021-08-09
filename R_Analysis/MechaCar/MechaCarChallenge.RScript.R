library(dplyr) 
library(tidyverse)

# Linear regression to predict MPG
MechaCar_df <- read.csv(file="/Users/richelynscott/Documents/Home/UCF_Data_Analytics/Mod 15/MechaCar_Statistical_Analysis/R_Analysis/MechaCar/MechaCar_mpg.csv", check.names=F, stringsAsFactors=F)

lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=MechaCar_df) #perform linear regression model for mpg

summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=MechaCar_df))
#determine p-value and r-squared value

Suspension_Coil_df <- read.csv(file="/Users/richelynscott/Documents/Home/UCF_Data_Analytics/Mod 15/MechaCar_Statistical_Analysis/R_Analysis/MechaCar/Suspension_Coil.csv", check.names=F, stringsAsFactors=F)

total_summary <- Suspension_Coil_df %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance=var(PSI), SD=sd(PSI))
#create a summary data frame to show mean, median, variance, and standard deviation for PSI

lot_summary <- Suspension_Coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance=var(PSI), SD=sd(PSI))
#create lot summary table

# ?t.test() *FOR HELP*

t.test(Suspension_Coil_df$PSI,mu=1500) #complete a t-test for the total summary mean across 3 lots to presumed population means

lot1 <- subset(mecha_coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(mecha_coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(mecha_coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
