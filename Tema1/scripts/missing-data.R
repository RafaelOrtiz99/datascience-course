missing_data <- read.csv('Recursos/r-course-master/data/tema1/missing-data.csv')

#Convert the empty fields in NA
data <- read.csv('Recursos/r-course-master/data/tema1/missing-data.csv',na.strings = "")

#Clean NA values
data.cleaned <- na.omit(data)

#Search if value is na, return a boolean
is.na(data[4,2])
is.na(data$Income)
