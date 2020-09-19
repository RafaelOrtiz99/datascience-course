install.packages("Hmisc")
library(Hmisc)

housing.data <- read.csv('Recursos/r-course-master/data/tema1/housing-with-missing-value.csv')
housing.data.1 <- housing.data
housing.data.2 <- housing.data
housing.data.3 <- housing.data

#La Imputación involucra rellenar o cambiar NA por constantes

#Imputamos los NA por la media de los datos
housing.data.1$ptratio <- impute(housing.data$ptratio, mean)
housing.data.1$rad <- impute(housing.data$rad, mean)
summary(housing.data.1)

#Imputamos los NA por la mediana de los datos
housing.data.2$ptratio <- impute(housing.data.2$ptratio, median)
housing.data.2$rad <- impute(housing.data.2$rad, median)
summary(housing.data.2)

#Utilizar valor pre definido
housing.data.3$ptratio <- impute(housing.data.3$ptratio, 18)
housing.data.3$rad <- impute(housing.data.3$rad, 7)
summary(housing.data.3)

#Patron que sigue las variables que faltan
install.packages("mice")
library(mice)

md.pattern(housing.data)  

#plots
install.packages("VIM")
library(VIM)

#Agregar data frame
aggr(housing.data, col = c('green','red'), numbers = T, sortVars = T, 
     labels = names(housing.data), cex.axis = 0.7, gap = 1, ylab = c("Histograma NAs", "Patrón"))