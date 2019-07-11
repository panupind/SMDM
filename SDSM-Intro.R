Sys.setenv(http_proxy =  "www-proxy.us.oracle.com:80" , https_proxy =  "www-proxy.us.oracle.com:80")
library(rpivotTable)
library(lattice)
names(CardioGoodFitness)
head(CardioGoodFitness)
summary(CardioGoodFitness)
median(CardioGoodFitness$Miles)
attach(CardioGoodFitness)

by(data=CardioGoodFitness, INDICES = Product , FUN =  summary)
hist(Miles)
histogram(~Miles | Gender)
histogram(~Miles | Product)
boxplot(Miles~Gender , horizontal = TRUE,  col=c("Red","Blue") )
boxplot(Miles~Product , horizontal = TRUE ,  col=c("Red","Blue", "Green") )
rpivotTable(CardioGoodFitness)
CardioGoodFitness$IncomeGroup <- cut( Income , c(29123,40000,60000,80000,105000))


plot(Usage, Miles)
cor(Usage, Miles)

install.packages("binom")
library(binom)


values <- c(1:7)
prob.distr <- dbinom( values , 7 , 0.6 )
df.prob.distr <- data.frame(prob.distr)
names(df.prob.distr)
rownames(df.prob.distr)
colnames(df.prob.distr)

table(df.prob.distr)


dpois(3, 3)
1 - dpois(3, 3 )

pnorm(0.28, 0.295, 0.025)

pnorm(-0.6 , 0 , 1)


1-pnorm(0.35, 0.295, 0.025)
pnorm(0.35, 0.295, 0.025 , lower.tail = FALSE)

pnorm(0.34, 0.295, 0.025)

pnorm(0.26, 0.295, 0.025)


