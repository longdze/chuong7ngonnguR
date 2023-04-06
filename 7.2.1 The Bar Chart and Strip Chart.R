#7.2.The Bar Chart Using the Avian Influenza Data
#thư mục làm việc
setwd("C:/Users/ACER/Downloads/Dataset/Dataset")
BFDeaths <- read.table(file = "Birdfludeaths.txt", header = TRUE)
Deaths <- rowSums(BFDeaths[,2:16])
names(Deaths) <- BFDeaths[,1]
Deaths
#vẽ biểu  đồ
par(mfrow = c(2,2), mar = c(3,3,2,1))
#Biểu đồ A
barplot(Cases, main = "Bird fli=u cases")
Counts <- cbind(Cases, Deaths)
#Biểu đồ B
barplot(Counts)
#Biểu  đồ c
barplot(t(Counts), col = gray(c(0.5, 1)))
#Biểu đô D
barplot(t(Counts), beside = TRUE)
Counts
t(Counts)
#7.2.2 A Bar Chart Showing Mean Values with Standard Deviations
