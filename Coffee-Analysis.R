coffee
names(coffee)

summary(coffee$Brand)


summary(coffee)


by(data=coffee, INDICES = coffee$Brand , FUN = summary )


library(dplyr)

#Q1

x <- by(coffee, coffee$Brand, FUN = count)
x[order(x, decreasing = TRUE)]

br.order <- by(coffee, coffee$Brand, FUN = sum)
br.order
summary(br.order)
names(br.order)

br.order[order(br.order, decreasing = TRUE)]

# Other analysis  on Price

coffee$Price_per_Packet
factor(coffee$Price_per_Packet)
summary(factor(coffee$Price_per_Packet))

# Create a Data Frame
coffe.df <- data.frame(coffee$Brand , coffee$No_of_Packet , coffee$Price_per_Packet)
coffe.df

# Add column total price
tot.prc <- coffe.df$coffee.No_of_Packet * coffe.df$coffee.Price_per_Packet

coffe.df.prc <-  cbind(coffe.df , tot.prc)

names(coffe.df.prc)

# Sort by Total price

by.tot.prc <- by(coffe.df.prc$tot.prc , coffe.df.prc$coffee.Brand , FUN = sum)
by.tot.prc
by.tot.prc[order(by.tot.prc, decreasing = TRUE)]

hist(by.tot.prc, freq = FALSE)
hst1 <- hist(by.tot.prc)
hst1$density <- hst1$counts / sum(hst1$counts)*100
plot(hst1, freq = FALSE)

#scatter plot
plot(coffe.df.prc$coffee.Brand, coffe.df.prc$tot.prc, main = "Brand Vs tot Price", 
     xlab = "Brand", ylab = "Total Price")


# Sort by No of packets

by.no.pckts <- by(coffe.df.prc$coffee.No_of_Packet , coffe.df.prc$coffee.Brand , FUN = sum)
by.no.pckts 
by.no.pckts[order(by.no.pckts , decreasing =  TRUE)]


# scatter Plot

plot(coffe.df.prc$coffee.Brand, coffe.df.prc$coffee.No_of_Packet, main = "Brand Vs No.of packets", 
     xlab = "Brand", ylab = "Packets")


# Sort by Price per packet

by.ppp <- by(coffe.df.prc$coffee.Price_per_Packet , coffe.df.prc$coffee.Brand , FUN = sum)
by.ppp
by.ppp [order(by.ppp , decreasing =  TRUE)]


# scatter plot

plot(coffe.df.prc$coffee.Brand, coffe.df.prc$coffee.Price_per_Packet, main = "Brand Vs Price", 
     xlab = "Brand", ylab = "Price ($)")



 # Q2  : What are the prices of different brands of coffee?

df.brand.price <- data.frame(coffee$Brand , coffee$Price_per_Packet)
distnct.bp <- distinct(df.brand.price)
distnct.bp

by(distnct.bp , INDICES = coffee.Brand , FUN = list )

# Q3 - when does household buy cofee

str(coffee$Days_between_Purchase)

max(coffee$Days_between_Purchase)

summary(coffee$Days_between_Purchase)
boxplot(coffee$Days_between_Purchase , horizontal = TRUE)

# Min =  1
# Q1 = 6 
# Q2 = 9
# Q3 = 17
# Max = 741



hist(coffee$Days_between_Purchase)
hist(coffee$Days_between_Purchase ,  xlim = c(0 , 800), ylim = c(1 , 11000) , breaks = 50)

library(lattice)

histogram(coffee$Days_between_Purchase,nint = 22, xlab = "Days_between_Purchase")
max(table(coffee$Days_between_Purchase))



df.coffee <- by(coffee, coffee$Days_between_Purchase, FUN = count)
df.coffee
summary(df.coffee)

#table gives the count of frequency

ndp.df <- as.data.frame(table(coffee$Days_between_Purchase))
ndp.df
ndp.df$Var1[order(ndp.df$Freq , decreasing =  TRUE)]


df.coffee.pkts <- by(data=coffee,  INDICES= coffee$No_of_Packet, FUN= summary)
df.coffee.pkts


df.coffee = ""
df.coffee <- data.frame(coffee)
lapply(df.coffee , table)

histogram(~coffee$No_of_Packet)


by.data.frame(coffee, INDICES = coffee$No_of_Packet , FUN = summary)


mean(coffee$Days_between_Purchase)

summary(coffee$Days_between_Purchase)


cor(coffee$Brand , coffee$Household_Sz)

cor(coffee$No_of_Packet , coffee$Income)

cor(coffee$No_of_Packet , coffee$Education)



sec.tbl <- table(coffee$SEC)
sec.tbl
sec.sum <- sum(table(coffee$SEC))
sec.sum

sec.mtx.prc <- matrix(sec.tbl)/sec.sum *100
sec.mtx.prc

sec.prob.mtx.ppp <- table(coffee$Price_per_Packet , coffee$SEC )
prob.mtx.ppp
prop.table(prob.mtx.ppp)


prob.mtx.inc <- table(coffee$Income , coffee$SEC )
prob.mtx.inc
prop.table(prob.mtx.inc)


names(coffee)

cor(coffee$No_of_Packet , coffee$Price_Conscious)
cor(coffee$No_of_Packet , coffee$Education)
cor(coffee$No_of_Packet , coffee$Household_Sz)

cor(coffee$No_of_Packet , coffee$Price_per_Packet)

cor(coffee$Age , coffee$Loyalty)
