#7.2.The Bar Chart Using the Avian Influenza Data
#thư mục làm việc
setwd("C:/Users/ACER/Downloads/Dataset/Dataset")
#
BFDeaths <- read.table(file = "Birdfludeaths.txt", header = TRUE)
Deaths <- rowSums(BFDeaths[,2:16]) #tính tổng cột 2 đén 16
names(Deaths) <- BFDeaths[,1]
Deaths
#vẽ biểu  đồ,được sử dụng để chia khung hình hành một lưới 2x2 ô vuông
par(mfrow = c(2,2), mar = c(3,3,2,1))
#Biểu đồ cotA
barplot(Cases, main = "Bird fli=u cases")
#để nối số lượng trường hợp cúm gia cầm (Cases) và số lượng người chết (Deaths) với nhau
Counts <- cbind(Cases, Deaths)
#Biểu đồ B
barplot(Counts) #được sử dụng để vẽ biểu đồ cột cho ma trận này
#Biểu  đồ c
barplot(t(Counts), col = gray(c(0.5, 1)))
#Biểu đô D
barplot(t(Counts), beside = TRUE)
Counts
t(Counts)#chuyển vị

