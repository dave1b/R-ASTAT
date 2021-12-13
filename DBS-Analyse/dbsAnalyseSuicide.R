setwd("C:/Users/Dave/Documents/GitHub/R-Code Dave/DBS-Analyse")
datenSet <- read.csv("AllData_Europe_2015.csv")#[, -1]
#datenSet <-  na.omit(datenSet) 
#Economic
pairs(~suicideRateTotal+unemploymentPTotal+RatioAtNationalPovertyLine+MeanPPP_Month+GiniIndex+GrossNationalIncome,
      data = datenSet, pch = "+", col = "black")

#HealthExpendature
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


# -------------------------------------

library(ggplot2)
library(dplyr)
library(broom)
library(ggpubr)

scatter.smooth(x=datenSet$suicideRateTotal, y=datenSet$CHE_GDP_Percentage, main="Dist ~ Speed")  
data_omit <- na.omit(datenSet)    
cor(data_omit$suicideRateTotal, data_omit$GiniIndex) 



income.graph<-ggplot(datenSet, aes(x=suicideRateTotal, y=CHE_GDP_Percentage))+
   geom_point()
income.graph <- income.graph + geom_smooth(method="lm", col="black")
income.graph <- income.graph + stat_regline_equation(label.x = 3, label.y = 7)
income.graph




reg <- lm(datenSet$suicideRateTotal ~ datenSet$GiniIndex + datenSet$MedianPPP_Month + datenSet$HapinessScore)
summary(reg)
