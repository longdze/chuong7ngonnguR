#Hàm xác định được sử dụng để xác định các điểm trên một biểu đồ, có thể thực hiện bằng cách đưa ra tọa độ x, y của ô hoặc chỉ cần nhập ô đối tượng:
plot(y = Benthic$Richness, x = Benthic$NAP, xlab = "Mean high tide (m)", ylab = "Species richness", main = "Benthic data")
identify(y = Benthic$Richness, x = Benthic$NAP)

#7.5.7 Changing Fonts and Font Size*
#
title("Bird abundance", cex.main = 2, family = "serif", font.main = 1)
#
#7.5.8 Adding Special Characters
#
setwd("C:/Users/ACER/Downloads/Dataset/Dataset")
Whales <- read.table(file = "TeethNitrogen.txt", header = TRUE)
N.Moby <- Whales$X15N[Whales$Tooth == "Moby"]
Age.Moby <- Whales$Age[Whales$Tooth == "Moby"]
plot(x = Age.Moby, y = N.Moby, xlab = "Age", ylab = expression(paste(delta^{15}, "N")))



#7.5.9 Other Useful Functions
# có nhiêu chức năng hữu ích khi làm đồ thị, tham khảo tại trang 167 