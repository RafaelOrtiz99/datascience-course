library(mice)

housing_data <- read.csv('Recursos/r-course-master/data/tema1/housing-with-missing-value.csv',
                         header = T,  stringsAsFactors = F)


summary(housing_data)


columns <- c('ptratio', 'rad')

#predictive mean machine, modelo predictivo para predecir el valor promedio de los datos
#Hay 4 métodos que se pueden utilizar en la creación del modelo: 
#pmm, logreg(regresión logistica), regresión logistica politomica, modelo de probabilidades proporcionales 


imputed_data <- mice(housing_data[,names(housing_data) %in% columns], 
                     m = 5, maxit = 50, method = 'pmm', seed = 2018)

#pmm - comparación predictiva de medias 
#logreg - regresión logistica
#polyreg - regresión logistica politómica
#polr - modelo de probabilidades proporcionales(Se puede utilizar cuando las columnas estan ordenadas y hay 2 o más niveles que inferir)

summary(imputed_data)

#se puede escribir solo complete, este caso es para indicar que la función es de ese paquete, en caso de que existan
#más librerias cargadas con metodos que se nombren igual
complete_data <- mice::complete(imputed_data)

#reemplazar en el dataframe
housing_data$ptratio <- complete_data$ptratio
housing_data$rad <- complete_data$rad

#Devuelve un booleano si hay NA es TRUE, si no es FALSE
anyNA(housing_data)


library(Hmisc)
impute_arg <- aregImpute(~ptratio+rad, data = housing_data, n.impute = 5)

#Calculos llevados a cabo para cada variable
impute_arg$imputed$rad


