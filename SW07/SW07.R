#Aufgabe 7.1
#a.1
1-pnorm(q=185, mean =180, sd=7.4)
#a.2
pnorm(q= 180, mean =180, sd=7.4)-pnorm(q= 170, mean =180, sd=7.4)
#b
qnorm(p= 0.25, mean =180, sd=7.4)
qnorm(p= 0.75, mean =180, sd=7.4)
#c
qnorm(p= 0.95, mean =180, sd=7.4)

#Aufgabe 7.2
#a
pnorm(2.5,4,1.25)
1-pnorm(5,4,1.25)
#b
100*(pnorm(4.5,4,1.25)-pnorm(3,4,1.25))
#c
qnorm(0.98,4,1.25)
