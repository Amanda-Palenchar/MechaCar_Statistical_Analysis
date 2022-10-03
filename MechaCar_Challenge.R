library(dplyr)

# Deliverable 1

MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) #import CSV

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)) #generate summary statistics

# Deliverable 2

Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) #import CSV

total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Deliverable 3

t.test(Suspension_Coil$PSI, mu=1500) # t.test for total sample pop vs population

Lot1 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot1")

t.test(Lot1$PSI, mu=1500) # t.test for lot 1 vs population

Lot2 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot2")

t.test(Lot2$PSI, mu=1500) # t.test for lot 2 vs population

Lot3 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot3")

t.test(Lot3$PSI, mu=1500) # t.test for lot 3 vs population

# Deliverable 4

VW_mpg <- read.csv(file='Vehicle_Data.csv',check.names=F,stringsAsFactors = F) #import vw csv

VW_mpg_summary <- VW_mpg %>% group_by(Type) %>% summarize(Mean_HWY_Mileage=mean(MPG_Hwy), .groups = 'keep')

t.test(MechaCar_mpg$mpg, mu=57.3333) #Compact

t.test(MechaCar_mpg$mpg, mu=33) #Convertable

t.test(MechaCar_mpg$mpg, mu=35) #Hatchback

t.test(MechaCar_mpg$mpg, mu=34.25) #Sedan

t.test(MechaCar_mpg$mpg, mu=33.5) #Wagon