# Beer judging EDA
# Chris Hamm

# 2018-12-14

set.seed(2352)
library("tidyverse")

setwd("~/Projects/Holiday_beer")

raw_beer <- read_csv("data/2018_Beer.csv")
str(raw_beer)

ggplot(raw_beer, aes())

# Scores by reviewer
boxplot(t(raw_beer), horizontal = TRUE, las = 1, col = "grey", pch = 19)

# Scores by beer
jpeg(file = "output/beer_scores.jpg", bg = "white", height = 1024, width = 1024)
boxplot(raw_beer, las = 2, col = "grey", pch = 19)
arrows(x1 = 8.1, y1 = 1.1, x0 = 9, y0 = 1.5)
text(10.5, 1.5, "Fucking Anklam", cex = 1.5)
dev.off()