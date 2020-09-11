#install.packages('jsonlite')
#library(jsonlite)
#install.packages('curl')
#library(curl)

#FromSON = Cargar un archivo JSON
#toJSON = Generar u archivo JSON desde un dataframe

data.1 <- fromJSON('Recursos/r-course-master/data/tema1/students.json')
data.2 <- fromJSON('Recursos/r-course-master/data/tema1/student-courses.json')

url <- 'http://www.floatrates.com/daily/usd.json'
currencies <- fromJSON(url)

currencies.data <- currencies$all

head(data.1, 3)
head(data.1$Email)

# Estudiantes 2,5 y 8
data.1[c(2,5,8),]

# Nombre y año
data.1[,c(2,5)]

head(data.2,3)

data.2
data.2[,c(2,3,6)]
