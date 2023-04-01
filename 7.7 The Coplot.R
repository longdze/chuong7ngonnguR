#7.7.1 A Coplot with a Single Conditioning Variable
#Chức năng cặp chỉ hiển thị các mối quan hệ hai chiều, các công cụ vẽ tiếp có thể minh họa các môi squan hệ 3 chiều, hoặc 4 chiều. được gọi là biểu đô điều hòa hoặc biểu đồ ghép
#thiết lập thư mục làm việc
setwd("C:/Users/ACER/Downloads/Dataset/Dataset")
Benthic <- read.table(file = "FIKZ2.txt", header = TRUE )
coplot(Richness ~ NAP | as.factor(Beach), pch=19, data = Benthic)
#bổ sung | as.factor(Beach) tạo các bảng 
#chúng ta có thể sử dụng  một biến liên tục
coplot(Richness ~ NAP | grainsize, pch=19, data = Benthic)
#
panel.lm = function(x, y, ...) { tmp <- lm(y ~ x, na.action = na.omit) abline(tmp) points(x, y, ...)} 
coplot(Richness ~ NAP | as.factor(Beach), pch = 19, panel = panel.lm, data = Benthic)
#

#7.7.2 The Coplot with Two Conditioning Variables(Coplot với hai biến điều hòa )
setwd("C:/Users/ACER/Downloads/Dataset/Dataset")
pHEire <- read.table(file = "SDI2003.txt", header = TRUE)
pHEire$LOGAlt <- log10(pHEire$Altitude)
pHEire$fForested <- factor(pHEire$Forested)
coplot(pH ~ SDI | LOGAlt * fForested, panel = panel.lm, data = pHEire)
#sử dụng chức năng panel.lm( cái này yêu cầu sao chép và dán nó vào bảng điều khiển R, nếu R đã bị tắt)
coplot(pH ~ SDI | LOGAlt * fForested, panel = panel.lm, data = pHEire, number = 2)


#7.7.3 Jazzing Up the Coplot*
#tạo một biến mới chứa màu xám
pHEire$Temp2 <- cut(pHEire$Temperature, breaks = 2)
pHEire$Temp2.num <- as.numeric(pHEire$Temp2)
#chức năng tách dữ liệu nhiệt độ thành 2 chế độ vì sử dụng break = 2. Gặp sự cố ở đầu ra,:
cut(pHEire$Temperature, breaks = 2)
#tạo coplot
coplot(pH ~ SDI | LOGAlt * fForested, panel = panel.lm, data = pHEire,number = 3, cex = 1.5, pch = 19, col = gray(pHEire$Temp2.num / 3))

