TitanInsurance

attach(TitanInsurance)

t.test(  `New Scheme`, `Old Scheme`,    paired = TRUE, alternative = "greater",   conf.level = 0.95)


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
sSample

tStatTitan <-  mean(MeanDiff)/((sd(MeanDiff)/sqrt(n)))
tStatTitan

pValTitan <- pt(tStatTitan , df = n-1 , lower.tail = FALSE)
pValTitan

AlphaTitan <- 0.05

zAlpha <- qnorm(AlphaTitan , lower.tail = FALSE)
zAlpha


# qnorm = xBar without knowing the probablity
xCriticalTitan <-(qnorm(AlphaTitan, lower.tail = FALSE)*s/(sqrt(n))+Mu)
xCriticalTitan  #74.17642

# qnorm =Xar using probablity

xCriticalTitanp  <-  qnorm(AlphaTitan ,  mean = Mu , sd = sSample, lower.tail = FALSE )
xCriticalTitanp

#txCriticalTitan <- qt(AlphaTitan , df=29 , lower.tail = FALSE ) * sSample
#txCriticalTitan



# comparing the actual zStat from a value in H1 = alternate Hypothesis.

Mu1 = Mu + 5
Mu1


zStatTitan <- (Mu1-Mu)/(s/sqrt(n))
zStatTitan # 1.338783

pValueTitan <- pnorm(zStatTitan, lower.tail = FALSE)
pValueTitan
qnorm(pValueTitan , mean = Mu , sd = (s/sqrt(n)) , lower.tail = FALSE)

#txStatTitan <- (Mu1-Mu)/(s/sqrt(n))
#ptValueTitan <- pt(txStatTitan, df=n-1)
#ptValueTitan

# xStatValue ( = Mu1) < xCriticalTitan
# Do not reject Null Hypothesis.



#Alternative Hypothesis Curve with New Mu = Mu1
#Stadardize the Critical value (74.17642)  wrt the new Mean Mu1


zCriticalTitanMu1 <- (xCriticalTitan - Mu1) / (sSample)
zCriticalTitanMu1

#txCriticalTitanMu1 <- (txCriticalTitan -Mu1) /sSample
#txCriticalTitanMu1

betaTitan <- pnorm(zCriticalTitanMu1 )
betaTitan


#tbetaTitan <- pt(txCriticalTitanMu1 , df= n-1)
#tbetaTitan

powerTitan <-  1 - betaTitan
powerTitan

powerTitanpct <- powerTitan * 100

#tpowerTitan <- 1- tbetaTitan
#tpowerTitan



(27463-28000)/(1348/sqrt(40))

pt(-2.5195 , df = 39)

0.01-0.007979866
