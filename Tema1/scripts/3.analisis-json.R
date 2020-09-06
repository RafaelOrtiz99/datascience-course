#install.packages('jsonlite')
#library(jsonlite)
#install.packages('curl')
#library(curl)

data.1 <- fromJSON('Recursos/r-course-master/data/tema1/students.json')
data.2 <- fromJSON('Recursos/r-course-master/data/tema1/student-courses.json')

url <- 'http://www.floatrates.com/daily/usd.json'
currencies <- fromJSON(url)
