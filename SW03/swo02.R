
waageA <- c(79.98, 80.04, 80.02, 80.04, 80.03, 80.03, 80.04,
            79.97, 80.05, 80.03, 80.02, 80.00, 80.02)

hist(waageA,
     freq = F,
     main = "Histogramm von Waage A",
     col = "darkseagreen3",
     ylim = c(0, 20)
)
rect(80.02, 0, 80.04, 23.1, col="darkseagreen4")


