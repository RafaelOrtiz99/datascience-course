students <- read.csv('Recursos/r-course-master/data/tema1/data-conversion.csv')

#vector break points para variables categoricas
bp <- c(-Inf, 10000, 31000, Inf)
names <- c("Low", "Average", "High")
levels <- c("level1", "level2", "level3", "level4")

#Cut recibe 3 parametros
#1. columna a cortar
#2. puntos de corte (break points)
#3. nombres categoricos en los intervalos 
students$Income.cat <- cut(students$Income, breaks = bp, labels= names)
students$Income.cat2 <- cut(students$Income, breaks = bp)
students$Income.cat3 <- cut(students$Income, breaks = 3, labels = names)

#Variables ficticias
students <- read.csv('Recursos/r-course-master/data/tema1/data-conversion.csv')

install.packages('dummies')
library(dummies)

students_dummy <- dummy.data.frame(students, sep = ".")
names(students_dummy)

dummy(students$State, sep =".")

dummy.data.frame(students, names = c("Gender"), sep = ".")