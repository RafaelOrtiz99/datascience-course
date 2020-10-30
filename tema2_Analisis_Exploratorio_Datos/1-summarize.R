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


install.packages(c('modeest', 'raster', 'moments'))

library(modeest) #Moda
library(raster) #quantiles, cv(coeficiente de variación)
library(moments) #asimetria, curtosis


X = data$mpg
###Medidas de centralización 
##Como de reunidos o centrados estan los datos

#Media aritmetica
mean(X)
sum(X)/length(X)

#Mediana
median(X)

#Moda
mfv(X)

#Percentil o cuantil
quantile(X)

###Medidas de dispersión

#Varianza
var(X)

#Desviación tipica o estandar
sd(X)

#Coeficiente de variación
cv(X)
