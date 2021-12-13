library(MASS)
#Aufgabe 12.1
#a)
reg <- lm(Boston$medv ~Boston$lstat + Boston$age)
summary(reg)
#b)
lm(medv ~., data = Boston)
summary(lm(medv ~., data = Boston))
