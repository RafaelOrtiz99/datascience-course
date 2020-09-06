#Install a package 
# install.packages("XML")

#Initialize a package
# library(XML)

url <- 'Recursos/r-course-master/data/tema1/cd_catalog.xml'
population_url <- 'Recursos/r-course-master/data/tema1/WorldPopulation-wiki.htm'

# Apuntador o posición de memoria para localizar el fichero
xmldoc <- xmlParse(url)

# Ir al origen del fichero
rootnode <- xmlRoot(xmldoc)

# Primer elemento del xml
rootnode[1]


# Leer el xml
cds_data <- xmlSApply(rootnode,function(x) xmlSApply(x, xmlValue))

#Transposición (Convertir filas en columnas)
cds.catalog <- data.frame(t(cds_data), row.names = NULL)

head(cds.catalog,2)
cds.catalog[1:5,]

tables <- readHTMLTable(population_url)
mostpopulate = tables[[6]]

customTable <- readHTMLList(population_url,which = 6)

