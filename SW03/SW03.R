# Aufgabe 3.1

setwd("C:/Users/Dave/Documents/GitHub/R-Code Dave/SW03")
geysir <- read.table("geysir.dat", header = TRUE)

par(mfrow = c(2, 2))
hist(geysir[, "Zeitspanne"], xlab = "Zeitspanne zwischen 2 Erruptionen", col = "darkseagreen")
hist(geysir[, "Zeitspanne"], xlab = "Zeitspanne zwischen 2 Erruptionen", breaks = 20)
hist(geysir[, "Zeitspanne"], xlab = "Zeitspanne zwischen 2 Erruptionen", breaks = seq(41, 96, by = 11))
hist(geysir[, "Eruptionsdauer"])


# Aufgabe 3.2
mannfrau <- read.table("../SW02/mannfrau.csv", header = TRUE, sep = ",")
mannfrau
groesse.mann = mannfrau[, "groesse.mann"]
groesse.frau = mannfrau[,"groesse.frau"]
groesse.mann


plot(groesse.mann,groesse.frau,
     xlab = "Grösse der Männer",
     ylab = "Grösse der Frauen",
     col = "blue",
     pch = 20)

abline(lm(groesse.frau ~ groesse.mann), col = "deepskyblue")






# Aufgabe 3.3
study <- read.table("income.dat", header = TRUE)
head(study)
income <- study[,"Income2005"]
income
schoolYears <- study[,"Educ"]
IQ <- study[,"AFQT"]


plot(schoolYears, income,      
     xlab = "school years",
     ylab = "income",
     col = "blue",
     pch = 20)

abline(lm(income ~ schoolYears), col = "deepskyblue")

plot(IQ, income,
     xlab = "IQ",
     ylab = "incone",
     col = "green",
     pch = 20
     )

abline(lm(income ~ IQ), col = "deepskyblue")









waageA <- c(79.98,
            80.04,
            80.02,
            80.04,
            80.03,
            80.03,
            80.04,
            79.97,
            80.05,
            80.03,
            80.02,
            80.00,
            80.02)

hist(
  waageA,
  freq = F,
  main = "Histogramm von Waage A",
  col = "darkseagreen3",
  ylim = c(0, 20)
)
rect(80.02, 0, 80.04, 23.1, col = "darkseagreen4")
