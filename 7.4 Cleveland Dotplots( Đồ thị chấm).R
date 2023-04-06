setwd("C:/Users/ACER/Downloads/Dataset/Dataset")
Deer <- read.table("Deer.txt", header = TRUE)
#tạo đồ thị điểm Cleveland 
dotchart(Deer$LCT, xlab = "Length (cm)", ylab = "Observation number")
#Chức năng dotchart có nhiều tùy chọn khác nhau. Tùy chọn nhóm cho phép nhóm dữ liệu theo biến phân loại
dotchart(Deer$LCT, groups = factor(Deer$Sex))
#Biến Giới tính bị thiếu giá trị (nhập Deer $Sex trong bảng điều khiển R để xem chúng), và kết quả là chức năng dotchart dừng lại và tạo ra một thông báo lỗi. Các giá trị còn thiếu có thể dễ dàng bị xóa bằng cách sau
Isna <- is.na(Deer$Sex)
dotchart(Deer$LCT[!Isna], groups = factor(Deer$Sex[!Isna]), xlab = "Length (cm)", ylab = "Observation number grouped by sex")

