Concrete1
attach(Concrete1)

names(Concrete1)

length(Concrete1)

length(TwoDays)

t.test(TwoDays , SevenDays , paired =  TRUE , alternative = "less" , conf.level = 0.99)

t.test( SevenDays , TwoDays ,  paired =  TRUE , alternative = "greater" , conf.level = 0.99)
