# Set the working directory
setwd("Direcorty")

#Read data from a csv file
dhis <- read.table(
           file = "Latrines in use pre-calc.csv",
           header = TRUE,
           sep = ",",
           stringsAsFactors = FALSE)

head(dhis)

#Calculating the Baseline 
dhis$Baseline <- dhis$Initial.Latrines / dhis$Initial.Household * dhis$Initial.Population 
head(dhis$Baseline)
head(dhis$Harvest)


#Calculating the Harvest of the total 
dhis$Harvest <- dhis$Current.Latrines - dhis$Current.Latrines / dhis$Current.HouseHold * dhis$Current.Population


#Baseline
plot(dhis$Baseline)
pie(table(dhis$Baseline))
hist(dhis$Baseline)

#Harvest 
plot(dhis$Harvest)
pie(table(dhis$Harvest))
hist(dhis$Harvest)


#export the file as csv 
write.csv(dhis, "dhis.csv")
