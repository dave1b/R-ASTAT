x <- 1:6 #[1,2,3,4,5,6]
p <- 1/6
"Erwartungswert"
E_X <- sum(x*p)
E_X
"Varianz"
var_X <- sum((x- E_X)^2*p)
var_X
"Standartabweichung" #Durchschnittliche Abweichung von 1.7 von 3.5
sd_X <- sqrt(var_X)
sd_X

x2 <- c(0,2,3,4,10,11)
p2 <- c(4/9, 1/9,1/9,1/9,1/9,1/9)
E_X2 <- sum(x2*p2)
E_X2
var_X2 <- sum((x2- E_X2)^2*p2)
var_X2
sd_X2 <- sqrt(var_X2)
sd_X2


#Aufgabe 5.1

