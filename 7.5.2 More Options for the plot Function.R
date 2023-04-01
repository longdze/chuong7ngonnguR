plot(y = Benthic$Richness, x = Benthic$NAP, xlab = "Mean high tide (m)", ylab = "Species richness", main = "Benthic data ")
M0 <- lm(Richness ~ NAP, data = Benthic)
abline(M0)
#
plot(y = Benthic$Richness, x = Benthic$NAP, xlab = "Mean high tide (m)", ylab = "Species richness", xlim = c(-3, 3), ylim = c(0,20))
#plot(y = Benthic$Richness, x = Benthic$NAP, type = "n", axes = FALSE, xlab = "Mean high tide", ylab = "Species richness)
points(y = Benthic$Richness, x = Benthic$NAP)
#
plot(y = Benthic$Richness, x = Benthic$NAP, type = "n", axes = FALSE, xlab = "Mean high tide", ylab = "Species richness", xlim = c(-1.75,2), ylim = c(0,20))
points(y = Benthic$Richness, x = Benthic$NAP)
axis(2, at = c(0, 10, 20), tcl = 1)
axis(1, at = c(-1.75, 0,2), labels = c("Sea", "Water line", "Dunes"))
