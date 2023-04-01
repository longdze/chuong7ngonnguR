legend("bottomright", c("values", "mean"), pch = c(1, 19), bg ="white")
#
setwd("C:/Users/ACER/Downloads/Dataset/Dataset")
Birds <- read.table(file = "loyn.txt", header = TRUE)
Birds$LOGAREA <- log10(Birds$AREA)
#
plot(x = Birds$LOGAREA, y = Birds$ABUND, xlab = "Log transformed AREA", ylab = "Bird abundance")
#xem source của  5 slopes và phần chặn: 
M0 <- lm(ABUND~ LOGAREA + GRAZE, data = Birds)
summary(M0)
LAR <- seq(from = -1, to = 3, by = 1)
LAR
#xác định giá trị trên mỗi cấp độ grazing bằng cách sử dụng các phép tính đơn giản:
ABUND1 <- 15.7 + 7.2 * LAR
ABUND2 <- 16.1 + 7.2 * LAR
ABUND3 <- 15.5 + 7.2 * LAR
ABUND4 <- 14.1 + 7.2 * LAR
ABUND5 <- 3.8 + 7.2 * LAR
#thêm các giá trị phù hợp dưới dạng các đường vào biểu đồ 
lines(LAR, ABUND1, lty = 1, lwd = 1, col =1)
lines(LAR, ABUND2, lty = 2, lwd = 2, col =2)
lines(LAR, ABUND3, lty = 3, lwd = 3, col =3)
lines(LAR, ABUND4, lty = 4, lwd = 4, col =4)
lines(LAR, ABUND5, lty = 5, lwd = 5, col =5)
#
legend.txt <- c("Graze 1", "Graze 2", "Graze 3", "Graze 4", "Graze 5")
legend("topleft", legend = legend.txt, col = c(1, 2, 3, 4, 5), lty = c(1, 2, 3, 4, 5), lwd = c(1, 2, 3, 4, 5), bty = "o", cex = 0.8)
#thuộc tính cex chỉ định kích thước cùa văn bản trong chú giải  và bty theem hop thoiaj xung quanh legend
