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

# Standartabweichung / Standard deviation
sd(winner)

