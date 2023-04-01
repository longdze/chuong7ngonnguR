
#sử dụng lệnh mfrow để kích hoạt vẽ đồ thị một số biểu đồ trên một màn hình
#cần xác định số lượng biểu đồ để kết hợp, vị trí và kích thước
#xác định một ma trận, gọi nó là MyLayout với các giá trị sau:
MyLayOut <- matrix(c(2, 0, 1, 3), nrow = 2, ncol=2, byrow = TRUE)
MyLayOut
#
nf <- layout(mat = MyLayOut, widths = c(3, 1), heights = c(1, 3), respect = TRUE)
#Tùy chọn độ rộng chỉ định độ rộng tương đối của các cột.Tác dụng của các cài đặt này trong chức năng bố trí có thể được hiển thị bằng lệnh sau :
layout.show(nf)
#tạo 3 biểu đổ. phải đảm bảo phạm vi của ô vuông trong bảng 2 được đồng bộ hóa với phạm vi trục ngang, tránh thừa các khoảng trắng quanh biểu đồ
xrange <- c(min(Benthic$NAP), max(Benthic$NAP))
yrange <- c(min(Benthic$Richness), max(Benthic$Richness))
#đồ thị 1            
par(mar = c(4, 4, 2, 2))
plot(Benthic$NAP, Benthic$Richness, xlim = xrange, ylim = yrange, xlab = "NAP", ylab = "Richness")
#đồ thị 2
par(mar = c(0, 3, 1, 1))
boxplot(Benthic$NAP, horizontal = TRUE, axes = FALSE, frame.plot = FALSE, ylim = xrange, space = 0)
#đồ thị 3
par(mar = c(3, 0, 1, 1))
boxplot(Benthic$Richness, axes = FALSE, ylim = yrange, space = 0, horiz = TRUE)
