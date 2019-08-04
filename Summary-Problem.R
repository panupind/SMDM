cardioGoodFitness
attach(cardioGoodFitness)
library(lattice)
histogram(~Income| factor(Gender))
boxplot((Income/1000)~Gender , horizontal = TRUE)

install.packages("psych")
library(psych)
by(data=CardioGoodFitness, INDICES = Gender , FUN= summary)
t.test(Miles~Gender , var.equal = TRUE)
library(rpivotTable)
rpivotTable(cardioGoodFitness)
table(Product, Gender)
TableProdVsGender <- table(Product, Gender)
TableProdVsGender
chisq.test(TableProdVsGender)
