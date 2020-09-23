install.packages('tidyr')
library(tidyr)

crime_data <- read.csv('Recursos/r-course-master/data/tema1/USArrests.csv',stringsAsFactors = F)

#Añadir columna al dataset
crime_data <- cbind(state = row.names(crime_data),crime_data)

#Unir información 
crime_data.1 <- gather(crime_data, key="crime_type", value = 'arrest_estimated', Murder:UrbanPop)

#Traducir todas las columnas excepto state
crime_data.2 <- gather(crime_data, key="crime_type", value = "arrest_estimated", -state)

crime_data.3 <- gather(crime_data, key="crime_type", value = "arrest_estimated", Murder, Assault)


#Separar
crime_data.4 <- spread(crime_data.2, key = "crime_type", value = "arrest_estimated")


#Unit: Tomar varias columnas y unirlas en una sola
crime_data.5 <- unite(crime_data, col="Murder_Assault", Murder, Assault, sep ="_")

crime_data.6 <- separate(crime_data.5, col ="Murder_Assault", into = c("Murder","Assault"), sep = "_")
