#install.packages("ISLR")
library(ISLR)

#Aufgabe 11.1
#a)
head(Auto)
?Auto
fit <- lm(mpg ~ horsepower, data = Auto)
summary(fit)
confint(fit)
plot(Auto$horsepower, Auto$mpg, col = "darkcyan", xlab = "mgp", ylab = "horsepower", pch = 20)
abline(lm(Auto$mpg ~ Auto$horsepower), col = "orange")



#Aufgabe 11.2
library(MASS)
#a)
?Boston
help(Boston)
#b)
colnames(Boston)
#c)
attach(Boston)
#d)
reg <- lm(Boston$medv ~ Boston$lstat)
summary(reg)
#e)
names(reg)
#d)
coef(reg)
#f)
confint(reg)

plot(Boston$lstat ~ Boston$medv,col = "darkcyan",pch = 20)
abline(reg, col = "orange",lwd = 3)

