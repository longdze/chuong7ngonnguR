#set work direction. thiết lập thư mục lamg việc hiện thời
#"C:/Users/ACER/Downloads/Dataset/Dataset" đổi \ thành /
setwd("C:/Users/ACER/Downloads/Dataset/Dataset")



#đọc dữ liệu từ file Birdflucases.txt đưa vào biến BFCases
#Cài sublime text; vscode để kiểm tra các dòng dữ liệu xem có những kí tự đặc biệt
BFCases <- read.table(file = "BirdfluCases.txt", header = TRUE)
#liệt kê các dữ liệu trong dataset
names(BFCases)
#Xem xét các kiểu  dữ liệu tương ứng vói các trường
str(BFCases)
Cases <-  rowSums(BFCases[, 2:16])
names(Cases) <- BFCases[,1]
Cases
par(mfrow = c(2,2),mar = c(3,3,2,1))
pie(Cases, main = "Ordinary pie chart") #A
pie(Cases, col = gray(seq(0.4, 1.0, length = 6)), clockwise = TRUE, main = "Grey colours") #B
pie(Cases, col = rainbow(6), clockwise = TRUE, main = "Rainbow colours") #c
install.packages("plotrix")
library(plotrix)
pie3D(Cases, labels = name(Cases), explode = 0.1, main = "3D pie chart", labelcex = 0.6) #D


