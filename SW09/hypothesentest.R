#Aufgabe 9.1
weinMessungen <- c(71,69,67,68,73,72,71,71,68,72,69,72)
weinMessungen
mittelwert <- 70
sd <- 1.5
pValue <- pnorm(mean(weinMessungen), 70, 1.5/sqrt(length(weinMessungen)))
signifikanzNiveau <- 0.05
paste("Signifikanzniveau: ",  signifikanzNiveau)
paste("W'keit von Mittelwert", mean(weinMessungen), " pValue: ",  pValue)
paste("Nullhypothese wird verworfen:" ,pValue < signifikanzNiveau)
verwerfungsBereich <- qnorm(0.05, 70,1.5/sqrt(length(weinMessungen)))
paste("Verwerfungsbereich: <", verwerfungsBereich)


#Aufgabe 9.2
t.test(weinMessungen, mu=70, alternative = "less")


#Aufgabe 9.3
mittelwert <- 50
sd <- 3
brotMessung <- c(46,48,52,49,46,51,52,47,49,44,48,51,49,50,53,47)
pValue <- pnorm(mean(brotMessung), 50, 3/sqrt(length(brotMessung)))
paste("W'keit von Mittelwert", mean(brotMessung), " pValue: ",  pValue)
signifikanzNiveau <- 0.05
paste("Signifikanzniveau: ",  signifikanzNiveau)
paste("Nullhypothese wird verworfen:" ,pValue < signifikanzNiveau)
verwerfungsBereich <- qnorm(c(0.025,0.975), 50,3/sqrt(length(brotMessung)))
paste("Verwerfungsbereich: ausserhalb von:", verwerfungsBereich)

#b
pValue <- pnorm(mean(brotMessung), 50, 3/sqrt(100))
paste("pValue: ",  pValue)

#c
t.test(brotMessung, mu=50, alternative = "less")
