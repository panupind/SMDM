#Benerage Location Store

Bevg

attach(Bevg)
t.test(BevEndCap, ProdEndCap , var.equal = TRUE , conf.level = 0.95)

# p-value = 0.006975 < 0.05 ( Alpha) i.e p-low , null go
# Since p is less than Alpha , reject the null Hypotheseis


#Pizza Delivery Time

attach(PizzDeliveryTime)

t.test(Local , Chain , var.equal = TRUE , conf.level = 0.95)

# Since p-value = 0.1196 > 0.05 (Alpha) i.e. p is not low . 
# Do not reject the Null Hypothesis.
# claim that Local Delivery time < Intnl Delivery time is incorrect.

# Paired t test of 2 same sample before and after


# Watching tablet and TV

# sample size = 134

n = 134

# H0 : Mu = 1
# H1 : Mu <> 1

#pt((q - mu)/SE, df=n-1) 

pt((2.0857 - 2.09)/0.050709, df= 34) 


pnorm(-2.46)

pnorm(1.46, lower.tail = FALSE)


pnorm(-2.96) + pnorm(0.96 ,lower.tail =  FALSE)

1-(pnorm(0.96)-pnorm(-2.96))



