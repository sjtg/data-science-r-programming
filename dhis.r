# Set the working directory
setwd("/home/sjtg/data-science-r/")

#Read data from a csv file
dhis <- read.table(
           file = "/home/sjtg/data-science-r/Latrines in use.csv",
           header = TRUE,
           sep = ",",
           stringsAsFactors = FALSE)

head(dhis)

#Calculating the harvest of the total 
dhis$Harvest <- dhis$Initial.Latrines + dhis$Current.Latrines
head(dhis$Harvest)


plot(dhis$Harvest)
pie(table(dhis$Harvest))
hist(dhis$Harvest)

write.csv(dhis, "/home/sjtg/data-science-r/dhis.csv")
