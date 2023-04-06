#thiết lập khung vẽ cho 4 bd, mfrow sử dụng để chỉ định số hàng và cột, mar để chỉ định khoảng cách khung vẽ và vùng hiển thị bd
op <- par(mfrow = c(2, 2), mar = c(3, 3, 2, 1))
#vẽ bd với tiêu đề main
pie(Cases, main = "Ordinary pie chart")
#vẽ bd xám với tiêu đề maimain
pie(Cases, col = gray(seq(0.4, 1.0, length = 6)), clockwise = TRUE, main = "Grey colours")
#vẽ biểu đồ cầu vồngvồng
pie(Cases, col = rainbow(6), clockwise = TRUE, main = "Rainbow colours")
#vẽ bd 3d 
pie3D(Cases, labels = names(Cases), explode = 0.1,
        main = "3D pie chart", labelcex = 0.6)
par(op) #khôi phục thiết lập biến môi trường cũ cho bdbd