setwd("C:/Users/ACER/Downloads/Dataset/Dataset")
Owls <- read.table(file = "Owls.txt", header = TRUE)
boxplot(Owls$NegPerChick)
#
par(mfrow = c(2,2), mar = c(3,3,2,1))
boxplot(NegPerChick ~ SexParent, data = Owls)
boxplot(NegPerChick ~ FoodTreatment, data = Owls)
boxplot(NegPerChick ~ SexParent * FoodTreatment, data = Owls)
boxplot(NegPerChick ~ SexParent * FoodTreatment, names = c("F/Dep", "M/Dep", "F/Sat", "M/Sat"), data = Owls)
#
boxplot(NegPerChick ~ Nest, data = Owls)

par(mar = c(2,2,3,3))
boxplot(NegPerChick ~ Nest, data = Owls, axes = FALSE, ylim = c(-3, 8.5))
axis(2, at = c(0,2,4,6,8))
text(x = 1:27, y = -2, labels = levels(Owls$Nest), cex = 0.75, srt = 65)
