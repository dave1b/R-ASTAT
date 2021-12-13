# Aufgabe 10.2
messgerätA <- c(120,265,157,187,219,288,156,205,163)
messgerätB <- c(127,281,160,185,220,298,167,203,171)
sd <- 6.2
#a) gepaarte Stichproben
#b)
t.test(messgerätA, messgerätB, alternative = "less", mu = 0, paired = TRUE,conf.level = 0.95)
#Nullhyp: bei beiden Messgeräten handelt es sich um gleich Messergebnisse
#Alterhypo: Die beiden Messgeräte messen unterschiedliche Werte
#Ergebnis: Nullhypo wird verworfen p kleiner als 0.05 und mu = 0 nicht in Vertrauensintervall
#
#Aufgabe 10.3
goldsM <- c(120,107,110,116,114,111,113,117,114,112)
goldsW <- c(110,111,107,108,110,105,107,106,111,111)
#a) ungepaart, da unabhängig keine Verbindung
#b) Nullhypo: die männlichen und weiblichen verfügen über gleich gross Schnabel
#c)
t.test(goldsM, goldsW, alternative = "two.sided",mu = 0, paired = FALSE, conf.level = 0.95)
#d)
wilcox.test(goldsM, goldsW,alternative = "two.sided",mu = 0, paired = FALSE, conf.level = 0.95)

#Aufgabe 10.4#
rind <- c(186, 181, 176, 149, 184, 190, 158, 139, 175, 148, 152, 111, 141, 153, 190, 157, 131, 149, 135, 132)
meat <- c(129, 132, 102, 106, 94, 102, 87, 99, 170, 113, 135, 142, 86, 143, 152, 146, 144)
#a) ungepaart
#b) zweiseitig
#c) 
#d) 
mean(rind)
mean(meat)
#e)
#f)
wilcox.test(rind,meat,alternative="two.sided", mu=0, paired = FALSE, conf.level = 0.95)
#Rind hat höheren Kaloriengehalt