# Aufgabe 2.1


# zwei Vektoren mit den Grössen der Präsidentschaftskandidaten
winner <- c(183, 191, 185, 185, 182, 182, 188, 188, 188, 185, 185, 177, 182, 182, 193, 183, 179, 179, 175)
opponent <- c(191, 165, 187, 175, 193, 185, 187, 188, 173, 180, 177, 183, 185, 180, 180, 182, 178, 178, 173)


length(winner)
length(opponent)

gleichwertig = length(winner) == length(opponent)
print("Gleich viele Einträge:"); print(gleichwertig)

winner[6:10] # Eintrag 6 bis 10
winner[3,5,10:12]
winner[7] = 189
winner[8] = 189

# Arithmetische Mittel / Mittelwert / Durchschnitt
durchWinner = mean(winner)
durchOpp = mean(opponent)

durchschnittlicherGrössenunterschied = durchWinner - durchOpp 
durchschnittlicherGrössenunterschied


# Varianz
var(winner)

sum <- 0
durchWinner = mean(winner)
for (i in winner) {
  sum <- sum +  (i - durchWinner)^2
} 
varianz = sum / (length(winner)-1)
varianz
winner.var <- sum((winner - mean(winner))^2) / (length(winner)-1)
winner.var




# Standartabweichung / Standard deviation
sd(winner)

sd <- sqrt(varianz)
sd


# Aufgabe 2.2
noten <- c(4.2, 2.3, 5.6, 4.5, 4.8, 3.9, 5.9, 2.4, 5.9, 6, 4, 3.7, 5, 5.2, 4.5, 3.6, 5, 6, 2.8, 3.3, 5.5, 4.2, 4.9, 5.1)
noten <- sort(noten)

mean(noten)
median(noten)

boxplot(noten)

noten[length(noten)]=10
noten[2]=1.5
noten[1]=1

mean(noten)
median(noten)

boxplot(noten)



# Aufgabe 2.3
setwd("C:/Users/Dave/Documents/GitHub/R-Code Dave/SW02")
temp <- read.table("mannfrau.csv",sep = ",")


#
temp2 <- read.csv("mannfrau.csv",sep = ",")
temp2$diffAlter <- temp2$alter.mann - temp2$alter.frau
temp2
boxplot(temp2$diffAlter)
#

temp

alterMann <- temp[,"V1"]
alterFrau <- temp[, "V3"]
alterMann
alterFrau



diffAlter <- c()
for (i in 2:length(alterMann)) {
  diffAlter[i-1] <- (as.integer(alterMann[i]) - as.integer(alterFrau[i]))
}

diffAlter #<- (as.Integer(alterMann[2:length(alterMann)]) - as.Integer(alterFrau[2:length(alterFrau)]))
boxplot(diffAlter)
quantile(diffAlter, p = c(0.25, 0.75), type = 2)




# Aufgabe 2.4

head(InsectSprays)
tapply(InsectSprays[, "count"], InsectSprays[, "spray"], FUN = mean)

tapply(InsectSprays$count, InsectSprays$spray, mean)

boxplot(count ~ spray, data = InsectSprays, col =c("orange", "blue", "darkseagreen", "deeppink", "brown", "aquamarine"))



# Aufgabe 2.5

setwd("C:/Users/Dave/Documents/GitHub/R-Code Dave/SW02")
diet <- read.csv("Diet.csv",sep = ",")
diet$weight.loss <- diet$weight6weeks - diet$pre.weight
diet
