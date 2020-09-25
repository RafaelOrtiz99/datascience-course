ozone_data <- read.csv('Recursos/r-course-master/data/tema1/ozone.csv', stringsAsFactors = F)
anyNA(ozone_data)
summary(ozone_data)

#Diagrama de caja y bigotes
#La linea negra dentro de la caja corresponde a la mediana(50%)
#La linea inferior de la caja es el cuartil 1(25%)
#parte superior de la caja es el tercer cuartil (75%)
#Rango intercuartilico = espacio entre los cuartiles, distancia entre la parte superior y la inferior de la caja
boxplot(ozone_data$pressure_height, main="Pressure Height", boxwex = 0.5)

#Representar 2 variables, presión en función del mes
boxplot(pressure_height ~ Month, ozone_data, main = "Pressure Height Per Month")

#Con el $out, accedemos directamente a los outliers
boxplot(ozone_reading ~ Month, ozone_data, main = "Ozone per Month")$out


#Reemplazar outliers
impute_outliers <- function(x, removeNA = TRUE){
  #Obtener 2 cuartiles(por debajo del 5% y por encima del 95%)
  quantiles <- quantile(x, c(0.05, 0.95), na.rm = removeNA) 
  
  #Reemplazar los que esten por debajo del 5% por la media
  x[x<quantiles[1]] <- mean(x, na.rm = removeNA)
  
  #Reemplazar los que esten por encima del 95% por la mediana
  x[x>quantiles[2]] <- median(x, na.rm = removeNA)
  
  x
}


imputed_data <- impute_outliers(ozone_data$pressure_height)

#par = ordena o estructura graficos arriba o al lado del otroS
par(mfrow = c(1,2))
boxplot(ozone_data$pressure_height, main = "Presión con outliers")
boxplot(imputed_data, main = "Presión sin outliers")


#Remplazar outliers
replace_outliers <- function(x, removeNA = TRUE){
  qrts <- quantile(x, probs = c(0.25, 0.75), na.rm = removeNA)
  caps <- quantile(x, probs = c(0.05, 0.95), na.rm = removeNA)
  
  #Rango intercuartilico
  iqr <- qrts[2] - qrts[1]
  
  #1.5 veces el rango intercuartilico
  H <- 1.5 * iqr
  
  x[x<qrts[1] - H] <- caps[1]
  x[x>qrts[2] + H] <- caps[2]
  x
}

par(mfrow = c(1,2))
boxplot(ozone_data$pressure_height, main = "Presión con outliers")

capped_pressure_height <- replace_outliers(ozone_data$pressure_height)
boxplot(capped_pressure_height, main = "Presión sin outliers")