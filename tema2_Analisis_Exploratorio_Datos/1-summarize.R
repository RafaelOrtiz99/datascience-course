data <- read.csv('Recursos/r-course-master/data/tema2/auto-mpg.csv', header = T, stringsAsFactors = F)

#Categorizar la columna cylinders
data$cylinders <- factor(data$cylinders, levels = c(3,4,5,6,8),
                         labels = c('3cil', '4cil', '5cil', '6cil', '8cil'))

# Resumen de los datos
summary(data)

#Idea inicial de como esta organizado el dataframe, str = structure
str(data)

#Tabla de frecuencias absolutas
summary(data$cylinders)

summary(data$mpg)

str(data$cylinders)
