TitanInsurance

attach(TitanInsurance)

t.test(`Old Scheme`, `New Scheme`, paired = TRUE, alternative = "two.sided",   conf.level = 0.95)


# H0 : 
sd(`Old Scheme`)

mean(`Old Scheme`)

sd(`New Scheme`)
mean(`New Scheme`)

mean(`Old Scheme`)*1000 + 5000

mean(`New Scheme`)*1000 + 5000


n = 30
s = sd(`Old Scheme`)
s
Mu = mean(`Old Scheme`)
Mu
sSample = s /sqrt(n)

AlphaTitan <- 0.05

zAlpha <- qnorm(AlphaTitan , lower.tail = FALSE)
zAlpha


# qnorm = xBar without knowing the probablity
xCriticalTitan <-(qnorm(AlphaTitan, lower.tail = FALSE)*s/(sqrt(n))+Mu)
xCriticalTitan  #74.17642

# qnorm =Xar using probablity

xCriticalTitanp  <-  qnorm(AlphaTitan ,  mean = Mu , sd = sSample, lower.tail = FALSE )
xCriticalTitanp

# comparing the actual zStat from a value in H1 = alternate Hypothesis.

Mu1 = Mu + 5
Mu1

Mu

zStatTitan <- (Mu1-Mu)/(s/sqrt(n))
zStatTitan # 1.338783

pValueTitan <- pnorm(zStatTitan, lower.tail = FALSE)

qnorm(pValueTitan , mean = Mu , sd = (s/sqrt(n)) , lower.tail = FALSE)





# xStatValue ( = Mu1) < xCriticalTitan
# Do not reject Null Hypothesis.



#Alternative Hypothesis Curve with New Mu = Mu1
#Stadardize the Critical value (74.17642)  wrt the new Mean Mu1


zCriticalTitanMu1 <- (xCriticalTitan - Mu1) / (sSample)
zCriticalTitanMu1
betaTitan <- pnorm(zCriticalTitanMu1 )
betaTitan

powerTitan <-  1 - betaTitan
powerTitan

powerTitanpct <- powerTitan * 100