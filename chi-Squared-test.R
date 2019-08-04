# chi square goodness of fit

pchisq(1.35, df= 4, lower.tail = FALSE)

# pwlow , null go , p is not low  null is no go

chisq.test(c(39,46,40,36,39))



# chi square tests of independence

Favor = c(108, 18, 35, 24)
Neutral = c(46,12 , 14 , 7)
Oppose = c(71, 30, 26 , 9)
TOJ = c("Hourly Worker", "Supervisor", "middle Management", "upper Manageent" )

matx <- cbind(Favor, Neutral, Oppose)
matx

chisq.test(matx)



arr_tmp <- c(3,5,10,10,11,12,12,14,14,14,19)

IQR(arr_tmp, )
