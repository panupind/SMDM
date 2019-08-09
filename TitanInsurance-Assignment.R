
library(lattice)

#Practice Problems

MeanCookie <- 2
XBarCookie <- 2.09

nCookie <- 35
sCookie <- 0.3
SECookie <- sCookie/(sqrt(nCookie))
SECookie

tStatCookie <-  (XBarCookie - MeanCookie) / sCookie
tStatCookie

pValCookie <- pt(tStatCookie , df = nCookie-1 , lower.tail = FALSE)
pValCookie


#Actual Problem 

# Descriptive Statistics

TitanInsurance
attach(TitanInsurance)

summary(MeanDiff)
sd(MeanDiff)

histogram(MeanDiff ,xlab = "Output" , ylab = "Frequency")

boxplot(`New Scheme`, `Old Scheme`, names=c("Old","New"), horizontal = TRUE)

length(`Old Scheme`)
length(`New Scheme`)


# Beta  Error

n = 30
Mu0 = mean(`Old Scheme`)
sTitan <- sd(`Old Scheme`)
SETitan <- sTitan / sqrt(n)
SETitan




AplhCritical <- 0.05

tCriticalTitan <- qt(0.05 , df= 29 , lower.tail = FALSE  )
tCriticalTitan

xCriticalTitan <- Mu0 + tCriticalTitan * SETitan
xCriticalTitan


Mu1 = Mu0 + 5

#standardize tCriticalMean as per the new Mean i.e. Mu1

tStatAlt <- ( xCriticalTitan - Mu1) / SETitan

tStatAlt

pStatAlt <- pt( tStatAlt , df = n-1)
pStatAlt

betaTitan <- 
