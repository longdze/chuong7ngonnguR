#set work direction. thiết lập thư mục lamg việc hiện thời
#"C:/Users/ACER/Downloads/Dataset/Dataset" đổi \ thành /
setwd("C:/Users/ACER/Downloads/Dataset/Dataset")



#đọc dữ liệu từ file Birdflucases.txt đưa vào biến BFCases
#Cài sublime text; vscode để kiểm tra các dòng dữ liệu xem có những kí tự đặc biệt
BFCases <- read.table(file = "BirdfluCases.txt", header = TRUE)
#liệt kê các dữ liệu trong dataset
names(BFCases)
#Xem xét các kiểu  dữ liệu tương ứng vói các trường
str(BFCases) #hiển thị cấu trúc một đối tượng dữ liệu
#tính tổng số ca bệnh của từng năm, kết quả dc lưu vào casecase
Cases <-  rowSums(BFCases[, 2:16])
names(Cases) <- BFCases[,1] #đặt tên các gái trị cases là các năm từ 2003 đến 2008 bằng cách lấy từ cột đầu tiên của BFCases
Cases

#thiết lập hiển thị 4 biểu đồ trên cùng 1 tang với định dạng 2h 2c, khoảng cách giữa các bd là mar
par(mfrow = c(2,2),mar = c(3,3,2,1))
#vẽ bd tròn với tiêu đề main
pie(Cases, main = "Ordinary pie chart") #A
#vẽ bd tròn với các màu xám, màu tạo bởi gray()
pie(Cases, col = gray(seq(0.4, 1.0, length = 6)), clockwise = TRUE, main = "Grey colours") #B
#vẽ BD tròn với màu cầu vồng, theo chiều kim đồng hồ
pie(Cases, col = rainbow(6), clockwise = TRUE, main = "Rainbow colours") #c
#thư viện plotrix cung cấp chức năng tạo biểu đô 3D
install.packages("plotrix")
library(plotrix)
#vẽ biểu đồ
pie3D(Cases, labels = name(Cases), explode = 0.1, main = "3D pie chart", labelcex = 0.6) #D


