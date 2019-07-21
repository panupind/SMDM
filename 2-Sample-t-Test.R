luggage
names(luggage)
length(luggage$WingA)

attach(luggage)

t.test(WingA, WingB , var.equal = TRUE)

# t.test(WingB, WingA , var.equal = TRUE)


mean(WingA)
mean(WingB)
