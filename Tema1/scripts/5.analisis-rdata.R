clients <- c('Juan', 'Ricardo', 'Pedro')

# Transform to date
dates <- as.Date(c('2020-12-27','2020-11-1','2021-1-1'))

pay <- c(315,192.55,40.15)

order <- data.frame(clients, dates, pay)

vip_clients <- c('Juan','Ricardo')

#Save the dataframe in a object, allow share
save(order, vip_clients, file='../datascience-course/Tema1/rdata/order.Rdata')
saveRDS(order, file = '../datascience-course/Tema1/rdata/order.rds')

#Remove variables
remove(order)