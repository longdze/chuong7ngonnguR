#thiết lập thư mục làm việc
setwd("C:/Users/ACER/Downloads/Dataset/Dataset")
Benthic <- read.table(file = "RIKZ2.txt", header = TRUE)
#tính giá trị TB mean() và độ lệch chuẩn sd(), lưu kq vào Bent.m và bent.sd
Bent.M <- tapply(Benthic$Richness,INDEX = Benthic$Beach,FUN = mean)
Bent.sd <- tapply(Benthic$Richness, INDEX = Benthic$Beach, FUN = sd)
MSD <- cbind(Bent.M, Bent.sd) #gộp 2 nội dung, lưu vào  MSD
MSD
barplot(Bent.M) #tạo biểu đồ cột
#tạo bd với trục xlab,ylab,ylim(giới hạn khoảng cách trục y từ 0 đén 20)
barplot(Bent.M, xlab = "Beach", ylim = c(0,20), ylab = "Richness", col = rainbow(9))
bp <- barplot(Bent.M, xlab = "Beach", ylim = c(0,20), ylab = "Richness", col = rainbow(9))
arrows(bp, Bent.M, bp, Bent.M + Bent.sd, lwd = 1.5, angle = 90, length = 0.1)
box()
bp
