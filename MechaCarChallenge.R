library(dplyr)
library(tidyverse)

mpg_df <- read.csv(file="MechaCar_mpg.csv",check.names = F, stringsAsFactors = F)

# Multiple linear regression to predict MPG
model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_df)
summary(model)

model2 <- lm(mpg ~ vehicle_length, mpg_df)
model2
yvals <- model2$coefficients['vehicle_length']*mpg_df$vehicle_length + model2$coefficients["(Intercept)"]

plt <- ggplot(mpg_df, aes(x=vehicle_length, y=mpg))
plt +  geom_point() + geom_line(aes(y=yvals), color='red')

summary(model2)

# Summary statistics on Suspension Coils
sc_df <- read.csv(file="Suspension_Coil.csv", stringsAsFactors = F, check.names = F)
total_summary <- sc_df %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance = var(PSI), SD=sd(PSI))
lot_summary <- sc_df %>% group_by(Manufacturing_Lot,) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance = var(PSI), SD=sd(PSI), .groups="keep")

#box plot
boxplot(PSI~sc_df$Manufacturing_Lot, data=sc_df, main="Suspension Coil Weight Capacity", xlab="Manufacturing Lot")

# T-test on Suspension coils across all manufacturing lots
t.test(x=sc_df$PSI, mu=1500)

# T-tests to determine if PSI for each lot is statistically different from population mean
lot1 <- subset(sc_df, Manufacturing_Lot == "Lot1")
lot2 <- subset(sc_df, Manufacturing_Lot == "Lot2")
lot3 <- subset(sc_df, Manufacturing_Lot == "Lot3")

t.test(x=lot1$PSI, mu=1500)
t.test(x=lot2$PSI, mu=1500)
t.test(x=lot3$PSI, mu=1500)

