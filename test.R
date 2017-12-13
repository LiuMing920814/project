spread.data <- read.table("/Users/liuming/Dropbox/FE5209/project/New_2.txt", header = TRUE)
View(spread.data)
colnames(spread.data)[1] <- c("Date" )
spread.data$diff.JACI[2:2916] <- diff(spread.data$JACI)

range1.po <- which(spread.data$JACI <= 300)
range2.po <- which(spread.data$JACI <= 400 & spread.data$JACI > 300)
range3.po <- which(spread.data$JACI <= 1000 & spread.data$JACI > 400)

sf
spread.data$group <- rep(NA, nrow(spread.data))
spread.data$group[range1.po] <- rep(1, length(range1.po))
spread.data$group[range2.po] <- rep(2, length(range2.po))
spread.data$group[range3.po] <- rep(3, length(range3.po))

boxplot(spread.data$diff.JACI ~ spread.data$group, names = c("< 300 bp", "300-400 bp", ">400 bp"), xlab = "spread level",
        ylab = "change in spread", main = "Spread Change Volatility by Spread Range", col = c("steelblue", "darkgoldenrod2", "darkolivegreen4") )

diff3 <- diff(range3)
range4 <- spread.data[which(spread.data$JACI <= 950),]$JACI
diff4 <- diff(range4)
boxplot(spread.data$JACI[-2916] ~ diff.JACI, range = 4)
spread <- data.frame(matrix(NA, 2915, 3))
colnames(spread) <- c("group", "range", "diff.range")
spread$group <- 

fit.HY <- auto.arima(diff.HY.relative.vol)
summary(fit.HY)
# ARIMA(2,0,1) with zero mean
