housing <- read.csv('Recursos/r-course-master/data/tema1/BostonHousing.csv')

#scale sirve para variables numericas
#Normalización, al agregar center=T, scale=T, seria lo mismo
#center =T, resta la media(buscar ecuacion de distribución normal)
#scale=T, divide por la desviación tipica
housing.z <- scale(housing, center = T, scale = T)
housing.mean <- scale(housing, center = T, scale = F)
housing.mean <- scale(housing, center = F, scale = T)
housing.none <- scale(housing, center = F, scale = F )

#sd 0= desviación estandar = sqrt(sum(x^2)/(n-1))
# no se pueden escalar variables categoricas!
scale.many = function(dataframe, cols){
  names <- names(dataframe)
  for(col in cols){
    name <- paste(names[col],"z", sep =".")
    dataframe[name] <- scale(dataframe[, col])
  }
  cat('Hemos normalizado ',length(cols), ' variable(s)')
  dataframe
}

housing <- scale.many(housing, c(1, 3, 5:8))