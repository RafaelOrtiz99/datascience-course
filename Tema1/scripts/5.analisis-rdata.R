clients <- c('Juan', 'Ricardo', 'Pedro')

# Transform to date
dates <- as.Date(c('2020-12-27','2020-11-1','2021-1-1'))

pay <- c(315,192.55,40.15)

order <- data.frame(clients, dates, pay)

vip_clients <- c('Juan','Ricardo')

#Save the dataframe in a object, allow share, can save many objects
#save a serialize object, the name of the variables is saved as argument
save(order, vip_clients, file='../datascience-course/Tema1/rdata/order.Rdata')
saveRDS(order, file = '../datascience-course/Tema1/rdata/order.rds')

#Remove variables
remove(order)

#Load a Rdata
load('Tema1/rdata/order.Rdata')

#Load a rds, this serialize the object, no the name, this require create a variable
orders <- readRDS('Tema1/rdata/order.rds')

#Load integrated datasets of R, example iris
data(iris)
data(cars)

#Save objects of the session
save.image(file = 'Tema1/rdata/alldata.Rdata')

primes <- c(2,3,5,7,11,13)
pow2 <- c(2,4,8,16,32,64,128)
save(list = c('primes','pow2'),file='Tema1/rdata/primes_and_pow2.Rdata')

#Generate warning with same variables names
attach('Tema1/rdata/primes_and_pow2.Rdata')
