# header = TRUE y sep = , son los que vienen por defecto
auto <- read.csv('Recursos/r-course-master/data/tema1/auto-mpg.csv',header = TRUE,sep = ',', na.strings = '')

auto_no_header <- read.csv('Recursos/r-course-master/data/tema1/auto-mpg-noheader.csv',header = FALSE)

auto_custom_header <- read.csv('Recursos/r-course-master/data/tema1/auto-mpg-noheader.csv',header = F,
                               col.names = c('numero','MPG','cilindreada', 'desplazamiento', 
                               'caballos_potencia', 'peso', 'aceleracion', 'año', 'modelo'))



who_from_internet <- read.csv('https://frogames.es/course-contents/r/intro/tema1/WHO.csv')

names(auto)
head(auto_custom_header)
