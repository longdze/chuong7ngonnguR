#
setwd("C:/Users/ACER/Downloads/Dataset/Dataset")
Benthic <- read.table(file = "RIKZ2.txt", header = TRUE)
Benthic$Beach <- factor(Benthic$Beach)
par(mfrow = c(1,2))
dotchart(Benthic$Richness, groups = Benthic$Beach, xlab = "Richness", ylab = "Beach")
Bent.M <- tapply(Benthic$Richness, Benthic$Beach, FUN = mean)
dotchart(Benthic$Richness, groups = Benthic$Beach, gdata = Bent.M, gpch = 19, xlab = "Richness", ylab = "Beach")
legend("bottomright", c("values", "mean"), pch = c(1,19), bg = "white")
#
