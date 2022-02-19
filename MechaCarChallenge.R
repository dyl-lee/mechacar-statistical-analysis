library(dplyr)

mpg_df <- read.csv(file="MechaCar_mpg.csv",check.names = F, stringsAsFactors = F)

model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_df)
summary(model)
