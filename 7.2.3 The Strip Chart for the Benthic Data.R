Benth.le <- tapply(Benthic$Richness, INDEX = Benthic$Beach, FUN = length)
Bent.se <- Bent.sd / sqrt(Benth.le)
#Biến Bent.se hiện chứa các lỗi tiêu chuẩn. thêmcác dòng cho lỗi tiêu chuẩn đối với biểu đồ bây giờ là vấn đề sử dụng mũi tênchức năng; một mũi tên được vẽ từ giá trị trung bình đến giá trị trung bình cộng với tiêu chuẩnlỗi, và cũng từ giá trị trung bình đến giá trị trung bình trừ đi lỗi tiêu chuẩn. Cácmã dưới đây.
stripchart(Benthic$Richness ~ Benthic$Beach, vert = TRUE, pch = 1, method = "jitter", jit = 0.05, xlab = "Beach", ylab = "Richness")
points(1:9, Bent.M, pch = 16, cex = 1.5)
arrows(1:9, Bent.M, 1:9, Bent.M + Bent.se, lwd = 1.5, angle = 90, length = 0,1)
arrows(1:9, Bent.M, 1:9, Bent.M - Bent.se, lwd = 1.5, angle = 90, length = 0.1)
