#zstat for a given sample Mu = 29000 , Sigma = 8000 , SE = 400

zstat <- (30000-29000)/(8000/sqrt(400))
zstat

pvalue <- pnorm(zstat, lower.tail = FALSE )
pvalue

xstat <- 30000


#Critical value 
zcrit <- qnorm(0.05 , lower.tail = FALSE)
zcrit 

pcritical <- pnorm(zcrit)
pcritical

# Rather pcritical = 0.95

xcritical <- qnorm(pcritical,29000, 400)
xcritical


(1.645*400) + 29000


#zstat for a given sample Mu = 250 , Sigma = 4.8 , SE = ? , xbar-sb = 248.5

MuSB <- 250

xbarSB <- 248.5

sigmaSB <- 4.8

nSB <- 36

SESB <- sigmaSB / sqrt(nSB)
SESB

# Using zstat

zstatSB <- (xbarSB - MuSB) / SESB
zstatSB

zcriticalSB <- qnorm(0.05)
zcriticalSB


# using pvalue

pvalueSB <- pnorm(zstatSB)
pvalueSB


pcriticalSB <- pnorm(zcriticalSB)
pcriticalSB


# Inference : pvalueSB < pcriticalSB . plow = null No go. Reject Null hypothesis

# using x values

xvalueSB <- 248.5

xcriticalSB <- qnorm(pcriticalSB , MuSB , SESB)
xcriticalSB

#For the sample  xvaueSB (248.5) < xcriticalSB (248.68) .So reject Null Hypothesis

