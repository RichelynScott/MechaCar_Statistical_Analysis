library(dplyr) 
library(tidyverse)

# Linear regression to predict MPG
MechaCar_df <- read.csv(file="/Users/richelynscott/Documents/Home/UCF_Data_Analytics/Mod 15/MechaCar_Statistical_Analysis/R_Analysis/MechaCar/MechaCar_mpg.csv", check.names=F, stringsAsFactors=F)

lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=MechaCar_df) #perform linear regression model for mpg

summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=MechaCar_df))
#determine p-value and r-squared value

Suspension_Coil_df <- read.csv(file="/Users/richelynscott/Documents/Home/UCF_Data_Analytics/Mod 15/MechaCar_Statistical_Analysis/R_Analysis/MechaCar/Suspension_Coil.csv", check.names=F, stringsAsFactors=F)

total_summary <- Suspension_Coil_df %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI))
#create a summary data frame to show mean, median, variance, and standard deviation for PSI

lot_summary <- Suspension_Coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI), SD=sd(PSI))


?t.test()

t.test(Suspension_Coil_df$PSI,mu=1500)#complete a t-test for the total summary

t.test(subset(Suspension_Coil_df,Manufacturing_Lot=="Lot1")$PSI,mu=1500)
t.test(subset(Suspension_Coil_df,Manufacturing_Lot=="Lot2")$PSI,mu=1500)
t.test(subset(Suspension_Coil_df,Manufacturing_Lot=="Lot3")$PSI,mu=1500)

?subset()