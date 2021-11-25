setwd("C:/Users/Dave/Documents/GitHub/R-Code Dave/DBS-Analyse")
datenSet <- read.csv("AllData_africa_2019.csv")#[, -1]
datenSet
#Economic
pairs(~suicideRateTotal+unemploymentPTotal+RatioAtNationalPovertyLine+MeanPPP_Month+GiniIndex+GrossNationalIncome,
      data = datenSet, pch = "+", col = "black")

#HealtExpendature
pairs(~suicideRateTotal+CHE_GDP_Percentage+OOPE_CHE_Percentage+PVT_CHE_Percentage+GGHE_CHE_Percentage+CHI_CHE_Percentage,
      data = datenSet, pch = "+", col = "black")
#Consumption
pairs(~suicideRateTotal+TotalAlcoholConsumption,
      data = datenSet, pch = "+", col = "black")
#HealthWorker
pairs(~suicideRateTotal+HapinessScore+PsychiatristsRate+PsychologistsRate+NursesRate,
      data = datenSet, pch = "+", col = "black")
#GINI
pairs(~suicideRateTotal+GiniIndex,
      data = datenSet, pch = "+",col = "black")

summary(datenSet)

