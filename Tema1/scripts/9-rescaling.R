#install.packages('scales')
#library(scales)

students <- read.csv('Recursos/r-course-master/data/tema1/data-conversion.csv')

#Reescalar Income a 0-1
#rescale hace que el valor más pequeñose convierte en 0, el más alto le asgina 1
#,el resto son escalados con valores proporcionales de forma lineal
students$Income.rescaled <- rescale(students$Income)

#Transformación lineal o reescalado
#Esto es lo que hace la función anterior
(students$Income - min(students$Income)) / (max(students$Income) - min(students$Income)) 

#Reesclara 1-100
students$Income.rescaled2 <- rescale(students$Income, to = c(0,100))

#Función para reescalar
rescale.many <- function(dataframe, cols){
  names <- names(dataframe)
  
  for(col in cols){
    name <- paste(names[col],'rescaled', sep=".")
    dataframe[name] <- rescale(dataframe[,col])
  }

  cat("Se reescalaron ", length(cols), "Variables")
  dataframe
}

students <- rescale.many(students, c(1,4))
