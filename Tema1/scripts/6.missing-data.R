missing_data <- read.csv('Recursos/r-course-master/data/tema1/missing-data.csv')

#Convert the empty fields in NA
data <- read.csv('Recursos/r-course-master/data/tema1/missing-data.csv',na.strings = "")

#Clean NA values
data.cleaned <- na.omit(data)

#Search if value is na, return a boolean
is.na(data[4,2])
is.na(data$Income)

#Select data when income is different to na, first row, then colums
data.income.cleaned <- data[!is.na(data$Income),]

#Complete.cases, dado un dataframe o tabla como argumento, devuelve un vector de booleanos,
#True para los que no tienen casos faltantes.
complete.cases(data)

data.cleaned.2 <- data[complete.cases(data),]

#Convertir 0 de ingresos en na
data$Income[data$Income == 0] <- NA

#Medidas de centralización y dispersión

#Promedio, si hay NA, devuelve na, para evitar esto Y omitir los na, se usa na.rm = TRUE
mean(data$Income)
mean(data$Income, na.rm = TRUE)

#Desviación estadar, si hay NA, devolvera NA
sd(data$Income)
sd(data$Income, na.rm = T)
