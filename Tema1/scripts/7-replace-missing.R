data <- read.csv('Recursos/r-course-master/data/tema1/missing-data.csv')

#Crear nueva columna con el promedio de Income
data$Income.mean <- ifelse(is.na(data$Income), mean(data$Income,na.rm = T), data$Income)

#Obtener muestras aleatorias para reemplazar, sample = muestra aleatoria simple
  #x es un vector de datos que puede contener NA.
  
rand.impute <- function(x){ 
  #missing contiene un vector de valores booleanos, dependiendo del NA de x
  missing  <- is.na(x)
  
  #n.missing contiene cuantos valores son NA dentro de x
  n.missing <- sum(missing)
  
  #x.obs valores que tienen datos diferentes a na en x
  x.obs <- x[!missing]
  
  # por defecto devolvere lo mismo que habia en el parametro de entrada
  imputed <- x
  
  #En los valores faltantes, se reemplazan por una muestra que si conocemos
  imputed[missing] <- sample(x.obs, n.missing, replace = TRUE)
  
  return (imputed)
}


random.impute.data.frame <- function(dataframe, cols){
  names <- names(dataframe)
  for(col in cols){
    name <- paste(names[col], '.imputed', sep = "")
    dataframe[name] <- rand.impute(dataframe[,col])
  }
  dataframe
}

data <- read.csv('Recursos/r-course-master/data/tema1/missing-data.csv',na.strings = "")
data$Income[data$Income == 0] <- NA
data <- random.impute.data.frame(data,c(1,2))


