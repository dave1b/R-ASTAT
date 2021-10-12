#Aufgabe 4.2
t.x <- c(-10:10)
t.x
t.x1 <- c(0:10)
t.y <- t.x^2
t.y
t.y1 <- t.x1^2
t.y1

par(mfrow = c(1, 2))
plot(t.y)
plot(t.y1)
cor(t.x, t.y)
cor(t.x1, t.y1)


#Aufgabe 4.5
A <- 3/4
B <- 2/3
library(MASS)
#a
fractions(A*B)
#b
fractions(A+B - A*B)
#c
1-fractions(A*B)
#d
1-fractions(A+B - A*B)

#4.6
erdbeben <- 0.04
taifung <- 0.08

erdbeben+taifung - erdbeben*taifung
