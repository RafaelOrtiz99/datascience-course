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
