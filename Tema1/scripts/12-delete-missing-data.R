housing.data <- read.csv('Recursos/r-course-master/data/tema1/housing-with-missing-value.csv',
                         header = T, stringsAsFactors =  F)

#Despues de cargar el data set, lo primero que hacemos es un resumen de las variables
#summary es muy importante, da la pista para donde empezar a buscar cosas
#Brinda información de las estadisticas básicas.
summary(housing.data)

#Omitir todos los NA,esto puede generar variaciones en el modelo de datoa
housing.data.1 <- na.omit(housing.data)
summary(housing.data.1)

#Eliminar NA de una columna
drop_na <- c("rad")
housing.data.2<- housing.data.1[complete.cases(housing.data[!(names(housing.data)%in% drop_na),]),]

#Eliminar una columna
housing.data$rad <- NULL

#Eliminar varias columnas
drops <- c("rad","ptratio")
housing.data.3 <- housing.data[!(names(housing.data) %in% drops)]