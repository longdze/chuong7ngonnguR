setwd("C:/Users/ACER/Downloads/Dataset/Dataset")
Benthic <- read.table(file = "RIKZ2.txt", header = TRUE )
pairs(Benthic[, 2:9])
#
#7.6.1 Panel Functions
pairs(Benthic[, 2:9], diag.panel = panel.hist, upper.panel = panel.smooth, lower.panel = panel.cor)
# 
