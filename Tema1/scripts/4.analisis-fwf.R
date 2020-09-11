students_data <- read.fwf('Recursos/r-course-master/data/tema1/student-fwf.txt',
                          widths = c(4,15,20,15,4),
                          col.names = c('ID','Nombre','Email','Carrera','Año'))

# sep = \t es el separador
#skip para evitar lineas
students_data_header <- read.fwf('Recursos/r-course-master/data/tema1/student-fwf-header.txt',
                                 widths = c(4,15,20,15,4),
                                 header = T,sep = "\t", skip = 2)

students_data_no_email <- read.fwf('Recursos/r-course-master/data/tema1/student-fwf.txt',
                          widths = c(4,15,-20,15,4),
                          col.names = c('ID','Nombre','Carrera','Año'))
