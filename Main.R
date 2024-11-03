library(vegan)
library(reshape)
library(tcltk2)
library(dplyr)
library(ggplot2)
library(scales)
library(tidyverse)
library(data.table)
library(tibble)
library(sads)
library(reshape2)
library(zoo)
data <- X370_Project_data
bottom <- data$Bottom
hist(data$Bottom, 
     main = "Surface Temperature on Bottom Side of Leaf",
     xlab = "Temperature (°C)",
     xlim = c(26, 40), cex.lab=1.5, cex.axis=1.5, cex.main=1.5, cex.sub=1.5,
     col = "darkgoldenrod2",
     breaks = "FD"
)
hist(data$Bottom, 
     main = "Temperature on Bottom Side",
     xlab = "Temperature (°C)",
     xlim = c(26, 39),
     cex.main=2.5, cex.axis =1.5,cex.lab = 1.5,
     col = "darkgoldenrod2",
     breaks = 14
)

boxplot(data$Bottom,
        main = "Surface Temperature on Bottom Side of Leaf",
        ylab = "Temperature (°C)",
        ylim = c(26, 40),
        col = "cyan4",
        xlab = "Bottom Side",
        breaks = 14
)

###5%%%
bottom <-bottom[-c(33)]
mean(bottom)
bottom[33] <- NULL
summary(bottom)
sd(bottom)
print(sd(bottom)/sqrt(34))

a <- 2*0.4319854
a
print((mean(bottom) - a))
print((mean(bottom) + a))
(2.797518/31.02)

###TOP###
top <- data$Top
hist(top, 
     main = "Surface Temperature on Bottom Side of Leaf",
     xlab = "Temperature (°C)",
     xlim = c(26, 40),
     col = "darkgoldenrod2",
     breaks = "FD"
)
hist(top, 
     main = "Temperature on Bottom Side",
     xlab = "Temperature (°C)",
     xlim = c(26, 40),
     cex.main=2.5, cex.axis =1.5,cex.lab = 1.5,
     col = "cyan4",
     breaks = 14
)

boxplot(top,
        main = "Surface Temperature on Bottom Side of Leaf",
        ylab = "Temperature (°C)",
        ylim = c(26, 40),
        col = "cyan4",
        xlab = "Bottom Side",
        breaks = 14
)

###5###
mean(top)
summary(top)
sd(top)
print(sd(top)/sqrt(35))

###difference###
diff <- data$Top-data$Bottom(
hist(diff, 
     main = "Surface Temperature on Bottom Side of Leaf",
     xlab = "Temperature (°C)",
     
data <- X370_Project_data
bottom <- data$Bottom
hist(data$Bottom, 
     main = "Surface Temperature on Bottom Side of Leaf",
     xlab = "Temperature (°C)",
     xlim = c(26, 40),
     col = "darkgoldenrod2",
     breaks = "FD"
     )
hist(data$Bottom, 
     main = "Surface Temperature on Bottom Side of Leaf",
     xlab = "Temperature (°C)",
     xlim = c(26, 40),
     col = "darkgoldenrod2",
     breaks = 14
)

boxplot(data$Bottom,
        main = "Surface Temperature on Bottom Side of Leaf",
        ylab = "Temperature (°C)",
        ylim = c(26, 40),
        col = "cyan4",
        xlab = "Bottom Side",
        breaks = 14
        )

###5%%%
bottom <-bottom[-c(33)]
mean(bottom)
bottom[33] <- NULL
summary(bottom)
sd(bottom)
print(sd(bottom)/sqrt(34))

a <- 2*0.4319854
a
print((mean(bottom) - a))
print((mean(bottom) + a))
(2.797518/31.02)

###TOP###
top <- data$Top
hist(top, 
     main = "Surface Temperature on Bottom Side of Leaf",
     xlab = "Temperature (°C)",
     xlim = c(26, 40),
     col = "darkgoldenrod2",
     breaks = "FD"
)
hist(top, 
     main = "Surface Temperature on Bottom Side of Leaf",
     xlab = "Temperature (°C)",
     xlim = c(26, 40),
     col = "darkgoldenrod2",
     breaks = 35
)

boxplot(top,
        main = "Surface Temperature on Bottom Side of Leaf",
        ylab = "Temperature (°C)",
        ylim = c(26, 40),
        col = "cyan4",
        xlab = "Bottom Side",
        breaks = 35
)

###5###
mean(top)
summary(top)
sd(top)
print(sd(top)/sqrt(35))

###difference###

diff <- data$Top-data$Bottom
diff2 <- data$Bottom/ data$Top
diff <- data
summary(diff)
sd(diff)
results_diff <- data.frame(matrix(NA, nrow = length(seq(1:35)), 
                                     ncol = length(seq(1:1))))
for (rowIdx in 1:nrow(results_diff)) {
  for (colIdx in 1:ncol(results_diff)) {
    results_diff[rowIdx, colIdx] <- ((( diff$Bottom[rowIdx]/diff$Top[rowIdx]) - 1)^2) # or whatever value you want here
  }
}

diff$results <- results_diff$matrix.NA..nrow...length.seq.1.35....ncol...length.seq.1.1...
sum(diff$results)


hist(diff, 
     main = "Difference in Temperature Between Sides" ,
     xlab = "Difference (Top - Bottom) in °C",
     col = "#e9c86f",
     breaks = "FD"
)
mean(diff)
summary(diff)
sd(diff)
print(sd(diff)/sqrt(35))
mean(diff)/0.4128785

“2 * (1 — pt(q = abs(2.57), df = 5))”

(2 * (1 - pt(q = abs(4.1635), df = 34)))
(2 * (1 - pt(q = abs(1.27), df = 5)))
