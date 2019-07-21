# SD = 8 , Mean = 300

qnorm(0.05)

# critical Value
qnorm(0.05 , 300, 8)


pnorm(-1.64)
pnorm(-1.250)

# 2 Mean = 29000, SD = 8000

pnorm(1.64, lower.tail = FALSE)
pnorm(2.5)
pnorm(2.5, lower.tail = FALSE)

# Critical value

qnorm(0.95,29000,8000)
qnorm( 0.9937903,29000,8000 )


# 3  Mean = 500 , SD 3

qnorm(0.025)
qnorm(0.975)

pnorm (-3.16 )
pnorm (3.16 )
pnorm (3.16 ,lower.tail = FALSE)

#--Critical Value

#--qnorm(0.025)
# --qnorm(0.975)

qnorm(0.025, 500 , 0.474)
qnorm(0.975, 500 , 0.474)

qnorm(0.0007888457, 500 , 0.474)
qnorm(0.9992112, 500 , 0.474)






#rpivotTable::rpivotTable(df.coffee)
