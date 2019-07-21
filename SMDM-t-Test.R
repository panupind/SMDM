internetmobiletime
attach(internetmobiletime)

names(internetmobiletime)

 Mu = 144
 stDev = sd(Minutes)

n = length(Minutes) 
xBar =  mean(Minutes)

tStat = ( xBar - Mu ) / (stDev / sqrt(n))
tStat

pvalue  = 2 * pt(tStat , df = n-1 , lower.tail = FALSE)
pvalue

# Area is 23 % which is greater than the reject zone area i.e 5% 
#do not reject Null Hypothesis
# p-low Null go

t.test(Minutes ,Mu = 144)

t.test(Minutes , mu = Mu , alternative = "two.sided", conf.level = 0.95)
t.test(Minutes , mu = Mu , alternative = "two.sided", conf.level = 0.99)

