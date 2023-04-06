#thiết lập thư mục làm việc
setwd("C:/Users/ACER/Downloads/Dataset/Dataset")
#cần lấy kích thước mẫu cho mỗi bãi biển bằng mã R sau
Benthic <- read.table(file = "RIKZ2.txt", header = TRUE)
Benthic.n <- tapply(Benthic$Richness, Benthic$Beach, FUN = length)
Benthic.n
#Hàm tapply tính toán số lượng quan sát trên mỗi bãi biển, 5, và lưu trữ chúng trong biến Benthic.n. Boxplot được tạo ra với yêu cầu
boxplot(Richness ~ Beach, data = Benthic, col = "grey", xlab = "Beach", ylab = "Richness")
#BP.info chứa một số biến, BP,info số liệu thống kê $
#tệp trợ giúp boxplot cho biết hàng thứ 2 của $stats chứa các giá trị bản lề dưới và hàng t4 cho thấy bản lề trên 
BP.info <- boxplot(Richness ~ Beach, data = Benthic, col = "grey", xlab = " Beach", ylab = "Richness")
#
BP.midp <- BP.info$stats[2, ] + (BP.info$stats[4, ] - BP.info$stats[2, ]) / 2
#đặt các số trong Bentic.n bên trong boxplot
text(1:9, BP.midp, Benthic.n, col = "white", font = 2)
