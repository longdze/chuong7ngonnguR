setwd("C:/Users/ACER/Downloads/Dataset/Dataset")
Deer <- read.table("Deer.txt", header = TRUE)
#
dotchart(Deer$LCT, xlab = "Length (cm)", ylab = "Observation number")
#
dotchart(Deer$LCT, groups = factor(Deer$Sex))
#
Isna <- is.na(Deer$Sex)
dotchart(Deer$LCT[!Isna], groups = factor(Deer$Sex[!Isna]), xlab = "Length (cm)", ylab = "Observation number grouped by sex")

