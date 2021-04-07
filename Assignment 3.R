Companies_ID<-c(1:110)
head(Companies_ID)
Product_ID<- c(paste0(sample(LETTERS,4), as.integer(rnorm(110,349,6))))
head(Product_ID)
Customer_Demand<-c(as.integer(rnorm(110,2000,230))) 
head(Customer_Demand)
Sale<-c(as.integer(rnorm(110,14564564,456)))
head(Sale)

my.data<-data.frame(Companies_ID, Product_ID, Customer_Demand, Sale)
head(my.data)

a<- lapply(my.data[3], mean)
a
b<- lapply(my.data[4], mean)
b

my.data$Customer_Demand[my.data$Customer_Demand <= a] <- NA
head(my.data)
c<- data.frame(na.omit(my.data))
c$Sale[c$Sale <= b]<- NA
head(c)
